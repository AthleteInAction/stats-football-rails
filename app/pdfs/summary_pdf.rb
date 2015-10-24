class SummaryPdf < Prawn::Document

  def initialize data

    # data = {
    #   home: {
    #     name: 'Willow Glen',
    #     short: 'WG'
    #   },
    #   away: {
    #     name: 'Santa Teresa',
    #     short: 'ST'
    #   },
    #   qtr: [0,7,10,0,6,3,0,0]
    # }
    # data = {"scoring"=>{"1"=>[{"time"=>"3:42", "player_a"=>7, "team"=>{"short"=>"WG", "name"=>"Willow Glen High School"}, "gain"=>7, "qtr"=>1, "type"=>"TOUCHDOWN", "key"=>"pass", "player_b"=>6}, {"player_a"=>3, "time"=>"", "team"=>{"short"=>"WG", "name"=>"Willow Glen High School"}, "type"=>"EXTRA POINT", "key"=>"fgm", "qtr"=>1}, {"time"=>"", "player_a"=>7, "team"=>{"short"=>"WG", "name"=>"Willow Glen High School"}, "gain"=>8, "qtr"=>1, "type"=>"TOUCHDOWN", "key"=>"pass", "player_b"=>2}, {"time"=>"", "player_a"=>28, "team"=>{"short"=>"ST", "name"=>"Santa Teresa High School"}, "gain"=>32, "qtr"=>1, "type"=>"TOUCHDOWN", "key"=>"int_return"}, {"player_a"=>48, "time"=>"", "team"=>{"short"=>"ST", "name"=>"Santa Teresa High School"}, "type"=>"EXTRA POINT", "key"=>"fgm", "qtr"=>1}, {"time"=>"", "player_a"=>3, "team"=>{"short"=>"ST", "name"=>"Santa Teresa High School"}, "gain"=>11, "qtr"=>1, "type"=>"TOUCHDOWN", "key"=>"run"}, {"player_a"=>48, "time"=>"", "team"=>{"short"=>"ST", "name"=>"Santa Teresa High School"}, "type"=>"EXTRA POINT", "key"=>"fgm", "qtr"=>1}], "2"=>[{"time"=>"", "player_a"=>7, "team"=>{"short"=>"WG", "name"=>"Willow Glen High School"}, "gain"=>32, "qtr"=>2, "type"=>"TOUCHDOWN", "key"=>"pass", "player_b"=>3}, {"player_a"=>5, "time"=>"", "team"=>{"short"=>"WG", "name"=>"Willow Glen High School"}, "type"=>"EXTRA POINT", "key"=>"fgm", "qtr"=>2}], "4"=>[{"time"=>"", "player_a"=>9, "team"=>{"short"=>"WG", "name"=>"Willow Glen High School"}, "gain"=>3, "qtr"=>4, "type"=>"TOUCHDOWN", "key"=>"run"}, {"player_a"=>3, "time"=>"", "team"=>{"short"=>"WG", "name"=>"Willow Glen High School"}, "type"=>"EXTRA POINT", "key"=>"fgm", "qtr"=>4}]}, "away"=>{"short"=>"ST", "name"=>"Santa Teresa High School"}, "home"=>{"short"=>"WG", "name"=>"Willow Glen High School"}, "qtr"=>[14, 0, 0, 0, 13, 7, 0, 7]}
    # data = data.with_indifferent_access

    super margin: 14

    move_down 4

    text "#{data[:away][:name]} @ #{data[:home][:name]}",size: 16,color: '545865',font_style: :bold

    move_down 10

    qtr = data[:qtr]
    len = qtr.length / 2

    awayScores = qtr[0,len]

    label = ['']
    awayScores.each_with_index do |score,i|

      q = i+1

      if q <= 4

        label << q

      else

        label << "OT #{q-4}"

      end

    end
    label << 'Total'

    awayScores << awayScores.inject { |sum,x| sum + x }
    awayScores.unshift data[:away][:name]
    homeScores = qtr[len,len]
    homeScores << homeScores.inject { |sum,x| sum + x }
    homeScores.unshift data[:home][:name]

    table [label,awayScores,homeScores] do |t|

      t.width = bounds.width
      t.column(1...(awayScores.length-2)).width = 30
      t.column(awayScores.length-1).width = 50
      t.column(1...awayScores.length-1).style align: :center
      t.cell_style = {border_width: 0.25, border_color: 'c2c2c2'}
      # t.row(0).style background_color: 'c2c2c2'
      t.row(0...2).style text_color: '545865'
      t.row(0).style font_style: :bold
      t.column(0).style font_style: :bold
      t.column(awayScores.length-1).style font_style: :bold

    end

    keys = data[:scoring].keys.sort

    keys.each do |q|

      move_down 20

      table [["#{q.to_i.ordinalize} Quarter"]] do |t|

        t.width = bounds.width
        t.cell_style = {border_width: 0}
        t.row(0).style background_color: 'c2c2c2'
        t.row(0).style text_color: '545865'

      end

      scoring = data[:scoring]["#{q}"].to_a.map { |item|

        case item[:key]
        when "run"

          ["<b>#{item[:team][:short]}</b> #{item[:type]}:   (#{item[:time]}) <b>##{item[:player_a]}</b> #{item[:gain]} yard run"]

        when "pass","interception"

          ["<b>#{item[:team][:short]}</b> #{item[:type]}:   (#{item[:time]}) <b>##{item[:player_a]}</b> #{item[:key]} to <b>##{item[:player_b]}</b> for #{item[:gain]} yards"]

        when "fgm"

          ["<b>#{item[:team][:short]}</b> #{item[:type]}:   (#{item[:time]}) <b>##{item[:player_a]}</b>"]

        when "return"

          ["<b>#{item[:team][:short]}</b> #{item[:type]}:   (#{item[:time]}) <b>##{item[:player_a]}</b> #{item[:gain]} yard return"]

        when "int_return"

          ["<b>#{item[:team][:short]}</b> #{item[:type]}:   (#{item[:time]}) <b>##{item[:player_a]}</b> #{item[:gain]} yard interception return"]

        when "kick_return"

          ["<b>#{item[:team][:short]}</b> #{item[:type]}:   (#{item[:time]}) <b>##{item[:player_a]}</b> #{item[:gain]} yard kick return"]

        when "punt_return"

          ["<b>#{item[:team][:short]}</b> #{item[:type]}:   (#{item[:time]}) <b>##{item[:player_a]}</b> #{item[:gain]} yard punt return"]

        when "fumble_return"

          ["<b>#{item[:team][:short]}</b> #{item[:type]}:   (#{item[:time]}) <b>##{item[:player_a]}</b> #{item[:gain]} yard fumble return"]

        else

          s = "<b>#{item[:team][:short]}</b>:"

          s << ":   (#{item[:time]})"
          s << " <b>##{item[:player_a]}</b>" if item[:player_a]

        end

      }

      table scoring do |t|

        t.width = bounds.width
        t.row_colors = ['f7f7f7','efefef']
        t.cell_style = {border_width: 0,size: 10,inline_format: true}
        t.row(0...1000).style text_color: '545865'

      end

    end

  end

end
class StatsPdf < Prawn::Document

    def initialize data

        super margin: 14

        # d = {"stats"=>{"team_kick_returns"=>{"att"=>1, "long"=>20, "td"=>0, "ypr"=>20, "yds"=>20}, "team_passing"=>{"long"=>32, "td"=>3, "int"=>2, "ypa"=>7.1, "comp_pct"=>77.8, "yds"=>128, "att"=>18, "comp"=>14, "rat"=>89.6}, "team_rushing"=>{"att"=>35, "long"=>29, "td"=>1, "ypa"=>4.9, "yds"=>170}, "punt_returns"=>[], "team"=>{"short"=>"WG", "name"=>"Willow Glen High School"}, "team_receiving"=>{"rec"=>14, "long"=>32, "td"=>3, "ypr"=>9.1, "yds"=>128}, "passing"=>[{"long"=>32, "td"=>3, "int"=>1, "ypa"=>7.9, "comp_pct"=>85.7, "yds"=>111, "att"=>14, "comp"=>12, "player"=>7, "rat"=>109.5}, {"long"=>10, "td"=>0, "int"=>1, "ypa"=>4.3, "comp_pct"=>50, "yds"=>17, "att"=>4, "comp"=>2, "player"=>17, "rat"=>-42.7}], "home"=>{"short"=>"Willow Glen High School", "name"=>"Willow Glen High School"}, "receiving"=>[{"rec"=>6, "long"=>32, "td"=>1, "ypr"=>11.8, "player"=>3, "yds"=>71}, {"rec"=>5, "long"=>7, "td"=>1, "ypr"=>5.4, "player"=>6, "yds"=>27}, {"rec"=>2, "long"=>8, "td"=>1, "ypr"=>8, "player"=>2, "yds"=>16}, {"rec"=>1, "long"=>14, "td"=>0, "ypr"=>14, "player"=>11, "yds"=>14}], "kick_returns"=>[{"att"=>1, "long"=>20, "td"=>0, "ypr"=>20, "player"=>8, "yds"=>20}], "rushing"=>[{"att"=>6, "long"=>29, "td"=>0, "ypa"=>8, "player"=>20, "yds"=>48}, {"att"=>11, "long"=>7, "td"=>0, "ypa"=>3.9, "player"=>7, "yds"=>43}, {"att"=>11, "long"=>6, "td"=>1, "ypa"=>3.8, "player"=>9, "yds"=>42}, {"att"=>2, "long"=>17, "td"=>0, "ypa"=>13, "player"=>2, "yds"=>26}, {"att"=>1, "long"=>4, "td"=>0, "ypa"=>4, "player"=>5, "yds"=>4}, {"att"=>1, "long"=>3, "td"=>0, "ypa"=>3, "player"=>24, "yds"=>3}, {"att"=>2, "long"=>3, "td"=>0, "ypa"=>1.5, "player"=>8, "yds"=>3}, {"att"=>1, "long"=>1, "td"=>0, "ypa"=>1, "player"=>21, "yds"=>1}], "away"=>{"short"=>"ST", "name"=>"Santa Teresa High School"}, "team_punt_returns"=>{"att"=>0, "long"=>0, "td"=>0, "ypr"=>0, "yds"=>0}}, "stat"=>{"stats"=>{"team_kick_returns"=>{"att"=>1, "long"=>20, "td"=>0, "ypr"=>20, "yds"=>20}, "team_passing"=>{"long"=>32, "td"=>3, "int"=>2, "ypa"=>7.1, "comp_pct"=>77.8, "yds"=>128, "att"=>18, "comp"=>14, "rat"=>89.6}, "team_rushing"=>{"att"=>35, "long"=>29, "td"=>1, "ypa"=>4.9, "yds"=>170}, "punt_returns"=>[], "team"=>{"short"=>"WG", "name"=>"Willow Glen High School"}, "team_receiving"=>{"rec"=>14, "long"=>32, "td"=>3, "ypr"=>9.1, "yds"=>128}, "passing"=>[{"long"=>32, "td"=>3, "int"=>1, "ypa"=>7.9, "comp_pct"=>85.7, "yds"=>111, "att"=>14, "comp"=>12, "player"=>7, "rat"=>109.5}, {"long"=>10, "td"=>0, "int"=>1, "ypa"=>4.3, "comp_pct"=>50, "yds"=>17, "att"=>4, "comp"=>2, "player"=>17, "rat"=>-42.7}], "home"=>{"short"=>"Willow Glen High School", "name"=>"Willow Glen High School"}, "receiving"=>[{"rec"=>6, "long"=>32, "td"=>1, "ypr"=>11.8, "player"=>3, "yds"=>71}, {"rec"=>5, "long"=>7, "td"=>1, "ypr"=>5.4, "player"=>6, "yds"=>27}, {"rec"=>2, "long"=>8, "td"=>1, "ypr"=>8, "player"=>2, "yds"=>16}, {"rec"=>1, "long"=>14, "td"=>0, "ypr"=>14, "player"=>11, "yds"=>14}], "kick_returns"=>[{"att"=>1, "long"=>20, "td"=>0, "ypr"=>20, "player"=>8, "yds"=>20}], "rushing"=>[{"att"=>6, "long"=>29, "td"=>0, "ypa"=>8, "player"=>20, "yds"=>48}, {"att"=>11, "long"=>7, "td"=>0, "ypa"=>3.9, "player"=>7, "yds"=>43}, {"att"=>11, "long"=>6, "td"=>1, "ypa"=>3.8, "player"=>9, "yds"=>42}, {"att"=>2, "long"=>17, "td"=>0, "ypa"=>13, "player"=>2, "yds"=>26}, {"att"=>1, "long"=>4, "td"=>0, "ypa"=>4, "player"=>5, "yds"=>4}, {"att"=>1, "long"=>3, "td"=>0, "ypa"=>3, "player"=>24, "yds"=>3}, {"att"=>2, "long"=>3, "td"=>0, "ypa"=>1.5, "player"=>8, "yds"=>3}, {"att"=>1, "long"=>1, "td"=>0, "ypa"=>1, "player"=>21, "yds"=>1}], "away"=>{"short"=>"ST", "name"=>"Santa Teresa High School"}, "team_punt_returns"=>{"att"=>0, "long"=>0, "td"=>0, "ypr"=>0, "yds"=>0}}}}
        # d.with_indifferent_access
        # data = d['stats']

        move_down 4

        text "#{data['team']['name']} Stats",size: 16,color: '545865',font_style: :bold
        text "#{data['away']['name']} @ #{data['home']['name']}",size: 10,color: '545865'

        # PASSING
        # ===============================================================
        # ===============================================================
        move_down 10

        table [["#{data['team']['short']} Passing Totals"]] do |t|

          t.width = bounds.width
          t.cell_style = {border_width: 0}
          t.row(0).style background_color: Prawn::Graphics::Color.rgb2hex([127,255,155])
          t.row(0).style text_color: Prawn::Graphics::Color.rgb2hex([64,64,64])

        end

        label = ['COMP','COMP%','YDS','YDS/ATT','TD','INT','RAT','LONG','']
        e = data['team_passing']
        items = ["#{e['comp']} / #{e['att']}",e['comp_pct'],e['yds'],e['ypa'],e['td'],e['int'],e['rat'],e['long'],'']
        final = []
        final << label
        final << items

        table final do |t|

          t.width = bounds.width
          t.column(0...label.length-2).width = 50
          t.column(3).width = 55
          t.row(0).style font_style: :bold
          t.cell_style = {border_width: 0,text_color: '545865',size: 10,align: :center}
          t.row_colors = ['f7f7f7','efefef']

        end
        # ===============================================================
        # ===============================================================
        # INDIVIDUAL
        # ===============================================================
        # ===============================================================

        table [["#{data['team']['short']} Individual Passing"]] do |t|

          t.width = bounds.width
          t.cell_style = {border_width: 0}
          t.row(0).style background_color: Prawn::Graphics::Color.rgb2hex([127,255,155])
          t.row(0).style text_color: Prawn::Graphics::Color.rgb2hex([64,64,64])

        end

        label = ['PLAYER','COMP','COMP%','YDS','YDS/ATT','TD','INT','RAT','LONG','']
        pre = data['passing'].to_a
        pre.sort_by! { |i| -i['yds'] }
        items = pre.map { |e|

            ["<b>##{e['player']}</b>","#{e['comp']} / #{e['att']}",e['comp_pct'],e['yds'],e['ypa'],e['td'],e['int'],e['rat'],e['long'],'']

        }

        final = []
        final << label
        final.concat items

        table final do |t|

          t.width = bounds.width
          t.column(0...label.length-2).width = 50
          t.column(4).width = 55
          t.row(0).style font_style: :bold
          t.cell_style = {border_width: 0,text_color: '545865',size: 10,align: :center,inline_format: true}
          t.row_colors = ['f7f7f7','efefef']

        end
        # ===============================================================
        # ===============================================================


        # RECEIVING
        # ===============================================================
        # ===============================================================
        move_down 30

        table [["#{data['team']['short']} Receiving Totals"]] do |t|

          t.width = bounds.width
          t.cell_style = {border_width: 0}
          t.row(0).style background_color: Prawn::Graphics::Color.rgb2hex([127,255,155])
          t.row(0).style text_color: Prawn::Graphics::Color.rgb2hex([64,64,64])

        end

        label = ['REC','YDS','YDS/REC','TD','LONG','']
        e = data['team_receiving']
        items = [e['rec'],e['yds'],e['ypr'],e['td'],e['long'],'']
        final = []
        final << label
        final << items

        table final do |t|

          t.width = bounds.width
          t.column(0...label.length-2).width = 50
          t.column(2).width = 55
          t.row(0).style font_style: :bold
          t.cell_style = {border_width: 0,text_color: '545865',size: 10,align: :center}
          t.row_colors = ['f7f7f7','efefef']

        end
        # ===============================================================
        # ===============================================================
        # INDIVIDUAL
        # ===============================================================
        # ===============================================================

        table [["#{data['team']['short']} Individual Receiving"]] do |t|

          t.width = bounds.width
          t.cell_style = {border_width: 0}
          t.row(0).style background_color: Prawn::Graphics::Color.rgb2hex([127,255,155])
          t.row(0).style text_color: Prawn::Graphics::Color.rgb2hex([64,64,64])

        end

        label = ['PLAYER','REC','YDS','YDS/REC','TD','LONG','']
        pre = data['receiving'].to_a
        pre.sort_by! { |i| -i['yds'] }
        items = pre.map { |e|

            ["<b>##{e['player']}</b>",e['rec'],e['yds'],e['ypr'],e['td'],e['long'],'']

        }

        final = []
        final << label
        final.concat items

        table final do |t|

          t.width = bounds.width
          t.column(0...label.length-2).width = 50
          t.column(3).width = 55
          t.row(0).style font_style: :bold
          t.cell_style = {border_width: 0,text_color: '545865',size: 10,align: :center,inline_format: true}
          t.row_colors = ['f7f7f7','efefef']

        end
        # ===============================================================
        # ===============================================================


        # RUSHING
        # ===============================================================
        # ===============================================================
        move_down 30

        table [["#{data['team']['short']} Rushing Totals"]] do |t|

          t.width = bounds.width
          t.cell_style = {border_width: 0}
          t.row(0).style background_color: Prawn::Graphics::Color.rgb2hex([57,140,183])
          t.row(0).style text_color: Prawn::Graphics::Color.rgb2hex([255,255,255])

        end

        label = ['ATT','YDS','YDS/ATT','TD','LONG','']
        e = data['team_rushing']
        items = [e['att'],e['yds'],e['ypa'],e['td'],e['long'],'']
        final = []
        final << label
        final << items

        table final do |t|

          t.width = bounds.width
          t.column(0...label.length-2).width = 50
          t.column(2).width = 55
          t.row(0).style font_style: :bold
          t.cell_style = {border_width: 0,text_color: '545865',size: 10,align: :center}
          t.row_colors = ['f7f7f7','efefef']

        end
        # ===============================================================
        # ===============================================================
        # INDIVIDUAL
        # ===============================================================
        # ===============================================================

        table [["#{data['team']['short']} Individual Rushing"]] do |t|

          t.width = bounds.width
          t.cell_style = {border_width: 0}
          t.row(0).style background_color: Prawn::Graphics::Color.rgb2hex([57,140,183])
          t.row(0).style text_color: Prawn::Graphics::Color.rgb2hex([255,255,255])

        end

        label = ['PLAYER','ATT','YDS','YDS/ATT','TD','LONG','']
        pre = data['rushing'].to_a
        pre.sort_by! { |i| -i['yds'] }
        items = pre.map { |e|

            ["<b>##{e['player']}</b>",e['att'],e['yds'],e['ypa'],e['td'],e['long'],'']

        }

        final = []
        final << label
        final.concat items

        table final do |t|

          t.width = bounds.width
          t.column(0...label.length-2).width = 50
          t.column(3).width = 55
          t.row(0).style font_style: :bold
          t.cell_style = {border_width: 0,text_color: '545865',size: 10,align: :center,inline_format: true}
          t.row_colors = ['f7f7f7','efefef']

        end
        # ===============================================================
        # ===============================================================


        # KICK RETURN
        # ===============================================================
        # ===============================================================
        move_down 30

        table [["#{data['team']['short']} Kick Return Totals"]] do |t|

          t.width = bounds.width
          t.cell_style = {border_width: 0}
          t.row(0).style background_color: Prawn::Graphics::Color.rgb2hex([57,140,183])
          t.row(0).style text_color: Prawn::Graphics::Color.rgb2hex([255,255,255])

        end

        label = ['RET','YDS','YDS/RET','TD','LONG','']
        e = data['team_kick_returns']
        items = [e['att'],e['yds'],e['ypr'],e['td'],e['long'],'']
        final = []
        final << label
        final << items

        table final do |t|

          t.width = bounds.width
          t.column(0...label.length-2).width = 50
          t.column(2).width = 55
          t.row(0).style font_style: :bold
          t.cell_style = {border_width: 0,text_color: '545865',size: 10,align: :center}
          t.row_colors = ['f7f7f7','efefef']

        end
        # ===============================================================
        # ===============================================================
        # INDIVIDUAL
        # ===============================================================
        # ===============================================================

        table [["#{data['team']['short']} Individual Kick Returns"]] do |t|

          t.width = bounds.width
          t.cell_style = {border_width: 0}
          t.row(0).style background_color: Prawn::Graphics::Color.rgb2hex([57,140,183])
          t.row(0).style text_color: Prawn::Graphics::Color.rgb2hex([255,255,255])

        end

        label = ['PLAYER','RET','YDS','YDS/RET','TD','LONG','']
        pre = data['kick_returns'].to_a
        pre.sort_by! { |i| -i['yds'] }
        items = pre.map { |e|

            ["<b>##{e['player']}</b>",e['att'],e['yds'],e['ypr'],e['td'],e['long'],'']

        }

        final = []
        final << label
        final.concat items

        table final do |t|

          t.width = bounds.width
          t.column(0...label.length-2).width = 50
          t.column(3).width = 55
          t.row(0).style font_style: :bold
          t.cell_style = {border_width: 0,text_color: '545865',size: 10,align: :center,inline_format: true}
          t.row_colors = ['f7f7f7','efefef']

        end
        # ===============================================================
        # ===============================================================


        # PUNT RETURN
        # ===============================================================
        # ===============================================================
        move_down 30

        table [["#{data['team']['short']} Punt Return Totals"]] do |t|

          t.width = bounds.width
          t.cell_style = {border_width: 0}
          t.row(0).style background_color: Prawn::Graphics::Color.rgb2hex([57,140,183])
          t.row(0).style text_color: Prawn::Graphics::Color.rgb2hex([255,255,255])

        end

        label = ['RET','YDS','YDS/RET','TD','LONG','']
        e = data['team_punt_returns']
        items = [e['att'],e['yds'],e['ypr'],e['td'],e['long'],'']
        final = []
        final << label
        final << items

        table final do |t|

          t.width = bounds.width
          t.column(0...label.length-2).width = 50
          t.column(2).width = 55
          t.row(0).style font_style: :bold
          t.cell_style = {border_width: 0,text_color: '545865',size: 10,align: :center}
          t.row_colors = ['f7f7f7','efefef']

        end
        # ===============================================================
        # ===============================================================
        # INDIVIDUAL
        # ===============================================================
        # ===============================================================

        table [["#{data['team']['short']} Individual Punt Returns"]] do |t|

          t.width = bounds.width
          t.cell_style = {border_width: 0}
          t.row(0).style background_color: Prawn::Graphics::Color.rgb2hex([57,140,183])
          t.row(0).style text_color: Prawn::Graphics::Color.rgb2hex([255,255,255])

        end

        label = ['PLAYER','RET','YDS','YDS/RET','TD','LONG','']
        pre = data['punt_returns'].to_a
        pre.sort_by! { |i| -i['yds'] }
        items = pre.map { |e|

            ["<b>##{e['player']}</b>",e['att'],e['yds'],e['ypr'],e['td'],e['long'],'']

        }

        final = []
        final << label
        final.concat items

        table final do |t|

          t.width = bounds.width
          t.column(0...label.length-2).width = 50
          t.column(3).width = 55
          t.row(0).style font_style: :bold
          t.cell_style = {border_width: 0,text_color: '545865',size: 10,align: :center,inline_format: true}
          t.row_colors = ['f7f7f7','efefef']

        end
        # ===============================================================
        # ===============================================================

    end

end
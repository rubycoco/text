# encoding: utf-8


require 'helper'


class TestAsciify < MiniTest::Unit::TestCase

  def test_asciify

    txt_io = [
      [ 'São Paulo',   'Sao Paulo' ],
      [ 'São Gonçalo', 'Sao Goncalo' ],
      [ 'Výčepní',     'Vycepni' ],
      [ 'Żubr', 'Zubr' ],
      [ 'Żywiec', 'Zywiec' ],
      [ 'Lomża Export', 'Lomza Export' ],
      [ 'Nogne Ø Imperial Stout', 'Nogne O Imperial Stout' ],
      [ 'Xyauyù', 'Xyauyu' ],
      [ 'Águila', 'Aguila' ],
      [ 'Arena Amazônia', 'Arena Amazonia' ],
      [ 'Tōkyō', 'Tokyo' ],
      [ 'Ōsaka', 'Osaka' ],
      [ 'El Djazaïr', 'El Djazair' ],
      [ 'Al-Kharṭūm', 'Al-Khartum' ],
      [ 'Ṭarābulus', 'Tarabulus' ],
      [ 'Al-Iskandarīyah', 'Al-Iskandariyah' ],
      [ 'Pex̌awar', 'Pexawar'],
      [ 'Pishōr', 'Pishor' ],
      [ 'Pishāwar', 'Pishawar' ],
      [ 'Islām ābād', 'Islam abad' ],
      [ 'Thành Phố Hồ Chí Minh', 'Thanh Pho Ho Chi Minh' ],
      [ 'Åland Islands', 'Aland Islands' ]
    ]

    txt_io.each do |txt|
      assert_equal txt[1], TextUtils.asciify( txt[0] )
    end
  end # method test_asciify


end # class TestAsciify

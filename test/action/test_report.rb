require "minitest/autorun"
require_relative '../../lib/action/report.rb'
require_relative './robot_maker.rb'

class TestReport< Minitest::Test
  def test_act_report
    report = Game::Report.new
    robot = RobotMaker::create(0, 0, "EAST")

    assert_output(/Output:\s0,0,EAST/) { report.act(robot, "REPORT") }
  end
end
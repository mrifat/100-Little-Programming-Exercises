require 'spec_helper'

describe UI do
  let (:output) { double('output').as_null_object }
  let (:ui) { UI.new(output) }

  describe '#start' do
    it 'sends a welcome message' do
      output.should_receive(:puts).with('Welcome to currency calculator:')
      ui.start
    end

    it 'asks for a menu number' do
      output.should_receive(:puts).with('Enter the number corresponding to the menu item:')
      ui.start
    end
  end

  describe '#load menu' do
    context 'available currencies menu' do
      it 'displays the available currencies menu' do
        output.should_receive(:puts).with('Available currencies')
        ui.load_menu(1)
      end
    end

    context 'help menu' do
      it 'displays the help menu' do
        output.should_receive(:puts).with('Help menu')
        ui.load_menu(3)
      end
    end

    context 'convert menu' do
      it 'displays the convert menu' do
        ui.stub!(:gets) {'bla\n'}
        output.should_receive(:puts).with('Conversion menu')
        ui.load_menu(2)
      end
    end

    context 'with no or wrong menu number' do
      it 'displays the main menu' do
        ui.stub!(:gets) {'bla\n'}
        output.should_receive(:puts).with('Welcome to currency calculator:')
        ui.start
      end
    end

  end
end

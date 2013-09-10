# encoding: utf-8
require 'spec_helper'

describe Guard::Npm do
  subject { described_class.new }

  context '#npm_install' do

    it 'should call `npm install\' command' do
      subject.should_receive(:system).with('npm install')
      subject.send(:install_package)
    end

  end

  context '#start' do

    it 'should call #npm_install' do
      subject.should_receive(:install_package).and_return(true)
      subject.start
    end

  end

  context '#reload' do

    it 'should call #npm_install' do
      subject.should_receive(:install_package).and_return(true)
      subject.reload
    end

  end

  context '#run_all' do

    it 'should call #npm_install' do
      subject.should_receive(:install_package).and_return(true)
      subject.run_all
    end

  end

  context '#run_on_additions' do

    it 'should call #npm_install' do
      subject.should_receive(:install_package).and_return(true)
      subject.run_on_additions
    end

  end

  context '#run_on_modifications' do

    it 'should call #npm_install' do
      subject.should_receive(:install_package).and_return(true)
      subject.run_on_modifications
    end

  end

end

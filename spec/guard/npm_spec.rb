# encoding: utf-8
require 'spec_helper'
require 'guard/compat/test/helper'

describe Guard::Npm do
  package_file = 'package.json'
  shrinkwrap_file = 'npm-shrinkwrap.json'

  before :each do

    File.open(package_file, 'wb') { |f| f.write '{"repository": true}' }

  end

  after :each do

    File.unlink package_file
    File.unlink shrinkwrap_file if File.exists? shrinkwrap_file

  end

  subject { described_class.new }

  context '#npm_install' do

    it 'should call `npm install\' command' do
      expect(subject).to receive(:system).with('npm install')
      subject.send(:install_package)
    end

  end

  context '#npm_shrinkwrap' do

    it 'should call `npm shrinkwrap\' command' do
      expect(subject).to receive(:system).with('npm install')
      subject.send(:shrinkwrap_package)
    end

  end

  context '#start' do

    it 'should call #npm_install' do
      expect(subject).to receive(:install_package).and_return(true)
      subject.start
    end

    it 'should call #npm_shrinkwrap' do
      expect(subject).to receive(:shrinkwrap_package).and_return(true)
      subject.start
    end

  end

  context '#reload' do

    it 'should call #npm_install' do
      expect(subject).to receive(:install_package).and_return(true)
      subject.reload
    end

    it 'should call #npm_shrinkwrap' do
      expect(subject).to receive(:shrinkwrap_package).and_return(true)
      subject.reload
    end

  end

  context '#run_all' do

    it 'should call #npm_install' do
      expect(subject).to receive(:install_package).and_return(true)
      subject.run_all
    end

    it 'should call #npm_shrinkwrap' do
      expect(subject).to receive(:shrinkwrap_package).and_return(true)
      subject.run_all
    end

  end

  context '#run_on_additions' do

    it 'should call #npm_install' do
      expect(subject).to receive(:install_package).and_return(true)
      subject.run_on_additions
    end

    it 'should call #npm_shrinkwrap' do
      expect(subject).to receive(:shrinkwrap_package).and_return(true)
      subject.run_on_additions
    end

  end

  context '#run_on_modifications' do

    it 'should call #npm_install' do
      expect(subject).to receive(:install_package).and_return(true)
      subject.run_on_modifications
    end

    it 'should call #npm_shrinkwrap' do
      expect(subject).to receive(:shrinkwrap_package).and_return(true)
      subject.run_on_modifications
    end

  end

end

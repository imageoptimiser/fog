Shindo.tests('Fog::Rackspace::BlockStorage | volume_types', ['rackspace']) do

  pending if Fog.mocking?

  service = Fog::Rackspace::BlockStorage.new

  tests("success") do
    tests("#all").succeeds do
      service.volume_types.all
    end

    tests("#get").succeeds do
      service.volume_types.get(1)
    end
  end

  tests("failure").returns(nil) do
    service.volume_types.get('some_random_identity')
  end
end

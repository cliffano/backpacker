import json
conf = open('conf/packer/docker.json', 'r')
version = json.loads(conf.read())['version']

# def test_version_via_default(host):
#     cmd = host.run_expect([0], 'docker run cliffano/backpackerexample --version')
#     assert cmd.stdout == '0.11.0\n'

def test_help_via_default(host):
    cmd = host.run_expect([0], 'docker run cliffano/certilizer --help')
    assert 'Usage: certilizer [OPTIONS]' in cmd.stdout

# def test_version_via_latest_tag(host):
#     cmd = host.run_expect([0], 'docker run cliffano/backpackerexample:latest --version')
#     assert cmd.stdout == '0.11.0\n'

def test_help_via_latest_tag(host):
    cmd = host.run_expect([0], 'docker run cliffano/certilizer:latest --help')
    assert 'Usage: certilizer [OPTIONS]' in cmd.stdout

# def test_version_via_version_tag(host):
#     cmd = host.run_expect([0], f'docker run cliffano/backpackerexample:{version} --version')
#     assert cmd.stdout == '0.11.0\n'

# TODO: uncomment after publishing
# def test_help_via_version_tag(host):
#     cmd = host.run_expect([0], f'docker run cliffano/backpackerexample:{version} --help')
#     assert 'Usage: backpackerexample [OPTIONS]' in cmd.stdout

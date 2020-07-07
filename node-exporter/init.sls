# State to install node_exporter

'prometheus__node_exporter_package':
  pkg.installed:
    - pkgs:
      - prometheus-node-exporter

prometheus-node-exporter:
  service.running:
    - enable: True
    - require:
      - pkg: 'prometheus__node_exporter_package'

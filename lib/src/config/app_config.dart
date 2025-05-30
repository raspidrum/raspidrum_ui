class AppConfig {
  final String grpcHost;
  final int grpcPort;

  const AppConfig({
    this.grpcHost = 'localhost',
    this.grpcPort = 50051,
  });

  factory AppConfig.development() => const AppConfig(
        grpcHost: 'localhost',
        grpcPort: 50051,
      );

  factory AppConfig.production() => const AppConfig(
        grpcHost: 'raspidrum.local', // или другой production хост
        grpcPort: 50051,
      );
} 
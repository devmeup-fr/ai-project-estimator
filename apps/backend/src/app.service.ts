import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello() {
    return {
      message: 'AI Project Estimator API is running',
      timestamp: new Date().toISOString()
    };
  }
}

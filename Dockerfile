# Copyright 2015 Google Inc. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
#you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
#
# scalable-resilient-web-app-solution e2e test
#
# VERSION 0.0.1
FROM google/cloud-sdk

MAINTAINER Evan Brown <evanbrown@google.com>

RUN apt-get install -y curl
RUN gcloud components update beta --quiet
COPY . /tmp/scalable-resilient-web-app-solution
RUN cp /tmp/scalable-resilient-web-app-solution/test/e2e.sh /tmp/scalable-resilient-web-app-solution/e2e.sh
WORKDIR /tmp/scalable-resilient-web-app-solution

ENTRYPOINT ["./e2e.sh"]

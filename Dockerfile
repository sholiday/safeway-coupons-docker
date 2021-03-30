FROM alpine:3 as builder
RUN apk --no-cache add ca-certificates git
RUN git clone --depth 1 https://github.com/smkent/safeway-coupons.git

FROM python:3.9-alpine
COPY --from=builder safeway-coupons/safeway-coupons /safeway-coupons
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY run.sh /
ENTRYPOINT ["/run.sh"]

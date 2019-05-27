
FROM node:8

LABEL version="0.1.0"
LABEL repository="https://github.com/kdawgwilk/firebase-action"
LABEL homepage="https://github.com/kdawgwilk/firebase-action"
LABEL maintainer="Kaden Wilkinson <kdawgwilk@github.com>"

LABEL com.github.actions.name="GitHub Action for Firebase"
LABEL com.github.actions.description="Wraps the firebase-tools CLI to enable common commands."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="gray-dark"

RUN npm install -g firebase-tools

COPY LICENSE README.md /
COPY "entrypoint.sh" "/entrypoint.sh"

ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]

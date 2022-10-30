ARG SET_POSTGRES_VERSION

FROM postgres:${SET_POSTGRES_VERSION}

ARG SET_LOCALE
ARG SET_ENCODING
ARG SET_LANG
ARG BUILD_DATE
ARG VCS_REF


LABEL org.label-schema.build-date=$BUILD_DATE \
		org.label-schema.name="PostgreSQL with ${SET_LOCALE}.${SET_ENCODING} locale and ${SET_LANG} language" \
		org.label-schema.description="PostgreSQL with ${SET_LOCALE}.${SET_ENCODING} locale and ${SET_LANG} language" \ org.label-schema.url="https://github.com/onjin/docker-postgres-with-locale" \
		org.label-schema.vcs-ref=$VCS_REF \
		org.label-schema.vcs-url="https://github.com/onjin/docker-postgres-with-locale" \
		org.label-schema.vendor="Marek Wywiał" \
		org.label-schema.version=$PG_VERSION \
		org.label-schema.schema-version="1.0"

RUN localedef -i ${SET_LOCALE} -c -f ${SET_ENCODING} -A /usr/share/locale/locale.alias ${SET_LOCALE}.${SET_ENCODING}
ENV LANG ${SET_LANG}

FROM evoapicloud/evolution-api:v2.3.7

EXPOSE 8080

CMD ["node", "./dist/main.js"]

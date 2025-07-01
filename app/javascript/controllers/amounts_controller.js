import { Controller } from "@hotwired/stimulus";
import { z } from "zod";
import i18next from "i18next";
export default class extends Controller {
    static targets = ["amount", "error", "row"];

    connect() {
        console.log("AmountsController connected");
    }

    validate(event) {
        const input = event.target;

        const row = input.closest(".row");
        const max = Number(input.dataset.maximum);
        const value = Number(input.value);
        const errorEl = row.querySelector('[data-amounts-target="error"]');

        const schema = z
            .number({
                invalid_type_error: i18next.t("zod.errors.invalid_type"),
            })
            .min(0, {
                message: i18next.t("zod.errors.too_small", { minimum: 0 }),
            })
            .max(max, {
                message: i18next.t("zod.errors.too_big", { maximum: max }),
            });

        const result = schema.safeParse(value);

        if (!result.success) {
            errorEl.textContent = result.error.issues[0].message;
        } else {
            errorEl.textContent = "";
        }
    }
}

<form class="o-form" data-oform="contacts">
    <div class="modal-heads-title">Обратный звонок</div>
    <div class="modal-heads-title-sub txt-center">Оставьте свои данные, и мы Вам перезвоним</div>

    <div class="o-form-row">
        <div class="o-form-title"><span class="bold">Введите имя:</span> <span class="req">*</span></div>
        <div class="o-form-input"><input type="text" name="name" placeholder="Ваше реальное имя" value=""></div>
    </div>
    <div class="o-form-row">
        <div class="o-form-title"><span class="bold">Ваш телефон:</span></div>
        <div class="o-form-input"><input type="text" name="tel" placeholder="Ваш телефон" value="" class="js-mask-telphone"></div>
    </div>

    <div class="o-form-row">
        <label class="o-style-checkbox">
            <input type="checkbox" name="agree" value="yes" required="">
            <span class="o-style-checkbox-icon"></span>
        </label>
          <span class="txt-label">
            Вы соглашаетесь с условиями обработки<br>
            персональных данных (<a href="#" data-obox="form-read-privacy">ознакомиться</a>).
          </span>
    </div>

    <div class="o-form-submit txt-center">
        <button class="btn-form-submit" type="submit"><span class="o-hvr">ОТПРАВИТЬ</span></button>
    </div>
    <input type="hidden" name="item-url" value="false">
    <input type="hidden" name="theme" value="Заказ обратного звонка">
    <input type="hidden" name="message" value="Заказ обратного звонка">
</form>
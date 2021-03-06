#ifndef _LCD_BIG_NUMBER_H_
#define _LCD_BIG_NUMBER_H_

#include "LCDWidget.h"
#include <string>

/** \class LCDBigNumber LCDBigNumber.h "api/LCDBigNumber.h"
 *  \brief A widget to display a big number.
 *  \ingroup widgets
 * This widget is used to display a big number (size is 3*4 characters) somewhere on screen.
 */

class LCDBigNumber : public LCDWidget
{
 private:
  int _number, _position;
 public:
  /**
   * \brief Represents a column.
   *
   * Can be used as a value for this widget. It will then display a big colon character wich size is 1*4.
   */
  static const int LCD_COLON;
  /**
   * \brief Default Constructor.
   *
   * This constructor can be used without parameter in most cases.
   * But the widget will have to be added to a parent (screen or frame).
   * @param parent A pointer to parent of this screen. It should be a LCDClient object.
   * @param id A string with the identifier for the screen. If not provided, a unique one will be generated automatically.
   */
  LCDBigNumber(LCDElement *parent = 0, const std::string &id = "");
  /**
   * \brief Constructor with widget values specified.
   *
   * This construct can be used to specify the values for the widget while building it.
   * @param number An integer containing the number to be displayed. You can use special value \ref LCD_COLON to display a colon.
   * @param x Integer containing 1-based value for column number.
   * @param parent A pointer to parent of this screen. It should be a LCDClient object.
   * @param id A string with the identifier for the screen. If not provided, a unique one will be generated automatically.
   */
  LCDBigNumber(int number, int x=1, LCDElement *parent = 0, const std::string &id = "");

  /**
   * \brief Set which number should be used for the widget.
   *
   * Useful when using with a sensor returning a number with more than one digit.
   * You can choose which one should be used to change the value of the widget.
   * Number 1 is on right (less significant digit).
   * @param position The position to use in the sensor value.
   */
  void setNumberPosition(int position);

  virtual void notifyChanged();

  /**
   * \brief Set the values for the widget.
   *
   * Set or change the useful values for this widget.
   * @param number An integer containing the number to be displayed. You can use special value \ref LCD_COLON to display a colon.
   * @param x Integer containing 1-based value for column number.
   */
  void set(int number, int x);

  /**
   * \brief Set the value for the widget.
   *
   * Set or change the number displayed by this widget.
   * @param number An integer containing the number to be displayed. You can use special value \ref LCD_COLON to display a colon.
   */
  void setNumber(int number);

  /**
   * \brief Get the value for the widget.
   *
   * Get the number displayed by this widget.
   * @return An integer containing the number that is displayed. Returns LCD_COLON if it is a colon.
   */
  int getNumber() const;

  virtual void valueCallback(std::string value);
};

#endif

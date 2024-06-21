/*
 * hello_world_test.h
 *
 *  Created on: Jun 19, 2024
 *      Author: Administrator
 */

#ifndef INC_HELLO_WORLD_HELLO_WORLD_TEST_H_
#define INC_HELLO_WORLD_HELLO_WORLD_TEST_H_

#ifdef __cplusplus
extern "C" {
#endif

int LoadFloatModelAndPerformInference();
int LoadFloatModel();
float_t Invoke(float_t i);

#ifdef __cplusplus
}
#endif
#endif /* INC_HELLO_WORLD_HELLO_WORLD_TEST_H_ */

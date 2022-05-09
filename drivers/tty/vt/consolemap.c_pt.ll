; ModuleID = '/llk/IR_all_yes/drivers/tty/vt/consolemap.c_pt.bc'
source_filename = "../drivers/tty/vt/consolemap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+inverse_translate\22, \22a\22\09"
module asm "\09.weak\09__crc_inverse_translate\09\09\09\09"
module asm "\09.long\09__crc_inverse_translate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inverse_translate:\09\09\09\09\09"
module asm "\09.asciz \09\22inverse_translate\22\09\09\09\09\09"
module asm "__kstrtabns_inverse_translate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+con_set_default_unimap\22, \22a\22\09"
module asm "\09.weak\09__crc_con_set_default_unimap\09\09\09\09"
module asm "\09.long\09__crc_con_set_default_unimap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_con_set_default_unimap:\09\09\09\09\09"
module asm "\09.asciz \09\22con_set_default_unimap\22\09\09\09\09\09"
module asm "__kstrtabns_con_set_default_unimap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+con_copy_unimap\22, \22a\22\09"
module asm "\09.weak\09__crc_con_copy_unimap\09\09\09\09"
module asm "\09.long\09__crc_con_copy_unimap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_con_copy_unimap:\09\09\09\09\09"
module asm "\09.asciz \09\22con_copy_unimap\22\09\09\09\09\09"
module asm "__kstrtabns_con_copy_unimap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.vc = type { ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.vc_data = type { %struct.tty_port, %struct.vc_state, %struct.vc_state, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i32, i16, i16, i32, i16, %struct.console_font, i16, i32, i32, [16 x i32], %struct.vt_mode, ptr, i32, %struct.wait_queue_head, i16, i8, i32, [8 x i32], [48 x i8], ptr, i32, i32, i32, i16, ptr, ptr, ptr, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon = type { ptr }
%struct.llist_head = type { ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.vc_state = type { i32, i32, i8, [2 x i8], i8, i32, i8, i8, i8, i8 }
%struct.console_font = type { i32, i32, i32, ptr }
%struct.vt_mode = type { i8, i8, i16, i16, i16 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.uni_pagedir = type { [32 x ptr], i32, i32, [4 x ptr], ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.unipair = type { i16, i16 }

@inv_translate = internal global { [63 x i32], [36 x i8] } zeroinitializer, align 32
@translations = internal global { [4 x [256 x i16]], [512 x i8] } { [4 x [256 x i16]] [[256 x i16] [i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63, i16 64, i16 65, i16 66, i16 67, i16 68, i16 69, i16 70, i16 71, i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 79, i16 80, i16 81, i16 82, i16 83, i16 84, i16 85, i16 86, i16 87, i16 88, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 95, i16 96, i16 97, i16 98, i16 99, i16 100, i16 101, i16 102, i16 103, i16 104, i16 105, i16 106, i16 107, i16 108, i16 109, i16 110, i16 111, i16 112, i16 113, i16 114, i16 115, i16 116, i16 117, i16 118, i16 119, i16 120, i16 121, i16 122, i16 123, i16 124, i16 125, i16 126, i16 127, i16 128, i16 129, i16 130, i16 131, i16 132, i16 133, i16 134, i16 135, i16 136, i16 137, i16 138, i16 139, i16 140, i16 141, i16 142, i16 143, i16 144, i16 145, i16 146, i16 147, i16 148, i16 149, i16 150, i16 151, i16 152, i16 153, i16 154, i16 155, i16 156, i16 157, i16 158, i16 159, i16 160, i16 161, i16 162, i16 163, i16 164, i16 165, i16 166, i16 167, i16 168, i16 169, i16 170, i16 171, i16 172, i16 173, i16 174, i16 175, i16 176, i16 177, i16 178, i16 179, i16 180, i16 181, i16 182, i16 183, i16 184, i16 185, i16 186, i16 187, i16 188, i16 189, i16 190, i16 191, i16 192, i16 193, i16 194, i16 195, i16 196, i16 197, i16 198, i16 199, i16 200, i16 201, i16 202, i16 203, i16 204, i16 205, i16 206, i16 207, i16 208, i16 209, i16 210, i16 211, i16 212, i16 213, i16 214, i16 215, i16 216, i16 217, i16 218, i16 219, i16 220, i16 221, i16 222, i16 223, i16 224, i16 225, i16 226, i16 227, i16 228, i16 229, i16 230, i16 231, i16 232, i16 233, i16 234, i16 235, i16 236, i16 237, i16 238, i16 239, i16 240, i16 241, i16 242, i16 243, i16 244, i16 245, i16 246, i16 247, i16 248, i16 249, i16 250, i16 251, i16 252, i16 253, i16 254, i16 255], [256 x i16] [i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 8594, i16 8592, i16 8593, i16 8595, i16 47, i16 9608, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63, i16 64, i16 65, i16 66, i16 67, i16 68, i16 69, i16 70, i16 71, i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 79, i16 80, i16 81, i16 82, i16 83, i16 84, i16 85, i16 86, i16 87, i16 88, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 160, i16 9670, i16 9618, i16 9225, i16 9228, i16 9229, i16 9226, i16 176, i16 177, i16 9617, i16 9227, i16 9496, i16 9488, i16 9484, i16 9492, i16 9532, i16 9146, i16 9147, i16 9472, i16 9148, i16 9149, i16 9500, i16 9508, i16 9524, i16 9516, i16 9474, i16 8804, i16 8805, i16 960, i16 8800, i16 163, i16 183, i16 127, i16 128, i16 129, i16 130, i16 131, i16 132, i16 133, i16 134, i16 135, i16 136, i16 137, i16 138, i16 139, i16 140, i16 141, i16 142, i16 143, i16 144, i16 145, i16 146, i16 147, i16 148, i16 149, i16 150, i16 151, i16 152, i16 153, i16 154, i16 155, i16 156, i16 157, i16 158, i16 159, i16 160, i16 161, i16 162, i16 163, i16 164, i16 165, i16 166, i16 167, i16 168, i16 169, i16 170, i16 171, i16 172, i16 173, i16 174, i16 175, i16 176, i16 177, i16 178, i16 179, i16 180, i16 181, i16 182, i16 183, i16 184, i16 185, i16 186, i16 187, i16 188, i16 189, i16 190, i16 191, i16 192, i16 193, i16 194, i16 195, i16 196, i16 197, i16 198, i16 199, i16 200, i16 201, i16 202, i16 203, i16 204, i16 205, i16 206, i16 207, i16 208, i16 209, i16 210, i16 211, i16 212, i16 213, i16 214, i16 215, i16 216, i16 217, i16 218, i16 219, i16 220, i16 221, i16 222, i16 223, i16 224, i16 225, i16 226, i16 227, i16 228, i16 229, i16 230, i16 231, i16 232, i16 233, i16 234, i16 235, i16 236, i16 237, i16 238, i16 239, i16 240, i16 241, i16 242, i16 243, i16 244, i16 245, i16 246, i16 247, i16 248, i16 249, i16 250, i16 251, i16 252, i16 253, i16 254, i16 255], [256 x i16] [i16 0, i16 9786, i16 9787, i16 9829, i16 9830, i16 9827, i16 9824, i16 8226, i16 9688, i16 9675, i16 9689, i16 9794, i16 9792, i16 9834, i16 9835, i16 9788, i16 9654, i16 9664, i16 8597, i16 8252, i16 182, i16 167, i16 9644, i16 8616, i16 8593, i16 8595, i16 8594, i16 8592, i16 8735, i16 8596, i16 9650, i16 9660, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63, i16 64, i16 65, i16 66, i16 67, i16 68, i16 69, i16 70, i16 71, i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 79, i16 80, i16 81, i16 82, i16 83, i16 84, i16 85, i16 86, i16 87, i16 88, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 95, i16 96, i16 97, i16 98, i16 99, i16 100, i16 101, i16 102, i16 103, i16 104, i16 105, i16 106, i16 107, i16 108, i16 109, i16 110, i16 111, i16 112, i16 113, i16 114, i16 115, i16 116, i16 117, i16 118, i16 119, i16 120, i16 121, i16 122, i16 123, i16 124, i16 125, i16 126, i16 8962, i16 199, i16 252, i16 233, i16 226, i16 228, i16 224, i16 229, i16 231, i16 234, i16 235, i16 232, i16 239, i16 238, i16 236, i16 196, i16 197, i16 201, i16 230, i16 198, i16 244, i16 246, i16 242, i16 251, i16 249, i16 255, i16 214, i16 220, i16 162, i16 163, i16 165, i16 8359, i16 402, i16 225, i16 237, i16 243, i16 250, i16 241, i16 209, i16 170, i16 186, i16 191, i16 8976, i16 172, i16 189, i16 188, i16 161, i16 171, i16 187, i16 9617, i16 9618, i16 9619, i16 9474, i16 9508, i16 9569, i16 9570, i16 9558, i16 9557, i16 9571, i16 9553, i16 9559, i16 9565, i16 9564, i16 9563, i16 9488, i16 9492, i16 9524, i16 9516, i16 9500, i16 9472, i16 9532, i16 9566, i16 9567, i16 9562, i16 9556, i16 9577, i16 9574, i16 9568, i16 9552, i16 9580, i16 9575, i16 9576, i16 9572, i16 9573, i16 9561, i16 9560, i16 9554, i16 9555, i16 9579, i16 9578, i16 9496, i16 9484, i16 9608, i16 9604, i16 9612, i16 9616, i16 9600, i16 945, i16 223, i16 915, i16 960, i16 931, i16 963, i16 181, i16 964, i16 934, i16 920, i16 937, i16 948, i16 8734, i16 966, i16 949, i16 8745, i16 8801, i16 177, i16 8805, i16 8804, i16 8992, i16 8993, i16 247, i16 8776, i16 176, i16 8729, i16 183, i16 8730, i16 8319, i16 178, i16 9632, i16 160], [256 x i16] [i16 -4096, i16 -4095, i16 -4094, i16 -4093, i16 -4092, i16 -4091, i16 -4090, i16 -4089, i16 -4088, i16 -4087, i16 -4086, i16 -4085, i16 -4084, i16 -4083, i16 -4082, i16 -4081, i16 -4080, i16 -4079, i16 -4078, i16 -4077, i16 -4076, i16 -4075, i16 -4074, i16 -4073, i16 -4072, i16 -4071, i16 -4070, i16 -4069, i16 -4068, i16 -4067, i16 -4066, i16 -4065, i16 -4064, i16 -4063, i16 -4062, i16 -4061, i16 -4060, i16 -4059, i16 -4058, i16 -4057, i16 -4056, i16 -4055, i16 -4054, i16 -4053, i16 -4052, i16 -4051, i16 -4050, i16 -4049, i16 -4048, i16 -4047, i16 -4046, i16 -4045, i16 -4044, i16 -4043, i16 -4042, i16 -4041, i16 -4040, i16 -4039, i16 -4038, i16 -4037, i16 -4036, i16 -4035, i16 -4034, i16 -4033, i16 -4032, i16 -4031, i16 -4030, i16 -4029, i16 -4028, i16 -4027, i16 -4026, i16 -4025, i16 -4024, i16 -4023, i16 -4022, i16 -4021, i16 -4020, i16 -4019, i16 -4018, i16 -4017, i16 -4016, i16 -4015, i16 -4014, i16 -4013, i16 -4012, i16 -4011, i16 -4010, i16 -4009, i16 -4008, i16 -4007, i16 -4006, i16 -4005, i16 -4004, i16 -4003, i16 -4002, i16 -4001, i16 -4000, i16 -3999, i16 -3998, i16 -3997, i16 -3996, i16 -3995, i16 -3994, i16 -3993, i16 -3992, i16 -3991, i16 -3990, i16 -3989, i16 -3988, i16 -3987, i16 -3986, i16 -3985, i16 -3984, i16 -3983, i16 -3982, i16 -3981, i16 -3980, i16 -3979, i16 -3978, i16 -3977, i16 -3976, i16 -3975, i16 -3974, i16 -3973, i16 -3972, i16 -3971, i16 -3970, i16 -3969, i16 -3968, i16 -3967, i16 -3966, i16 -3965, i16 -3964, i16 -3963, i16 -3962, i16 -3961, i16 -3960, i16 -3959, i16 -3958, i16 -3957, i16 -3956, i16 -3955, i16 -3954, i16 -3953, i16 -3952, i16 -3951, i16 -3950, i16 -3949, i16 -3948, i16 -3947, i16 -3946, i16 -3945, i16 -3944, i16 -3943, i16 -3942, i16 -3941, i16 -3940, i16 -3939, i16 -3938, i16 -3937, i16 -3936, i16 -3935, i16 -3934, i16 -3933, i16 -3932, i16 -3931, i16 -3930, i16 -3929, i16 -3928, i16 -3927, i16 -3926, i16 -3925, i16 -3924, i16 -3923, i16 -3922, i16 -3921, i16 -3920, i16 -3919, i16 -3918, i16 -3917, i16 -3916, i16 -3915, i16 -3914, i16 -3913, i16 -3912, i16 -3911, i16 -3910, i16 -3909, i16 -3908, i16 -3907, i16 -3906, i16 -3905, i16 -3904, i16 -3903, i16 -3902, i16 -3901, i16 -3900, i16 -3899, i16 -3898, i16 -3897, i16 -3896, i16 -3895, i16 -3894, i16 -3893, i16 -3892, i16 -3891, i16 -3890, i16 -3889, i16 -3888, i16 -3887, i16 -3886, i16 -3885, i16 -3884, i16 -3883, i16 -3882, i16 -3881, i16 -3880, i16 -3879, i16 -3878, i16 -3877, i16 -3876, i16 -3875, i16 -3874, i16 -3873, i16 -3872, i16 -3871, i16 -3870, i16 -3869, i16 -3868, i16 -3867, i16 -3866, i16 -3865, i16 -3864, i16 -3863, i16 -3862, i16 -3861, i16 -3860, i16 -3859, i16 -3858, i16 -3857, i16 -3856, i16 -3855, i16 -3854, i16 -3853, i16 -3852, i16 -3851, i16 -3850, i16 -3849, i16 -3848, i16 -3847, i16 -3846, i16 -3845, i16 -3844, i16 -3843, i16 -3842, i16 -3841]], [512 x i8] zeroinitializer }, align 32
@__kstrtab_inverse_translate = external dso_local constant [0 x i8], align 1
@__kstrtabns_inverse_translate = external dso_local constant [0 x i8], align 1
@__ksymtab_inverse_translate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inverse_translate to i32), ptr @__kstrtab_inverse_translate, ptr @__kstrtabns_inverse_translate }, section "___ksymtab_gpl+inverse_translate", align 4
@vc_cons = external dso_local local_unnamed_addr global [63 x %struct.vc], align 4
@fg_console = external dso_local local_unnamed_addr global i32, align 4
@dflt = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@dfont_unitable = external dso_local local_unnamed_addr global [0 x i16], align 2
@dfont_unicount = external dso_local local_unnamed_addr global [0 x i8], align 1
@__kstrtab_con_set_default_unimap = external dso_local constant [0 x i8], align 1
@__kstrtabns_con_set_default_unimap = external dso_local constant [0 x i8], align 1
@__ksymtab_con_set_default_unimap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @con_set_default_unimap to i32), ptr @__kstrtab_con_set_default_unimap, ptr @__kstrtabns_con_set_default_unimap }, section "___ksymtab+con_set_default_unimap", align 4
@__kstrtab_con_copy_unimap = external dso_local constant [0 x i8], align 1
@__kstrtabns_con_copy_unimap = external dso_local constant [0 x i8], align 1
@__ksymtab_con_copy_unimap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @con_copy_unimap to i32), ptr @__kstrtab_con_copy_unimap, ptr @__kstrtabns_con_copy_unimap }, section "___ksymtab+con_copy_unimap", align 4
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/tty/vt/consolemap.c\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 16, i64 8203, i64 8204, i64 8205, i64 8206, i64 8207, i64 65279]
@__sancov_gen_cov_switch_values.4 = internal global [8 x i64] [i64 6, i64 32, i64 8203, i64 8204, i64 8205, i64 8206, i64 8207, i64 65279]
@__sancov_gen_cov_switch_values.5 = internal global [8 x i64] [i64 6, i64 16, i64 8203, i64 8204, i64 8205, i64 8206, i64 8207, i64 65279]
@___asan_gen_.6 = private unnamed_addr constant [14 x i8] c"inv_translate\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 187, i32 12 }
@___asan_gen_.9 = private unnamed_addr constant [13 x i8] c"translations\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 39, i32 23 }
@___asan_gen_.12 = private unnamed_addr constant [5 x i8] c"dflt\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 197, i32 28 }
@___asan_gen_.16 = private constant [31 x i8] c"../drivers/tty/vt/consolemap.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 776, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 230, i32 6 }
@___asan_gen_.22 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 214, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 156, i32 2 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab_con_copy_unimap, ptr @__ksymtab_con_set_default_unimap, ptr @__ksymtab_inverse_translate, ptr @inv_translate, ptr @translations, ptr @dflt, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_translate to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @translations to i32), i32 2048, i32 2560, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dflt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @set_translate(i32 noundef %m, ptr nocapture noundef readonly %vc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x i32], ptr @inv_translate, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %m, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr [4 x [256 x i16]], ptr @translations, i32 0, i32 %m
  ret ptr %arrayidx1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @inverse_translate(ptr nocapture noundef readonly %conp, i32 noundef %glyph, i32 noundef %use_unicode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %glyph)
  %0 = icmp ugt i32 %glyph, 511
  br i1 %0, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %entry
  %vc_uni_pagedir_loc = getelementptr inbounds %struct.vc_data, ptr %conp, i32 0, i32 49
  %1 = ptrtoint ptr %vc_uni_pagedir_loc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vc_uni_pagedir_loc, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %conv = trunc i32 %glyph to i16
  br label %cleanup

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %use_unicode)
  %tobool4.not = icmp eq i32 %use_unicode, 0
  br i1 %tobool4.not, label %if.else11, label %if.then5

if.then5:                                         ; preds = %if.else3
  %inverse_trans_unicode = getelementptr inbounds %struct.uni_pagedir, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %inverse_trans_unicode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %inverse_trans_unicode, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %if.then7, label %if.else9

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %conv8 = trunc i32 %glyph to i16
  br label %cleanup

if.else9:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr i16, ptr %6, i32 %glyph
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx, align 2
  br label %cleanup

if.else11:                                        ; preds = %if.else3
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %conp, i32 0, i32 3
  %9 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %10 to i32
  %arrayidx12 = getelementptr [63 x i32], ptr @inv_translate, i32 0, i32 %idxprom
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx12, align 4
  %arrayidx13 = getelementptr %struct.uni_pagedir, ptr %4, i32 0, i32 3, i32 %12
  %13 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx13, align 4
  %tobool14.not = icmp eq ptr %14, null
  br i1 %tobool14.not, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #14
  %conv16 = trunc i32 %glyph to i16
  br label %cleanup

if.else17:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx20 = getelementptr i8, ptr %14, i32 %glyph
  %15 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %16 to i16
  br label %cleanup

cleanup:                                          ; preds = %if.else17, %if.then15, %if.else9, %if.then7, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %8, %if.else9 ], [ %conv8, %if.then7 ], [ %conv21, %if.else17 ], [ %conv16, %if.then15 ], [ %conv, %if.then2 ], [ 0, %entry.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @con_set_trans_old(ptr noundef %arg) local_unnamed_addr #3 align 64 {
entry:
  %inbuf = alloca [256 x i16], align 2
  %ubuf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %inbuf) #12
  %0 = call ptr @memset(ptr %inbuf, i32 255, i32 512)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %ubuf) #12
  %1 = call ptr @memset(ptr %ubuf, i32 255, i32 256)
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 156) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 256, i32 -1226833920) #15, !srcloc !31
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !32

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ubuf, i32 noundef 256) #12
  %3 = call i32 @llvm.read_register.i32(metadata !21) #12
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !33
  %and.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !34
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !35
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ubuf, ptr noundef %arg, i32 noundef 256) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #12, !srcloc !34
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.for.body_crit_edge, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !32

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.end.i.i.for.body_crit_edge:                    ; preds = %if.end.i.i
  br label %for.body

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i11 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 256, %entry.if.then11.i.i_crit_edge ], [ 256, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 256, %res.0.i.i11
  %add.ptr.i.i = getelementptr i8, ptr %ubuf, i32 %sub.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i11)
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.i.i.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.i.i.for.body_crit_edge ]
  %arrayidx = getelementptr [256 x i8], ptr %ubuf, i32 0, i32 %i.014
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %8 to i16
  %or = or i16 %conv, -4096
  %arrayidx2 = getelementptr [256 x i16], ptr %inbuf, i32 0, i32 %i.014
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %or, ptr %arrayidx2, align 2
  %inc = add nuw nsw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  call void @console_lock() #12
  %10 = call ptr @memcpy(ptr getelementptr inbounds ([4 x [256 x i16]], ptr @translations, i32 0, i32 3), ptr %inbuf, i32 512)
  call fastcc void @update_user_maps()
  call void @console_unlock() #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then11.i.i
  %retval.0 = phi i32 [ 0, %for.end ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %ubuf) #12
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %inbuf) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_user_maps() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %q.020 = phi ptr [ null, %entry ], [ %q.1, %for.inc.for.body_crit_edge ]
  %i.018 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %call = tail call i32 @vc_cons_allocated(i32 noundef %i.018) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %i.018
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %vc_uni_pagedir_loc = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 49
  %2 = ptrtoint ptr %vc_uni_pagedir_loc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vc_uni_pagedir_loc, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool1.not = icmp eq ptr %5, null
  %cmp2.not = icmp eq ptr %5, %q.020
  %or.cond = select i1 %tobool1.not, i1 true, i1 %cmp2.not
  br i1 %or.cond, label %if.end.for.inc_crit_edge, label %if.end.i

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end.i:                                         ; preds = %if.end
  tail call fastcc void @set_inverse_transl(ptr noundef %1, ptr noundef nonnull %5, i32 noundef 3)
  %inverse_trans_unicode.i = getelementptr inbounds %struct.uni_pagedir, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %inverse_trans_unicode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %inverse_trans_unicode.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 1024) #16
  %9 = ptrtoint ptr %inverse_trans_unicode.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i.i, ptr %inverse_trans_unicode.i, align 4
  %tobool4.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool4.not.i, label %if.then2.i.for.inc_crit_edge, label %if.then2.i.if.end7.i_crit_edge

if.then2.i.if.end7.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.then2.i.for.inc_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end7.i:                                        ; preds = %if.then2.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  %q.0.i = phi ptr [ %7, %if.end.i.if.end7.i_crit_edge ], [ %call7.i.i.i, %if.then2.i.if.end7.i_crit_edge ]
  %10 = call ptr @memset(ptr %q.0.i, i32 0, i32 1024)
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc40.i.for.body.i_crit_edge, %if.end7.i
  %i.05.i = phi i32 [ 0, %if.end7.i ], [ %inc41.i, %for.inc40.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [32 x ptr], ptr %5, i32 0, i32 %i.05.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %tobool8.not.i = icmp eq ptr %12, null
  br i1 %tobool8.not.i, label %for.body.i.for.inc40.i_crit_edge, label %for.cond11.preheader.i

for.body.i.for.inc40.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc40.i

for.cond11.preheader.i:                           ; preds = %for.body.i
  %shl.i = shl i32 %i.05.i, 11
  br label %for.body13.i

for.body13.i:                                     ; preds = %for.inc37.i.for.body13.i_crit_edge, %for.cond11.preheader.i
  %j.03.i = phi i32 [ 0, %for.cond11.preheader.i ], [ %inc38.i, %for.inc37.i.for.body13.i_crit_edge ]
  %arrayidx14.i = getelementptr ptr, ptr %12, i32 %j.03.i
  %13 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx14.i, align 4
  %tobool15.not.i = icmp eq ptr %14, null
  br i1 %tobool15.not.i, label %for.body13.i.for.inc37.i_crit_edge, label %for.cond18.preheader.i

for.body13.i.for.inc37.i_crit_edge:               ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc37.i

for.cond18.preheader.i:                           ; preds = %for.body13.i
  %shl32.i = shl i32 %j.03.i, 6
  %add.i = add nuw nsw i32 %shl32.i, %shl.i
  br label %for.body20.i

for.body20.i:                                     ; preds = %for.inc.i.for.body20.i_crit_edge, %for.cond18.preheader.i
  %k.01.i = phi i32 [ 0, %for.cond18.preheader.i ], [ %inc.i, %for.inc.i.for.body20.i_crit_edge ]
  %arrayidx21.i = getelementptr i16, ptr %14, i32 %k.01.i
  %15 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx21.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %16)
  %cmp24.i = icmp ult i16 %16, 512
  br i1 %cmp24.i, label %land.lhs.true26.i, label %for.body20.i.for.inc.i_crit_edge

for.body20.i.for.inc.i_crit_edge:                 ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true26.i:                                ; preds = %for.body20.i
  %conv.i = zext i16 %16 to i32
  %arrayidx27.i = getelementptr i16, ptr %q.0.i, i32 %conv.i
  %17 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx27.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %18)
  %cmp29.i = icmp ult i16 %18, 32
  br i1 %cmp29.i, label %if.then31.i, label %land.lhs.true26.i.for.inc.i_crit_edge

land.lhs.true26.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then31.i:                                      ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #14
  %add33.i = add nuw nsw i32 %add.i, %k.01.i
  %conv34.i = trunc i32 %add33.i to i16
  %19 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv34.i, ptr %arrayidx27.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then31.i, %land.lhs.true26.i.for.inc.i_crit_edge, %for.body20.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %k.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.inc.i.for.inc37.i_crit_edge, label %for.inc.i.for.body20.i_crit_edge

for.inc.i.for.body20.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body20.i

for.inc.i.for.inc37.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc37.i

for.inc37.i:                                      ; preds = %for.inc.i.for.inc37.i_crit_edge, %for.body13.i.for.inc37.i_crit_edge
  %inc38.i = add nuw nsw i32 %j.03.i, 1
  %exitcond7.not.i = icmp eq i32 %inc38.i, 32
  br i1 %exitcond7.not.i, label %for.inc37.i.for.inc40.i_crit_edge, label %for.inc37.i.for.body13.i_crit_edge

for.inc37.i.for.body13.i_crit_edge:               ; preds = %for.inc37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body13.i

for.inc37.i.for.inc40.i_crit_edge:                ; preds = %for.inc37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc40.i

for.inc40.i:                                      ; preds = %for.inc37.i.for.inc40.i_crit_edge, %for.body.i.for.inc40.i_crit_edge
  %inc41.i = add nuw nsw i32 %i.05.i, 1
  %exitcond8.not.i = icmp eq i32 %inc41.i, 32
  br i1 %exitcond8.not.i, label %for.inc40.i.for.inc_crit_edge, label %for.inc40.i.for.body.i_crit_edge

for.inc40.i.for.body.i_crit_edge:                 ; preds = %for.inc40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc40.i.for.inc_crit_edge:                    ; preds = %for.inc40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %for.inc40.i.for.inc_crit_edge, %if.then2.i.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %q.1 = phi ptr [ %q.020, %if.end.for.inc_crit_edge ], [ %q.020, %for.body.for.inc_crit_edge ], [ %5, %if.then2.i.for.inc_crit_edge ], [ %5, %for.inc40.i.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, 63
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @con_get_trans_old(ptr noundef %arg) local_unnamed_addr #3 align 64 {
entry:
  %outbuf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %outbuf) #12
  %0 = call ptr @memset(ptr %outbuf, i32 255, i32 256)
  tail call void @console_lock() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %1 = load i32, ptr @fg_console, align 4
  %arrayidx = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %vc_uni_pagedir_loc.i = getelementptr inbounds %struct.vc_data, ptr %3, i32 0, i32 49
  br label %for.body

for.body:                                         ; preds = %conv_uni_to_pc.exit.thread.for.body_crit_edge, %entry
  %i.016 = phi i32 [ 0, %entry ], [ %inc, %conv_uni_to_pc.exit.thread.for.body_crit_edge ]
  %arrayidx1 = getelementptr i16, ptr getelementptr inbounds ([4 x [256 x i16]], ptr @translations, i32 0, i32 3), i32 %i.016
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx1, align 2
  %conv = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %5)
  %cmp1.i = icmp ult i16 %5, 32
  br i1 %cmp1.i, label %for.body.conv_uni_to_pc.exit.thread_crit_edge, label %if.else3.i

for.body.conv_uni_to_pc.exit.thread_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %conv_uni_to_pc.exit.thread

if.else3.i:                                       ; preds = %for.body
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %5, label %if.else8.i [
    i16 -257, label %if.else3.i.conv_uni_to_pc.exit.thread_crit_edge
    i16 8207, label %if.else3.i.conv_uni_to_pc.exit.thread_crit_edge17
    i16 8206, label %if.else3.i.conv_uni_to_pc.exit.thread_crit_edge18
    i16 8205, label %if.else3.i.conv_uni_to_pc.exit.thread_crit_edge19
    i16 8204, label %if.else3.i.conv_uni_to_pc.exit.thread_crit_edge20
    i16 8203, label %if.else3.i.conv_uni_to_pc.exit.thread_crit_edge21
  ]

if.else3.i.conv_uni_to_pc.exit.thread_crit_edge21: ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %conv_uni_to_pc.exit.thread

if.else3.i.conv_uni_to_pc.exit.thread_crit_edge20: ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %conv_uni_to_pc.exit.thread

if.else3.i.conv_uni_to_pc.exit.thread_crit_edge19: ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %conv_uni_to_pc.exit.thread

if.else3.i.conv_uni_to_pc.exit.thread_crit_edge18: ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %conv_uni_to_pc.exit.thread

if.else3.i.conv_uni_to_pc.exit.thread_crit_edge17: ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %conv_uni_to_pc.exit.thread

if.else3.i.conv_uni_to_pc.exit.thread_crit_edge:  ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %conv_uni_to_pc.exit.thread

if.else8.i:                                       ; preds = %if.else3.i
  %and.i = and i32 %conv, 65024
  call void @__sanitizer_cov_trace_const_cmp4(i32 61440, i32 %and.i)
  %cmp9.i = icmp eq i32 %and.i, 61440
  br i1 %cmp9.i, label %if.then10.i, label %if.end14.i

if.then10.i:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #14
  %and11.i = and i32 %conv, 511
  br label %conv_uni_to_pc.exit

if.end14.i:                                       ; preds = %if.else8.i
  %7 = ptrtoint ptr %vc_uni_pagedir_loc.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vc_uni_pagedir_loc.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end14.i.conv_uni_to_pc.exit.thread_crit_edge, label %if.end16.i

if.end14.i.conv_uni_to_pc.exit.thread_crit_edge:  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %conv_uni_to_pc.exit.thread

if.end16.i:                                       ; preds = %if.end14.i
  %shr46.i = lshr i32 %conv, 11
  %arrayidx.i = getelementptr [32 x ptr], ptr %10, i32 0, i32 %shr46.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %tobool18.not.i = icmp eq ptr %12, null
  br i1 %tobool18.not.i, label %if.end16.i.conv_uni_to_pc.exit.thread_crit_edge, label %land.lhs.true19.i

if.end16.i.conv_uni_to_pc.exit.thread_crit_edge:  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %conv_uni_to_pc.exit.thread

land.lhs.true19.i:                                ; preds = %if.end16.i
  %13 = lshr i32 %conv, 6
  %and21.i = and i32 %13, 31
  %arrayidx22.i = getelementptr ptr, ptr %12, i32 %and21.i
  %14 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx22.i, align 4
  %tobool23.not.i = icmp eq ptr %15, null
  br i1 %tobool23.not.i, label %land.lhs.true19.i.conv_uni_to_pc.exit.thread_crit_edge, label %land.lhs.true24.i

land.lhs.true19.i.conv_uni_to_pc.exit.thread_crit_edge: ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %conv_uni_to_pc.exit.thread

land.lhs.true24.i:                                ; preds = %land.lhs.true19.i
  %and25.i = and i32 %conv, 63
  %arrayidx26.i = getelementptr i16, ptr %15, i32 %and25.i
  %16 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx26.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %17)
  %cmp27.i = icmp ult i16 %17, 512
  %conv.i = zext i16 %17 to i32
  br i1 %cmp27.i, label %land.lhs.true24.i.conv_uni_to_pc.exit_crit_edge, label %land.lhs.true24.i.conv_uni_to_pc.exit.thread_crit_edge

land.lhs.true24.i.conv_uni_to_pc.exit.thread_crit_edge: ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %conv_uni_to_pc.exit.thread

land.lhs.true24.i.conv_uni_to_pc.exit_crit_edge:  ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %conv_uni_to_pc.exit

conv_uni_to_pc.exit:                              ; preds = %land.lhs.true24.i.conv_uni_to_pc.exit_crit_edge, %if.then10.i
  %retval.0.i = phi i32 [ %and11.i, %if.then10.i ], [ %conv.i, %land.lhs.true24.i.conv_uni_to_pc.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %retval.0.i)
  %tobool.not = icmp ult i32 %retval.0.i, 256
  %spec.select = select i1 %tobool.not, i32 %retval.0.i, i32 0
  br label %conv_uni_to_pc.exit.thread

conv_uni_to_pc.exit.thread:                       ; preds = %conv_uni_to_pc.exit, %land.lhs.true24.i.conv_uni_to_pc.exit.thread_crit_edge, %land.lhs.true19.i.conv_uni_to_pc.exit.thread_crit_edge, %if.end16.i.conv_uni_to_pc.exit.thread_crit_edge, %if.end14.i.conv_uni_to_pc.exit.thread_crit_edge, %if.else3.i.conv_uni_to_pc.exit.thread_crit_edge, %if.else3.i.conv_uni_to_pc.exit.thread_crit_edge17, %if.else3.i.conv_uni_to_pc.exit.thread_crit_edge18, %if.else3.i.conv_uni_to_pc.exit.thread_crit_edge19, %if.else3.i.conv_uni_to_pc.exit.thread_crit_edge20, %if.else3.i.conv_uni_to_pc.exit.thread_crit_edge21, %for.body.conv_uni_to_pc.exit.thread_crit_edge
  %18 = phi i32 [ 0, %for.body.conv_uni_to_pc.exit.thread_crit_edge ], [ 0, %if.else3.i.conv_uni_to_pc.exit.thread_crit_edge ], [ 0, %if.else3.i.conv_uni_to_pc.exit.thread_crit_edge17 ], [ 0, %if.else3.i.conv_uni_to_pc.exit.thread_crit_edge18 ], [ 0, %if.else3.i.conv_uni_to_pc.exit.thread_crit_edge19 ], [ 0, %if.else3.i.conv_uni_to_pc.exit.thread_crit_edge20 ], [ 0, %if.else3.i.conv_uni_to_pc.exit.thread_crit_edge21 ], [ 0, %if.end14.i.conv_uni_to_pc.exit.thread_crit_edge ], [ 0, %land.lhs.true19.i.conv_uni_to_pc.exit.thread_crit_edge ], [ 0, %if.end16.i.conv_uni_to_pc.exit.thread_crit_edge ], [ 0, %land.lhs.true24.i.conv_uni_to_pc.exit.thread_crit_edge ], [ %spec.select, %conv_uni_to_pc.exit ]
  %conv2 = trunc i32 %18 to i8
  %arrayidx3 = getelementptr [256 x i8], ptr %outbuf, i32 0, i32 %i.016
  %19 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv2, ptr %arrayidx3, align 1
  %inc = add nuw nsw i32 %i.016, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %conv_uni_to_pc.exit.thread.for.body_crit_edge

conv_uni_to_pc.exit.thread.for.body_crit_edge:    ; preds = %conv_uni_to_pc.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %conv_uni_to_pc.exit.thread
  tail call void @console_unlock() #12
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 174) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %for.end.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

for.end.copy_to_user.exit.thread_crit_edge:       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %for.end
  %20 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 256, i32 -1226833920) #15, !srcloc !36
  %asmresult.i.i = extractvalue { i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %outbuf, i32 noundef 256) #12
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %outbuf, i32 noundef 256) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool5.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select15 = select i1 %tobool5.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %for.end.copy_to_user.exit.thread_crit_edge
  %21 = phi i32 [ -14, %for.end.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select15, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %outbuf) #12
  ret i32 %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @conv_uni_to_pc(ptr nocapture noundef readonly %conp, i32 noundef %ucs) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %ucs)
  %cmp = icmp sgt i32 %ucs, 65535
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %ucs)
  %cmp1 = icmp slt i32 %ucs, 32
  br i1 %cmp1, label %if.else.cleanup_crit_edge, label %if.else3

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else3:                                         ; preds = %if.else
  %0 = zext i32 %ucs to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %ucs, label %if.else8 [
    i32 65279, label %if.else3.cleanup_crit_edge
    i32 8207, label %if.else3.cleanup_crit_edge48
    i32 8206, label %if.else3.cleanup_crit_edge49
    i32 8205, label %if.else3.cleanup_crit_edge50
    i32 8204, label %if.else3.cleanup_crit_edge51
    i32 8203, label %if.else3.cleanup_crit_edge52
  ]

if.else3.cleanup_crit_edge52:                     ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else3.cleanup_crit_edge51:                     ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else3.cleanup_crit_edge50:                     ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else3.cleanup_crit_edge49:                     ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else3.cleanup_crit_edge48:                     ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else3.cleanup_crit_edge:                       ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else8:                                         ; preds = %if.else3
  %and = and i32 %ucs, -512
  call void @__sanitizer_cov_trace_const_cmp4(i32 61440, i32 %and)
  %cmp9 = icmp eq i32 %and, 61440
  br i1 %cmp9, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #14
  %and11 = and i32 %ucs, 511
  br label %cleanup

if.end14:                                         ; preds = %if.else8
  %vc_uni_pagedir_loc = getelementptr inbounds %struct.vc_data, ptr %conp, i32 0, i32 49
  %1 = ptrtoint ptr %vc_uni_pagedir_loc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vc_uni_pagedir_loc, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end14.cleanup_crit_edge, label %if.end16

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.end14
  %shr46 = lshr i32 %ucs, 11
  %arrayidx = getelementptr [32 x ptr], ptr %4, i32 0, i32 %shr46
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool18.not = icmp eq ptr %6, null
  br i1 %tobool18.not, label %if.end16.cleanup_crit_edge, label %land.lhs.true19

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true19:                                  ; preds = %if.end16
  %7 = lshr i32 %ucs, 6
  %and21 = and i32 %7, 31
  %arrayidx22 = getelementptr ptr, ptr %6, i32 %and21
  %8 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx22, align 4
  %tobool23.not = icmp eq ptr %9, null
  br i1 %tobool23.not, label %land.lhs.true19.cleanup_crit_edge, label %land.lhs.true24

land.lhs.true19.cleanup_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true24:                                  ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #14
  %and25 = and i32 %ucs, 63
  %arrayidx26 = getelementptr i16, ptr %9, i32 %and25
  %10 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx26, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %11)
  %cmp27 = icmp ult i16 %11, 512
  %conv = zext i16 %11 to i32
  %spec.select = select i1 %cmp27, i32 %conv, i32 -4
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true24, %land.lhs.true19.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.then10, %if.else3.cleanup_crit_edge, %if.else3.cleanup_crit_edge48, %if.else3.cleanup_crit_edge49, %if.else3.cleanup_crit_edge50, %if.else3.cleanup_crit_edge51, %if.else3.cleanup_crit_edge52, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and11, %if.then10 ], [ -4, %entry.cleanup_crit_edge ], [ -1, %if.else.cleanup_crit_edge ], [ -2, %if.else3.cleanup_crit_edge ], [ -3, %if.end14.cleanup_crit_edge ], [ -4, %land.lhs.true19.cleanup_crit_edge ], [ -4, %if.end16.cleanup_crit_edge ], [ %spec.select, %land.lhs.true24 ], [ -2, %if.else3.cleanup_crit_edge48 ], [ -2, %if.else3.cleanup_crit_edge49 ], [ -2, %if.else3.cleanup_crit_edge50 ], [ -2, %if.else3.cleanup_crit_edge51 ], [ -2, %if.else3.cleanup_crit_edge52 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @con_set_trans_new(ptr noundef %arg) local_unnamed_addr #3 align 64 {
entry:
  %inbuf = alloca [256 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %inbuf) #12
  %0 = call ptr @memset(ptr %inbuf, i32 255, i32 512)
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 156) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 512, i32 -1226833920) #15, !srcloc !31
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !32

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %inbuf, i32 noundef 512) #12
  %2 = call i32 @llvm.read_register.i32(metadata !21) #12
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !33
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !34
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !35
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %inbuf, ptr noundef %arg, i32 noundef 512) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #12, !srcloc !34
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !32

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i4 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 512, %entry.if.then11.i.i_crit_edge ], [ 512, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 512, %res.0.i.i4
  %add.ptr.i.i = getelementptr i8, ptr %inbuf, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i4)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @console_lock() #12
  %6 = call ptr @memcpy(ptr getelementptr inbounds ([4 x [256 x i16]], ptr @translations, i32 0, i32 3), ptr %inbuf, i32 512)
  call fastcc void @update_user_maps()
  call void @console_unlock() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then11.i.i
  %retval.0 = phi i32 [ 0, %if.end ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %inbuf) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @con_get_trans_new(ptr noundef %arg) local_unnamed_addr #3 align 64 {
entry:
  %outbuf = alloca [256 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %outbuf) #12
  tail call void @console_lock() #12
  %0 = call ptr @memcpy(ptr %outbuf, ptr getelementptr inbounds ([4 x [256 x i16]], ptr @translations, i32 0, i32 3), i32 512)
  tail call void @console_unlock() #12
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 174) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %entry.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

entry.copy_to_user.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %entry
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 512, i32 -1226833920) #15, !srcloc !36
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %outbuf, i32 noundef 512) #12
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %outbuf, i32 noundef 512) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %entry.copy_to_user.exit.thread_crit_edge
  %2 = phi i32 [ -14, %entry.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %outbuf) #12
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @con_free_unimap(ptr nocapture noundef readonly %vc) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_uni_pagedir_loc = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 49
  %0 = ptrtoint ptr %vc_uni_pagedir_loc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vc_uni_pagedir_loc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %1, align 4
  %refcount = getelementptr inbounds %struct.uni_pagedir, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %refcount, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @con_release_unimap(ptr noundef nonnull %3)
  tail call void @kfree(ptr noundef nonnull %3) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @con_release_unimap(ptr nocapture noundef %p) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dflt, align 4
  %cmp = icmp eq ptr %0, %p
  br i1 %cmp, label %if.then, label %entry.for.body.preheader_crit_edge

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.preheader

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  store ptr null, ptr @dflt, align 4
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %if.end8.for.body_crit_edge, %for.body.preheader
  %i.042 = phi i32 [ %inc12, %if.end8.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [32 x ptr], ptr %p, i32 0, i32 %i.042
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %cmp2.not = icmp eq ptr %2, null
  br i1 %cmp2.not, label %for.body.if.end8_crit_edge, label %for.body6.preheader

for.body.if.end8_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

for.body6.preheader:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %4) #12
  %arrayidx7.1 = getelementptr ptr, ptr %2, i32 1
  %5 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx7.1, align 4
  tail call void @kfree(ptr noundef %6) #12
  %arrayidx7.2 = getelementptr ptr, ptr %2, i32 2
  %7 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx7.2, align 4
  tail call void @kfree(ptr noundef %8) #12
  %arrayidx7.3 = getelementptr ptr, ptr %2, i32 3
  %9 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx7.3, align 4
  tail call void @kfree(ptr noundef %10) #12
  %arrayidx7.4 = getelementptr ptr, ptr %2, i32 4
  %11 = ptrtoint ptr %arrayidx7.4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx7.4, align 4
  tail call void @kfree(ptr noundef %12) #12
  %arrayidx7.5 = getelementptr ptr, ptr %2, i32 5
  %13 = ptrtoint ptr %arrayidx7.5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx7.5, align 4
  tail call void @kfree(ptr noundef %14) #12
  %arrayidx7.6 = getelementptr ptr, ptr %2, i32 6
  %15 = ptrtoint ptr %arrayidx7.6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx7.6, align 4
  tail call void @kfree(ptr noundef %16) #12
  %arrayidx7.7 = getelementptr ptr, ptr %2, i32 7
  %17 = ptrtoint ptr %arrayidx7.7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx7.7, align 4
  tail call void @kfree(ptr noundef %18) #12
  %arrayidx7.8 = getelementptr ptr, ptr %2, i32 8
  %19 = ptrtoint ptr %arrayidx7.8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx7.8, align 4
  tail call void @kfree(ptr noundef %20) #12
  %arrayidx7.9 = getelementptr ptr, ptr %2, i32 9
  %21 = ptrtoint ptr %arrayidx7.9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx7.9, align 4
  tail call void @kfree(ptr noundef %22) #12
  %arrayidx7.10 = getelementptr ptr, ptr %2, i32 10
  %23 = ptrtoint ptr %arrayidx7.10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx7.10, align 4
  tail call void @kfree(ptr noundef %24) #12
  %arrayidx7.11 = getelementptr ptr, ptr %2, i32 11
  %25 = ptrtoint ptr %arrayidx7.11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx7.11, align 4
  tail call void @kfree(ptr noundef %26) #12
  %arrayidx7.12 = getelementptr ptr, ptr %2, i32 12
  %27 = ptrtoint ptr %arrayidx7.12 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx7.12, align 4
  tail call void @kfree(ptr noundef %28) #12
  %arrayidx7.13 = getelementptr ptr, ptr %2, i32 13
  %29 = ptrtoint ptr %arrayidx7.13 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx7.13, align 4
  tail call void @kfree(ptr noundef %30) #12
  %arrayidx7.14 = getelementptr ptr, ptr %2, i32 14
  %31 = ptrtoint ptr %arrayidx7.14 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx7.14, align 4
  tail call void @kfree(ptr noundef %32) #12
  %arrayidx7.15 = getelementptr ptr, ptr %2, i32 15
  %33 = ptrtoint ptr %arrayidx7.15 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx7.15, align 4
  tail call void @kfree(ptr noundef %34) #12
  %arrayidx7.16 = getelementptr ptr, ptr %2, i32 16
  %35 = ptrtoint ptr %arrayidx7.16 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx7.16, align 4
  tail call void @kfree(ptr noundef %36) #12
  %arrayidx7.17 = getelementptr ptr, ptr %2, i32 17
  %37 = ptrtoint ptr %arrayidx7.17 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx7.17, align 4
  tail call void @kfree(ptr noundef %38) #12
  %arrayidx7.18 = getelementptr ptr, ptr %2, i32 18
  %39 = ptrtoint ptr %arrayidx7.18 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx7.18, align 4
  tail call void @kfree(ptr noundef %40) #12
  %arrayidx7.19 = getelementptr ptr, ptr %2, i32 19
  %41 = ptrtoint ptr %arrayidx7.19 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx7.19, align 4
  tail call void @kfree(ptr noundef %42) #12
  %arrayidx7.20 = getelementptr ptr, ptr %2, i32 20
  %43 = ptrtoint ptr %arrayidx7.20 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx7.20, align 4
  tail call void @kfree(ptr noundef %44) #12
  %arrayidx7.21 = getelementptr ptr, ptr %2, i32 21
  %45 = ptrtoint ptr %arrayidx7.21 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx7.21, align 4
  tail call void @kfree(ptr noundef %46) #12
  %arrayidx7.22 = getelementptr ptr, ptr %2, i32 22
  %47 = ptrtoint ptr %arrayidx7.22 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx7.22, align 4
  tail call void @kfree(ptr noundef %48) #12
  %arrayidx7.23 = getelementptr ptr, ptr %2, i32 23
  %49 = ptrtoint ptr %arrayidx7.23 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx7.23, align 4
  tail call void @kfree(ptr noundef %50) #12
  %arrayidx7.24 = getelementptr ptr, ptr %2, i32 24
  %51 = ptrtoint ptr %arrayidx7.24 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx7.24, align 4
  tail call void @kfree(ptr noundef %52) #12
  %arrayidx7.25 = getelementptr ptr, ptr %2, i32 25
  %53 = ptrtoint ptr %arrayidx7.25 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx7.25, align 4
  tail call void @kfree(ptr noundef %54) #12
  %arrayidx7.26 = getelementptr ptr, ptr %2, i32 26
  %55 = ptrtoint ptr %arrayidx7.26 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx7.26, align 4
  tail call void @kfree(ptr noundef %56) #12
  %arrayidx7.27 = getelementptr ptr, ptr %2, i32 27
  %57 = ptrtoint ptr %arrayidx7.27 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx7.27, align 4
  tail call void @kfree(ptr noundef %58) #12
  %arrayidx7.28 = getelementptr ptr, ptr %2, i32 28
  %59 = ptrtoint ptr %arrayidx7.28 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx7.28, align 4
  tail call void @kfree(ptr noundef %60) #12
  %arrayidx7.29 = getelementptr ptr, ptr %2, i32 29
  %61 = ptrtoint ptr %arrayidx7.29 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx7.29, align 4
  tail call void @kfree(ptr noundef %62) #12
  %arrayidx7.30 = getelementptr ptr, ptr %2, i32 30
  %63 = ptrtoint ptr %arrayidx7.30 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx7.30, align 4
  tail call void @kfree(ptr noundef %64) #12
  %arrayidx7.31 = getelementptr ptr, ptr %2, i32 31
  %65 = ptrtoint ptr %arrayidx7.31 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx7.31, align 4
  tail call void @kfree(ptr noundef %66) #12
  tail call void @kfree(ptr noundef nonnull %2) #12
  br label %if.end8

if.end8:                                          ; preds = %for.body6.preheader, %for.body.if.end8_crit_edge
  %67 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %arrayidx, align 4
  %inc12 = add nuw nsw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc12, 32
  br i1 %exitcond.not, label %for.body16.preheader, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body16.preheader:                             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx17 = getelementptr %struct.uni_pagedir, ptr %p, i32 0, i32 3, i32 0
  %68 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx17, align 4
  tail call void @kfree(ptr noundef %69) #12
  %70 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %arrayidx17, align 4
  %arrayidx17.1 = getelementptr %struct.uni_pagedir, ptr %p, i32 0, i32 3, i32 1
  %71 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx17.1, align 4
  tail call void @kfree(ptr noundef %72) #12
  %73 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %arrayidx17.1, align 4
  %arrayidx17.2 = getelementptr %struct.uni_pagedir, ptr %p, i32 0, i32 3, i32 2
  %74 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx17.2, align 4
  tail call void @kfree(ptr noundef %75) #12
  %76 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %arrayidx17.2, align 4
  %arrayidx17.3 = getelementptr %struct.uni_pagedir, ptr %p, i32 0, i32 3, i32 3
  %77 = ptrtoint ptr %arrayidx17.3 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx17.3, align 4
  tail call void @kfree(ptr noundef %78) #12
  %79 = ptrtoint ptr %arrayidx17.3 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %arrayidx17.3, align 4
  %inverse_trans_unicode = getelementptr inbounds %struct.uni_pagedir, ptr %p, i32 0, i32 4
  %80 = ptrtoint ptr %inverse_trans_unicode to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %inverse_trans_unicode, align 4
  tail call void @kfree(ptr noundef %81) #12
  %82 = ptrtoint ptr %inverse_trans_unicode to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %inverse_trans_unicode, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @con_clear_unimap(ptr nocapture noundef readonly %vc) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @console_lock() #12
  %call = tail call fastcc i32 @con_do_clear_unimap(ptr noundef %vc)
  tail call void @console_unlock() #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @con_do_clear_unimap(ptr nocapture noundef readonly %vc) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_uni_pagedir_loc = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 49
  %0 = ptrtoint ptr %vc_uni_pagedir_loc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vc_uni_pagedir_loc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %refcount = getelementptr inbounds %struct.uni_pagedir, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %refcount, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool1.not = icmp eq i32 %dec, 0
  br i1 %tobool1.not, label %if.else, label %if.then.thread

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 156) #16
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.thread:                                   ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i26 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 156) #16
  %tobool2.not27 = icmp eq ptr %call7.i.i26, null
  br i1 %tobool2.not27, label %if.then5, label %if.then.thread.if.end7_crit_edge

if.then.thread.if.end7_crit_edge:                 ; preds = %if.then.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then5:                                         ; preds = %if.then.thread
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %refcount, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %refcount, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.then.thread.if.end7_crit_edge, %if.then.if.end7_crit_edge
  %call7.i.i28 = phi ptr [ %call7.i.i26, %if.then.thread.if.end7_crit_edge ], [ %call7.i.i, %if.then.if.end7_crit_edge ]
  %refcount8 = getelementptr inbounds %struct.uni_pagedir, ptr %call7.i.i28, i32 0, i32 1
  %10 = ptrtoint ptr %refcount8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %refcount8, align 8
  %11 = ptrtoint ptr %vc_uni_pagedir_loc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vc_uni_pagedir_loc, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i28, ptr %12, align 4
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %14 = load ptr, ptr @dflt, align 4
  %cmp = icmp eq ptr %3, %14
  br i1 %cmp, label %if.then10, label %if.else.if.end11_crit_edge

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  store ptr null, ptr @dflt, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.else.if.end11_crit_edge
  %15 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %5, ptr %refcount, align 4
  %sum = getelementptr inbounds %struct.uni_pagedir, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %sum to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %sum, align 4
  tail call fastcc void @con_release_unimap(ptr noundef nonnull %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end7, %if.then5, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then5 ], [ 0, %if.end11 ], [ 0, %if.end7 ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @con_set_unimap(ptr nocapture noundef readonly %vc, i16 noundef zeroext %ct, ptr noundef %list) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %ct)
  %tobool.not = icmp eq i16 %ct, 0
  br i1 %tobool.not, label %entry.cleanup90_crit_edge, label %if.end

entry.cleanup90_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup90

if.end:                                           ; preds = %entry
  %conv = zext i16 %ct to i32
  %0 = shl nuw nsw i32 %conv, 2
  %call1 = tail call ptr @vmemdup_user(ptr noundef %list, i32 noundef %0) #12
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup90

if.end5:                                          ; preds = %if.end
  tail call void @console_lock() #12
  %vc_uni_pagedir_loc = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 49
  %2 = ptrtoint ptr %vc_uni_pagedir_loc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vc_uni_pagedir_loc, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %if.end5.out_unlock_crit_edge, label %if.end8

if.end5.out_unlock_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end8:                                          ; preds = %if.end5
  %refcount = getelementptr inbounds %struct.uni_pagedir, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp ugt i32 %7, 1
  br i1 %cmp, label %if.then10, label %if.else64

if.then10:                                        ; preds = %if.end8
  %call11 = tail call fastcc i32 @con_do_clear_unimap(ptr noundef %vc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.then10.out_unlock_crit_edge

if.then10.out_unlock_crit_edge:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end14:                                         ; preds = %if.then10
  %8 = ptrtoint ptr %vc_uni_pagedir_loc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vc_uni_pagedir_loc, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %sum.i = getelementptr inbounds %struct.uni_pagedir, ptr %11, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc57.for.body_crit_edge, %if.end14
  %l.0201 = phi i16 [ 0, %if.end14 ], [ %l.4, %for.inc57.for.body_crit_edge ]
  %i.0200 = phi i32 [ 0, %if.end14 ], [ %inc58, %for.inc57.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x ptr], ptr %5, i32 0, i32 %i.0200
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %tobool18.not = icmp eq ptr %13, null
  br i1 %tobool18.not, label %if.else52, label %for.body.for.body23_crit_edge

for.body.for.body23_crit_edge:                    ; preds = %for.body
  br label %for.body23

for.body23:                                       ; preds = %for.inc49.for.body23_crit_edge, %for.body.for.body23_crit_edge
  %l.1199 = phi i16 [ %l.3, %for.inc49.for.body23_crit_edge ], [ %l.0201, %for.body.for.body23_crit_edge ]
  %j.0198 = phi i32 [ %inc50, %for.inc49.for.body23_crit_edge ], [ 0, %for.body.for.body23_crit_edge ]
  %arrayidx24 = getelementptr ptr, ptr %13, i32 %j.0198
  %14 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx24, align 4
  %tobool25.not = icmp eq ptr %15, null
  br i1 %tobool25.not, label %if.else, label %for.body23.for.body30_crit_edge

for.body23.for.body30_crit_edge:                  ; preds = %for.body23
  br label %for.body30

for.body30:                                       ; preds = %for.inc.for.body30_crit_edge, %for.body23.for.body30_crit_edge
  %l.2196 = phi i16 [ %inc45, %for.inc.for.body30_crit_edge ], [ %l.1199, %for.body23.for.body30_crit_edge ]
  %k.0195 = phi i32 [ %inc44, %for.inc.for.body30_crit_edge ], [ 0, %for.body23.for.body30_crit_edge ]
  %arrayidx31 = getelementptr i16, ptr %15, i32 %k.0195
  %16 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx31, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %17)
  %cmp33.not = icmp eq i16 %17, -1
  br i1 %cmp33.not, label %for.body30.for.inc_crit_edge, label %if.then35

for.body30.for.inc_crit_edge:                     ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then35:                                        ; preds = %for.body30
  %conv.i = zext i16 %l.2196 to i32
  %18 = lshr i32 %conv.i, 11
  %arrayidx.i = getelementptr [32 x ptr], ptr %11, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.then.i, label %if.then35.if.end7.i_crit_edge

if.then35.if.end7.i_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.then.i:                                        ; preds = %if.then35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3264, i32 noundef 128) #16
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i.i, ptr %arrayidx.i, align 4
  %tobool3.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool3.not.i, label %if.then.i.if.then39_crit_edge, label %for.body.preheader.i

if.then.i.if.then39_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then39

for.body.preheader.i:                             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %23 = call ptr @memset(ptr %call7.i.i.i, i32 0, i32 128)
  br label %if.end7.i

if.end7.i:                                        ; preds = %for.body.preheader.i, %if.then35.if.end7.i_crit_edge
  %p1.0.i = phi ptr [ %20, %if.then35.if.end7.i_crit_edge ], [ %call7.i.i.i, %for.body.preheader.i ]
  %24 = lshr i32 %conv.i, 6
  %and.i = and i32 %24, 31
  %arrayidx10.i = getelementptr ptr, ptr %p1.0.i, i32 %and.i
  %25 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx10.i, align 4
  %tobool11.not.i = icmp eq ptr %26, null
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end7.i.con_insert_unipair.exit_crit_edge

if.end7.i.con_insert_unipair.exit_crit_edge:      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %con_insert_unipair.exit

if.then12.i:                                      ; preds = %if.end7.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i45.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3264, i32 noundef 128) #16
  %28 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i45.i, ptr %arrayidx10.i, align 4
  %tobool15.not.i = icmp eq ptr %call7.i.i45.i, null
  br i1 %tobool15.not.i, label %if.then12.i.if.then39_crit_edge, label %if.end17.i

if.then12.i.if.then39_crit_edge:                  ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then39

if.end17.i:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #14
  %29 = call ptr @memset(ptr %call7.i.i45.i, i32 255, i32 128)
  br label %con_insert_unipair.exit

con_insert_unipair.exit:                          ; preds = %if.end17.i, %if.end7.i.con_insert_unipair.exit_crit_edge
  %p2.0.i = phi ptr [ %26, %if.end7.i.con_insert_unipair.exit_crit_edge ], [ %call7.i.i45.i, %if.end17.i ]
  %and20.i = and i32 %conv.i, 63
  %arrayidx21.i = getelementptr i16, ptr %p2.0.i, i32 %and20.i
  %30 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %17, ptr %arrayidx21.i, align 2
  %conv22.i = zext i16 %17 to i32
  %shl.i = shl i32 %conv22.i, 20
  %add.i = or i32 %shl.i, %conv.i
  %31 = ptrtoint ptr %sum.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sum.i, align 4
  %add24.i = add i32 %add.i, %32
  store i32 %add24.i, ptr %sum.i, align 4
  br label %for.inc

if.then39:                                        ; preds = %if.then12.i.if.then39_crit_edge, %if.then.i.if.then39_crit_edge
  %33 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %refcount, align 4
  %inc = add i32 %34, 1
  store i32 %inc, ptr %refcount, align 4
  %35 = ptrtoint ptr %vc_uni_pagedir_loc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vc_uni_pagedir_loc, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %5, ptr %36, align 4
  tail call fastcc void @con_release_unimap(ptr noundef %11)
  tail call void @kfree(ptr noundef %11) #12
  br label %out_unlock

for.inc:                                          ; preds = %con_insert_unipair.exit, %for.body30.for.inc_crit_edge
  %inc44 = add nuw nsw i32 %k.0195, 1
  %inc45 = add i16 %l.2196, 1
  %exitcond.not = icmp eq i32 %inc44, 64
  br i1 %exitcond.not, label %for.inc.for.inc49_crit_edge, label %for.inc.for.body30_crit_edge

for.inc.for.body30_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body30

for.inc.for.inc49_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc49

if.else:                                          ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #14
  %add = add i16 %l.1199, 64
  br label %for.inc49

for.inc49:                                        ; preds = %if.else, %for.inc.for.inc49_crit_edge
  %l.3 = phi i16 [ %add, %if.else ], [ %inc45, %for.inc.for.inc49_crit_edge ]
  %inc50 = add nuw nsw i32 %j.0198, 1
  %exitcond207.not = icmp eq i32 %inc50, 32
  br i1 %exitcond207.not, label %for.inc49.for.inc57_crit_edge, label %for.inc49.for.body23_crit_edge

for.inc49.for.body23_crit_edge:                   ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body23

for.inc49.for.inc57_crit_edge:                    ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc57

if.else52:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %add54 = add i16 %l.0201, 2048
  br label %for.inc57

for.inc57:                                        ; preds = %if.else52, %for.inc49.for.inc57_crit_edge
  %l.4 = phi i16 [ %add54, %if.else52 ], [ %l.3, %for.inc49.for.inc57_crit_edge ]
  %inc58 = add nuw nsw i32 %i.0200, 1
  %exitcond208.not = icmp eq i32 %inc58, 32
  br i1 %exitcond208.not, label %for.inc57.for.body72.lr.ph_crit_edge, label %for.inc57.for.body_crit_edge

for.inc57.for.body_crit_edge:                     ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc57.for.body72.lr.ph_crit_edge:             ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body72.lr.ph

if.else64:                                        ; preds = %if.end8
  %38 = load ptr, ptr @dflt, align 4
  %cmp65 = icmp eq ptr %5, %38
  br i1 %cmp65, label %if.then67, label %if.else64.for.body72.lr.ph_crit_edge

if.else64.for.body72.lr.ph_crit_edge:             ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body72.lr.ph

if.then67:                                        ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #14
  store ptr null, ptr @dflt, align 4
  br label %for.body72.lr.ph

for.body72.lr.ph:                                 ; preds = %if.then67, %if.else64.for.body72.lr.ph_crit_edge, %for.inc57.for.body72.lr.ph_crit_edge
  %p.1 = phi ptr [ %5, %if.then67 ], [ %5, %if.else64.for.body72.lr.ph_crit_edge ], [ %11, %for.inc57.for.body72.lr.ph_crit_edge ]
  %sum.i170 = getelementptr inbounds %struct.uni_pagedir, ptr %p.1, i32 0, i32 2
  br label %for.body72

for.body72:                                       ; preds = %con_insert_unipair.exit174.thread.for.body72_crit_edge, %for.body72.lr.ph
  %plist.0205 = phi ptr [ %call1, %for.body72.lr.ph ], [ %incdec.ptr, %con_insert_unipair.exit174.thread.for.body72_crit_edge ]
  %err.2204 = phi i32 [ 0, %for.body72.lr.ph ], [ %59, %con_insert_unipair.exit174.thread.for.body72_crit_edge ]
  %ct.addr.0203 = phi i16 [ %ct, %for.body72.lr.ph ], [ %dec, %con_insert_unipair.exit174.thread.for.body72_crit_edge ]
  %39 = ptrtoint ptr %plist.0205 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %plist.0205, align 2
  %fontpos = getelementptr inbounds %struct.unipair, ptr %plist.0205, i32 0, i32 1
  %41 = ptrtoint ptr %fontpos to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %fontpos, align 2
  %conv.i148 = zext i16 %40 to i32
  %43 = lshr i32 %conv.i148, 11
  %arrayidx.i149 = getelementptr [32 x ptr], ptr %p.1, i32 0, i32 %43
  %44 = ptrtoint ptr %arrayidx.i149 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i149, align 4
  %tobool.not.i150 = icmp eq ptr %45, null
  br i1 %tobool.not.i150, label %if.then.i153, label %for.body72.if.end7.i159_crit_edge

for.body72.if.end7.i159_crit_edge:                ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i159

if.then.i153:                                     ; preds = %for.body72
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %46 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i151 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %46, i32 noundef 3264, i32 noundef 128) #16
  %47 = ptrtoint ptr %arrayidx.i149 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call7.i.i.i151, ptr %arrayidx.i149, align 4
  %tobool3.not.i152 = icmp eq ptr %call7.i.i.i151, null
  br i1 %tobool3.not.i152, label %if.then.i153.con_insert_unipair.exit174.thread_crit_edge, label %for.body.preheader.i154

if.then.i153.con_insert_unipair.exit174.thread_crit_edge: ; preds = %if.then.i153
  call void @__sanitizer_cov_trace_pc() #14
  br label %con_insert_unipair.exit174.thread

for.body.preheader.i154:                          ; preds = %if.then.i153
  call void @__sanitizer_cov_trace_pc() #14
  %48 = call ptr @memset(ptr %call7.i.i.i151, i32 0, i32 128)
  br label %if.end7.i159

if.end7.i159:                                     ; preds = %for.body.preheader.i154, %for.body72.if.end7.i159_crit_edge
  %p1.0.i155 = phi ptr [ %45, %for.body72.if.end7.i159_crit_edge ], [ %call7.i.i.i151, %for.body.preheader.i154 ]
  %49 = lshr i32 %conv.i148, 6
  %and.i156 = and i32 %49, 31
  %arrayidx10.i157 = getelementptr ptr, ptr %p1.0.i155, i32 %and.i156
  %50 = ptrtoint ptr %arrayidx10.i157 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx10.i157, align 4
  %tobool11.not.i158 = icmp eq ptr %51, null
  br i1 %tobool11.not.i158, label %if.then12.i162, label %if.end7.i159._crit_edge

if.end7.i159._crit_edge:                          ; preds = %if.end7.i159
  call void @__sanitizer_cov_trace_pc() #14
  br label %55

if.then12.i162:                                   ; preds = %if.end7.i159
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %52 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i45.i160 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %52, i32 noundef 3264, i32 noundef 128) #16
  %53 = ptrtoint ptr %arrayidx10.i157 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call7.i.i45.i160, ptr %arrayidx10.i157, align 4
  %tobool15.not.i161 = icmp eq ptr %call7.i.i45.i160, null
  br i1 %tobool15.not.i161, label %if.then12.i162.con_insert_unipair.exit174.thread_crit_edge, label %if.end17.i163

if.then12.i162.con_insert_unipair.exit174.thread_crit_edge: ; preds = %if.then12.i162
  call void @__sanitizer_cov_trace_pc() #14
  br label %con_insert_unipair.exit174.thread

if.end17.i163:                                    ; preds = %if.then12.i162
  call void @__sanitizer_cov_trace_pc() #14
  %54 = call ptr @memset(ptr %call7.i.i45.i160, i32 255, i32 128)
  br label %55

55:                                               ; preds = %if.end17.i163, %if.end7.i159._crit_edge
  %p2.0.i164 = phi ptr [ %51, %if.end7.i159._crit_edge ], [ %call7.i.i45.i160, %if.end17.i163 ]
  %and20.i165 = and i32 %conv.i148, 63
  %arrayidx21.i166 = getelementptr i16, ptr %p2.0.i164, i32 %and20.i165
  %56 = ptrtoint ptr %arrayidx21.i166 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %42, ptr %arrayidx21.i166, align 2
  %conv22.i167 = zext i16 %42 to i32
  %shl.i168 = shl i32 %conv22.i167, 20
  %add.i169 = or i32 %shl.i168, %conv.i148
  %57 = ptrtoint ptr %sum.i170 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sum.i170, align 4
  %add24.i171 = add i32 %58, %add.i169
  store i32 %add24.i171, ptr %sum.i170, align 4
  br label %con_insert_unipair.exit174.thread

con_insert_unipair.exit174.thread:                ; preds = %55, %if.then12.i162.con_insert_unipair.exit174.thread_crit_edge, %if.then.i153.con_insert_unipair.exit174.thread_crit_edge
  %59 = phi i32 [ %err.2204, %55 ], [ -12, %if.then.i153.con_insert_unipair.exit174.thread_crit_edge ], [ -12, %if.then12.i162.con_insert_unipair.exit174.thread_crit_edge ]
  %dec = add i16 %ct.addr.0203, -1
  %incdec.ptr = getelementptr %struct.unipair, ptr %plist.0205, i32 1
  %tobool71.not = icmp eq i16 %dec, 0
  br i1 %tobool71.not, label %for.end78, label %con_insert_unipair.exit174.thread.for.body72_crit_edge

con_insert_unipair.exit174.thread.for.body72_crit_edge: ; preds = %con_insert_unipair.exit174.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body72

for.end78:                                        ; preds = %con_insert_unipair.exit174.thread
  %call79 = tail call fastcc i32 @con_unify_unimap(ptr noundef %vc, ptr noundef %p.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %for.body86.preheader, label %for.end78.out_unlock_crit_edge

for.end78.out_unlock_crit_edge:                   ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

for.body86.preheader:                             ; preds = %for.end78
  tail call fastcc void @set_inverse_transl(ptr noundef %vc, ptr noundef %p.1, i32 noundef 0)
  tail call fastcc void @set_inverse_transl(ptr noundef %vc, ptr noundef %p.1, i32 noundef 1)
  tail call fastcc void @set_inverse_transl(ptr noundef %vc, ptr noundef %p.1, i32 noundef 2)
  tail call fastcc void @set_inverse_transl(ptr noundef %vc, ptr noundef %p.1, i32 noundef 3)
  %tobool.not.i175 = icmp eq ptr %p.1, null
  br i1 %tobool.not.i175, label %for.body86.preheader.out_unlock_crit_edge, label %if.end.i

for.body86.preheader.out_unlock_crit_edge:        ; preds = %for.body86.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end.i:                                         ; preds = %for.body86.preheader
  %inverse_trans_unicode.i = getelementptr inbounds %struct.uni_pagedir, ptr %p.1, i32 0, i32 4
  %60 = ptrtoint ptr %inverse_trans_unicode.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %inverse_trans_unicode.i, align 4
  %tobool1.not.i = icmp eq ptr %61, null
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i.if.end7.i177_crit_edge

if.end.i.if.end7.i177_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i177

if.then2.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %62 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i176 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %62, i32 noundef 3264, i32 noundef 1024) #16
  %63 = ptrtoint ptr %inverse_trans_unicode.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call7.i.i.i176, ptr %inverse_trans_unicode.i, align 4
  %tobool4.not.i = icmp eq ptr %call7.i.i.i176, null
  br i1 %tobool4.not.i, label %if.then2.i.out_unlock_crit_edge, label %if.then2.i.if.end7.i177_crit_edge

if.then2.i.if.end7.i177_crit_edge:                ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i177

if.then2.i.out_unlock_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end7.i177:                                     ; preds = %if.then2.i.if.end7.i177_crit_edge, %if.end.i.if.end7.i177_crit_edge
  %q.0.i = phi ptr [ %61, %if.end.i.if.end7.i177_crit_edge ], [ %call7.i.i.i176, %if.then2.i.if.end7.i177_crit_edge ]
  %64 = call ptr @memset(ptr %q.0.i, i32 0, i32 1024)
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc40.i.for.body.i_crit_edge, %if.end7.i177
  %i.05.i = phi i32 [ 0, %if.end7.i177 ], [ %inc41.i, %for.inc40.i.for.body.i_crit_edge ]
  %arrayidx.i178 = getelementptr [32 x ptr], ptr %p.1, i32 0, i32 %i.05.i
  %65 = ptrtoint ptr %arrayidx.i178 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.i178, align 4
  %tobool8.not.i = icmp eq ptr %66, null
  br i1 %tobool8.not.i, label %for.body.i.for.inc40.i_crit_edge, label %for.cond11.preheader.i

for.body.i.for.inc40.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc40.i

for.cond11.preheader.i:                           ; preds = %for.body.i
  %shl.i179 = shl i32 %i.05.i, 11
  br label %for.body13.i

for.body13.i:                                     ; preds = %for.inc37.i.for.body13.i_crit_edge, %for.cond11.preheader.i
  %j.03.i = phi i32 [ 0, %for.cond11.preheader.i ], [ %inc38.i, %for.inc37.i.for.body13.i_crit_edge ]
  %arrayidx14.i = getelementptr ptr, ptr %66, i32 %j.03.i
  %67 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx14.i, align 4
  %tobool15.not.i180 = icmp eq ptr %68, null
  br i1 %tobool15.not.i180, label %for.body13.i.for.inc37.i_crit_edge, label %for.cond18.preheader.i

for.body13.i.for.inc37.i_crit_edge:               ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc37.i

for.cond18.preheader.i:                           ; preds = %for.body13.i
  %shl32.i = shl i32 %j.03.i, 6
  %add.i181 = add nuw nsw i32 %shl32.i, %shl.i179
  br label %for.body20.i

for.body20.i:                                     ; preds = %for.inc.i.for.body20.i_crit_edge, %for.cond18.preheader.i
  %k.01.i = phi i32 [ 0, %for.cond18.preheader.i ], [ %inc.i, %for.inc.i.for.body20.i_crit_edge ]
  %arrayidx21.i182 = getelementptr i16, ptr %68, i32 %k.01.i
  %69 = ptrtoint ptr %arrayidx21.i182 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx21.i182, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %70)
  %cmp24.i = icmp ult i16 %70, 512
  br i1 %cmp24.i, label %land.lhs.true26.i, label %for.body20.i.for.inc.i_crit_edge

for.body20.i.for.inc.i_crit_edge:                 ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true26.i:                                ; preds = %for.body20.i
  %conv.i183 = zext i16 %70 to i32
  %arrayidx27.i = getelementptr i16, ptr %q.0.i, i32 %conv.i183
  %71 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %arrayidx27.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %72)
  %cmp29.i = icmp ult i16 %72, 32
  br i1 %cmp29.i, label %if.then31.i, label %land.lhs.true26.i.for.inc.i_crit_edge

land.lhs.true26.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then31.i:                                      ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #14
  %add33.i = add nuw nsw i32 %add.i181, %k.01.i
  %conv34.i = trunc i32 %add33.i to i16
  %73 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv34.i, ptr %arrayidx27.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then31.i, %land.lhs.true26.i.for.inc.i_crit_edge, %for.body20.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %k.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.inc.i.for.inc37.i_crit_edge, label %for.inc.i.for.body20.i_crit_edge

for.inc.i.for.body20.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body20.i

for.inc.i.for.inc37.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc37.i

for.inc37.i:                                      ; preds = %for.inc.i.for.inc37.i_crit_edge, %for.body13.i.for.inc37.i_crit_edge
  %inc38.i = add nuw nsw i32 %j.03.i, 1
  %exitcond7.not.i = icmp eq i32 %inc38.i, 32
  br i1 %exitcond7.not.i, label %for.inc37.i.for.inc40.i_crit_edge, label %for.inc37.i.for.body13.i_crit_edge

for.inc37.i.for.body13.i_crit_edge:               ; preds = %for.inc37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body13.i

for.inc37.i.for.inc40.i_crit_edge:                ; preds = %for.inc37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc40.i

for.inc40.i:                                      ; preds = %for.inc37.i.for.inc40.i_crit_edge, %for.body.i.for.inc40.i_crit_edge
  %inc41.i = add nuw nsw i32 %i.05.i, 1
  %exitcond8.not.i = icmp eq i32 %inc41.i, 32
  br i1 %exitcond8.not.i, label %for.inc40.i.out_unlock_crit_edge, label %for.inc40.i.for.body.i_crit_edge

for.inc40.i.for.body.i_crit_edge:                 ; preds = %for.inc40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc40.i.out_unlock_crit_edge:                 ; preds = %for.inc40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

out_unlock:                                       ; preds = %for.inc40.i.out_unlock_crit_edge, %if.then2.i.out_unlock_crit_edge, %for.body86.preheader.out_unlock_crit_edge, %for.end78.out_unlock_crit_edge, %if.then39, %if.then10.out_unlock_crit_edge, %if.end5.out_unlock_crit_edge
  %err.4 = phi i32 [ %59, %for.end78.out_unlock_crit_edge ], [ -22, %if.end5.out_unlock_crit_edge ], [ %59, %for.body86.preheader.out_unlock_crit_edge ], [ %59, %if.then2.i.out_unlock_crit_edge ], [ %call11, %if.then10.out_unlock_crit_edge ], [ -12, %if.then39 ], [ %59, %for.inc40.i.out_unlock_crit_edge ]
  tail call void @console_unlock() #12
  tail call void @kvfree(ptr noundef %call1) #12
  br label %cleanup90

cleanup90:                                        ; preds = %out_unlock, %if.then3, %entry.cleanup90_crit_edge
  %retval.0 = phi i32 [ %1, %if.then3 ], [ %err.4, %out_unlock ], [ 0, %entry.cleanup90_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmemdup_user(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @con_unify_unimap(ptr nocapture noundef readonly %conp, ptr noundef %p) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sum4 = getelementptr inbounds %struct.uni_pagedir, ptr %p, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc58.for.body_crit_edge, %entry
  %i.0123 = phi i32 [ 0, %entry ], [ %inc59, %for.inc58.for.body_crit_edge ]
  %call = tail call i32 @vc_cons_allocated(i32 noundef %i.0123) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.for.inc58_crit_edge, label %if.end

for.body.for.inc58_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc58

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %i.0123
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %vc_uni_pagedir_loc = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 49
  %2 = ptrtoint ptr %vc_uni_pagedir_loc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vc_uni_pagedir_loc, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool1.not = icmp eq ptr %5, null
  %cmp2 = icmp eq ptr %5, %p
  %or.cond = or i1 %tobool1.not, %cmp2
  br i1 %or.cond, label %if.end.for.inc58_crit_edge, label %lor.lhs.false3

if.end.for.inc58_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc58

lor.lhs.false3:                                   ; preds = %if.end
  %sum = getelementptr inbounds %struct.uni_pagedir, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %sum to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sum, align 4
  %8 = ptrtoint ptr %sum4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sum4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp5.not = icmp eq i32 %7, %9
  br i1 %cmp5.not, label %lor.lhs.false3.for.body10_crit_edge, label %lor.lhs.false3.for.inc58_crit_edge

lor.lhs.false3.for.inc58_crit_edge:               ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc58

lor.lhs.false3.for.body10_crit_edge:              ; preds = %lor.lhs.false3
  br label %for.body10

for.body10:                                       ; preds = %for.inc50.for.body10_crit_edge, %lor.lhs.false3.for.body10_crit_edge
  %j.0121 = phi i32 [ %inc51, %for.inc50.for.body10_crit_edge ], [ 0, %lor.lhs.false3.for.body10_crit_edge ]
  %arrayidx11 = getelementptr [32 x ptr], ptr %p, i32 0, i32 %j.0121
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx11, align 4
  %arrayidx13 = getelementptr [32 x ptr], ptr %5, i32 0, i32 %j.0121
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx13, align 4
  %tobool14.not = icmp eq ptr %11, null
  %tobool15.not = icmp eq ptr %13, null
  %or.cond101 = select i1 %tobool14.not, i1 %tobool15.not, i1 false
  br i1 %or.cond101, label %for.body10.for.inc50_crit_edge, label %if.end17

for.body10.for.inc50_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc50

if.end17:                                         ; preds = %for.body10
  %or.cond102 = select i1 %tobool14.not, i1 true, i1 %tobool15.not
  br i1 %or.cond102, label %if.end17.for.inc58_crit_edge, label %if.end17.for.body25_crit_edge

if.end17.for.body25_crit_edge:                    ; preds = %if.end17
  br label %for.body25

if.end17.for.inc58_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc58

for.body25:                                       ; preds = %for.inc.for.body25_crit_edge, %if.end17.for.body25_crit_edge
  %k.0119 = phi i32 [ %inc, %for.inc.for.body25_crit_edge ], [ 0, %if.end17.for.body25_crit_edge ]
  %arrayidx26 = getelementptr ptr, ptr %11, i32 %k.0119
  %14 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx26, align 4
  %tobool27.not = icmp eq ptr %15, null
  %arrayidx29 = getelementptr ptr, ptr %13, i32 %k.0119
  %16 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx29, align 4
  %tobool30.not = icmp eq ptr %17, null
  br i1 %tobool27.not, label %land.lhs.true28, label %lor.lhs.false35

land.lhs.true28:                                  ; preds = %for.body25
  br i1 %tobool30.not, label %land.lhs.true28.for.inc_crit_edge, label %land.lhs.true28.for.end52_crit_edge

land.lhs.true28.for.end52_crit_edge:              ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end52

land.lhs.true28.for.inc_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false35:                                  ; preds = %for.body25
  br i1 %tobool30.not, label %lor.lhs.false35.for.end52_crit_edge, label %if.end39

lor.lhs.false35.for.end52_crit_edge:              ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end52

if.end39:                                         ; preds = %lor.lhs.false35
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(128) %15, ptr noundef nonnull dereferenceable(128) %17, i32 128) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool43.not = icmp eq i32 %bcmp, 0
  br i1 %tobool43.not, label %if.end39.for.inc_crit_edge, label %if.end39.for.end52_crit_edge

if.end39.for.end52_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end52

if.end39.for.inc_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %if.end39.for.inc_crit_edge, %land.lhs.true28.for.inc_crit_edge
  %inc = add nuw nsw i32 %k.0119, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.for.inc50_crit_edge, label %for.inc.for.body25_crit_edge

for.inc.for.body25_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body25

for.inc.for.inc50_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc50

for.inc50:                                        ; preds = %for.inc.for.inc50_crit_edge, %for.body10.for.inc50_crit_edge
  %inc51 = add nuw nsw i32 %j.0121, 1
  %exitcond128.not = icmp eq i32 %inc51, 32
  br i1 %exitcond128.not, label %for.inc50.if.then54_crit_edge, label %for.inc50.for.body10_crit_edge

for.inc50.for.body10_crit_edge:                   ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body10

for.inc50.if.then54_crit_edge:                    ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then54

for.end52:                                        ; preds = %if.end39.for.end52_crit_edge, %lor.lhs.false35.for.end52_crit_edge, %land.lhs.true28.for.end52_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %j.0121)
  %cmp53 = icmp eq i32 %j.0121, 32
  br i1 %cmp53, label %for.end52.if.then54_crit_edge, label %for.end52.for.inc58_crit_edge

for.end52.for.inc58_crit_edge:                    ; preds = %for.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc58

for.end52.if.then54_crit_edge:                    ; preds = %for.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then54

if.then54:                                        ; preds = %for.end52.if.then54_crit_edge, %for.inc50.if.then54_crit_edge
  %refcount = getelementptr inbounds %struct.uni_pagedir, ptr %5, i32 0, i32 1
  %18 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %refcount, align 4
  %inc55 = add i32 %19, 1
  store i32 %inc55, ptr %refcount, align 4
  %vc_uni_pagedir_loc56 = getelementptr inbounds %struct.vc_data, ptr %conp, i32 0, i32 49
  %20 = ptrtoint ptr %vc_uni_pagedir_loc56 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vc_uni_pagedir_loc56, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %5, ptr %21, align 4
  tail call fastcc void @con_release_unimap(ptr noundef %p)
  tail call void @kfree(ptr noundef %p) #12
  br label %cleanup61

for.inc58:                                        ; preds = %for.end52.for.inc58_crit_edge, %if.end17.for.inc58_crit_edge, %lor.lhs.false3.for.inc58_crit_edge, %if.end.for.inc58_crit_edge, %for.body.for.inc58_crit_edge
  %inc59 = add nuw nsw i32 %i.0123, 1
  %exitcond129.not = icmp eq i32 %inc59, 63
  br i1 %exitcond129.not, label %for.inc58.cleanup61_crit_edge, label %for.inc58.for.body_crit_edge

for.inc58.for.body_crit_edge:                     ; preds = %for.inc58
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc58.cleanup61_crit_edge:                    ; preds = %for.inc58
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup61

cleanup61:                                        ; preds = %for.inc58.cleanup61_crit_edge, %if.then54
  %retval.0 = phi i32 [ 1, %if.then54 ], [ 0, %for.inc58.cleanup61_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_inverse_transl(ptr nocapture noundef readonly %conp, ptr noundef %p, i32 noundef %i) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x [256 x i16]], ptr @translations, i32 0, i32 %i
  %tobool.not = icmp eq ptr %p, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx1 = getelementptr %struct.uni_pagedir, ptr %p, i32 0, i32 3, i32 %i
  %0 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx1, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then3:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 512) #16
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i, ptr %arrayidx1, align 4
  %tobool6.not = icmp eq ptr %call7.i, null
  br i1 %tobool6.not, label %if.then3.cleanup_crit_edge, label %if.then3.if.end9_crit_edge

if.then3.if.end9_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.then3.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %q.0 = phi ptr [ %1, %if.end.if.end9_crit_edge ], [ %call7.i, %if.then3.if.end9_crit_edge ]
  %4 = call ptr @memset(ptr %q.0, i32 0, i32 512)
  %vc_uni_pagedir_loc.i = getelementptr inbounds %struct.vc_data, ptr %conp, i32 0, i32 49
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end9
  %j.044 = phi i32 [ 0, %if.end9 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx10 = getelementptr i16, ptr %arrayidx, i32 %j.044
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx10, align 2
  %conv = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %6)
  %cmp1.i = icmp ult i16 %6, 32
  br i1 %cmp1.i, label %for.body.for.inc_crit_edge, label %if.else3.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.else3.i:                                       ; preds = %for.body
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.5)
  switch i16 %6, label %if.else8.i [
    i16 -257, label %if.else3.i.for.inc_crit_edge
    i16 8207, label %if.else3.i.for.inc_crit_edge46
    i16 8206, label %if.else3.i.for.inc_crit_edge47
    i16 8205, label %if.else3.i.for.inc_crit_edge48
    i16 8204, label %if.else3.i.for.inc_crit_edge49
    i16 8203, label %if.else3.i.for.inc_crit_edge50
  ]

if.else3.i.for.inc_crit_edge50:                   ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.else3.i.for.inc_crit_edge49:                   ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.else3.i.for.inc_crit_edge48:                   ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.else3.i.for.inc_crit_edge47:                   ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.else3.i.for.inc_crit_edge46:                   ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.else3.i.for.inc_crit_edge:                     ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.else8.i:                                       ; preds = %if.else3.i
  %and.i = and i32 %conv, 65024
  call void @__sanitizer_cov_trace_const_cmp4(i32 61440, i32 %and.i)
  %cmp9.i = icmp eq i32 %and.i, 61440
  br i1 %cmp9.i, label %if.then10.i, label %if.end14.i

if.then10.i:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #14
  %and11.i = and i32 %conv, 511
  br label %land.lhs.true16

if.end14.i:                                       ; preds = %if.else8.i
  %8 = ptrtoint ptr %vc_uni_pagedir_loc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vc_uni_pagedir_loc.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end14.i.for.inc_crit_edge, label %if.end16.i

if.end14.i.for.inc_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end16.i:                                       ; preds = %if.end14.i
  %shr46.i = lshr i32 %conv, 11
  %arrayidx.i = getelementptr [32 x ptr], ptr %11, i32 0, i32 %shr46.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tobool18.not.i = icmp eq ptr %13, null
  br i1 %tobool18.not.i, label %if.end16.i.for.inc_crit_edge, label %land.lhs.true19.i

if.end16.i.for.inc_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true19.i:                                ; preds = %if.end16.i
  %14 = lshr i32 %conv, 6
  %and21.i = and i32 %14, 31
  %arrayidx22.i = getelementptr ptr, ptr %13, i32 %and21.i
  %15 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx22.i, align 4
  %tobool23.not.i = icmp eq ptr %16, null
  br i1 %tobool23.not.i, label %land.lhs.true19.i.for.inc_crit_edge, label %land.lhs.true24.i

land.lhs.true19.i.for.inc_crit_edge:              ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true24.i:                                ; preds = %land.lhs.true19.i
  %and25.i = and i32 %conv, 63
  %arrayidx26.i = getelementptr i16, ptr %16, i32 %and25.i
  %17 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx26.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %18)
  %cmp27.i = icmp ult i16 %18, 512
  %conv.i = zext i16 %18 to i32
  br i1 %cmp27.i, label %land.lhs.true24.i.land.lhs.true16_crit_edge, label %land.lhs.true24.i.for.inc_crit_edge

land.lhs.true24.i.for.inc_crit_edge:              ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true24.i.land.lhs.true16_crit_edge:      ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true16

land.lhs.true16:                                  ; preds = %land.lhs.true24.i.land.lhs.true16_crit_edge, %if.then10.i
  %retval.0.i = phi i32 [ %and11.i, %if.then10.i ], [ %conv.i, %land.lhs.true24.i.land.lhs.true16_crit_edge ]
  %arrayidx17 = getelementptr i8, ptr %q.0, i32 %retval.0.i
  %19 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %20)
  %cmp19 = icmp ult i8 %20, 32
  br i1 %cmp19, label %if.then21, label %land.lhs.true16.for.inc_crit_edge

land.lhs.true16.for.inc_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then21:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #14
  %conv22 = trunc i32 %j.044 to i8
  %21 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv22, ptr %arrayidx17, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then21, %land.lhs.true16.for.inc_crit_edge, %land.lhs.true24.i.for.inc_crit_edge, %land.lhs.true19.i.for.inc_crit_edge, %if.end16.i.for.inc_crit_edge, %if.end14.i.for.inc_crit_edge, %if.else3.i.for.inc_crit_edge, %if.else3.i.for.inc_crit_edge46, %if.else3.i.for.inc_crit_edge47, %if.else3.i.for.inc_crit_edge48, %if.else3.i.for.inc_crit_edge49, %if.else3.i.for.inc_crit_edge50, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %j.044, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @con_set_default_unimap(ptr nocapture noundef readonly %vc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dflt, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %vc_uni_pagedir_loc = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 49
  %1 = ptrtoint ptr %vc_uni_pagedir_loc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vc_uni_pagedir_loc, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %cmp = icmp eq ptr %4, %0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %if.then
  %refcount = getelementptr inbounds %struct.uni_pagedir, ptr %0, i32 0, i32 1
  %5 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %refcount, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %refcount, align 4
  %7 = ptrtoint ptr %vc_uni_pagedir_loc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vc_uni_pagedir_loc, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %0, ptr %8, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %refcount4 = getelementptr inbounds %struct.uni_pagedir, ptr %4, i32 0, i32 1
  %10 = ptrtoint ptr %refcount4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %refcount4, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %refcount4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool5.not = icmp eq i32 %dec, 0
  br i1 %tobool5.not, label %if.then6, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @con_release_unimap(ptr noundef nonnull %4)
  tail call void @kfree(ptr noundef nonnull %4) #12
  br label %cleanup

if.end8:                                          ; preds = %entry
  %call = tail call fastcc i32 @con_do_clear_unimap(ptr noundef %vc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.end11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %vc_uni_pagedir_loc12 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 49
  %12 = ptrtoint ptr %vc_uni_pagedir_loc12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vc_uni_pagedir_loc12, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %sum.i = getelementptr inbounds %struct.uni_pagedir, ptr %15, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc23.for.body_crit_edge, %if.end11
  %q.090 = phi ptr [ @dfont_unitable, %if.end11 ], [ %q.1.lcssa, %for.inc23.for.body_crit_edge ]
  %err.089 = phi i32 [ 0, %if.end11 ], [ %err.1.lcssa, %for.inc23.for.body_crit_edge ]
  %i.087 = phi i32 [ 0, %if.end11 ], [ %inc24, %for.inc23.for.body_crit_edge ]
  %arrayidx = getelementptr [0 x i8], ptr @dfont_unicount, i32 0, i32 %i.087
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool15.not82 = icmp eq i8 %17, 0
  br i1 %tobool15.not82, label %for.body.for.inc23_crit_edge, label %for.body16.lr.ph

for.body.for.inc23_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc23

for.body16.lr.ph:                                 ; preds = %for.body
  %conv = zext i8 %17 to i32
  %conv17 = trunc i32 %i.087 to i16
  %shl.i = shl i32 %i.087, 20
  br label %for.body16

for.body16:                                       ; preds = %con_insert_unipair.exit.thread.for.body16_crit_edge, %for.body16.lr.ph
  %q.185 = phi ptr [ %q.090, %for.body16.lr.ph ], [ %incdec.ptr, %con_insert_unipair.exit.thread.for.body16_crit_edge ]
  %err.184 = phi i32 [ %err.089, %for.body16.lr.ph ], [ %36, %con_insert_unipair.exit.thread.for.body16_crit_edge ]
  %j.083 = phi i32 [ %conv, %for.body16.lr.ph ], [ %dec22, %con_insert_unipair.exit.thread.for.body16_crit_edge ]
  %incdec.ptr = getelementptr i16, ptr %q.185, i32 1
  %18 = ptrtoint ptr %q.185 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %q.185, align 2
  %conv.i = zext i16 %19 to i32
  %20 = lshr i32 %conv.i, 11
  %arrayidx.i = getelementptr [32 x ptr], ptr %15, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.then.i, label %for.body16.if.end7.i_crit_edge

for.body16.if.end7.i_crit_edge:                   ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.then.i:                                        ; preds = %for.body16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3264, i32 noundef 128) #16
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i.i, ptr %arrayidx.i, align 4
  %tobool3.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool3.not.i, label %if.then.i.con_insert_unipair.exit.thread_crit_edge, label %for.body.preheader.i

if.then.i.con_insert_unipair.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %con_insert_unipair.exit.thread

for.body.preheader.i:                             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %25 = call ptr @memset(ptr %call7.i.i.i, i32 0, i32 128)
  br label %if.end7.i

if.end7.i:                                        ; preds = %for.body.preheader.i, %for.body16.if.end7.i_crit_edge
  %p1.0.i = phi ptr [ %22, %for.body16.if.end7.i_crit_edge ], [ %call7.i.i.i, %for.body.preheader.i ]
  %26 = lshr i32 %conv.i, 6
  %and.i = and i32 %26, 31
  %arrayidx10.i = getelementptr ptr, ptr %p1.0.i, i32 %and.i
  %27 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx10.i, align 4
  %tobool11.not.i = icmp eq ptr %28, null
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end7.i._crit_edge

if.end7.i._crit_edge:                             ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %32

if.then12.i:                                      ; preds = %if.end7.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i45.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3264, i32 noundef 128) #16
  %30 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i.i45.i, ptr %arrayidx10.i, align 4
  %tobool15.not.i = icmp eq ptr %call7.i.i45.i, null
  br i1 %tobool15.not.i, label %if.then12.i.con_insert_unipair.exit.thread_crit_edge, label %if.end17.i

if.then12.i.con_insert_unipair.exit.thread_crit_edge: ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %con_insert_unipair.exit.thread

if.end17.i:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #14
  %31 = call ptr @memset(ptr %call7.i.i45.i, i32 255, i32 128)
  br label %32

32:                                               ; preds = %if.end17.i, %if.end7.i._crit_edge
  %p2.0.i = phi ptr [ %28, %if.end7.i._crit_edge ], [ %call7.i.i45.i, %if.end17.i ]
  %and20.i = and i32 %conv.i, 63
  %arrayidx21.i = getelementptr i16, ptr %p2.0.i, i32 %and20.i
  %33 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv17, ptr %arrayidx21.i, align 2
  %add.i = or i32 %shl.i, %conv.i
  %34 = ptrtoint ptr %sum.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sum.i, align 4
  %add24.i = add i32 %add.i, %35
  store i32 %add24.i, ptr %sum.i, align 4
  br label %con_insert_unipair.exit.thread

con_insert_unipair.exit.thread:                   ; preds = %32, %if.then12.i.con_insert_unipair.exit.thread_crit_edge, %if.then.i.con_insert_unipair.exit.thread_crit_edge
  %36 = phi i32 [ %err.184, %32 ], [ -12, %if.then.i.con_insert_unipair.exit.thread_crit_edge ], [ -12, %if.then12.i.con_insert_unipair.exit.thread_crit_edge ]
  %dec22 = add nsw i32 %j.083, -1
  %tobool15.not = icmp eq i32 %dec22, 0
  br i1 %tobool15.not, label %con_insert_unipair.exit.thread.for.inc23_crit_edge, label %con_insert_unipair.exit.thread.for.body16_crit_edge

con_insert_unipair.exit.thread.for.body16_crit_edge: ; preds = %con_insert_unipair.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body16

con_insert_unipair.exit.thread.for.inc23_crit_edge: ; preds = %con_insert_unipair.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc23

for.inc23:                                        ; preds = %con_insert_unipair.exit.thread.for.inc23_crit_edge, %for.body.for.inc23_crit_edge
  %err.1.lcssa = phi i32 [ %err.089, %for.body.for.inc23_crit_edge ], [ %36, %con_insert_unipair.exit.thread.for.inc23_crit_edge ]
  %q.1.lcssa = phi ptr [ %q.090, %for.body.for.inc23_crit_edge ], [ %incdec.ptr, %con_insert_unipair.exit.thread.for.inc23_crit_edge ]
  %inc24 = add nuw nsw i32 %i.087, 1
  %exitcond.not = icmp eq i32 %inc24, 256
  br i1 %exitcond.not, label %for.end25, label %for.inc23.for.body_crit_edge

for.inc23.for.body_crit_edge:                     ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end25:                                        ; preds = %for.inc23
  %call26 = tail call fastcc i32 @con_unify_unimap(ptr noundef %vc, ptr noundef %15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %for.body34.preheader, label %if.then28

for.body34.preheader:                             ; preds = %for.end25
  tail call fastcc void @set_inverse_transl(ptr noundef %vc, ptr noundef %15, i32 noundef 0)
  tail call fastcc void @set_inverse_transl(ptr noundef %vc, ptr noundef %15, i32 noundef 1)
  tail call fastcc void @set_inverse_transl(ptr noundef %vc, ptr noundef %15, i32 noundef 2)
  tail call fastcc void @set_inverse_transl(ptr noundef %vc, ptr noundef %15, i32 noundef 3)
  %tobool.not.i71 = icmp eq ptr %15, null
  br i1 %tobool.not.i71, label %for.body34.preheader.set_inverse_trans_unicode.exit_crit_edge, label %if.end.i

for.body34.preheader.set_inverse_trans_unicode.exit_crit_edge: ; preds = %for.body34.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_inverse_trans_unicode.exit

if.then28:                                        ; preds = %for.end25
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %vc_uni_pagedir_loc12 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vc_uni_pagedir_loc12, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  store ptr %40, ptr @dflt, align 4
  br label %cleanup

if.end.i:                                         ; preds = %for.body34.preheader
  %inverse_trans_unicode.i = getelementptr inbounds %struct.uni_pagedir, ptr %15, i32 0, i32 4
  %41 = ptrtoint ptr %inverse_trans_unicode.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %inverse_trans_unicode.i, align 4
  %tobool1.not.i = icmp eq ptr %42, null
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i.if.end7.i73_crit_edge

if.end.i.if.end7.i73_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i73

if.then2.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %43 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i72 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %43, i32 noundef 3264, i32 noundef 1024) #16
  %44 = ptrtoint ptr %inverse_trans_unicode.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call7.i.i.i72, ptr %inverse_trans_unicode.i, align 4
  %tobool4.not.i = icmp eq ptr %call7.i.i.i72, null
  br i1 %tobool4.not.i, label %if.then2.i.set_inverse_trans_unicode.exit_crit_edge, label %if.then2.i.if.end7.i73_crit_edge

if.then2.i.if.end7.i73_crit_edge:                 ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i73

if.then2.i.set_inverse_trans_unicode.exit_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_inverse_trans_unicode.exit

if.end7.i73:                                      ; preds = %if.then2.i.if.end7.i73_crit_edge, %if.end.i.if.end7.i73_crit_edge
  %q.0.i = phi ptr [ %42, %if.end.i.if.end7.i73_crit_edge ], [ %call7.i.i.i72, %if.then2.i.if.end7.i73_crit_edge ]
  %45 = call ptr @memset(ptr %q.0.i, i32 0, i32 1024)
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc40.i.for.body.i_crit_edge, %if.end7.i73
  %i.05.i = phi i32 [ 0, %if.end7.i73 ], [ %inc41.i, %for.inc40.i.for.body.i_crit_edge ]
  %arrayidx.i74 = getelementptr [32 x ptr], ptr %15, i32 0, i32 %i.05.i
  %46 = ptrtoint ptr %arrayidx.i74 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i74, align 4
  %tobool8.not.i = icmp eq ptr %47, null
  br i1 %tobool8.not.i, label %for.body.i.for.inc40.i_crit_edge, label %for.cond11.preheader.i

for.body.i.for.inc40.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc40.i

for.cond11.preheader.i:                           ; preds = %for.body.i
  %shl.i75 = shl i32 %i.05.i, 11
  br label %for.body13.i

for.body13.i:                                     ; preds = %for.inc37.i.for.body13.i_crit_edge, %for.cond11.preheader.i
  %j.03.i = phi i32 [ 0, %for.cond11.preheader.i ], [ %inc38.i, %for.inc37.i.for.body13.i_crit_edge ]
  %arrayidx14.i = getelementptr ptr, ptr %47, i32 %j.03.i
  %48 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx14.i, align 4
  %tobool15.not.i76 = icmp eq ptr %49, null
  br i1 %tobool15.not.i76, label %for.body13.i.for.inc37.i_crit_edge, label %for.cond18.preheader.i

for.body13.i.for.inc37.i_crit_edge:               ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc37.i

for.cond18.preheader.i:                           ; preds = %for.body13.i
  %shl32.i = shl i32 %j.03.i, 6
  %add.i77 = add nuw nsw i32 %shl32.i, %shl.i75
  br label %for.body20.i

for.body20.i:                                     ; preds = %for.inc.i.for.body20.i_crit_edge, %for.cond18.preheader.i
  %k.01.i = phi i32 [ 0, %for.cond18.preheader.i ], [ %inc.i, %for.inc.i.for.body20.i_crit_edge ]
  %arrayidx21.i78 = getelementptr i16, ptr %49, i32 %k.01.i
  %50 = ptrtoint ptr %arrayidx21.i78 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx21.i78, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %51)
  %cmp24.i = icmp ult i16 %51, 512
  br i1 %cmp24.i, label %land.lhs.true26.i, label %for.body20.i.for.inc.i_crit_edge

for.body20.i.for.inc.i_crit_edge:                 ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true26.i:                                ; preds = %for.body20.i
  %conv.i79 = zext i16 %51 to i32
  %arrayidx27.i = getelementptr i16, ptr %q.0.i, i32 %conv.i79
  %52 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx27.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %53)
  %cmp29.i = icmp ult i16 %53, 32
  br i1 %cmp29.i, label %if.then31.i, label %land.lhs.true26.i.for.inc.i_crit_edge

land.lhs.true26.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then31.i:                                      ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #14
  %add33.i = add nuw nsw i32 %add.i77, %k.01.i
  %conv34.i = trunc i32 %add33.i to i16
  %54 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv34.i, ptr %arrayidx27.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then31.i, %land.lhs.true26.i.for.inc.i_crit_edge, %for.body20.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %k.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.inc.i.for.inc37.i_crit_edge, label %for.inc.i.for.body20.i_crit_edge

for.inc.i.for.body20.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body20.i

for.inc.i.for.inc37.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc37.i

for.inc37.i:                                      ; preds = %for.inc.i.for.inc37.i_crit_edge, %for.body13.i.for.inc37.i_crit_edge
  %inc38.i = add nuw nsw i32 %j.03.i, 1
  %exitcond7.not.i = icmp eq i32 %inc38.i, 32
  br i1 %exitcond7.not.i, label %for.inc37.i.for.inc40.i_crit_edge, label %for.inc37.i.for.body13.i_crit_edge

for.inc37.i.for.body13.i_crit_edge:               ; preds = %for.inc37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body13.i

for.inc37.i.for.inc40.i_crit_edge:                ; preds = %for.inc37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc40.i

for.inc40.i:                                      ; preds = %for.inc37.i.for.inc40.i_crit_edge, %for.body.i.for.inc40.i_crit_edge
  %inc41.i = add nuw nsw i32 %i.05.i, 1
  %exitcond8.not.i = icmp eq i32 %inc41.i, 32
  br i1 %exitcond8.not.i, label %for.inc40.i.set_inverse_trans_unicode.exit_crit_edge, label %for.inc40.i.for.body.i_crit_edge

for.inc40.i.for.body.i_crit_edge:                 ; preds = %for.inc40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc40.i.set_inverse_trans_unicode.exit_crit_edge: ; preds = %for.inc40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_inverse_trans_unicode.exit

set_inverse_trans_unicode.exit:                   ; preds = %for.inc40.i.set_inverse_trans_unicode.exit_crit_edge, %if.then2.i.set_inverse_trans_unicode.exit_crit_edge, %for.body34.preheader.set_inverse_trans_unicode.exit_crit_edge
  store ptr %15, ptr @dflt, align 4
  br label %cleanup

cleanup:                                          ; preds = %set_inverse_trans_unicode.exit, %if.then28, %if.end8.cleanup_crit_edge, %if.then6, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1.lcssa, %if.then28 ], [ %err.1.lcssa, %set_inverse_trans_unicode.exit ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.then6 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @con_copy_unimap(ptr nocapture noundef readonly %dst_vc, ptr nocapture noundef readonly %src_vc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_uni_pagedir_loc = getelementptr inbounds %struct.vc_data, ptr %src_vc, i32 0, i32 49
  %0 = ptrtoint ptr %vc_uni_pagedir_loc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vc_uni_pagedir_loc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %vc_uni_pagedir_loc1 = getelementptr inbounds %struct.vc_data, ptr %dst_vc, i32 0, i32 49
  %4 = ptrtoint ptr %vc_uni_pagedir_loc1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vc_uni_pagedir_loc1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %cmp = icmp eq ptr %7, %3
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end4.con_free_unimap.exit_crit_edge, label %if.end.i

if.end4.con_free_unimap.exit_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %con_free_unimap.exit

if.end.i:                                         ; preds = %if.end4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %5, align 4
  %refcount.i = getelementptr inbounds %struct.uni_pagedir, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %refcount.i, align 4
  %dec.i = add i32 %10, -1
  store i32 %dec.i, ptr %refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool2.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.con_free_unimap.exit_crit_edge

if.end.i.con_free_unimap.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %con_free_unimap.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @con_release_unimap(ptr noundef nonnull %7) #12
  tail call void @kfree(ptr noundef nonnull %7) #12
  br label %con_free_unimap.exit

con_free_unimap.exit:                             ; preds = %if.end4.i, %if.end.i.con_free_unimap.exit_crit_edge, %if.end4.con_free_unimap.exit_crit_edge
  %11 = ptrtoint ptr %vc_uni_pagedir_loc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vc_uni_pagedir_loc, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %refcount = getelementptr inbounds %struct.uni_pagedir, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %refcount, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %refcount, align 4
  %17 = ptrtoint ptr %vc_uni_pagedir_loc1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vc_uni_pagedir_loc1, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %14, ptr %18, align 4
  br label %cleanup

cleanup:                                          ; preds = %con_free_unimap.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %con_free_unimap.exit ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @con_get_unimap(ptr nocapture noundef readonly %vc, i16 noundef zeroext %ct, ptr noundef %uct, ptr noundef %list) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %ct to i32
  %0 = shl nuw nsw i32 %conv, 2
  %call.i.i106 = tail call noalias ptr @kvmalloc_node(i32 noundef %0, i32 noundef 3264, i32 noundef -1) #18
  %tobool.not = icmp eq ptr %call.i.i106, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @console_lock() #12
  %vc_uni_pagedir_loc = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 49
  %1 = ptrtoint ptr %vc_uni_pagedir_loc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vc_uni_pagedir_loc, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %if.end.if.end44_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

for.body:                                         ; preds = %for.inc41.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0121 = phi i32 [ %inc42, %for.inc41.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %ect.0120 = phi i16 [ %ect.5, %for.inc41.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x ptr], ptr %4, i32 0, i32 %i.0121
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %for.body.for.inc41_crit_edge, label %for.cond7.preheader

for.body.for.inc41_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc41

for.cond7.preheader:                              ; preds = %for.body
  %shl = shl i32 %i.0121, 11
  br label %for.body10

for.body10:                                       ; preds = %for.inc37.for.body10_crit_edge, %for.cond7.preheader
  %j.0118 = phi i32 [ 0, %for.cond7.preheader ], [ %inc38, %for.inc37.for.body10_crit_edge ]
  %ect.1117 = phi i16 [ %ect.0120, %for.cond7.preheader ], [ %ect.4, %for.inc37.for.body10_crit_edge ]
  %p1.0116 = phi ptr [ %6, %for.cond7.preheader ], [ %incdec.ptr, %for.inc37.for.body10_crit_edge ]
  %incdec.ptr = getelementptr ptr, ptr %p1.0116, i32 1
  %7 = ptrtoint ptr %p1.0116 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %p1.0116, align 4
  %tobool11.not = icmp eq ptr %8, null
  br i1 %tobool11.not, label %for.body10.for.inc37_crit_edge, label %for.cond13.preheader

for.body10.for.inc37_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc37

for.cond13.preheader:                             ; preds = %for.body10
  %shl27 = shl i32 %j.0118, 6
  %add = add nuw nsw i32 %shl27, %shl
  br label %for.body16

for.body16:                                       ; preds = %for.inc.for.body16_crit_edge, %for.cond13.preheader
  %k.0115 = phi i32 [ 0, %for.cond13.preheader ], [ %inc34, %for.inc.for.body16_crit_edge ]
  %ect.2114 = phi i16 [ %ect.1117, %for.cond13.preheader ], [ %ect.3, %for.inc.for.body16_crit_edge ]
  %p2.0111 = phi ptr [ %8, %for.cond13.preheader ], [ %incdec.ptr35, %for.inc.for.body16_crit_edge ]
  %9 = ptrtoint ptr %p2.0111 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %p2.0111, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %10)
  %cmp18 = icmp ugt i16 %10, 511
  br i1 %cmp18, label %for.body16.for.inc_crit_edge, label %if.end21

for.body16.for.inc_crit_edge:                     ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end21:                                         ; preds = %for.body16
  call void @__sanitizer_cov_trace_cmp2(i16 %ect.2114, i16 %ct)
  %cmp24 = icmp ult i16 %ect.2114, %ct
  br i1 %cmp24, label %if.then26, label %if.end21.if.end33_crit_edge

if.end21.if.end33_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %conv22 = zext i16 %ect.2114 to i32
  %add28 = add nuw nsw i32 %add, %k.0115
  %conv29 = trunc i32 %add28 to i16
  %arrayidx30 = getelementptr %struct.unipair, ptr %call.i.i106, i32 %conv22
  %11 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv29, ptr %arrayidx30, align 2
  %12 = ptrtoint ptr %p2.0111 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %p2.0111, align 2
  %fontpos = getelementptr %struct.unipair, ptr %call.i.i106, i32 %conv22, i32 1
  %14 = ptrtoint ptr %fontpos to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %fontpos, align 2
  br label %if.end33

if.end33:                                         ; preds = %if.then26, %if.end21.if.end33_crit_edge
  %inc = add i16 %ect.2114, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end33, %for.body16.for.inc_crit_edge
  %ect.3 = phi i16 [ %ect.2114, %for.body16.for.inc_crit_edge ], [ %inc, %if.end33 ]
  %inc34 = add nuw nsw i32 %k.0115, 1
  %incdec.ptr35 = getelementptr i16, ptr %p2.0111, i32 1
  %exitcond.not = icmp eq i32 %inc34, 64
  br i1 %exitcond.not, label %for.inc.for.inc37_crit_edge, label %for.inc.for.body16_crit_edge

for.inc.for.body16_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body16

for.inc.for.inc37_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc37

for.inc37:                                        ; preds = %for.inc.for.inc37_crit_edge, %for.body10.for.inc37_crit_edge
  %ect.4 = phi i16 [ %ect.1117, %for.body10.for.inc37_crit_edge ], [ %ect.3, %for.inc.for.inc37_crit_edge ]
  %inc38 = add nuw nsw i32 %j.0118, 1
  %exitcond123.not = icmp eq i32 %inc38, 32
  br i1 %exitcond123.not, label %for.inc37.for.inc41_crit_edge, label %for.inc37.for.body10_crit_edge

for.inc37.for.body10_crit_edge:                   ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body10

for.inc37.for.inc41_crit_edge:                    ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc41

for.inc41:                                        ; preds = %for.inc37.for.inc41_crit_edge, %for.body.for.inc41_crit_edge
  %ect.5 = phi i16 [ %ect.0120, %for.body.for.inc41_crit_edge ], [ %ect.4, %for.inc37.for.inc41_crit_edge ]
  %inc42 = add nuw nsw i32 %i.0121, 1
  %exitcond124.not = icmp eq i32 %inc42, 32
  br i1 %exitcond124.not, label %for.inc41.if.end44_crit_edge, label %for.inc41.for.body_crit_edge

for.inc41.for.body_crit_edge:                     ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc41.if.end44_crit_edge:                     ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.end44:                                         ; preds = %for.inc41.if.end44_crit_edge, %if.end.if.end44_crit_edge
  %ect.6 = phi i16 [ 0, %if.end.if.end44_crit_edge ], [ %ect.5, %for.inc41.if.end44_crit_edge ]
  tail call void @console_unlock() #12
  %15 = tail call i16 @llvm.umin.i16(i16 %ect.6, i16 %ct)
  %16 = zext i16 %15 to i32
  %mul = shl nuw nsw i32 %16, 2
  tail call void @__check_object_size(ptr noundef nonnull %call.i.i106, i32 noundef %mul, i1 noundef zeroext true) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 174) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.end44.copy_to_user.exit_crit_edge, label %if.end.i.i

if.end44.copy_to_user.exit_crit_edge:             ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.end44
  %17 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %list, i32 %mul, i32 -1226833920) #15, !srcloc !36
  %asmresult.i.i = extractvalue { i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call.i.i106, i32 noundef %mul) #12
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %list, ptr noundef nonnull %call.i.i106, i32 noundef %mul) #12
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.end44.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %mul, %if.end44.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %mul, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool52.not = icmp eq i32 %n.addr.0.i, 0
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 776) #12
  %18 = tail call i32 @llvm.read_register.i32(metadata !21) #12
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 4
  %20 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #9, !srcloc !33
  %and.i = and i32 %20, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !35
  %21 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %uct, i16 %ect.6, i32 -1226833921) #12, !srcloc !37
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #12, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !35
  tail call void @kvfree(ptr noundef nonnull %call.i.i106) #12
  call void @__sanitizer_cov_trace_cmp2(i16 %ect.6, i16 %ct)
  %cmp63.not = icmp ugt i16 %ect.6, %ct
  %cond65 = select i1 %cmp63.not, i32 -12, i32 0
  %spec.select = select i1 %tobool52.not, i32 %cond65, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @conv_8bit_to_uni(i8 noundef zeroext %c) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %c to i32
  %arrayidx = getelementptr [4 x [256 x i16]], ptr @translations, i32 0, i32 3, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %1 to i32
  %or = or i32 %idxprom, 61440
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv)
  %cmp = icmp eq i32 %or, %conv
  %idxprom.conv = select i1 %cmp, i32 %idxprom, i32 %conv
  ret i32 %idxprom.conv
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @conv_uni_to_8bit(i32 noundef %uni) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %c.016 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x [256 x i16]], ptr @translations, i32 0, i32 3, i32 %c.016
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %uni)
  %cmp1 = icmp eq i32 %conv, %uni
  br i1 %cmp1, label %for.body.cleanup_crit_edge, label %lor.lhs.false

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %or = or i32 %c.016, 61440
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv)
  %cmp5 = icmp eq i32 %or, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %c.016, i32 %uni)
  %cmp7 = icmp eq i32 %c.016, %uni
  %or.cond = and i1 %cmp7, %cmp5
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %for.inc

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc:                                          ; preds = %lor.lhs.false
  %inc = add nuw nsw i32 %c.016, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %uni, %lor.lhs.false.cleanup_crit_edge ], [ %c.016, %for.body.cleanup_crit_edge ], [ -1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @console_map_init() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.09 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %call = tail call i32 @vc_cons_allocated(i32 noundef %i.09) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %arrayidx = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %i.09
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %vc_uni_pagedir_loc = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 49
  %2 = ptrtoint ptr %vc_uni_pagedir_loc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vc_uni_pagedir_loc, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 @con_set_default_unimap(ptr noundef %1)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, 63
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc_cons_allocated(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nobuiltin }
attributes #18 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19}
!llvm.named.register.sp = !{!21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @__ksymtab_inverse_translate, !1, !"__ksymtab_inverse_translate", i1 false, i1 false}
!1 = !{!"../drivers/tty/vt/consolemap.c", i32 295, i32 1}
!2 = !{ptr @__ksymtab_con_set_default_unimap, !3, !"__ksymtab_con_set_default_unimap", i1 false, i1 false}
!3 = !{!"../drivers/tty/vt/consolemap.c", i32 706, i32 1}
!4 = !{ptr @__ksymtab_con_copy_unimap, !5, !"__ksymtab_con_copy_unimap", i1 false, i1 false}
!5 = !{!"../drivers/tty/vt/consolemap.c", i32 729, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/tty/vt/consolemap.c", i32 776, i32 2}
!8 = !{ptr @inv_translate, !9, !"inv_translate", i1 false, i1 false}
!9 = !{!"../drivers/tty/vt/consolemap.c", i32 187, i32 12}
!10 = !{ptr @dflt, !11, !"dflt", i1 false, i1 false}
!11 = !{!"../drivers/tty/vt/consolemap.c", i32 197, i32 28}
!12 = !{ptr @translations, !13, !"translations", i1 false, i1 false}
!13 = !{!"../drivers/tty/vt/consolemap.c", i32 39, i32 23}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!21 = !{!"sp"}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i64 2152992465, i64 2152992490}
!32 = !{!"branch_weights", i32 2000, i32 1}
!33 = !{i64 5488020}
!34 = !{i64 5488217}
!35 = !{i64 2152973450}
!36 = !{i64 2152993146, i64 2152993171}
!37 = !{i64 2153988902, i64 2153989182, i64 2153989516, i64 2153989850}

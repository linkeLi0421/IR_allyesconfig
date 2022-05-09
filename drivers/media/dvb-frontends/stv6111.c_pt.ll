; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/stv6111.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/stv6111.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+stv6111_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_stv6111_attach\09\09\09\09"
module asm "\09.long\09__crc_stv6111_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stv6111_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22stv6111_attach\22\09\09\09\09\09"
module asm "__kstrtabns_stv6111_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.slookup = type { i16, i16 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.stv = type { ptr, i8, [11 x i8], i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }

@tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"ST STV6111\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 0, i32 0, i32 0, i32 0 }, ptr @release, ptr null, ptr null, ptr null, ptr null, ptr @set_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @get_rf_strength, ptr null, ptr null, ptr null, ptr @set_bandwidth }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_stv6111_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_stv6111_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_stv6111_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stv6111_attach to i32), ptr @__kstrtab_stv6111_attach, ptr @__kstrtabns_stv6111_attach }, section "___ksymtab_gpl+stv6111_attach", align 4
@__UNIQUE_ID_description290 = internal constant [54 x i8] c"stv6111.description=ST STV6111 satellite tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [46 x i8] c"stv6111.author=Ralph Metzler, Manfred Voelkel\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [49 x i8] c"stv6111.file=drivers/media/dvb-frontends/stv6111\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [23 x i8] c"stv6111.license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@i2c_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 315, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"i2c write error\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2c_write\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/stv6111.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@i2c_write._entry_ptr = internal global ptr @i2c_write._entry, section ".printk_index", align 4
@i2c_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 303, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"i2c read error\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c_read\00", [23 x i8] zeroinitializer }, align 32
@i2c_read._entry_ptr = internal global ptr @i2c_read._entry, section ".printk_index", align 4
@lnagain_nf_lookup = internal constant { [32 x %struct.slookup], [32 x i8] } { [32 x %struct.slookup] [%struct.slookup { i16 2572, i16 0 }, %struct.slookup { i16 2575, i16 1 }, %struct.slookup { i16 2580, i16 2 }, %struct.slookup { i16 2588, i16 3 }, %struct.slookup { i16 2596, i16 4 }, %struct.slookup { i16 2611, i16 5 }, %struct.slookup { i16 2633, i16 6 }, %struct.slookup { i16 2664, i16 7 }, %struct.slookup { i16 2701, i16 8 }, %struct.slookup { i16 2753, i16 9 }, %struct.slookup { i16 2816, i16 10 }, %struct.slookup { i16 2902, i16 11 }, %struct.slookup { i16 2995, i16 12 }, %struct.slookup { i16 3104, i16 13 }, %struct.slookup { i16 3215, i16 14 }, %struct.slookup { i16 3337, i16 15 }, %struct.slookup { i16 3492, i16 16 }, %struct.slookup { i16 3614, i16 17 }, %struct.slookup { i16 3731, i16 18 }, %struct.slookup { i16 3861, i16 19 }, %struct.slookup { i16 3988, i16 20 }, %struct.slookup { i16 4124, i16 21 }, %struct.slookup { i16 4253, i16 22 }, %struct.slookup { i16 4386, i16 23 }, %struct.slookup { i16 4505, i16 24 }, %struct.slookup { i16 4623, i16 25 }, %struct.slookup { i16 4726, i16 26 }, %struct.slookup { i16 4821, i16 27 }, %struct.slookup { i16 4903, i16 28 }, %struct.slookup { i16 4979, i16 29 }, %struct.slookup { i16 5045, i16 30 }, %struct.slookup { i16 5102, i16 31 }], [32 x i8] zeroinitializer }, align 32
@lnagain_iip3_lookup = internal constant { [32 x %struct.slookup], [32 x i8] } { [32 x %struct.slookup] [%struct.slookup { i16 1548, i16 0 }, %struct.slookup { i16 1552, i16 1 }, %struct.slookup { i16 1569, i16 2 }, %struct.slookup { i16 1565, i16 3 }, %struct.slookup { i16 1577, i16 4 }, %struct.slookup { i16 1594, i16 5 }, %struct.slookup { i16 1627, i16 6 }, %struct.slookup { i16 1656, i16 7 }, %struct.slookup { i16 1700, i16 8 }, %struct.slookup { i16 1748, i16 9 }, %struct.slookup { i16 1805, i16 10 }, %struct.slookup { i16 1896, i16 11 }, %struct.slookup { i16 1995, i16 12 }, %struct.slookup { i16 2113, i16 13 }, %struct.slookup { i16 2233, i16 14 }, %struct.slookup { i16 2366, i16 15 }, %struct.slookup { i16 2543, i16 16 }, %struct.slookup { i16 2687, i16 17 }, %struct.slookup { i16 2842, i16 18 }, %struct.slookup { i16 2999, i16 19 }, %struct.slookup { i16 3167, i16 20 }, %struct.slookup { i16 3342, i16 21 }, %struct.slookup { i16 3507, i16 22 }, %struct.slookup { i16 3679, i16 23 }, %struct.slookup { i16 3827, i16 24 }, %struct.slookup { i16 3970, i16 25 }, %struct.slookup { i16 4094, i16 26 }, %struct.slookup { i16 4210, i16 27 }, %struct.slookup { i16 4308, i16 28 }, %struct.slookup { i16 4396, i16 29 }, %struct.slookup { i16 4468, i16 30 }, %struct.slookup { i16 4535, i16 31 }], [32 x i8] zeroinitializer }, align 32
@gain_rfagc_lookup = internal constant { [52 x %struct.slookup], [48 x i8] } { [52 x %struct.slookup] [%struct.slookup { i16 4870, i16 12288 }, %struct.slookup { i16 4850, i16 15360 }, %struct.slookup { i16 4800, i16 17664 }, %struct.slookup { i16 4750, i16 18432 }, %struct.slookup { i16 4700, i16 19200 }, %struct.slookup { i16 4650, i16 19712 }, %struct.slookup { i16 4600, i16 20224 }, %struct.slookup { i16 4550, i16 20736 }, %struct.slookup { i16 4500, i16 20992 }, %struct.slookup { i16 4420, i16 21760 }, %struct.slookup { i16 4316, i16 22528 }, %struct.slookup { i16 4200, i16 23296 }, %struct.slookup { i16 4119, i16 23808 }, %struct.slookup { i16 3999, i16 24576 }, %struct.slookup { i16 3950, i16 24832 }, %struct.slookup { i16 3876, i16 25344 }, %struct.slookup { i16 3755, i16 26112 }, %struct.slookup { i16 3641, i16 26880 }, %struct.slookup { i16 3567, i16 27392 }, %struct.slookup { i16 3425, i16 28416 }, %struct.slookup { i16 3350, i16 28928 }, %struct.slookup { i16 3236, i16 29696 }, %struct.slookup { i16 3118, i16 30464 }, %struct.slookup { i16 3004, i16 31232 }, %struct.slookup { i16 2917, i16 31744 }, %struct.slookup { i16 2776, i16 32512 }, %struct.slookup { i16 2635, i16 -32256 }, %struct.slookup { i16 2516, i16 -31488 }, %struct.slookup { i16 2406, i16 -30720 }, %struct.slookup { i16 2290, i16 -29952 }, %struct.slookup { i16 2170, i16 -29184 }, %struct.slookup { i16 2073, i16 -28416 }, %struct.slookup { i16 1949, i16 -27648 }, %struct.slookup { i16 1836, i16 -26880 }, %struct.slookup { i16 1712, i16 -26112 }, %struct.slookup { i16 1631, i16 -25600 }, %struct.slookup { i16 1515, i16 -24832 }, %struct.slookup { i16 1400, i16 -24064 }, %struct.slookup { i16 1323, i16 -23552 }, %struct.slookup { i16 1203, i16 -22784 }, %struct.slookup { i16 1091, i16 -22016 }, %struct.slookup { i16 1011, i16 -21504 }, %struct.slookup { i16 904, i16 -20736 }, %struct.slookup { i16 787, i16 -19968 }, %struct.slookup { i16 685, i16 -19200 }, %struct.slookup { i16 571, i16 -18432 }, %struct.slookup { i16 464, i16 -17664 }, %struct.slookup { i16 374, i16 -16896 }, %struct.slookup { i16 275, i16 -15872 }, %struct.slookup { i16 181, i16 -14848 }, %struct.slookup { i16 102, i16 -13312 }, %struct.slookup { i16 49, i16 -9984 }], [48 x i8] zeroinitializer }, align 32
@gain_channel_agc_nf_lookup = internal constant { [55 x %struct.slookup], [36 x i8] } { [55 x %struct.slookup] [%struct.slookup { i16 7082, i16 12288 }, %struct.slookup { i16 7052, i16 16384 }, %struct.slookup { i16 7007, i16 17920 }, %struct.slookup { i16 6954, i16 18944 }, %struct.slookup { i16 6909, i16 19712 }, %struct.slookup { i16 6833, i16 20736 }, %struct.slookup { i16 6753, i16 21504 }, %struct.slookup { i16 6659, i16 22272 }, %struct.slookup { i16 6561, i16 23040 }, %struct.slookup { i16 6472, i16 23552 }, %struct.slookup { i16 6366, i16 24320 }, %struct.slookup { i16 6259, i16 24832 }, %struct.slookup { i16 6151, i16 25600 }, %struct.slookup { i16 6026, i16 26368 }, %struct.slookup { i16 5920, i16 26880 }, %struct.slookup { i16 5835, i16 27392 }, %struct.slookup { i16 5770, i16 27648 }, %struct.slookup { i16 5681, i16 28160 }, %struct.slookup { i16 5596, i16 28672 }, %struct.slookup { i16 5503, i16 29184 }, %struct.slookup { i16 5429, i16 29440 }, %struct.slookup { i16 5319, i16 29952 }, %struct.slookup { i16 5220, i16 30464 }, %struct.slookup { i16 5111, i16 30976 }, %struct.slookup { i16 4983, i16 31488 }, %struct.slookup { i16 4876, i16 32000 }, %struct.slookup { i16 4755, i16 32512 }, %struct.slookup { i16 4635, i16 -32512 }, %struct.slookup { i16 4499, i16 -32000 }, %struct.slookup { i16 4405, i16 -31488 }, %struct.slookup { i16 4323, i16 -31232 }, %struct.slookup { i16 4233, i16 -30720 }, %struct.slookup { i16 4156, i16 -30208 }, %struct.slookup { i16 4038, i16 -29696 }, %struct.slookup { i16 3935, i16 -29184 }, %struct.slookup { i16 3823, i16 -28672 }, %struct.slookup { i16 3712, i16 -28160 }, %struct.slookup { i16 3601, i16 -27392 }, %struct.slookup { i16 3511, i16 -26880 }, %struct.slookup { i16 3413, i16 -26368 }, %struct.slookup { i16 3309, i16 -25856 }, %struct.slookup { i16 3213, i16 -25344 }, %struct.slookup { i16 3088, i16 -24832 }, %struct.slookup { i16 2992, i16 -24320 }, %struct.slookup { i16 2878, i16 -23552 }, %struct.slookup { i16 2769, i16 -22784 }, %struct.slookup { i16 2645, i16 -22016 }, %struct.slookup { i16 2538, i16 -21248 }, %struct.slookup { i16 2441, i16 -20480 }, %struct.slookup { i16 2350, i16 -18944 }, %struct.slookup { i16 2237, i16 -17920 }, %struct.slookup { i16 2137, i16 -16640 }, %struct.slookup { i16 2039, i16 -15104 }, %struct.slookup { i16 1938, i16 -8448 }, %struct.slookup { i16 1927, i16 -256 }], [36 x i8] zeroinitializer }, align 32
@gain_channel_agc_iip3_lookup = internal constant { [55 x %struct.slookup], [36 x i8] } { [55 x %struct.slookup] [%struct.slookup { i16 7070, i16 12288 }, %struct.slookup { i16 7028, i16 16384 }, %struct.slookup { i16 7019, i16 17920 }, %struct.slookup { i16 6900, i16 18944 }, %struct.slookup { i16 6811, i16 19712 }, %struct.slookup { i16 6763, i16 20736 }, %struct.slookup { i16 6690, i16 21504 }, %struct.slookup { i16 6644, i16 22272 }, %struct.slookup { i16 6617, i16 23040 }, %struct.slookup { i16 6598, i16 23552 }, %struct.slookup { i16 6462, i16 24320 }, %struct.slookup { i16 6348, i16 24832 }, %struct.slookup { i16 6197, i16 25600 }, %struct.slookup { i16 6154, i16 26368 }, %struct.slookup { i16 6098, i16 26880 }, %struct.slookup { i16 5893, i16 27392 }, %struct.slookup { i16 5812, i16 27648 }, %struct.slookup { i16 5773, i16 28160 }, %struct.slookup { i16 5723, i16 28672 }, %struct.slookup { i16 5661, i16 29184 }, %struct.slookup { i16 5579, i16 29440 }, %struct.slookup { i16 5460, i16 29952 }, %struct.slookup { i16 5308, i16 30464 }, %struct.slookup { i16 5099, i16 30976 }, %struct.slookup { i16 4910, i16 31488 }, %struct.slookup { i16 4800, i16 32000 }, %struct.slookup { i16 4785, i16 32512 }, %struct.slookup { i16 4635, i16 -32512 }, %struct.slookup { i16 4466, i16 -32000 }, %struct.slookup { i16 4314, i16 -31488 }, %struct.slookup { i16 4295, i16 -31232 }, %struct.slookup { i16 4144, i16 -30720 }, %struct.slookup { i16 3920, i16 -30208 }, %struct.slookup { i16 3889, i16 -29696 }, %struct.slookup { i16 3771, i16 -29184 }, %struct.slookup { i16 3655, i16 -28672 }, %struct.slookup { i16 3446, i16 -28160 }, %struct.slookup { i16 3298, i16 -27392 }, %struct.slookup { i16 3083, i16 -26880 }, %struct.slookup { i16 3015, i16 -26368 }, %struct.slookup { i16 2833, i16 -25856 }, %struct.slookup { i16 2746, i16 -25344 }, %struct.slookup { i16 2632, i16 -24832 }, %struct.slookup { i16 2598, i16 -24320 }, %struct.slookup { i16 2480, i16 -23552 }, %struct.slookup { i16 2236, i16 -22784 }, %struct.slookup { i16 2171, i16 -22016 }, %struct.slookup { i16 2060, i16 -21248 }, %struct.slookup { i16 1999, i16 -20480 }, %struct.slookup { i16 1974, i16 -18944 }, %struct.slookup { i16 1820, i16 -17920 }, %struct.slookup { i16 1741, i16 -16640 }, %struct.slookup { i16 1655, i16 -15104 }, %struct.slookup { i16 1444, i16 -8448 }, %struct.slookup { i16 1325, i16 -256 }], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 5, i64 0, i64 31]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 5, i64 0, i64 31]
@___asan_gen_.8 = private unnamed_addr constant [10 x i8] c"tuner_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 637, i32 35 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 315, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 303, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant [18 x i8] c"lnagain_nf_lookup\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 35, i32 29 }
@___asan_gen_.41 = private unnamed_addr constant [20 x i8] c"lnagain_iip3_lookup\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 71, i32 29 }
@___asan_gen_.44 = private unnamed_addr constant [18 x i8] c"gain_rfagc_lookup\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 107, i32 29 }
@___asan_gen_.47 = private unnamed_addr constant [27 x i8] c"gain_channel_agc_nf_lookup\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 167, i32 29 }
@___asan_gen_.50 = private unnamed_addr constant [29 x i8] c"gain_channel_agc_iip3_lookup\00", align 1
@___asan_gen_.51 = private constant [41 x i8] c"../drivers/media/dvb-frontends/stv6111.c\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 226, i32 29 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__ksymtab_stv6111_attach, ptr @i2c_read._entry, ptr @i2c_read._entry_ptr, ptr @i2c_write._entry, ptr @i2c_write._entry_ptr, ptr @tuner_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @lnagain_nf_lookup, ptr @lnagain_iip3_lookup, ptr @gain_rfagc_lookup, ptr @gain_channel_agc_nf_lookup, ptr @gain_channel_agc_iip3_lookup], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lnagain_nf_lookup to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lnagain_iip3_lookup to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gain_rfagc_lookup to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gain_channel_agc_nf_lookup to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gain_channel_agc_iip3_lookup to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @stv6111_attach(ptr noundef %fe, ptr noundef %i2c, i8 noundef zeroext %adr) #0 align 64 {
entry:
  %msg.i.i.i = alloca %struct.i2c_msg, align 4
  %d.i.i = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 24) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %adr1 = getelementptr inbounds %struct.stv, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %adr1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %adr, ptr %adr1, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c, ptr %call7.i.i, align 8
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %3 = call ptr @memcpy(ptr %tuner_ops, ptr @tuner_ops, i32 220)
  %reg.i = getelementptr %struct.stv, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %reg.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 8, ptr %reg.i, align 1
  %arrayidx2.i = getelementptr %struct.stv, ptr %call7.i.i, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 65, ptr %arrayidx2.i, align 2
  %arrayidx4.i = getelementptr %struct.stv, ptr %call7.i.i, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -113, ptr %arrayidx4.i, align 1
  %arrayidx6.i = getelementptr %struct.stv, ptr %call7.i.i, i32 0, i32 2, i32 3
  %arrayidx8.i = getelementptr %struct.stv, ptr %call7.i.i, i32 0, i32 2, i32 4
  %7 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -50, ptr %arrayidx8.i, align 1
  %arrayidx10.i = getelementptr %struct.stv, ptr %call7.i.i, i32 0, i32 2, i32 5
  %8 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 84, ptr %arrayidx10.i, align 2
  %arrayidx12.i = getelementptr %struct.stv, ptr %call7.i.i, i32 0, i32 2, i32 6
  %9 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 85, ptr %arrayidx12.i, align 1
  %arrayidx14.i = getelementptr %struct.stv, ptr %call7.i.i, i32 0, i32 2, i32 7
  %10 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 69, ptr %arrayidx14.i, align 4
  %arrayidx16.i = getelementptr %struct.stv, ptr %call7.i.i, i32 0, i32 2, i32 8
  %11 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 70, ptr %arrayidx16.i, align 1
  %arrayidx18.i = getelementptr %struct.stv, ptr %call7.i.i, i32 0, i32 2, i32 9
  %12 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -67, ptr %arrayidx18.i, align 2
  %arrayidx20.i = getelementptr %struct.stv, ptr %call7.i.i, i32 0, i32 2, i32 10
  %13 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 17, ptr %arrayidx20.i, align 1
  %ref_freq.i = getelementptr inbounds %struct.stv, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %ref_freq.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 16000, ptr %ref_freq.i, align 8
  %15 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %arrayidx6.i, align 8
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %16 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool4.not = icmp eq ptr %17, null
  br i1 %tobool4.not, label %if.end.if.then11_crit_edge, label %if.end9

if.end.if.then11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

if.end9:                                          ; preds = %if.end
  %call8 = tail call i32 %17(ptr noundef %fe, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %phi.cmp = icmp eq i32 %call8, 0
  br i1 %phi.cmp, label %if.end9.if.then11_crit_edge, label %if.end9.if.then23_crit_edge

if.end9.if.then23_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23

if.end9.if.then11_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

if.then11:                                        ; preds = %if.end9.if.then11_crit_edge, %if.end.if.then11_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %d.i.i) #6
  %18 = getelementptr inbounds [12 x i8], ptr %d.i.i, i32 0, i32 1
  %19 = call ptr @memcpy(ptr %18, ptr %reg.i, i32 11)
  %20 = ptrtoint ptr %d.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %d.i.i, align 1
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call7.i.i, align 8
  %23 = ptrtoint ptr %adr1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %adr1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #6
  %25 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 851967, ptr %25, align 4
  %conv.i.i.i = zext i8 %24 to i16
  %27 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv.i.i.i, ptr %msg.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %flags.i.i.i, align 2
  %buf.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %29 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %d.i.i, ptr %buf.i.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i, 1
  br i1 %cmp.not.i.i.i, label %30, label %write_regs.exit.i

write_regs.exit.i:                                ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %22, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %d.i.i) #6
  br label %if.end13

30:                                               ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %d.i.i) #6
  br label %if.end13

if.end13:                                         ; preds = %30, %write_regs.exit.i
  %31 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool16.not = icmp eq ptr %32, null
  br i1 %tobool16.not, label %if.end13.if.end22_crit_edge, label %if.then18

if.end13.if.end22_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %call21 = call i32 %32(ptr noundef %fe, i32 noundef 0) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end13.if.end22_crit_edge
  br i1 %cmp.not.i.i.i, label %if.end24, label %if.end22.if.then23_crit_edge

if.end22.if.then23_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23

if.then23:                                        ; preds = %if.end22.if.then23_crit_edge, %if.end9.if.then23_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

if.end24:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %33 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i.i, ptr %tuner_priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then23, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then23 ], [ %fe, %if.end24 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  tail call void @kfree(ptr noundef %1) #6
  %2 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %tuner_priv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_params(ptr noundef %fe) #0 align 64 {
entry:
  %msgs.i.i26.i = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i27.i = alloca i8, align 1
  %msg.i.i13.i = alloca %struct.i2c_msg, align 4
  %d.i14.i = alloca [12 x i8], align 1
  %msgs.i.i.i = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i.i = alloca i8, align 1
  %msgs.i.i.i.i = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i.i.i = alloca i8, align 1
  %regval.i.i = alloca i8, align 1
  %msg.i.i.i = alloca %struct.i2c_msg, align 4
  %d.i.i = alloca [12 x i8], align 1
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %2 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %delivery_system, align 4
  %.off = add i32 %3, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %4 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dtv_property_cache, align 4
  %mul = mul i32 %5, 1000
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %6 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %symbol_rate, align 4
  %conv.i = zext i32 %7 to i64
  %mul.i = mul nuw nsw i64 %conv.i, 135
  %8 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %mul.i, i32 0) #11, !srcloc !43
  %asmresult.i.i = extractvalue { i64, i32 } %8, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %8, 1
  %9 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %mul.i, i64 %asmresult.i.i, i32 %asmresult4.i.i) #11, !srcloc !44
  %asmresult10.i.i = extractvalue { i64, i32 } %9, 0
  %div162.i47 = lshr i64 %asmresult10.i.i, 7
  %extract.t290.i = trunc i64 %div162.i47 to i32
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %10 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end.if.then9_crit_edge, label %if.end7

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

if.end7:                                          ; preds = %if.end
  %call6 = tail call i32 %11(ptr noundef %fe, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %phi.cmp = icmp eq i32 %call6, 0
  br i1 %phi.cmp, label %if.end7.if.then9_crit_edge, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7.if.then9_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

if.then9:                                         ; preds = %if.end7.if.then9_crit_edge, %if.end.if.then9_crit_edge
  %add.i = add i32 %extract.t290.i, 5999999
  %div.i = udiv i32 %add.i, 1000000
  %add1.i = add i32 %mul, 500
  %div2.i = udiv i32 %add1.i, 1000
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #6
  %12 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %tmp.i, align 1, !annotation !45
  %13 = tail call i32 @llvm.umax.i32(i32 %div.i, i32 6) #6
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 50) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1300001000, i32 %add1.i)
  %cmp7.i = icmp ult i32 %add1.i, 1300001000
  %..i = select i1 %cmp7.i, i32 4, i32 2
  %.1.i = select i1 %cmp7.i, i8 -128, i8 0
  %mul.i39 = mul nuw nsw i32 %..i, %div2.i
  %ref_freq.i = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %ref_freq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ref_freq.i, align 4
  %mul.i39.frozen = freeze i32 %mul.i39
  %.frozen = freeze i32 %16
  %div10.i = udiv i32 %mul.i39.frozen, %.frozen
  %17 = mul i32 %div10.i, %.frozen
  %rem.i.decomposed = sub i32 %mul.i39.frozen, %17
  %conv.i.i = zext i32 %rem.i.decomposed to i64
  %mul.i.i = shl nuw nsw i64 %conv.i.i, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %rem.i.decomposed)
  %cmp168.i.i = icmp ult i32 %rem.i.decomposed, 16384
  br i1 %cmp168.i.i, label %if.then172.i.i, label %if.else178.i.i, !prof !46

if.then172.i.i:                                   ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  %conv173.i.i = trunc i64 %mul.i.i to i32
  %div176.i.i = udiv i32 %conv173.i.i, %16
  br label %muldiv32.exit.i

if.else178.i.i:                                   ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  %18 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %16, i64 %mul.i.i) #11, !srcloc !47
  %asmresult1.i.i.i = extractvalue { i64, i64 } %18, 1
  %extract.t289.i.i = trunc i64 %asmresult1.i.i.i to i32
  br label %muldiv32.exit.i

muldiv32.exit.i:                                  ; preds = %if.else178.i.i, %if.then172.i.i
  %tmp64.0.off0.i.i = phi i32 [ %div176.i.i, %if.then172.i.i ], [ %extract.t289.i.i, %if.else178.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2700000, i32 %mul.i39)
  %cmp13.i = icmp ult i32 %mul.i39, 2700000
  br i1 %cmp13.i, label %muldiv32.exit.i.if.end36.i_crit_edge, label %if.else15.i

muldiv32.exit.i.if.end36.i_crit_edge:             ; preds = %muldiv32.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i

if.else15.i:                                      ; preds = %muldiv32.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2950000, i32 %mul.i39)
  %cmp16.i = icmp ult i32 %mul.i39, 2950000
  br i1 %cmp16.i, label %if.else15.i.if.end36.i_crit_edge, label %if.else18.i

if.else15.i.if.end36.i_crit_edge:                 ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i

if.else18.i:                                      ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3300000, i32 %mul.i39)
  %cmp19.i = icmp ult i32 %mul.i39, 3300000
  br i1 %cmp19.i, label %if.else18.i.if.end36.i_crit_edge, label %if.else21.i

if.else18.i.if.end36.i_crit_edge:                 ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i

if.else21.i:                                      ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3700000, i32 %mul.i39)
  %cmp22.i = icmp ult i32 %mul.i39, 3700000
  br i1 %cmp22.i, label %if.else21.i.if.end36.i_crit_edge, label %if.else24.i

if.else21.i.if.end36.i_crit_edge:                 ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i

if.else24.i:                                      ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4200000, i32 %mul.i39)
  %cmp25.i = icmp ult i32 %mul.i39, 4200000
  br i1 %cmp25.i, label %if.else24.i.if.end36.i_crit_edge, label %if.else27.i

if.else24.i.if.end36.i_crit_edge:                 ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i

if.else27.i:                                      ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4800000, i32 %mul.i39)
  %cmp28.i = icmp ult i32 %mul.i39, 4800000
  %.2.i = select i1 %cmp28.i, i8 -64, i8 -32
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.else27.i, %if.else24.i.if.end36.i_crit_edge, %if.else21.i.if.end36.i_crit_edge, %if.else18.i.if.end36.i_crit_edge, %if.else15.i.if.end36.i_crit_edge, %muldiv32.exit.i.if.end36.i_crit_edge
  %icp.0.i = phi i8 [ 0, %muldiv32.exit.i.if.end36.i_crit_edge ], [ 32, %if.else15.i.if.end36.i_crit_edge ], [ 64, %if.else18.i.if.end36.i_crit_edge ], [ 96, %if.else21.i.if.end36.i_crit_edge ], [ -96, %if.else24.i.if.end36.i_crit_edge ], [ %.2.i, %if.else27.i ]
  %arrayidx.i = getelementptr %struct.stv, ptr %1, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i, align 1
  %21 = or i8 %20, -128
  store i8 %21, ptr %arrayidx.i, align 1
  %arrayidx39.i = getelementptr %struct.stv, ptr %1, i32 0, i32 2, i32 3
  %22 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx39.i, align 1
  %24 = and i8 %23, 127
  %or41.i = or i8 %24, %.1.i
  store i8 %or41.i, ptr %arrayidx39.i, align 1
  %conv46.i = trunc i32 %div10.i to i8
  %arrayidx48.i = getelementptr %struct.stv, ptr %1, i32 0, i32 2, i32 4
  %25 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv46.i, ptr %arrayidx48.i, align 1
  %shr.i = lshr i32 %div10.i, 8
  %and49.i = and i32 %shr.i, 1
  %and50.i = shl i32 %tmp64.0.off0.i.i, 1
  %or52.i = or i32 %and50.i, %and49.i
  %conv54.i = trunc i32 %or52.i to i8
  %arrayidx56.i = getelementptr %struct.stv, ptr %1, i32 0, i32 2, i32 5
  %26 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv54.i, ptr %arrayidx56.i, align 1
  %shr57.i = lshr i32 %tmp64.0.off0.i.i, 7
  %conv59.i = trunc i32 %shr57.i to i8
  %arrayidx61.i = getelementptr %struct.stv, ptr %1, i32 0, i32 2, i32 6
  %27 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv59.i, ptr %arrayidx61.i, align 1
  %arrayidx63.i = getelementptr %struct.stv, ptr %1, i32 0, i32 2, i32 7
  %28 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx63.i, align 1
  %30 = and i8 %29, 24
  %shr66.i = lshr i32 %tmp64.0.off0.i.i, 15
  %31 = trunc i32 %shr66.i to i8
  %32 = and i8 %31, 7
  %conv69.i = or i8 %icp.0.i, %32
  %or78.i = or i8 %conv69.i, %30
  store i8 %or78.i, ptr %arrayidx63.i, align 1
  %arrayidx83.i = getelementptr %struct.stv, ptr %1, i32 0, i32 2, i32 8
  %33 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx83.i, align 1
  %35 = and i8 %34, 3
  %.tr.i = trunc i32 %14 to i8
  %36 = shl nuw i8 %.tr.i, 2
  %37 = add i8 %36, -24
  %conv88.i = or i8 %35, %37
  store i8 %conv88.i, ptr %arrayidx83.i, align 1
  %arrayidx92.i = getelementptr %struct.stv, ptr %1, i32 0, i32 2, i32 9
  %38 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx92.i, align 1
  %40 = or i8 %39, 12
  store i8 %40, ptr %arrayidx92.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %d.i.i) #6
  %41 = getelementptr inbounds [12 x i8], ptr %d.i.i, i32 0, i32 1
  %42 = getelementptr inbounds [12 x i8], ptr %d.i.i, i32 0, i32 9
  %43 = call ptr @memset(ptr %42, i32 255, i32 3)
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 8)
  %45 = load i64, ptr %arrayidx.i, align 1
  %46 = ptrtoint ptr %41 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 8)
  store i64 %45, ptr %41, align 1
  %47 = ptrtoint ptr %d.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 2, ptr %d.i.i, align 1
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %adr.i.i = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 1
  %50 = ptrtoint ptr %adr.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %adr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #6
  %52 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 655359, ptr %52, align 4
  %conv.i.i.i = zext i8 %51 to i16
  %54 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv.i.i.i, ptr %msg.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 0, ptr %flags.i.i.i, align 2
  %buf.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %56 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %d.i.i, ptr %buf.i.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %49, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.not.i.i3.i = icmp eq i32 %call.i.i.i, 1
  br i1 %cmp.not.i.i3.i, label %if.end36.i.write_regs.exit.i_crit_edge, label %do.end.i.i.i

if.end36.i.write_regs.exit.i_crit_edge:           ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_regs.exit.i

do.end.i.i.i:                                     ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %49, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str) #10
  br label %write_regs.exit.i

write_regs.exit.i:                                ; preds = %do.end.i.i.i, %if.end36.i.write_regs.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %d.i.i) #6
  %57 = getelementptr inbounds i8, ptr %msgs.i.i.i.i, i32 4
  %flags.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i.i, i32 0, i32 1
  %buf.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i.i, i32 0, i32 3
  %arrayinit.element.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i.i, i32 1
  %flags5.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i.i, i32 1, i32 1
  %len6.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i.i, i32 1, i32 2
  %buf8.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i.i, i32 1, i32 3
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %write_regs.exit.i
  %lock_retry_count.09.i.i = phi i32 [ 10, %write_regs.exit.i ], [ %sub.i.i, %cleanup.i.i.while.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %regval.i.i) #6
  %58 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -1, ptr %regval.i.i, align 1, !annotation !45
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i.i) #6
  %59 = ptrtoint ptr %reg.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 9, ptr %reg.addr.i.i.i, align 1
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %62 = ptrtoint ptr %adr.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %adr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i.i.i) #6
  %64 = call ptr @memset(ptr %57, i32 255, i32 16)
  %conv.i.i.i.i = zext i8 %63 to i16
  %65 = ptrtoint ptr %msgs.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv.i.i.i.i, ptr %msgs.i.i.i.i, align 4
  %66 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 0, ptr %flags.i.i.i.i, align 2
  %67 = ptrtoint ptr %57 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 1, ptr %57, align 4
  %68 = ptrtoint ptr %buf.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %reg.addr.i.i.i, ptr %buf.i.i.i.i, align 4
  %69 = ptrtoint ptr %arrayinit.element.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv.i.i.i.i, ptr %arrayinit.element.i.i.i.i, align 4
  %70 = ptrtoint ptr %flags5.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 1, ptr %flags5.i.i.i.i, align 2
  %71 = ptrtoint ptr %len6.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 1, ptr %len6.i.i.i.i, align 4
  %72 = ptrtoint ptr %buf8.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %regval.i.i, ptr %buf8.i.i.i.i, align 4
  %call.i.i.i.i = call i32 @i2c_transfer(ptr noundef %61, ptr noundef nonnull %msgs.i.i.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 2
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i, label %read_reg.exit.thread.i.i

read_reg.exit.thread.i.i:                         ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %61, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i.i, ptr noundef nonnull @.str.5) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i.i) #6
  br label %cleanup.thread.i.i

if.end.i.i:                                       ; preds = %while.body.i.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i.i) #6
  %73 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %regval.i.i, align 1
  %and1.i.i = and i8 %74, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and1.i.i)
  %cmp3.i.i = icmp eq i8 %and1.i.i, 0
  br i1 %cmp3.i.i, label %if.end.i.i.cleanup.thread.i.i_crit_edge, label %cleanup.i.i

if.end.i.i.cleanup.thread.i.i_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread.i.i

cleanup.thread.i.i:                               ; preds = %if.end.i.i.cleanup.thread.i.i_crit_edge, %read_reg.exit.thread.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %regval.i.i) #6
  br label %wait_for_call_done.exit.i

cleanup.i.i:                                      ; preds = %if.end.i.i
  call void @usleep_range_state(i32 noundef 4000, i32 noundef 6000, i32 noundef 2) #6
  %sub.i.i = add nsw i32 %lock_retry_count.09.i.i, -1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %regval.i.i) #6
  %cmp.not.i.i = icmp eq i32 %sub.i.i, 0
  br i1 %cmp.not.i.i, label %cleanup.i.i.wait_for_call_done.exit.i_crit_edge, label %cleanup.i.i.while.body.i.i_crit_edge

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

cleanup.i.i.wait_for_call_done.exit.i_crit_edge:  ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_for_call_done.exit.i

wait_for_call_done.exit.i:                        ; preds = %cleanup.i.i.wait_for_call_done.exit.i_crit_edge, %cleanup.thread.i.i
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 12000, i32 noundef 2) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i) #6
  %75 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 3, ptr %reg.addr.i.i, align 1
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %1, align 4
  %78 = ptrtoint ptr %adr.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %adr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i.i) #6
  %80 = getelementptr inbounds i8, ptr %msgs.i.i.i, i32 4
  %81 = call ptr @memset(ptr %80, i32 255, i32 16)
  %conv.i.i5.i = zext i8 %79 to i16
  %82 = ptrtoint ptr %msgs.i.i.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv.i.i5.i, ptr %msgs.i.i.i, align 4
  %flags.i.i6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 0, i32 1
  %83 = ptrtoint ptr %flags.i.i6.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 0, ptr %flags.i.i6.i, align 2
  %84 = ptrtoint ptr %80 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 1, ptr %80, align 4
  %buf.i.i7.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 0, i32 3
  %85 = ptrtoint ptr %buf.i.i7.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %reg.addr.i.i, ptr %buf.i.i7.i, align 4
  %arrayinit.element.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1
  %86 = ptrtoint ptr %arrayinit.element.i.i.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv.i.i5.i, ptr %arrayinit.element.i.i.i, align 4
  %flags5.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1, i32 1
  %87 = ptrtoint ptr %flags5.i.i.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 1, ptr %flags5.i.i.i, align 2
  %len6.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1, i32 2
  %88 = ptrtoint ptr %len6.i.i.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 1, ptr %len6.i.i.i, align 4
  %buf8.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1, i32 3
  %89 = ptrtoint ptr %buf8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %tmp.i, ptr %buf8.i.i.i, align 4
  %call.i.i8.i = call i32 @i2c_transfer(ptr noundef %77, ptr noundef nonnull %msgs.i.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i8.i)
  %cmp.not.i.i9.i = icmp eq i32 %call.i.i8.i, 2
  br i1 %cmp.not.i.i9.i, label %wait_for_call_done.exit.i.read_reg.exit.i_crit_edge, label %do.end.i.i11.i

wait_for_call_done.exit.i.read_reg.exit.i_crit_edge: ; preds = %wait_for_call_done.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_reg.exit.i

do.end.i.i11.i:                                   ; preds = %wait_for_call_done.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i10.i = getelementptr inbounds %struct.i2c_adapter, ptr %77, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i10.i, ptr noundef nonnull @.str.5) #10
  br label %read_reg.exit.i

read_reg.exit.i:                                  ; preds = %do.end.i.i11.i, %wait_for_call_done.exit.i.read_reg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #6
  %90 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %tmp.i, align 1
  %92 = and i8 %91, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool.not.i = icmp eq i8 %92, 0
  br i1 %tobool.not.i, label %read_reg.exit.i.if.end111.i_crit_edge, label %if.then104.i

read_reg.exit.i.if.end111.i_crit_edge:            ; preds = %read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111.i

if.then104.i:                                     ; preds = %read_reg.exit.i
  %93 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx.i, align 1
  %95 = and i8 %94, 127
  store i8 %95, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %d.i14.i) #6
  %96 = getelementptr inbounds [12 x i8], ptr %d.i14.i, i32 0, i32 1
  %97 = getelementptr inbounds [12 x i8], ptr %d.i14.i, i32 0, i32 2
  %98 = call ptr @memset(ptr %97, i32 255, i32 10)
  %99 = ptrtoint ptr %96 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %95, ptr %96, align 1
  %100 = ptrtoint ptr %d.i14.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 2, ptr %d.i14.i, align 1
  %101 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %1, align 4
  %103 = ptrtoint ptr %adr.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %adr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i13.i) #6
  %105 = getelementptr inbounds i8, ptr %msg.i.i13.i, i32 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 196607, ptr %105, align 4
  %conv.i.i17.i = zext i8 %104 to i16
  %107 = ptrtoint ptr %msg.i.i13.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %conv.i.i17.i, ptr %msg.i.i13.i, align 4
  %flags.i.i18.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i13.i, i32 0, i32 1
  %108 = ptrtoint ptr %flags.i.i18.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 0, ptr %flags.i.i18.i, align 2
  %buf.i.i19.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i13.i, i32 0, i32 3
  %109 = ptrtoint ptr %buf.i.i19.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %d.i14.i, ptr %buf.i.i19.i, align 4
  %call.i.i20.i = call i32 @i2c_transfer(ptr noundef %102, ptr noundef nonnull %msg.i.i13.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i20.i)
  %cmp.not.i.i21.i = icmp eq i32 %call.i.i20.i, 1
  br i1 %cmp.not.i.i21.i, label %if.then104.i.write_regs.exit25.i_crit_edge, label %do.end.i.i23.i

if.then104.i.write_regs.exit25.i_crit_edge:       ; preds = %if.then104.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_regs.exit25.i

do.end.i.i23.i:                                   ; preds = %if.then104.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i22.i = getelementptr inbounds %struct.i2c_adapter, ptr %102, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i22.i, ptr noundef nonnull @.str) #10
  br label %write_regs.exit25.i

write_regs.exit25.i:                              ; preds = %do.end.i.i23.i, %if.then104.i.write_regs.exit25.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i13.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %d.i14.i) #6
  br label %if.end111.i

if.end111.i:                                      ; preds = %write_regs.exit25.i, %read_reg.exit.i.if.end111.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i27.i) #6
  %110 = ptrtoint ptr %reg.addr.i27.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 8, ptr %reg.addr.i27.i, align 1
  %111 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %1, align 4
  %113 = ptrtoint ptr %adr.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %adr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i26.i) #6
  %115 = getelementptr inbounds i8, ptr %msgs.i.i26.i, i32 4
  %116 = call ptr @memset(ptr %115, i32 255, i32 16)
  %conv.i.i29.i = zext i8 %114 to i16
  %117 = ptrtoint ptr %msgs.i.i26.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %conv.i.i29.i, ptr %msgs.i.i26.i, align 4
  %flags.i.i30.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i26.i, i32 0, i32 1
  %118 = ptrtoint ptr %flags.i.i30.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 0, ptr %flags.i.i30.i, align 2
  %119 = ptrtoint ptr %115 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 1, ptr %115, align 4
  %buf.i.i31.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i26.i, i32 0, i32 3
  %120 = ptrtoint ptr %buf.i.i31.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %reg.addr.i27.i, ptr %buf.i.i31.i, align 4
  %arrayinit.element.i.i32.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i26.i, i32 1
  %121 = ptrtoint ptr %arrayinit.element.i.i32.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %conv.i.i29.i, ptr %arrayinit.element.i.i32.i, align 4
  %flags5.i.i33.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i26.i, i32 1, i32 1
  %122 = ptrtoint ptr %flags5.i.i33.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 1, ptr %flags5.i.i33.i, align 2
  %len6.i.i34.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i26.i, i32 1, i32 2
  %123 = ptrtoint ptr %len6.i.i34.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 1, ptr %len6.i.i34.i, align 4
  %buf8.i.i35.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i26.i, i32 1, i32 3
  %124 = ptrtoint ptr %buf8.i.i35.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %tmp.i, ptr %buf8.i.i35.i, align 4
  %call.i.i36.i = call i32 @i2c_transfer(ptr noundef %112, ptr noundef nonnull %msgs.i.i26.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i36.i)
  %cmp.not.i.i37.i = icmp eq i32 %call.i.i36.i, 2
  br i1 %cmp.not.i.i37.i, label %if.end111.i.if.end11_crit_edge, label %do.end.i.i39.i

if.end111.i.if.end11_crit_edge:                   ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

do.end.i.i39.i:                                   ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i38.i = getelementptr inbounds %struct.i2c_adapter, ptr %112, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i38.i, ptr noundef nonnull @.str.5) #10
  br label %if.end11

if.end11:                                         ; preds = %do.end.i.i39.i, %if.end111.i.if.end11_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i26.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i27.i) #6
  %frequency113.i = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 4
  %125 = ptrtoint ptr %frequency113.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %div2.i, ptr %frequency113.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #6
  %126 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool14.not = icmp eq ptr %127, null
  br i1 %tobool14.not, label %if.end11.cleanup_crit_edge, label %if.then17

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %call20 = call i32 %127(ptr noundef %fe, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ], [ 0, %if.then17 ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_rf_strength(ptr noundef %fe, ptr nocapture noundef %st) #0 align 64 {
entry:
  %msgs.i.i123 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i124 = alloca i8, align 1
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i = alloca i8, align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %d.i = alloca [2 x i8], align 1
  %reg2 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = ptrtoint ptr %st to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %st, align 2
  %arrayidx = getelementptr %struct.stv, ptr %1, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = and i8 %5, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp = icmp eq i8 %6, 0
  br i1 %cmp, label %if.then, label %if.else47

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg2) #6
  %7 = ptrtoint ptr %reg2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %reg2, align 1
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %8 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.then.if.then7_crit_edge, label %if.end

if.then.if.then7_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

if.end:                                           ; preds = %if.then
  %call = tail call i32 %9(ptr noundef %fe, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %phi.cmp = icmp eq i32 %call, 0
  br i1 %phi.cmp, label %if.end.if.then7_crit_edge, label %if.end.if.end29_crit_edge

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

if.then7:                                         ; preds = %if.end.if.then7_crit_edge, %if.then.if.then7_crit_edge
  %arrayidx9 = getelementptr %struct.stv, ptr %1, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx9, align 1
  %12 = or i8 %11, 32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d.i) #6
  %13 = getelementptr inbounds [2 x i8], ptr %d.i, i32 0, i32 1
  %14 = ptrtoint ptr %d.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %d.i, align 1
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %12, ptr %13, align 1
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %adr.i = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %adr.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %adr.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #6
  %20 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 196607, ptr %20, align 4
  %conv.i.i = zext i8 %19 to i16
  %22 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %d.i, ptr %buf.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %if.then7.write_reg.exit_crit_edge, label %do.end.i.i

if.then7.write_reg.exit_crit_edge:                ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit

do.end.i.i:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %17, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str) #10
  br label %write_reg.exit

write_reg.exit:                                   ; preds = %do.end.i.i, %if.then7.write_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %25 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %reg.addr.i, align 1
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %28 = ptrtoint ptr %adr.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %adr.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #6
  %30 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %31 = call ptr @memset(ptr %30, i32 255, i32 16)
  %conv.i.i116 = zext i8 %29 to i16
  %32 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i.i116, ptr %msgs.i.i, align 4
  %flags.i.i117 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %flags.i.i117 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i.i117, align 2
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1, ptr %30, align 4
  %buf.i.i118 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %buf.i.i118 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %reg.addr.i, ptr %buf.i.i118, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %36 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i.i116, ptr %arrayinit.element.i.i, align 4
  %flags5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %37 = ptrtoint ptr %flags5.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %flags5.i.i, align 2
  %len6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %38 = ptrtoint ptr %len6.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %len6.i.i, align 4
  %buf8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %39 = ptrtoint ptr %buf8.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %reg2, ptr %buf8.i.i, align 4
  %call.i.i119 = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i119)
  %cmp.not.i.i120 = icmp eq i32 %call.i.i119, 2
  br i1 %cmp.not.i.i120, label %write_reg.exit.read_reg.exit_crit_edge, label %do.end.i.i122

write_reg.exit.read_reg.exit_crit_edge:           ; preds = %write_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_reg.exit

do.end.i.i122:                                    ; preds = %write_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i121 = getelementptr inbounds %struct.i2c_adapter, ptr %27, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i121, ptr noundef nonnull @.str.5) #10
  br label %read_reg.exit

read_reg.exit:                                    ; preds = %do.end.i.i122, %write_reg.exit.read_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %40 = ptrtoint ptr %reg2 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %reg2, align 1
  %42 = and i8 %41, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool16.not = icmp eq i8 %42, 0
  br i1 %tobool16.not, label %read_reg.exit.if.end20_crit_edge, label %if.then17

read_reg.exit.if.end20_crit_edge:                 ; preds = %read_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then17:                                        ; preds = %read_reg.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i124)
  %43 = ptrtoint ptr %reg.addr.i124 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 2, ptr %reg.addr.i124, align 1
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %46 = ptrtoint ptr %adr.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %adr.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i123) #6
  %48 = getelementptr inbounds i8, ptr %msgs.i.i123, i32 4
  %49 = call ptr @memset(ptr %48, i32 255, i32 16)
  %conv.i.i126 = zext i8 %47 to i16
  %50 = ptrtoint ptr %msgs.i.i123 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv.i.i126, ptr %msgs.i.i123, align 4
  %flags.i.i127 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i123, i32 0, i32 1
  %51 = ptrtoint ptr %flags.i.i127 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %flags.i.i127, align 2
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 1, ptr %48, align 4
  %buf.i.i128 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i123, i32 0, i32 3
  %53 = ptrtoint ptr %buf.i.i128 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %reg.addr.i124, ptr %buf.i.i128, align 4
  %arrayinit.element.i.i129 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i123, i32 1
  %54 = ptrtoint ptr %arrayinit.element.i.i129 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv.i.i126, ptr %arrayinit.element.i.i129, align 4
  %flags5.i.i130 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i123, i32 1, i32 1
  %55 = ptrtoint ptr %flags5.i.i130 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 1, ptr %flags5.i.i130, align 2
  %len6.i.i131 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i123, i32 1, i32 2
  %56 = ptrtoint ptr %len6.i.i131 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 1, ptr %len6.i.i131, align 4
  %buf8.i.i132 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i123, i32 1, i32 3
  %57 = ptrtoint ptr %buf8.i.i132 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %reg2, ptr %buf8.i.i132, align 4
  %call.i.i133 = call i32 @i2c_transfer(ptr noundef %45, ptr noundef nonnull %msgs.i.i123, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i133)
  %cmp.not.i.i134 = icmp eq i32 %call.i.i133, 2
  br i1 %cmp.not.i.i134, label %if.then17.read_reg.exit138_crit_edge, label %do.end.i.i136

if.then17.read_reg.exit138_crit_edge:             ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_reg.exit138

do.end.i.i136:                                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i135 = getelementptr inbounds %struct.i2c_adapter, ptr %45, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i135, ptr noundef nonnull @.str.5) #10
  br label %read_reg.exit138

read_reg.exit138:                                 ; preds = %do.end.i.i136, %if.then17.read_reg.exit138_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i123) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i124)
  br label %if.end20

if.end20:                                         ; preds = %read_reg.exit138, %read_reg.exit.if.end20_crit_edge
  %58 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool23.not = icmp eq ptr %59, null
  br i1 %tobool23.not, label %if.end20.if.end29_crit_edge, label %if.then25

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %call28 = call i32 %59(ptr noundef %fe, i32 noundef 0) #6
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end20.if.end29_crit_edge, %if.end.if.end29_crit_edge
  %arrayidx31 = getelementptr %struct.stv, ptr %1, i32 0, i32 2, i32 2
  %60 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx31, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %61)
  %cmp34 = icmp sgt i8 %61, -1
  %62 = ptrtoint ptr %reg2 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %reg2, align 1
  %64 = and i8 %63, 31
  %conv39 = zext i8 %64 to i16
  %conv.i = zext i8 %64 to i32
  %trunc315 = trunc i8 %63 to i5
  br i1 %cmp34, label %if.then36, label %if.else

if.then36:                                        ; preds = %if.end29
  %65 = zext i5 %trunc315 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values)
  switch i5 %trunc315, label %if.then36.while.body.i_crit_edge [
    i5 0, label %if.then36.if.end45_crit_edge
    i5 -1, label %if.end45.fold.split
  ]

if.then36.if.end45_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then36.while.body.i_crit_edge:                 ; preds = %if.then36
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.then36.while.body.i_crit_edge
  %imax.096.i = phi i32 [ %imax.1.i, %if.end.i.while.body.i_crit_edge ], [ 31, %if.then36.while.body.i_crit_edge ]
  %imin.095.i = phi i32 [ %imin.1.i, %if.end.i.while.body.i_crit_edge ], [ 0, %if.then36.while.body.i_crit_edge ]
  %add.i = add i32 %imin.095.i, %imax.096.i
  %div.i = sdiv i32 %add.i, 2
  %reg_value21.i = getelementptr %struct.slookup, ptr @lnagain_nf_lookup, i32 %imin.095.i, i32 1
  %66 = ptrtoint ptr %reg_value21.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %reg_value21.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %67, i16 %conv39)
  %cmp24.not.i = icmp ugt i16 %67, %conv39
  br i1 %cmp24.not.i, label %while.body.i.if.else33.i_crit_edge, label %land.lhs.true.i

while.body.i.if.else33.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else33.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %reg_value28.i = getelementptr %struct.slookup, ptr @lnagain_nf_lookup, i32 %div.i, i32 1
  %68 = ptrtoint ptr %reg_value28.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %reg_value28.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %69, i16 %conv39)
  %cmp30.not.i = icmp ult i16 %69, %conv39
  br i1 %cmp30.not.i, label %land.lhs.true.i.if.else33.i_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i.if.else33.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else33.i

if.else33.i:                                      ; preds = %land.lhs.true.i.if.else33.i_crit_edge, %while.body.i.if.else33.i_crit_edge
  br label %if.end.i

if.end.i:                                         ; preds = %if.else33.i, %land.lhs.true.i.if.end.i_crit_edge
  %imin.1.i = phi i32 [ %div.i, %if.else33.i ], [ %imin.095.i, %land.lhs.true.i.if.end.i_crit_edge ]
  %imax.1.i = phi i32 [ %imax.096.i, %if.else33.i ], [ %div.i, %land.lhs.true.i.if.end.i_crit_edge ]
  %sub17.i = sub i32 %imax.1.i, %imin.1.i
  %cmp18.i = icmp sgt i32 %sub17.i, 1
  br i1 %cmp18.i, label %if.end.i.while.body.i_crit_edge, label %while.end.i

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.end.i:                                      ; preds = %if.end.i
  %reg_value35.i = getelementptr %struct.slookup, ptr @lnagain_nf_lookup, i32 %imax.1.i, i32 1
  %70 = ptrtoint ptr %reg_value35.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %reg_value35.i, align 2
  %arrayidx37.i = getelementptr %struct.slookup, ptr @lnagain_nf_lookup, i32 %imin.1.i
  %reg_value38.i = getelementptr %struct.slookup, ptr @lnagain_nf_lookup, i32 %imin.1.i, i32 1
  %72 = ptrtoint ptr %reg_value38.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %reg_value38.i, align 2
  %74 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx37.i, align 2
  %conv43.i = sext i16 %75 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %71, i16 %73)
  %cmp44.not.i = icmp eq i16 %71, %73
  br i1 %cmp44.not.i, label %while.end.i.if.end45_crit_edge, label %if.then46.i

while.end.i.if.end45_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then46.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv39.i = zext i16 %73 to i32
  %conv36.i = zext i16 %71 to i32
  %sub40.i = sub nsw i32 %conv36.i, %conv39.i
  %arrayidx34.i = getelementptr %struct.slookup, ptr @lnagain_nf_lookup, i32 %imax.1.i
  %sub51.i = sub nsw i32 %conv.i, %conv39.i
  %76 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %arrayidx34.i, align 2
  %conv54.i = sext i16 %77 to i32
  %sub58.i = sub nsw i32 %conv54.i, %conv43.i
  %mul.i = mul i32 %sub58.i, %sub51.i
  %div59.i = sdiv i32 %mul.i, %sub40.i
  %add60.i = add i32 %div59.i, %conv43.i
  br label %if.end45

if.else:                                          ; preds = %if.end29
  %78 = zext i5 %trunc315 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.7)
  switch i5 %trunc315, label %if.else.while.body.i152_crit_edge [
    i5 0, label %if.else.if.end45_crit_edge
    i5 -1, label %if.end45.fold.split314
  ]

if.else.if.end45_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.else.while.body.i152_crit_edge:                ; preds = %if.else
  br label %while.body.i152

while.body.i152:                                  ; preds = %if.end.i161.while.body.i152_crit_edge, %if.else.while.body.i152_crit_edge
  %imax.096.i146 = phi i32 [ %imax.1.i158, %if.end.i161.while.body.i152_crit_edge ], [ 31, %if.else.while.body.i152_crit_edge ]
  %imin.095.i147 = phi i32 [ %imin.1.i157, %if.end.i161.while.body.i152_crit_edge ], [ 0, %if.else.while.body.i152_crit_edge ]
  %add.i148 = add i32 %imin.095.i147, %imax.096.i146
  %div.i149 = sdiv i32 %add.i148, 2
  %reg_value21.i150 = getelementptr %struct.slookup, ptr @lnagain_iip3_lookup, i32 %imin.095.i147, i32 1
  %79 = ptrtoint ptr %reg_value21.i150 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %reg_value21.i150, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %80, i16 %conv39)
  %cmp24.not.i151 = icmp ugt i16 %80, %conv39
  br i1 %cmp24.not.i151, label %while.body.i152.if.else33.i156_crit_edge, label %land.lhs.true.i155

while.body.i152.if.else33.i156_crit_edge:         ; preds = %while.body.i152
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else33.i156

land.lhs.true.i155:                               ; preds = %while.body.i152
  %reg_value28.i153 = getelementptr %struct.slookup, ptr @lnagain_iip3_lookup, i32 %div.i149, i32 1
  %81 = ptrtoint ptr %reg_value28.i153 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %reg_value28.i153, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %82, i16 %conv39)
  %cmp30.not.i154 = icmp ult i16 %82, %conv39
  br i1 %cmp30.not.i154, label %land.lhs.true.i155.if.else33.i156_crit_edge, label %land.lhs.true.i155.if.end.i161_crit_edge

land.lhs.true.i155.if.end.i161_crit_edge:         ; preds = %land.lhs.true.i155
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i161

land.lhs.true.i155.if.else33.i156_crit_edge:      ; preds = %land.lhs.true.i155
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else33.i156

if.else33.i156:                                   ; preds = %land.lhs.true.i155.if.else33.i156_crit_edge, %while.body.i152.if.else33.i156_crit_edge
  br label %if.end.i161

if.end.i161:                                      ; preds = %if.else33.i156, %land.lhs.true.i155.if.end.i161_crit_edge
  %imin.1.i157 = phi i32 [ %div.i149, %if.else33.i156 ], [ %imin.095.i147, %land.lhs.true.i155.if.end.i161_crit_edge ]
  %imax.1.i158 = phi i32 [ %imax.096.i146, %if.else33.i156 ], [ %div.i149, %land.lhs.true.i155.if.end.i161_crit_edge ]
  %sub17.i159 = sub i32 %imax.1.i158, %imin.1.i157
  %cmp18.i160 = icmp sgt i32 %sub17.i159, 1
  br i1 %cmp18.i160, label %if.end.i161.while.body.i152_crit_edge, label %while.end.i167

if.end.i161.while.body.i152_crit_edge:            ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i152

while.end.i167:                                   ; preds = %if.end.i161
  %reg_value35.i162 = getelementptr %struct.slookup, ptr @lnagain_iip3_lookup, i32 %imax.1.i158, i32 1
  %83 = ptrtoint ptr %reg_value35.i162 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %reg_value35.i162, align 2
  %arrayidx37.i163 = getelementptr %struct.slookup, ptr @lnagain_iip3_lookup, i32 %imin.1.i157
  %reg_value38.i164 = getelementptr %struct.slookup, ptr @lnagain_iip3_lookup, i32 %imin.1.i157, i32 1
  %85 = ptrtoint ptr %reg_value38.i164 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %reg_value38.i164, align 2
  %87 = ptrtoint ptr %arrayidx37.i163 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %arrayidx37.i163, align 2
  %conv43.i165 = sext i16 %88 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %84, i16 %86)
  %cmp44.not.i166 = icmp eq i16 %84, %86
  br i1 %cmp44.not.i166, label %while.end.i167.if.end45_crit_edge, label %if.then46.i178

while.end.i167.if.end45_crit_edge:                ; preds = %while.end.i167
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then46.i178:                                   ; preds = %while.end.i167
  call void @__sanitizer_cov_trace_pc() #8
  %conv39.i168 = zext i16 %86 to i32
  %conv36.i169 = zext i16 %84 to i32
  %sub40.i170 = sub nsw i32 %conv36.i169, %conv39.i168
  %arrayidx34.i171 = getelementptr %struct.slookup, ptr @lnagain_iip3_lookup, i32 %imax.1.i158
  %sub51.i172 = sub nsw i32 %conv.i, %conv39.i168
  %89 = ptrtoint ptr %arrayidx34.i171 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %arrayidx34.i171, align 2
  %conv54.i173 = sext i16 %90 to i32
  %sub58.i174 = sub nsw i32 %conv54.i173, %conv43.i165
  %mul.i175 = mul i32 %sub58.i174, %sub51.i172
  %div59.i176 = sdiv i32 %mul.i175, %sub40.i170
  %add60.i177 = add i32 %div59.i176, %conv43.i165
  br label %if.end45

if.end45.fold.split:                              ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.end45.fold.split314:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.end45:                                         ; preds = %if.end45.fold.split314, %if.end45.fold.split, %if.then46.i178, %while.end.i167.if.end45_crit_edge, %if.else.if.end45_crit_edge, %if.then46.i, %while.end.i.if.end45_crit_edge, %if.then36.if.end45_crit_edge
  %gain.0 = phi i32 [ %add60.i, %if.then46.i ], [ %conv43.i, %while.end.i.if.end45_crit_edge ], [ 2572, %if.then36.if.end45_crit_edge ], [ %add60.i177, %if.then46.i178 ], [ %conv43.i165, %while.end.i167.if.end45_crit_edge ], [ 1548, %if.else.if.end45_crit_edge ], [ 5102, %if.end45.fold.split ], [ 4535, %if.end45.fold.split314 ]
  %conv.i181 = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 12288, i16 %3)
  %cmp.not.i182 = icmp ugt i16 %3, 12288
  br i1 %cmp.not.i182, label %if.else.i185, label %if.end45.table_lookup.exit222_crit_edge

if.end45.table_lookup.exit222_crit_edge:          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %table_lookup.exit222

if.else.i185:                                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_const_cmp2(i16 -9984, i16 %3)
  %cmp10.not.i184 = icmp ult i16 %3, -9984
  br i1 %cmp10.not.i184, label %if.else.i185.while.body.i194_crit_edge, label %if.else.i185.table_lookup.exit222_crit_edge

if.else.i185.table_lookup.exit222_crit_edge:      ; preds = %if.else.i185
  call void @__sanitizer_cov_trace_pc() #8
  br label %table_lookup.exit222

if.else.i185.while.body.i194_crit_edge:           ; preds = %if.else.i185
  br label %while.body.i194

while.body.i194:                                  ; preds = %if.end.i203.while.body.i194_crit_edge, %if.else.i185.while.body.i194_crit_edge
  %imax.096.i188 = phi i32 [ %imax.1.i200, %if.end.i203.while.body.i194_crit_edge ], [ 51, %if.else.i185.while.body.i194_crit_edge ]
  %imin.095.i189 = phi i32 [ %imin.1.i199, %if.end.i203.while.body.i194_crit_edge ], [ 0, %if.else.i185.while.body.i194_crit_edge ]
  %add.i190 = add i32 %imin.095.i189, %imax.096.i188
  %div.i191 = sdiv i32 %add.i190, 2
  %reg_value21.i192 = getelementptr %struct.slookup, ptr @gain_rfagc_lookup, i32 %imin.095.i189, i32 1
  %91 = ptrtoint ptr %reg_value21.i192 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %reg_value21.i192, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %92, i16 %3)
  %cmp24.not.i193 = icmp ugt i16 %92, %3
  br i1 %cmp24.not.i193, label %while.body.i194.if.else33.i198_crit_edge, label %land.lhs.true.i197

while.body.i194.if.else33.i198_crit_edge:         ; preds = %while.body.i194
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else33.i198

land.lhs.true.i197:                               ; preds = %while.body.i194
  %reg_value28.i195 = getelementptr %struct.slookup, ptr @gain_rfagc_lookup, i32 %div.i191, i32 1
  %93 = ptrtoint ptr %reg_value28.i195 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %reg_value28.i195, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %94, i16 %3)
  %cmp30.not.i196 = icmp ult i16 %94, %3
  br i1 %cmp30.not.i196, label %land.lhs.true.i197.if.else33.i198_crit_edge, label %land.lhs.true.i197.if.end.i203_crit_edge

land.lhs.true.i197.if.end.i203_crit_edge:         ; preds = %land.lhs.true.i197
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i203

land.lhs.true.i197.if.else33.i198_crit_edge:      ; preds = %land.lhs.true.i197
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else33.i198

if.else33.i198:                                   ; preds = %land.lhs.true.i197.if.else33.i198_crit_edge, %while.body.i194.if.else33.i198_crit_edge
  br label %if.end.i203

if.end.i203:                                      ; preds = %if.else33.i198, %land.lhs.true.i197.if.end.i203_crit_edge
  %imin.1.i199 = phi i32 [ %div.i191, %if.else33.i198 ], [ %imin.095.i189, %land.lhs.true.i197.if.end.i203_crit_edge ]
  %imax.1.i200 = phi i32 [ %imax.096.i188, %if.else33.i198 ], [ %div.i191, %land.lhs.true.i197.if.end.i203_crit_edge ]
  %sub17.i201 = sub i32 %imax.1.i200, %imin.1.i199
  %cmp18.i202 = icmp sgt i32 %sub17.i201, 1
  br i1 %cmp18.i202, label %if.end.i203.while.body.i194_crit_edge, label %while.end.i209

if.end.i203.while.body.i194_crit_edge:            ; preds = %if.end.i203
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i194

while.end.i209:                                   ; preds = %if.end.i203
  %reg_value35.i204 = getelementptr %struct.slookup, ptr @gain_rfagc_lookup, i32 %imax.1.i200, i32 1
  %95 = ptrtoint ptr %reg_value35.i204 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %reg_value35.i204, align 2
  %arrayidx37.i205 = getelementptr %struct.slookup, ptr @gain_rfagc_lookup, i32 %imin.1.i199
  %reg_value38.i206 = getelementptr %struct.slookup, ptr @gain_rfagc_lookup, i32 %imin.1.i199, i32 1
  %97 = ptrtoint ptr %reg_value38.i206 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %reg_value38.i206, align 2
  %99 = ptrtoint ptr %arrayidx37.i205 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %arrayidx37.i205, align 2
  %conv43.i207 = sext i16 %100 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %96, i16 %98)
  %cmp44.not.i208 = icmp eq i16 %96, %98
  br i1 %cmp44.not.i208, label %while.end.i209.table_lookup.exit222_crit_edge, label %if.then46.i220

while.end.i209.table_lookup.exit222_crit_edge:    ; preds = %while.end.i209
  call void @__sanitizer_cov_trace_pc() #8
  br label %table_lookup.exit222

if.then46.i220:                                   ; preds = %while.end.i209
  call void @__sanitizer_cov_trace_pc() #8
  %conv39.i210 = zext i16 %98 to i32
  %conv36.i211 = zext i16 %96 to i32
  %sub40.i212 = sub nsw i32 %conv36.i211, %conv39.i210
  %arrayidx34.i213 = getelementptr %struct.slookup, ptr @gain_rfagc_lookup, i32 %imax.1.i200
  %sub51.i214 = sub nsw i32 %conv.i181, %conv39.i210
  %101 = ptrtoint ptr %arrayidx34.i213 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %arrayidx34.i213, align 2
  %conv54.i215 = sext i16 %102 to i32
  %sub58.i216 = sub nsw i32 %conv54.i215, %conv43.i207
  %mul.i217 = mul i32 %sub58.i216, %sub51.i214
  %div59.i218 = sdiv i32 %mul.i217, %sub40.i212
  %add60.i219 = add i32 %div59.i218, %conv43.i207
  br label %table_lookup.exit222

table_lookup.exit222:                             ; preds = %if.then46.i220, %while.end.i209.table_lookup.exit222_crit_edge, %if.else.i185.table_lookup.exit222_crit_edge, %if.end45.table_lookup.exit222_crit_edge
  %gain.0.i221 = phi i32 [ %add60.i219, %if.then46.i220 ], [ %conv43.i207, %while.end.i209.table_lookup.exit222_crit_edge ], [ 4870, %if.end45.table_lookup.exit222_crit_edge ], [ 49, %if.else.i185.table_lookup.exit222_crit_edge ]
  %add = add i32 %gain.0, -2400
  %sub = add i32 %add, %gain.0.i221
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg2) #6
  br label %if.end60

if.else47:                                        ; preds = %entry
  %arrayidx49 = getelementptr %struct.stv, ptr %1, i32 0, i32 2, i32 2
  %103 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx49, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %104)
  %cmp52 = icmp sgt i8 %104, -1
  %conv.i223 = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 12288, i16 %3)
  %cmp.not.i224 = icmp ugt i16 %3, 12288
  br i1 %cmp52, label %if.then54, label %if.else57

if.then54:                                        ; preds = %if.else47
  br i1 %cmp.not.i224, label %if.else.i227, label %if.then54.table_lookup.exit264_crit_edge

if.then54.table_lookup.exit264_crit_edge:         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #8
  br label %table_lookup.exit264

if.else.i227:                                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_const_cmp2(i16 -256, i16 %3)
  %cmp10.not.i226 = icmp ult i16 %3, -256
  br i1 %cmp10.not.i226, label %if.else.i227.while.body.i236_crit_edge, label %if.else.i227.table_lookup.exit264_crit_edge

if.else.i227.table_lookup.exit264_crit_edge:      ; preds = %if.else.i227
  call void @__sanitizer_cov_trace_pc() #8
  br label %table_lookup.exit264

if.else.i227.while.body.i236_crit_edge:           ; preds = %if.else.i227
  br label %while.body.i236

while.body.i236:                                  ; preds = %if.end.i245.while.body.i236_crit_edge, %if.else.i227.while.body.i236_crit_edge
  %imax.096.i230 = phi i32 [ %imax.1.i242, %if.end.i245.while.body.i236_crit_edge ], [ 54, %if.else.i227.while.body.i236_crit_edge ]
  %imin.095.i231 = phi i32 [ %imin.1.i241, %if.end.i245.while.body.i236_crit_edge ], [ 0, %if.else.i227.while.body.i236_crit_edge ]
  %add.i232 = add i32 %imin.095.i231, %imax.096.i230
  %div.i233 = sdiv i32 %add.i232, 2
  %reg_value21.i234 = getelementptr %struct.slookup, ptr @gain_channel_agc_nf_lookup, i32 %imin.095.i231, i32 1
  %105 = ptrtoint ptr %reg_value21.i234 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %reg_value21.i234, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %106, i16 %3)
  %cmp24.not.i235 = icmp ugt i16 %106, %3
  br i1 %cmp24.not.i235, label %while.body.i236.if.else33.i240_crit_edge, label %land.lhs.true.i239

while.body.i236.if.else33.i240_crit_edge:         ; preds = %while.body.i236
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else33.i240

land.lhs.true.i239:                               ; preds = %while.body.i236
  %reg_value28.i237 = getelementptr %struct.slookup, ptr @gain_channel_agc_nf_lookup, i32 %div.i233, i32 1
  %107 = ptrtoint ptr %reg_value28.i237 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %reg_value28.i237, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %108, i16 %3)
  %cmp30.not.i238 = icmp ult i16 %108, %3
  br i1 %cmp30.not.i238, label %land.lhs.true.i239.if.else33.i240_crit_edge, label %land.lhs.true.i239.if.end.i245_crit_edge

land.lhs.true.i239.if.end.i245_crit_edge:         ; preds = %land.lhs.true.i239
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i245

land.lhs.true.i239.if.else33.i240_crit_edge:      ; preds = %land.lhs.true.i239
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else33.i240

if.else33.i240:                                   ; preds = %land.lhs.true.i239.if.else33.i240_crit_edge, %while.body.i236.if.else33.i240_crit_edge
  br label %if.end.i245

if.end.i245:                                      ; preds = %if.else33.i240, %land.lhs.true.i239.if.end.i245_crit_edge
  %imin.1.i241 = phi i32 [ %div.i233, %if.else33.i240 ], [ %imin.095.i231, %land.lhs.true.i239.if.end.i245_crit_edge ]
  %imax.1.i242 = phi i32 [ %imax.096.i230, %if.else33.i240 ], [ %div.i233, %land.lhs.true.i239.if.end.i245_crit_edge ]
  %sub17.i243 = sub i32 %imax.1.i242, %imin.1.i241
  %cmp18.i244 = icmp sgt i32 %sub17.i243, 1
  br i1 %cmp18.i244, label %if.end.i245.while.body.i236_crit_edge, label %while.end.i251

if.end.i245.while.body.i236_crit_edge:            ; preds = %if.end.i245
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i236

while.end.i251:                                   ; preds = %if.end.i245
  %reg_value35.i246 = getelementptr %struct.slookup, ptr @gain_channel_agc_nf_lookup, i32 %imax.1.i242, i32 1
  %109 = ptrtoint ptr %reg_value35.i246 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %reg_value35.i246, align 2
  %arrayidx37.i247 = getelementptr %struct.slookup, ptr @gain_channel_agc_nf_lookup, i32 %imin.1.i241
  %reg_value38.i248 = getelementptr %struct.slookup, ptr @gain_channel_agc_nf_lookup, i32 %imin.1.i241, i32 1
  %111 = ptrtoint ptr %reg_value38.i248 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %reg_value38.i248, align 2
  %113 = ptrtoint ptr %arrayidx37.i247 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %arrayidx37.i247, align 2
  %conv43.i249 = sext i16 %114 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %110, i16 %112)
  %cmp44.not.i250 = icmp eq i16 %110, %112
  br i1 %cmp44.not.i250, label %while.end.i251.table_lookup.exit264_crit_edge, label %if.then46.i262

while.end.i251.table_lookup.exit264_crit_edge:    ; preds = %while.end.i251
  call void @__sanitizer_cov_trace_pc() #8
  br label %table_lookup.exit264

if.then46.i262:                                   ; preds = %while.end.i251
  call void @__sanitizer_cov_trace_pc() #8
  %conv39.i252 = zext i16 %112 to i32
  %conv36.i253 = zext i16 %110 to i32
  %sub40.i254 = sub nsw i32 %conv36.i253, %conv39.i252
  %arrayidx34.i255 = getelementptr %struct.slookup, ptr @gain_channel_agc_nf_lookup, i32 %imax.1.i242
  %sub51.i256 = sub nsw i32 %conv.i223, %conv39.i252
  %115 = ptrtoint ptr %arrayidx34.i255 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %arrayidx34.i255, align 2
  %conv54.i257 = sext i16 %116 to i32
  %sub58.i258 = sub nsw i32 %conv54.i257, %conv43.i249
  %mul.i259 = mul i32 %sub58.i258, %sub51.i256
  %div59.i260 = sdiv i32 %mul.i259, %sub40.i254
  %add60.i261 = add i32 %div59.i260, %conv43.i249
  br label %table_lookup.exit264

table_lookup.exit264:                             ; preds = %if.then46.i262, %while.end.i251.table_lookup.exit264_crit_edge, %if.else.i227.table_lookup.exit264_crit_edge, %if.then54.table_lookup.exit264_crit_edge
  %gain.0.i263 = phi i32 [ %add60.i261, %if.then46.i262 ], [ %conv43.i249, %while.end.i251.table_lookup.exit264_crit_edge ], [ 7082, %if.then54.table_lookup.exit264_crit_edge ], [ 1927, %if.else.i227.table_lookup.exit264_crit_edge ]
  %add56 = add i32 %gain.0.i263, 600
  br label %if.end60

if.else57:                                        ; preds = %if.else47
  br i1 %cmp.not.i224, label %if.else.i269, label %if.else57.if.end60_crit_edge

if.else57.if.end60_crit_edge:                     ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.else.i269:                                     ; preds = %if.else57
  call void @__sanitizer_cov_trace_const_cmp2(i16 -256, i16 %3)
  %cmp10.not.i268 = icmp ult i16 %3, -256
  br i1 %cmp10.not.i268, label %if.else.i269.while.body.i278_crit_edge, label %if.else.i269.if.end60_crit_edge

if.else.i269.if.end60_crit_edge:                  ; preds = %if.else.i269
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.else.i269.while.body.i278_crit_edge:           ; preds = %if.else.i269
  br label %while.body.i278

while.body.i278:                                  ; preds = %if.end.i287.while.body.i278_crit_edge, %if.else.i269.while.body.i278_crit_edge
  %imax.096.i272 = phi i32 [ %imax.1.i284, %if.end.i287.while.body.i278_crit_edge ], [ 54, %if.else.i269.while.body.i278_crit_edge ]
  %imin.095.i273 = phi i32 [ %imin.1.i283, %if.end.i287.while.body.i278_crit_edge ], [ 0, %if.else.i269.while.body.i278_crit_edge ]
  %add.i274 = add i32 %imin.095.i273, %imax.096.i272
  %div.i275 = sdiv i32 %add.i274, 2
  %reg_value21.i276 = getelementptr %struct.slookup, ptr @gain_channel_agc_iip3_lookup, i32 %imin.095.i273, i32 1
  %117 = ptrtoint ptr %reg_value21.i276 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %reg_value21.i276, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %118, i16 %3)
  %cmp24.not.i277 = icmp ugt i16 %118, %3
  br i1 %cmp24.not.i277, label %while.body.i278.if.else33.i282_crit_edge, label %land.lhs.true.i281

while.body.i278.if.else33.i282_crit_edge:         ; preds = %while.body.i278
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else33.i282

land.lhs.true.i281:                               ; preds = %while.body.i278
  %reg_value28.i279 = getelementptr %struct.slookup, ptr @gain_channel_agc_iip3_lookup, i32 %div.i275, i32 1
  %119 = ptrtoint ptr %reg_value28.i279 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %reg_value28.i279, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %120, i16 %3)
  %cmp30.not.i280 = icmp ult i16 %120, %3
  br i1 %cmp30.not.i280, label %land.lhs.true.i281.if.else33.i282_crit_edge, label %land.lhs.true.i281.if.end.i287_crit_edge

land.lhs.true.i281.if.end.i287_crit_edge:         ; preds = %land.lhs.true.i281
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i287

land.lhs.true.i281.if.else33.i282_crit_edge:      ; preds = %land.lhs.true.i281
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else33.i282

if.else33.i282:                                   ; preds = %land.lhs.true.i281.if.else33.i282_crit_edge, %while.body.i278.if.else33.i282_crit_edge
  br label %if.end.i287

if.end.i287:                                      ; preds = %if.else33.i282, %land.lhs.true.i281.if.end.i287_crit_edge
  %imin.1.i283 = phi i32 [ %div.i275, %if.else33.i282 ], [ %imin.095.i273, %land.lhs.true.i281.if.end.i287_crit_edge ]
  %imax.1.i284 = phi i32 [ %imax.096.i272, %if.else33.i282 ], [ %div.i275, %land.lhs.true.i281.if.end.i287_crit_edge ]
  %sub17.i285 = sub i32 %imax.1.i284, %imin.1.i283
  %cmp18.i286 = icmp sgt i32 %sub17.i285, 1
  br i1 %cmp18.i286, label %if.end.i287.while.body.i278_crit_edge, label %while.end.i293

if.end.i287.while.body.i278_crit_edge:            ; preds = %if.end.i287
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i278

while.end.i293:                                   ; preds = %if.end.i287
  %reg_value35.i288 = getelementptr %struct.slookup, ptr @gain_channel_agc_iip3_lookup, i32 %imax.1.i284, i32 1
  %121 = ptrtoint ptr %reg_value35.i288 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %reg_value35.i288, align 2
  %arrayidx37.i289 = getelementptr %struct.slookup, ptr @gain_channel_agc_iip3_lookup, i32 %imin.1.i283
  %reg_value38.i290 = getelementptr %struct.slookup, ptr @gain_channel_agc_iip3_lookup, i32 %imin.1.i283, i32 1
  %123 = ptrtoint ptr %reg_value38.i290 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %reg_value38.i290, align 2
  %125 = ptrtoint ptr %arrayidx37.i289 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %arrayidx37.i289, align 2
  %conv43.i291 = sext i16 %126 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %122, i16 %124)
  %cmp44.not.i292 = icmp eq i16 %122, %124
  br i1 %cmp44.not.i292, label %while.end.i293.if.end60_crit_edge, label %if.then46.i304

while.end.i293.if.end60_crit_edge:                ; preds = %while.end.i293
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.then46.i304:                                   ; preds = %while.end.i293
  call void @__sanitizer_cov_trace_pc() #8
  %conv39.i294 = zext i16 %124 to i32
  %conv36.i295 = zext i16 %122 to i32
  %sub40.i296 = sub nsw i32 %conv36.i295, %conv39.i294
  %arrayidx34.i297 = getelementptr %struct.slookup, ptr @gain_channel_agc_iip3_lookup, i32 %imax.1.i284
  %sub51.i298 = sub nsw i32 %conv.i223, %conv39.i294
  %127 = ptrtoint ptr %arrayidx34.i297 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %arrayidx34.i297, align 2
  %conv54.i299 = sext i16 %128 to i32
  %sub58.i300 = sub nsw i32 %conv54.i299, %conv43.i291
  %mul.i301 = mul i32 %sub58.i300, %sub51.i298
  %div59.i302 = sdiv i32 %mul.i301, %sub40.i296
  %add60.i303 = add i32 %div59.i302, %conv43.i291
  br label %if.end60

if.end60:                                         ; preds = %if.then46.i304, %while.end.i293.if.end60_crit_edge, %if.else.i269.if.end60_crit_edge, %if.else57.if.end60_crit_edge, %table_lookup.exit264, %table_lookup.exit222
  %gain.1 = phi i32 [ %sub, %table_lookup.exit222 ], [ %add56, %table_lookup.exit264 ], [ %add60.i303, %if.then46.i304 ], [ %conv43.i291, %while.end.i293.if.end60_crit_edge ], [ 7070, %if.else57.if.end60_crit_edge ], [ 1325, %if.else.i269.if.end60_crit_edge ]
  %frequency = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 4
  %129 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %frequency, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp61.not = icmp eq i32 %130, 0
  %div = udiv i32 %130, 1000
  %sub65 = shl nuw nsw i32 %div, 1
  %mul = add nsw i32 %sub65, -3100
  %div66.neg = sdiv i32 %mul, -12
  %sub67 = select i1 %cmp61.not, i32 0, i32 %div66.neg
  %arrayidx70 = getelementptr %struct.stv, ptr %1, i32 0, i32 2, i32 1
  %131 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx70, align 1
  %133 = lshr i8 %132, 6
  %134 = zext i8 %133 to i32
  %mul73 = mul nuw nsw i32 %134, 600
  %gain.2 = add i32 %gain.1, -1300
  %sub74 = add i32 %gain.2, %mul73
  %add75 = add i32 %sub74, %sub67
  %135 = call i32 @llvm.smin.i32(i32 %add75, i32 10000)
  %136 = call i32 @llvm.smax.i32(i32 %135, i32 0)
  %137 = trunc i32 %136 to i16
  %conv86 = sub nuw nsw i16 10000, %137
  %138 = ptrtoint ptr %st to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %conv86, ptr %st, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_bandwidth(ptr noundef %fe, i32 noundef %cutoff_frequency) #0 align 64 {
entry:
  %msgs.i.i.i = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i.i = alloca i8, align 1
  %regval.i = alloca i8, align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %d.i = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %add = add i32 %cutoff_frequency, 999999
  %div = udiv i32 %add, 1000000
  %2 = tail call i32 @llvm.umax.i32(i32 %div, i32 6)
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 50)
  %arrayidx = getelementptr %struct.stv, ptr %1, i32 0, i32 2, i32 8
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = and i8 %5, 3
  %and = zext i8 %6 to i32
  %sub = shl nuw nsw i32 %3, 2
  %shl = add nsw i32 %sub, -24
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %and)
  %cmp4 = icmp eq i32 %shl, %and
  br i1 %cmp4, label %entry.cleanup_crit_edge, label %if.end7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %entry
  %7 = trunc i32 %shl to i8
  %conv14 = or i8 %6, %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv14, ptr %arrayidx, align 1
  %arrayidx18 = getelementptr %struct.stv, ptr %1, i32 0, i32 2, i32 9
  %9 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx18, align 1
  %11 = and i8 %10, -13
  %12 = or i8 %11, 8
  store i8 %12, ptr %arrayidx18, align 1
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %13 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %if.end7.if.then30_crit_edge, label %if.end28

if.end7.if.then30_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then30

if.end28:                                         ; preds = %if.end7
  %call = tail call i32 %14(ptr noundef %fe, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool29.not = icmp eq i32 %call, 0
  br i1 %tobool29.not, label %if.end28.if.then30_crit_edge, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28.if.then30_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then30

if.then30:                                        ; preds = %if.end28.if.then30_crit_edge, %if.end7.if.then30_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %d.i) #6
  %15 = getelementptr inbounds [12 x i8], ptr %d.i, i32 0, i32 1
  %16 = getelementptr inbounds [12 x i8], ptr %d.i, i32 0, i32 3
  %17 = call ptr @memset(ptr %16, i32 255, i32 9)
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %arrayidx, align 1
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 %19, ptr %15, align 1
  %21 = ptrtoint ptr %d.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 8, ptr %d.i, align 1
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %adr.i = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %adr.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %adr.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #6
  %26 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 262143, ptr %26, align 4
  %conv.i.i = zext i8 %25 to i16
  %28 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %d.i, ptr %buf.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %if.then30.write_regs.exit_crit_edge, label %do.end.i.i

if.then30.write_regs.exit_crit_edge:              ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_regs.exit

do.end.i.i:                                       ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %23, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str) #10
  br label %write_regs.exit

write_regs.exit:                                  ; preds = %do.end.i.i, %if.then30.write_regs.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %d.i) #6
  %31 = getelementptr inbounds i8, ptr %msgs.i.i.i, i32 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 0, i32 1
  %buf.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 0, i32 3
  %arrayinit.element.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1
  %flags5.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1, i32 1
  %len6.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1, i32 2
  %buf8.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %write_regs.exit
  %lock_retry_count.09.i = phi i32 [ 10, %write_regs.exit ], [ %sub.i, %cleanup.i.while.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %regval.i) #6
  %32 = ptrtoint ptr %regval.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -1, ptr %regval.i, align 1, !annotation !45
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i) #6
  %33 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 9, ptr %reg.addr.i.i, align 1
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %36 = ptrtoint ptr %adr.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %adr.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i.i) #6
  %38 = call ptr @memset(ptr %31, i32 255, i32 16)
  %conv.i.i.i = zext i8 %37 to i16
  %39 = ptrtoint ptr %msgs.i.i.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv.i.i.i, ptr %msgs.i.i.i, align 4
  %40 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %flags.i.i.i, align 2
  %41 = ptrtoint ptr %31 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %31, align 4
  %42 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %reg.addr.i.i, ptr %buf.i.i.i, align 4
  %43 = ptrtoint ptr %arrayinit.element.i.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv.i.i.i, ptr %arrayinit.element.i.i.i, align 4
  %44 = ptrtoint ptr %flags5.i.i.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 1, ptr %flags5.i.i.i, align 2
  %45 = ptrtoint ptr %len6.i.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 1, ptr %len6.i.i.i, align 4
  %46 = ptrtoint ptr %buf8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %regval.i, ptr %buf8.i.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msgs.i.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i, 2
  br i1 %cmp.not.i.i.i, label %if.end.i, label %read_reg.exit.thread.i

read_reg.exit.thread.i:                           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %35, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.5) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #6
  br label %cleanup.thread.i

if.end.i:                                         ; preds = %while.body.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #6
  %47 = ptrtoint ptr %regval.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %regval.i, align 1
  %and1.i = and i8 %48, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and1.i)
  %cmp3.i = icmp eq i8 %and1.i, 0
  br i1 %cmp3.i, label %if.end.i.cleanup.thread.i_crit_edge, label %cleanup.i

if.end.i.cleanup.thread.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.end.i.cleanup.thread.i_crit_edge, %read_reg.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %regval.i) #6
  br label %if.end33

cleanup.i:                                        ; preds = %if.end.i
  call void @usleep_range_state(i32 noundef 4000, i32 noundef 6000, i32 noundef 2) #6
  %sub.i = add nsw i32 %lock_retry_count.09.i, -1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %regval.i) #6
  %cmp.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp.not.i, label %cleanup.i.if.end33_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

cleanup.i.if.end33_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.end33:                                         ; preds = %cleanup.i.if.end33_crit_edge, %cleanup.thread.i
  %49 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool36.not = icmp eq ptr %50, null
  br i1 %tobool36.not, label %if.end33.cleanup_crit_edge, label %if.then38

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %call41 = call i32 %50(ptr noundef %fe, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.end33.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end33.cleanup_crit_edge ], [ 0, %if.then38 ], [ %call, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !15, !16, !17, !18, !19, !21, !22, !23, !24, !26, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__ksymtab_stv6111_attach, !1, !"__ksymtab_stv6111_attach", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/stv6111.c", i32 677, i32 1}
!2 = !{ptr @__UNIQUE_ID_description290, !3, !"__UNIQUE_ID_description290", i1 false, i1 false}
!3 = !{!"../drivers/media/dvb-frontends/stv6111.c", i32 679, i32 1}
!4 = !{ptr @__UNIQUE_ID_author291, !5, !"__UNIQUE_ID_author291", i1 false, i1 false}
!5 = !{!"../drivers/media/dvb-frontends/stv6111.c", i32 680, i32 1}
!6 = !{ptr @__UNIQUE_ID_file292, !7, !"__UNIQUE_ID_file292", i1 false, i1 false}
!7 = !{!"../drivers/media/dvb-frontends/stv6111.c", i32 681, i32 1}
!8 = !{ptr @__UNIQUE_ID_license293, !7, !"__UNIQUE_ID_license293", i1 false, i1 false}
!9 = !{ptr @tuner_ops, !10, !"tuner_ops", i1 false, i1 false}
!10 = !{!"../drivers/media/dvb-frontends/stv6111.c", i32 637, i32 35}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/dvb-frontends/stv6111.c", i32 315, i32 3}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @i2c_write._entry, !12, !"_entry", i1 false, i1 false}
!18 = !{ptr @i2c_write._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/dvb-frontends/stv6111.c", i32 303, i32 3}
!21 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @i2c_read._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @i2c_read._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @lnagain_nf_lookup, !25, !"lnagain_nf_lookup", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/stv6111.c", i32 35, i32 29}
!26 = !{ptr @lnagain_iip3_lookup, !27, !"lnagain_iip3_lookup", i1 false, i1 false}
!27 = !{!"../drivers/media/dvb-frontends/stv6111.c", i32 71, i32 29}
!28 = !{ptr @gain_rfagc_lookup, !29, !"gain_rfagc_lookup", i1 false, i1 false}
!29 = !{!"../drivers/media/dvb-frontends/stv6111.c", i32 107, i32 29}
!30 = !{ptr @gain_channel_agc_nf_lookup, !31, !"gain_channel_agc_nf_lookup", i1 false, i1 false}
!31 = !{!"../drivers/media/dvb-frontends/stv6111.c", i32 167, i32 29}
!32 = !{ptr @gain_channel_agc_iip3_lookup, !33, !"gain_channel_agc_iip3_lookup", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-frontends/stv6111.c", i32 226, i32 29}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{i64 1126798, i64 1126825, i64 1126847, i64 1126875}
!44 = !{i64 1127206, i64 1127233, i64 1127266, i64 1127287, i64 1127314, i64 1127340}
!45 = !{!"auto-init"}
!46 = !{!"branch_weights", i32 2000, i32 1}
!47 = !{i64 2148612342, i64 2148612622, i64 2148612956, i64 2148613290}

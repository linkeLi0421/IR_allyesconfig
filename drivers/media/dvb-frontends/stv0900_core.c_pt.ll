; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/stv0900_core.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/stv0900_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+stv0900_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_stv0900_attach\09\09\09\09"
module asm "\09.long\09__crc_stv0900_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stv0900_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22stv0900_attach\22\09\09\09\09\09"
module asm "__kstrtabns_stv0900_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.stv0900_car_loop_optim = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.stv0900_short_frames_car_loop_optim = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.stv0900_short_frames_car_loop_optim_vs_mod = type { i32, i8, i8, i8, i8, i8 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.stv000_lookpoint = type { i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.stv0900_internal = type { i32, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x %struct.stv0900_signal_info], [2 x i32], ptr, i8, i8, i8, ptr, i32, i32 }
%struct.stv0900_signal_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.84], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.84 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.85 }>
%union.anon.85 = type { i64 }
%struct.stv0900_init_params = type { i32, i32, i32, i32, i8, i32, i32, i32, i32, i8, i32, i32, i32, ptr }
%struct.stv0900_state = type { ptr, ptr, ptr, %struct.dvb_frontend, i32 }
%struct.stv0900_config = type { i8, i8, i32, i8, i8, i8, i8, ptr, i8, i8, i8, i8, i8, i8, ptr, ptr }
%struct.stv0900_inode = type { ptr, ptr }
%struct.stv0900_reg = type { i16, i8 }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }
%struct.dvb_diseqc_slave_reply = type { [4 x i8], i8, i32 }

@stvdebug = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_str_debug = internal constant [14 x i8] c"stv0900.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @stvdebug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [27 x i8] c"stv0900.parmtype=debug:int\00", section ".modinfo", align 1
@stv0900_write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: i2c error %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stv0900_write_reg\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/media/dvb-frontends/stv0900_core.c\00", [53 x i8] zeroinitializer }, align 32
@stv0900_write_reg._entry_ptr = internal global ptr @stv0900_write_reg._entry, section ".printk_index", align 4
@stv0900_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: i2c error %d, reg[0x%02x]\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stv0900_read_reg\00", [47 x i8] zeroinitializer }, align 32
@stv0900_read_reg._entry_ptr = internal global ptr @stv0900_read_reg._entry, section ".printk_index", align 4
@stv0900_set_tuner._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 518, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: Invalid parameter\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stv0900_set_tuner\00", [46 x i8] zeroinitializer }, align 32
@stv0900_set_tuner._entry_ptr = internal global ptr @stv0900_set_tuner._entry, section ".printk_index", align 4
@stv0900_set_tuner._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 520, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: Frequency=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@stv0900_set_tuner._entry_ptr.9 = internal global ptr @stv0900_set_tuner._entry.7, section ".printk_index", align 4
@stv0900_set_tuner._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stv0900_set_tuner._entry_ptr.11 = internal global ptr @stv0900_set_tuner._entry.10, section ".printk_index", align 4
@stv0900_set_tuner._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.6, ptr @.str.2, i32 528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: Bandwidth=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@stv0900_set_tuner._entry_ptr.14 = internal global ptr @stv0900_set_tuner._entry.12, section ".printk_index", align 4
@stv0900_set_bandwidth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.15, ptr @.str.2, i32 543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stv0900_set_bandwidth\00", [42 x i8] zeroinitializer }, align 32
@stv0900_set_bandwidth._entry_ptr = internal global ptr @stv0900_set_bandwidth._entry, section ".printk_index", align 4
@stv0900_set_bandwidth._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.15, ptr @.str.2, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stv0900_set_bandwidth._entry_ptr.17 = internal global ptr @stv0900_set_bandwidth._entry.16, section ".printk_index", align 4
@stv0900_get_demod_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 835, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017Demod State = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stv0900_get_demod_lock\00", [41 x i8] zeroinitializer }, align 32
@stv0900_get_demod_lock._entry_ptr = internal global ptr @stv0900_get_demod_lock._entry, section ".printk_index", align 4
@stv0900_get_demod_lock._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 855, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017DEMOD LOCK OK\0A\00", [47 x i8] zeroinitializer }, align 32
@stv0900_get_demod_lock._entry_ptr.22 = internal global ptr @stv0900_get_demod_lock._entry.20, section ".printk_index", align 4
@stv0900_get_demod_lock._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.2, i32 857, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017DEMOD LOCK FAIL\0A\00", [45 x i8] zeroinitializer }, align 32
@stv0900_get_demod_lock._entry_ptr.25 = internal global ptr @stv0900_get_demod_lock._entry.23, section ".printk_index", align 4
@stv0900_stop_all_s2_modcod._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 868, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\017%s\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"stv0900_stop_all_s2_modcod\00", [37 x i8] zeroinitializer }, align 32
@stv0900_stop_all_s2_modcod._entry_ptr = internal global ptr @stv0900_stop_all_s2_modcod._entry, section ".printk_index", align 4
@stv0900_activate_s2_modcod._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.28, ptr @.str.2, i32 885, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"stv0900_activate_s2_modcod\00", [37 x i8] zeroinitializer }, align 32
@stv0900_activate_s2_modcod._entry_ptr = internal global ptr @stv0900_activate_s2_modcod._entry, section ".printk_index", align 4
@stv0900_activate_s2_modcod_single._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.29, ptr @.str.2, i32 941, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"stv0900_activate_s2_modcod_single\00", [62 x i8] zeroinitializer }, align 32
@stv0900_activate_s2_modcod_single._entry_ptr = internal global ptr @stv0900_activate_s2_modcod_single._entry, section ".printk_index", align 4
@stv0900_get_optim_carr_loop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.30, ptr @.str.2, i32 1079, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"stv0900_get_optim_carr_loop\00", [36 x i8] zeroinitializer }, align 32
@stv0900_get_optim_carr_loop._entry_ptr = internal global ptr @stv0900_get_optim_carr_loop._entry, section ".printk_index", align 4
@FE_STV0900_S2CarLoop = internal constant { [14 x %struct.stv0900_car_loop_optim], [32 x i8] } { [14 x %struct.stv0900_car_loop_optim] [%struct.stv0900_car_loop_optim { i32 4, i8 28, i8 13, i8 27, i8 44, i8 58, i8 28, i8 42, i8 59, i8 42, i8 27 }, %struct.stv0900_car_loop_optim { i32 5, i8 44, i8 13, i8 43, i8 44, i8 58, i8 12, i8 58, i8 43, i8 42, i8 11 }, %struct.stv0900_car_loop_optim { i32 6, i8 44, i8 13, i8 43, i8 44, i8 11, i8 12, i8 58, i8 27, i8 42, i8 58 }, %struct.stv0900_car_loop_optim { i32 7, i8 60, i8 13, i8 59, i8 28, i8 11, i8 59, i8 58, i8 11, i8 42, i8 58 }, %struct.stv0900_car_loop_optim { i32 8, i8 60, i8 13, i8 59, i8 28, i8 11, i8 59, i8 58, i8 11, i8 42, i8 58 }, %struct.stv0900_car_loop_optim { i32 9, i8 13, i8 13, i8 59, i8 28, i8 11, i8 59, i8 58, i8 11, i8 42, i8 58 }, %struct.stv0900_car_loop_optim { i32 10, i8 13, i8 13, i8 59, i8 28, i8 27, i8 59, i8 58, i8 11, i8 42, i8 58 }, %struct.stv0900_car_loop_optim { i32 11, i8 29, i8 13, i8 59, i8 28, i8 27, i8 59, i8 58, i8 11, i8 42, i8 58 }, %struct.stv0900_car_loop_optim { i32 12, i8 41, i8 59, i8 9, i8 43, i8 56, i8 11, i8 24, i8 26, i8 8, i8 10 }, %struct.stv0900_car_loop_optim { i32 13, i8 10, i8 59, i8 41, i8 43, i8 25, i8 11, i8 56, i8 26, i8 24, i8 10 }, %struct.stv0900_car_loop_optim { i32 14, i8 58, i8 59, i8 42, i8 43, i8 57, i8 11, i8 25, i8 26, i8 56, i8 10 }, %struct.stv0900_car_loop_optim { i32 15, i8 27, i8 59, i8 11, i8 43, i8 26, i8 11, i8 57, i8 26, i8 25, i8 10 }, %struct.stv0900_car_loop_optim { i32 16, i8 59, i8 59, i8 11, i8 43, i8 42, i8 11, i8 57, i8 26, i8 41, i8 57 }, %struct.stv0900_car_loop_optim { i32 17, i8 59, i8 59, i8 11, i8 43, i8 42, i8 11, i8 57, i8 26, i8 41, i8 57 }], [32 x i8] zeroinitializer }, align 32
@FE_STV0900_S2LowQPCarLoopCut30 = internal constant { [3 x %struct.stv0900_car_loop_optim], [48 x i8] } { [3 x %struct.stv0900_car_loop_optim] [%struct.stv0900_car_loop_optim { i32 1, i8 12, i8 60, i8 11, i8 60, i8 42, i8 44, i8 42, i8 28, i8 58, i8 59 }, %struct.stv0900_car_loop_optim { i32 2, i8 12, i8 60, i8 11, i8 60, i8 42, i8 44, i8 58, i8 12, i8 58, i8 43 }, %struct.stv0900_car_loop_optim { i32 3, i8 28, i8 60, i8 27, i8 60, i8 58, i8 28, i8 58, i8 59, i8 58, i8 43 }], [48 x i8] zeroinitializer }, align 32
@FE_STV0900_S2APSKCarLoopCut30 = internal constant { [11 x %struct.stv0900_car_loop_optim], [48 x i8] } { [11 x %struct.stv0900_car_loop_optim] [%struct.stv0900_car_loop_optim { i32 18, i8 10, i8 10, i8 10, i8 10, i8 26, i8 10, i8 58, i8 10, i8 42, i8 10 }, %struct.stv0900_car_loop_optim { i32 19, i8 10, i8 10, i8 10, i8 10, i8 11, i8 10, i8 59, i8 10, i8 27, i8 10 }, %struct.stv0900_car_loop_optim { i32 20, i8 10, i8 10, i8 10, i8 10, i8 27, i8 10, i8 59, i8 10, i8 43, i8 10 }, %struct.stv0900_car_loop_optim { i32 21, i8 10, i8 10, i8 10, i8 10, i8 27, i8 10, i8 59, i8 10, i8 43, i8 10 }, %struct.stv0900_car_loop_optim { i32 22, i8 10, i8 10, i8 10, i8 10, i8 43, i8 10, i8 12, i8 10, i8 59, i8 10 }, %struct.stv0900_car_loop_optim { i32 23, i8 10, i8 10, i8 10, i8 10, i8 43, i8 10, i8 12, i8 10, i8 59, i8 10 }, %struct.stv0900_car_loop_optim { i32 24, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10 }, %struct.stv0900_car_loop_optim { i32 25, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10 }, %struct.stv0900_car_loop_optim { i32 26, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10 }, %struct.stv0900_car_loop_optim { i32 27, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10 }, %struct.stv0900_car_loop_optim { i32 28, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10 }], [48 x i8] zeroinitializer }, align 32
@FE_STV0900_S2CarLoopCut20 = internal constant { [14 x %struct.stv0900_car_loop_optim], [32 x i8] } { [14 x %struct.stv0900_car_loop_optim] [%struct.stv0900_car_loop_optim { i32 4, i8 31, i8 63, i8 30, i8 63, i8 61, i8 31, i8 61, i8 62, i8 61, i8 30 }, %struct.stv0900_car_loop_optim { i32 5, i8 47, i8 63, i8 46, i8 47, i8 61, i8 15, i8 14, i8 46, i8 61, i8 14 }, %struct.stv0900_car_loop_optim { i32 6, i8 47, i8 63, i8 46, i8 47, i8 14, i8 15, i8 14, i8 30, i8 61, i8 61 }, %struct.stv0900_car_loop_optim { i32 7, i8 63, i8 63, i8 62, i8 31, i8 14, i8 62, i8 14, i8 30, i8 61, i8 61 }, %struct.stv0900_car_loop_optim { i32 8, i8 63, i8 63, i8 62, i8 31, i8 14, i8 62, i8 14, i8 30, i8 61, i8 61 }, %struct.stv0900_car_loop_optim { i32 9, i8 63, i8 63, i8 62, i8 31, i8 14, i8 62, i8 14, i8 30, i8 61, i8 61 }, %struct.stv0900_car_loop_optim { i32 10, i8 63, i8 63, i8 62, i8 31, i8 30, i8 62, i8 14, i8 30, i8 61, i8 61 }, %struct.stv0900_car_loop_optim { i32 11, i8 63, i8 63, i8 62, i8 31, i8 30, i8 62, i8 14, i8 30, i8 61, i8 61 }, %struct.stv0900_car_loop_optim { i32 12, i8 60, i8 12, i8 28, i8 59, i8 12, i8 59, i8 43, i8 43, i8 27, i8 43 }, %struct.stv0900_car_loop_optim { i32 13, i8 29, i8 12, i8 60, i8 12, i8 44, i8 59, i8 12, i8 43, i8 43, i8 43 }, %struct.stv0900_car_loop_optim { i32 14, i8 14, i8 28, i8 61, i8 12, i8 13, i8 59, i8 44, i8 59, i8 12, i8 43 }, %struct.stv0900_car_loop_optim { i32 15, i8 46, i8 62, i8 30, i8 46, i8 45, i8 30, i8 60, i8 45, i8 44, i8 29 }, %struct.stv0900_car_loop_optim { i32 16, i8 62, i8 62, i8 30, i8 46, i8 61, i8 30, i8 13, i8 45, i8 60, i8 29 }, %struct.stv0900_car_loop_optim { i32 17, i8 62, i8 62, i8 30, i8 46, i8 61, i8 30, i8 29, i8 45, i8 13, i8 29 }], [32 x i8] zeroinitializer }, align 32
@FE_STV0900_S2LowQPCarLoopCut20 = internal constant { [3 x %struct.stv0900_car_loop_optim], [48 x i8] } { [3 x %struct.stv0900_car_loop_optim] [%struct.stv0900_car_loop_optim { i32 1, i8 15, i8 63, i8 14, i8 63, i8 45, i8 47, i8 45, i8 31, i8 61, i8 62 }, %struct.stv0900_car_loop_optim { i32 2, i8 15, i8 63, i8 14, i8 63, i8 45, i8 47, i8 61, i8 15, i8 61, i8 46 }, %struct.stv0900_car_loop_optim { i32 3, i8 31, i8 63, i8 30, i8 63, i8 61, i8 31, i8 61, i8 62, i8 61, i8 46 }], [48 x i8] zeroinitializer }, align 32
@FE_STV0900_S2APSKCarLoopCut20 = internal constant { [11 x %struct.stv0900_car_loop_optim], [48 x i8] } { [11 x %struct.stv0900_car_loop_optim] [%struct.stv0900_car_loop_optim { i32 18, i8 12, i8 12, i8 12, i8 12, i8 29, i8 12, i8 60, i8 12, i8 44, i8 12 }, %struct.stv0900_car_loop_optim { i32 19, i8 12, i8 12, i8 12, i8 12, i8 14, i8 12, i8 45, i8 12, i8 29, i8 12 }, %struct.stv0900_car_loop_optim { i32 20, i8 12, i8 12, i8 12, i8 12, i8 30, i8 12, i8 61, i8 12, i8 45, i8 12 }, %struct.stv0900_car_loop_optim { i32 21, i8 12, i8 12, i8 12, i8 12, i8 30, i8 12, i8 61, i8 12, i8 45, i8 12 }, %struct.stv0900_car_loop_optim { i32 22, i8 12, i8 12, i8 12, i8 12, i8 46, i8 12, i8 14, i8 12, i8 61, i8 12 }, %struct.stv0900_car_loop_optim { i32 23, i8 12, i8 12, i8 12, i8 12, i8 46, i8 12, i8 14, i8 12, i8 61, i8 12 }, %struct.stv0900_car_loop_optim { i32 24, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12 }, %struct.stv0900_car_loop_optim { i32 25, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12 }, %struct.stv0900_car_loop_optim { i32 26, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12 }, %struct.stv0900_car_loop_optim { i32 27, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12 }, %struct.stv0900_car_loop_optim { i32 28, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12 }], [48 x i8] zeroinitializer }, align 32
@FE_STV0900_S2CarLoopCut30 = internal constant { [14 x %struct.stv0900_car_loop_optim], [32 x i8] } { [14 x %struct.stv0900_car_loop_optim] [%struct.stv0900_car_loop_optim { i32 4, i8 60, i8 44, i8 12, i8 44, i8 27, i8 44, i8 27, i8 28, i8 11, i8 59 }, %struct.stv0900_car_loop_optim { i32 5, i8 13, i8 13, i8 12, i8 13, i8 27, i8 60, i8 27, i8 28, i8 11, i8 59 }, %struct.stv0900_car_loop_optim { i32 6, i8 29, i8 13, i8 12, i8 29, i8 43, i8 60, i8 27, i8 28, i8 11, i8 59 }, %struct.stv0900_car_loop_optim { i32 7, i8 29, i8 29, i8 12, i8 29, i8 43, i8 60, i8 27, i8 28, i8 11, i8 59 }, %struct.stv0900_car_loop_optim { i32 8, i8 45, i8 29, i8 28, i8 29, i8 43, i8 60, i8 43, i8 12, i8 27, i8 59 }, %struct.stv0900_car_loop_optim { i32 9, i8 45, i8 29, i8 28, i8 29, i8 43, i8 60, i8 43, i8 12, i8 27, i8 59 }, %struct.stv0900_car_loop_optim { i32 10, i8 61, i8 45, i8 28, i8 29, i8 59, i8 60, i8 43, i8 12, i8 27, i8 59 }, %struct.stv0900_car_loop_optim { i32 11, i8 61, i8 45, i8 28, i8 29, i8 59, i8 60, i8 43, i8 12, i8 27, i8 59 }, %struct.stv0900_car_loop_optim { i32 12, i8 57, i8 25, i8 57, i8 25, i8 25, i8 25, i8 25, i8 25, i8 9, i8 25 }, %struct.stv0900_car_loop_optim { i32 13, i8 42, i8 57, i8 26, i8 10, i8 57, i8 10, i8 41, i8 57, i8 41, i8 10 }, %struct.stv0900_car_loop_optim { i32 14, i8 11, i8 58, i8 11, i8 11, i8 58, i8 27, i8 26, i8 11, i8 26, i8 58 }, %struct.stv0900_car_loop_optim { i32 15, i8 12, i8 27, i8 59, i8 43, i8 27, i8 59, i8 58, i8 59, i8 58, i8 27 }, %struct.stv0900_car_loop_optim { i32 16, i8 44, i8 44, i8 44, i8 28, i8 43, i8 12, i8 11, i8 59, i8 11, i8 27 }, %struct.stv0900_car_loop_optim { i32 17, i8 44, i8 60, i8 44, i8 28, i8 59, i8 28, i8 11, i8 59, i8 11, i8 27 }], [32 x i8] zeroinitializer }, align 32
@stv0900_get_optim_short_carr_loop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.31, ptr @.str.2, i32 1195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"stv0900_get_optim_short_carr_loop\00", [62 x i8] zeroinitializer }, align 32
@stv0900_get_optim_short_carr_loop._entry_ptr = internal global ptr @stv0900_get_optim_short_carr_loop._entry, section ".printk_index", align 4
@FE_STV0900_S2ShortCarLoop = internal constant { [4 x %struct.stv0900_short_frames_car_loop_optim], [32 x i8] } { [4 x %struct.stv0900_short_frames_car_loop_optim] [%struct.stv0900_short_frames_car_loop_optim { i32 0, i8 60, i8 47, i8 43, i8 46, i8 11, i8 14, i8 58, i8 14, i8 42, i8 61 }, %struct.stv0900_short_frames_car_loop_optim { i32 1, i8 11, i8 62, i8 42, i8 14, i8 10, i8 45, i8 25, i8 13, i8 9, i8 60 }, %struct.stv0900_short_frames_car_loop_optim { i32 2, i8 27, i8 30, i8 27, i8 30, i8 27, i8 30, i8 58, i8 61, i8 42, i8 45 }, %struct.stv0900_short_frames_car_loop_optim { i32 3, i8 27, i8 30, i8 27, i8 30, i8 27, i8 30, i8 58, i8 61, i8 42, i8 45 }], [32 x i8] zeroinitializer }, align 32
@FE_STV0900_S2ShortCarLoopCut30 = internal constant { [4 x %struct.stv0900_short_frames_car_loop_optim_vs_mod], [48 x i8] } { [4 x %struct.stv0900_short_frames_car_loop_optim_vs_mod] [%struct.stv0900_short_frames_car_loop_optim_vs_mod { i32 0, i8 44, i8 43, i8 11, i8 11, i8 58 }, %struct.stv0900_short_frames_car_loop_optim_vs_mod { i32 1, i8 59, i8 11, i8 42, i8 10, i8 57 }, %struct.stv0900_short_frames_car_loop_optim_vs_mod { i32 2, i8 27, i8 27, i8 27, i8 58, i8 42 }, %struct.stv0900_short_frames_car_loop_optim_vs_mod { i32 3, i8 27, i8 27, i8 27, i8 58, i8 42 }], [48 x i8] zeroinitializer }, align 32
@stv0900_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"STV0900 frontend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 125000, i32 0, i32 1000000, i32 45000000, i32 500, i32 268437166 }, [8 x i8] c"\05\06\04\00\00\00\00\00", ptr null, ptr @stv0900_release, ptr null, ptr @stv0900_init, ptr @stv0900_sleep, ptr null, ptr null, ptr null, ptr null, ptr @stv0900_frontend_algo, ptr null, ptr null, ptr @stv0900_get_frontend, ptr @stv0900_read_status, ptr @stv0900_read_ber, ptr @stv0900_read_signal_strength, ptr @stv0900_read_snr, ptr @stv0900_read_ucblocks, ptr null, ptr @stv0900_send_master_cmd, ptr @stv0900_recv_slave_reply, ptr @stv0900_send_burst, ptr @stv0900_set_tone, ptr null, ptr null, ptr null, ptr @stv0900_i2c_gate_ctrl, ptr null, ptr null, ptr @stv0900_search, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@stv0900_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 1951, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s: Attaching STV0900 demodulator(%d) \0A\00", [54 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stv0900_attach\00", [17 x i8] zeroinitializer }, align 32
@stv0900_attach._entry_ptr = internal global ptr @stv0900_attach._entry, section ".printk_index", align 4
@stv0900_attach._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 1956, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017%s: Failed to attach STV0900 demodulator(%d) \0A\00", [47 x i8] zeroinitializer }, align 32
@stv0900_attach._entry_ptr.36 = internal global ptr @stv0900_attach._entry.34, section ".printk_index", align 4
@__kstrtab_stv0900_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_stv0900_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_stv0900_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stv0900_attach to i32), ptr @__kstrtab_stv0900_attach, ptr @__kstrtabns_stv0900_attach }, section "___ksymtab+stv0900_attach", align 4
@__UNIQUE_ID_debug291 = internal constant [29 x i8] c"stv0900.parm=debug:Set debug\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [33 x i8] c"stv0900.author=Igor M. Liplianin\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [40 x i8] c"stv0900.description=ST STV0900 frontend\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [49 x i8] c"stv0900.file=drivers/media/dvb-frontends/stv0900\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [20 x i8] c"stv0900.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@stv0900_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.37, ptr @.str.2, i32 1823, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stv0900_release\00", [16 x i8] zeroinitializer }, align 32
@stv0900_release._entry_ptr = internal global ptr @stv0900_release._entry, section ".printk_index", align 4
@stv0900_release._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 1830, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: Actually removing\0A\00", [39 x i8] zeroinitializer }, align 32
@stv0900_release._entry_ptr.40 = internal global ptr @stv0900_release._entry.38, section ".printk_index", align 4
@stv0900_first_inode = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@stv0900_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.41, ptr @.str.2, i32 1694, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stv0900_init\00", [19 x i8] zeroinitializer }, align 32
@stv0900_init._entry_ptr = internal global ptr @stv0900_init._entry, section ".printk_index", align 4
@stv0900_sleep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.42, ptr @.str.2, i32 1843, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"stv0900_sleep\00", [18 x i8] zeroinitializer }, align 32
@stv0900_sleep._entry_ptr = internal global ptr @stv0900_sleep._entry, section ".printk_index", align 4
@stv0900_read_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 1644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\017%s: \00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stv0900_read_status\00", [44 x i8] zeroinitializer }, align 32
@stv0900_read_status._entry_ptr = internal global ptr @stv0900_read_status._entry, section ".printk_index", align 4
@stv0900_read_status._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.44, ptr @.str.2, i32 1647, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stv0900_read_status._entry_ptr.46 = internal global ptr @stv0900_read_status._entry.45, section ".printk_index", align 4
@stv0900_read_status._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.44, ptr @.str.2, i32 1658, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stv0900_read_status._entry_ptr.48 = internal global ptr @stv0900_read_status._entry.47, section ".printk_index", align 4
@stv0900_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 1527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s: locked = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stv0900_status\00", [17 x i8] zeroinitializer }, align 32
@stv0900_status._entry_ptr = internal global ptr @stv0900_status._entry, section ".printk_index", align 4
@stv0900_status._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.2, i32 1537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017TS bitrate = %d Mbit/sec\0A\00", [36 x i8] zeroinitializer }, align 32
@stv0900_status._entry_ptr.53 = internal global ptr @stv0900_status._entry.51, section ".printk_index", align 4
@stv0900_get_mclk_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: Calculated Mclk = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stv0900_get_mclk_freq\00", [42 x i8] zeroinitializer }, align 32
@stv0900_get_mclk_freq._entry_ptr = internal global ptr @stv0900_get_mclk_freq._entry, section ".printk_index", align 4
@stv0900_get_rf_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.56, ptr @.str.2, i32 600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stv0900_get_rf_level\00", [43 x i8] zeroinitializer }, align 32
@stv0900_get_rf_level._entry_ptr = internal global ptr @stv0900_get_rf_level._entry, section ".printk_index", align 4
@stv0900_get_rf_level._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.2, i32 634, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: RFLevel = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@stv0900_get_rf_level._entry_ptr.59 = internal global ptr @stv0900_get_rf_level._entry.57, section ".printk_index", align 4
@stv0900_rf = internal constant { { i32, <{ [14 x %struct.stv000_lookpoint], [486 x %struct.stv000_lookpoint] }> }, [1020 x i8] } { { i32, <{ [14 x %struct.stv000_lookpoint], [486 x %struct.stv000_lookpoint] }> } { i32 14, <{ [14 x %struct.stv000_lookpoint], [486 x %struct.stv000_lookpoint] }> <{ [14 x %struct.stv000_lookpoint] [%struct.stv000_lookpoint { i32 -5, i32 51873 }, %struct.stv000_lookpoint { i32 -10, i32 49705 }, %struct.stv000_lookpoint { i32 -15, i32 47880 }, %struct.stv000_lookpoint { i32 -20, i32 46268 }, %struct.stv000_lookpoint { i32 -25, i32 44378 }, %struct.stv000_lookpoint { i32 -30, i32 41624 }, %struct.stv000_lookpoint { i32 -35, i32 39080 }, %struct.stv000_lookpoint { i32 -40, i32 33673 }, %struct.stv000_lookpoint { i32 -45, i32 22974 }, %struct.stv000_lookpoint { i32 -50, i32 14868 }, %struct.stv000_lookpoint { i32 -55, i32 11537 }, %struct.stv000_lookpoint { i32 -60, i32 8461 }, %struct.stv000_lookpoint { i32 -65, i32 41295 }, %struct.stv000_lookpoint { i32 -70, i32 1962 }], [486 x %struct.stv000_lookpoint] zeroinitializer }> }, [1020 x i8] zeroinitializer }, align 32
@stv0900_carr_get_quality._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.61, ptr @.str.2, i32 673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"stv0900_carr_get_quality\00", [39 x i8] zeroinitializer }, align 32
@stv0900_carr_get_quality._entry_ptr = internal global ptr @stv0900_carr_get_quality._entry, section ".printk_index", align 4
@stv0900_s2_cn = internal constant { { i32, <{ [55 x %struct.stv000_lookpoint], [445 x %struct.stv000_lookpoint] }> }, [1020 x i8] } { { i32, <{ [55 x %struct.stv000_lookpoint], [445 x %struct.stv000_lookpoint] }> } { i32 55, <{ [55 x %struct.stv000_lookpoint], [445 x %struct.stv000_lookpoint] }> <{ [55 x %struct.stv000_lookpoint] [%struct.stv000_lookpoint { i32 -30, i32 13348 }, %struct.stv000_lookpoint { i32 -20, i32 12640 }, %struct.stv000_lookpoint { i32 -10, i32 11883 }, %struct.stv000_lookpoint { i32 0, i32 11101 }, %struct.stv000_lookpoint { i32 5, i32 10718 }, %struct.stv000_lookpoint { i32 10, i32 10339 }, %struct.stv000_lookpoint { i32 15, i32 9947 }, %struct.stv000_lookpoint { i32 20, i32 9552 }, %struct.stv000_lookpoint { i32 25, i32 9183 }, %struct.stv000_lookpoint { i32 30, i32 8799 }, %struct.stv000_lookpoint { i32 35, i32 8422 }, %struct.stv000_lookpoint { i32 40, i32 8062 }, %struct.stv000_lookpoint { i32 45, i32 7707 }, %struct.stv000_lookpoint { i32 50, i32 7353 }, %struct.stv000_lookpoint { i32 55, i32 7025 }, %struct.stv000_lookpoint { i32 60, i32 6684 }, %struct.stv000_lookpoint { i32 65, i32 6331 }, %struct.stv000_lookpoint { i32 70, i32 6036 }, %struct.stv000_lookpoint { i32 75, i32 5727 }, %struct.stv000_lookpoint { i32 80, i32 5437 }, %struct.stv000_lookpoint { i32 85, i32 5164 }, %struct.stv000_lookpoint { i32 90, i32 4902 }, %struct.stv000_lookpoint { i32 95, i32 4653 }, %struct.stv000_lookpoint { i32 100, i32 4408 }, %struct.stv000_lookpoint { i32 105, i32 4187 }, %struct.stv000_lookpoint { i32 110, i32 3961 }, %struct.stv000_lookpoint { i32 115, i32 3751 }, %struct.stv000_lookpoint { i32 120, i32 3558 }, %struct.stv000_lookpoint { i32 125, i32 3368 }, %struct.stv000_lookpoint { i32 130, i32 3191 }, %struct.stv000_lookpoint { i32 135, i32 3017 }, %struct.stv000_lookpoint { i32 140, i32 2862 }, %struct.stv000_lookpoint { i32 145, i32 2710 }, %struct.stv000_lookpoint { i32 150, i32 2565 }, %struct.stv000_lookpoint { i32 160, i32 2300 }, %struct.stv000_lookpoint { i32 170, i32 2058 }, %struct.stv000_lookpoint { i32 180, i32 1849 }, %struct.stv000_lookpoint { i32 190, i32 1663 }, %struct.stv000_lookpoint { i32 200, i32 1495 }, %struct.stv000_lookpoint { i32 210, i32 1349 }, %struct.stv000_lookpoint { i32 220, i32 1222 }, %struct.stv000_lookpoint { i32 230, i32 1110 }, %struct.stv000_lookpoint { i32 240, i32 1011 }, %struct.stv000_lookpoint { i32 250, i32 925 }, %struct.stv000_lookpoint { i32 260, i32 853 }, %struct.stv000_lookpoint { i32 270, i32 789 }, %struct.stv000_lookpoint { i32 280, i32 734 }, %struct.stv000_lookpoint { i32 290, i32 690 }, %struct.stv000_lookpoint { i32 300, i32 650 }, %struct.stv000_lookpoint { i32 310, i32 619 }, %struct.stv000_lookpoint { i32 320, i32 593 }, %struct.stv000_lookpoint { i32 330, i32 571 }, %struct.stv000_lookpoint { i32 400, i32 498 }, %struct.stv000_lookpoint { i32 450, i32 484 }, %struct.stv000_lookpoint { i32 500, i32 481 }], [445 x %struct.stv000_lookpoint] zeroinitializer }> }, [1020 x i8] zeroinitializer }, align 32
@stv0900_set_tone._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 1793, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\017%s: %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stv0900_set_tone\00", [47 x i8] zeroinitializer }, align 32
@stv0900_set_tone._entry_ptr = internal global ptr @stv0900_set_tone._entry, section ".printk_index", align 4
@.str.65 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"On\00", [29 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Off\00", [28 x i8] zeroinitializer }, align 32
@stv0900_search._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.67, ptr @.str.2, i32 1574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stv0900_search\00", [17 x i8] zeroinitializer }, align 32
@stv0900_search._entry_ptr = internal global ptr @stv0900_search._entry, section ".printk_index", align 4
@stv0900_search._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.2, i32 1631, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017Search Success\0A\00", [46 x i8] zeroinitializer }, align 32
@stv0900_search._entry_ptr.70 = internal global ptr @stv0900_search._entry.68, section ".printk_index", align 4
@stv0900_search._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.67, ptr @.str.2, i32 1634, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\017Search Fail\0A\00", [17 x i8] zeroinitializer }, align 32
@stv0900_search._entry_ptr.73 = internal global ptr @stv0900_search._entry.71, section ".printk_index", align 4
@stv0900_set_mis._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.74, ptr @.str.2, i32 1546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stv0900_set_mis\00", [16 x i8] zeroinitializer }, align 32
@stv0900_set_mis._entry_ptr = internal global ptr @stv0900_set_mis._entry, section ".printk_index", align 4
@stv0900_set_mis._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.2, i32 1549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017Disable MIS filtering\0A\00", [39 x i8] zeroinitializer }, align 32
@stv0900_set_mis._entry_ptr.77 = internal global ptr @stv0900_set_mis._entry.75, section ".printk_index", align 4
@stv0900_set_mis._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.74, ptr @.str.2, i32 1552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017Enable MIS filtering - %d\0A\00", [35 x i8] zeroinitializer }, align 32
@stv0900_set_mis._entry_ptr.80 = internal global ptr @stv0900_set_mis._entry.78, section ".printk_index", align 4
@stv0900_init_internal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.81, ptr @.str.2, i32 1343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stv0900_init_internal\00", [42 x i8] zeroinitializer }, align 32
@stv0900_init_internal._entry_ptr = internal global ptr @stv0900_init_internal._entry, section ".printk_index", align 4
@stv0900_init_internal._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.2, i32 1348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: Find Internal Structure!\0A\00", [32 x i8] zeroinitializer }, align 32
@stv0900_init_internal._entry_ptr.84 = internal global ptr @stv0900_init_internal._entry.82, section ".printk_index", align 4
@stv0900_init_internal._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.81, ptr @.str.2, i32 1366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: Create New Internal Structure!\0A\00", [58 x i8] zeroinitializer }, align 32
@stv0900_init_internal._entry_ptr.87 = internal global ptr @stv0900_init_internal._entry.85, section ".printk_index", align 4
@STV0900_InitVal = internal constant { [181 x [2 x i16]], [172 x i8] } { [181 x [2 x i16]] [[2 x i16] [i16 -3812, i16 0], [2 x i16] [i16 -3758, i16 17], [2 x i16] [i16 -3754, i16 19], [2 x i16] [i16 -2448, i16 20], [2 x i16] [i16 -3615, i16 33], [2 x i16] [i16 -3613, i16 33], [2 x i16] [i16 -3696, i16 34], [2 x i16] [i16 -3687, i16 192], [2 x i16] [i16 -3686, i16 192], [2 x i16] [i16 -3695, i16 0], [2 x i16] [i16 -3353, i16 135], [2 x i16] [i16 -3352, i16 9], [2 x i16] [i16 -3564, i16 249], [2 x i16] [i16 -3568, i16 8], [2 x i16] [i16 -3554, i16 196], [2 x i16] [i16 -3523, i16 237], [2 x i16] [i16 -3359, i16 2], [2 x i16] [i16 -3346, i16 2], [2 x i16] [i16 -3521, i16 208], [2 x i16] [i16 -3520, i16 184], [2 x i16] [i16 -3504, i16 210], [2 x i16] [i16 -3501, i16 32], [2 x i16] [i16 -3500, i16 0], [2 x i16] [i16 -3168, i16 136], [2 x i16] [i16 -3166, i16 58], [2 x i16] [i16 -3160, i16 0], [2 x i16] [i16 -3150, i16 16], [2 x i16] [i16 -3176, i16 53], [2 x i16] [i16 -3172, i16 193], [2 x i16] [i16 -3519, i16 248], [2 x i16] [i16 -3583, i16 28], [2 x i16] [i16 -3561, i16 32], [2 x i16] [i16 -3552, i16 112], [2 x i16] [i16 -3551, i16 136], [2 x i16] [i16 -3540, i16 91], [2 x i16] [i16 -3539, i16 56], [2 x i16] [i16 -3528, i16 228], [2 x i16] [i16 -3527, i16 26], [2 x i16] [i16 -3526, i16 9], [2 x i16] [i16 -3522, i16 8], [2 x i16] [i16 -3496, i16 193], [2 x i16] [i16 -3499, i16 240], [2 x i16] [i16 -3498, i16 112], [2 x i16] [i16 -3495, i16 88], [2 x i16] [i16 -3494, i16 1], [2 x i16] [i16 -3440, i16 38], [2 x i16] [i16 -3428, i16 134], [2 x i16] [i16 -3427, i16 134], [2 x i16] [i16 -3328, i16 119], [2 x i16] [i16 -3327, i16 133], [2 x i16] [i16 -3326, i16 119], [2 x i16] [i16 -3212, i16 32], [2 x i16] [i16 -3563, i16 59], [2 x i16] [i16 -3408, i16 255], [2 x i16] [i16 -3407, i16 255], [2 x i16] [i16 -3406, i16 255], [2 x i16] [i16 -3405, i16 255], [2 x i16] [i16 -3404, i16 255], [2 x i16] [i16 -3403, i16 255], [2 x i16] [i16 -3402, i16 255], [2 x i16] [i16 -3401, i16 204], [2 x i16] [i16 -3400, i16 204], [2 x i16] [i16 -3399, i16 204], [2 x i16] [i16 -3398, i16 204], [2 x i16] [i16 -3397, i16 204], [2 x i16] [i16 -3396, i16 204], [2 x i16] [i16 -3395, i16 204], [2 x i16] [i16 -3394, i16 204], [2 x i16] [i16 -3393, i16 207], [2 x i16] [i16 -3680, i16 34], [2 x i16] [i16 -3671, i16 192], [2 x i16] [i16 -3670, i16 192], [2 x i16] [i16 -3679, i16 0], [2 x i16] [i16 -2841, i16 135], [2 x i16] [i16 -2840, i16 9], [2 x i16] [i16 -3052, i16 249], [2 x i16] [i16 -3056, i16 8], [2 x i16] [i16 -3042, i16 196], [2 x i16] [i16 -3049, i16 32], [2 x i16] [i16 -3011, i16 237], [2 x i16] [i16 -2847, i16 130], [2 x i16] [i16 -2834, i16 2], [2 x i16] [i16 -3009, i16 208], [2 x i16] [i16 -3008, i16 184], [2 x i16] [i16 -2992, i16 210], [2 x i16] [i16 -2989, i16 32], [2 x i16] [i16 -2988, i16 0], [2 x i16] [i16 -2987, i16 240], [2 x i16] [i16 -2986, i16 112], [2 x i16] [i16 -2700, i16 32], [2 x i16] [i16 -2656, i16 136], [2 x i16] [i16 -2654, i16 58], [2 x i16] [i16 -2648, i16 0], [2 x i16] [i16 -2638, i16 16], [2 x i16] [i16 -2664, i16 53], [2 x i16] [i16 -2660, i16 193], [2 x i16] [i16 -3007, i16 248], [2 x i16] [i16 -3071, i16 28], [2 x i16] [i16 -3040, i16 112], [2 x i16] [i16 -3039, i16 136], [2 x i16] [i16 -3028, i16 91], [2 x i16] [i16 -3027, i16 56], [2 x i16] [i16 -3016, i16 228], [2 x i16] [i16 -3015, i16 26], [2 x i16] [i16 -3014, i16 9], [2 x i16] [i16 -3010, i16 8], [2 x i16] [i16 -2984, i16 193], [2 x i16] [i16 -2983, i16 88], [2 x i16] [i16 -2982, i16 1], [2 x i16] [i16 -2928, i16 38], [2 x i16] [i16 -2916, i16 134], [2 x i16] [i16 -2915, i16 134], [2 x i16] [i16 -2816, i16 119], [2 x i16] [i16 -2815, i16 133], [2 x i16] [i16 -2814, i16 119], [2 x i16] [i16 -3051, i16 59], [2 x i16] [i16 -2896, i16 255], [2 x i16] [i16 -2895, i16 255], [2 x i16] [i16 -2894, i16 255], [2 x i16] [i16 -2893, i16 255], [2 x i16] [i16 -2892, i16 255], [2 x i16] [i16 -2891, i16 255], [2 x i16] [i16 -2890, i16 255], [2 x i16] [i16 -2889, i16 204], [2 x i16] [i16 -2888, i16 204], [2 x i16] [i16 -2887, i16 204], [2 x i16] [i16 -2886, i16 204], [2 x i16] [i16 -2885, i16 204], [2 x i16] [i16 -2884, i16 204], [2 x i16] [i16 -2883, i16 204], [2 x i16] [i16 -2882, i16 204], [2 x i16] [i16 -2881, i16 207], [2 x i16] [i16 -1402, i16 29], [2 x i16] [i16 -1533, i16 55], [2 x i16] [i16 -1532, i16 41], [2 x i16] [i16 -1531, i16 55], [2 x i16] [i16 -1530, i16 51], [2 x i16] [i16 -1529, i16 49], [2 x i16] [i16 -1528, i16 47], [2 x i16] [i16 -1527, i16 57], [2 x i16] [i16 -1526, i16 58], [2 x i16] [i16 -1525, i16 41], [2 x i16] [i16 -1524, i16 55], [2 x i16] [i16 -1523, i16 51], [2 x i16] [i16 -1522, i16 47], [2 x i16] [i16 -1521, i16 57], [2 x i16] [i16 -1520, i16 58], [2 x i16] [i16 -1473, i16 4], [2 x i16] [i16 -1469, i16 12], [2 x i16] [i16 -1468, i16 15], [2 x i16] [i16 -1467, i16 17], [2 x i16] [i16 -1466, i16 20], [2 x i16] [i16 -1465, i16 23], [2 x i16] [i16 -1464, i16 25], [2 x i16] [i16 -1463, i16 32], [2 x i16] [i16 -1462, i16 33], [2 x i16] [i16 -1461, i16 13], [2 x i16] [i16 -1460, i16 15], [2 x i16] [i16 -1459, i16 19], [2 x i16] [i16 -1458, i16 26], [2 x i16] [i16 -1457, i16 31], [2 x i16] [i16 -1456, i16 33], [2 x i16] [i16 -2560, i16 32], [2 x i16] [i16 -2765, i16 1], [2 x i16] [i16 -3277, i16 1], [2 x i16] [i16 -2756, i16 47], [2 x i16] [i16 -3268, i16 47], [2 x i16] [i16 -3747, i16 76], [2 x i16] [i16 -3742, i16 76], [2 x i16] [i16 -3746, i16 80], [2 x i16] [i16 -3741, i16 80], [2 x i16] [i16 -3748, i16 74], [2 x i16] [i16 -3743, i16 74], [2 x i16] [i16 -3745, i16 82], [2 x i16] [i16 -3740, i16 82], [2 x i16] [i16 -2701, i16 192], [2 x i16] [i16 -3213, i16 192], [2 x i16] [i16 -2702, i16 224], [2 x i16] [i16 -3214, i16 224], [2 x i16] [i16 -2688, i16 64], [2 x i16] [i16 -3200, i16 64]], [172 x i8] zeroinitializer }, align 32
@STV0900_Cut20_AddOnVal = internal constant { [32 x [2 x i16]], [32 x i8] } { [32 x [2 x i16]] [[2 x i16] [i16 -3554, i16 232], [2 x i16] [i16 -3553, i16 16], [2 x i16] [i16 -3523, i16 56], [2 x i16] [i16 -3522, i16 32], [2 x i16] [i16 -3496, i16 90], [2 x i16] [i16 -3328, i16 6], [2 x i16] [i16 -3327, i16 0], [2 x i16] [i16 -3326, i16 4], [2 x i16] [i16 -3583, i16 12], [2 x i16] [i16 -3042, i16 232], [2 x i16] [i16 -3041, i16 16], [2 x i16] [i16 -3011, i16 56], [2 x i16] [i16 -3010, i16 32], [2 x i16] [i16 -2984, i16 90], [2 x i16] [i16 -2816, i16 6], [2 x i16] [i16 -2815, i16 0], [2 x i16] [i16 -2814, i16 4], [2 x i16] [i16 -3071, i16 12], [2 x i16] [i16 -1469, i16 33], [2 x i16] [i16 -1468, i16 33], [2 x i16] [i16 -1467, i16 32], [2 x i16] [i16 -1466, i16 31], [2 x i16] [i16 -1465, i16 30], [2 x i16] [i16 -1464, i16 30], [2 x i16] [i16 -1463, i16 29], [2 x i16] [i16 -1462, i16 27], [2 x i16] [i16 -1461, i16 32], [2 x i16] [i16 -1460, i16 32], [2 x i16] [i16 -1459, i16 32], [2 x i16] [i16 -1458, i16 32], [2 x i16] [i16 -1457, i16 32], [2 x i16] [i16 -1456, i16 33]], [32 x i8] zeroinitializer }, align 32
@stv0900_st_dvbs2_single._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.88, ptr @.str.2, i32 1264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stv0900_st_dvbs2_single\00", [40 x i8] zeroinitializer }, align 32
@stv0900_st_dvbs2_single._entry_ptr = internal global ptr @stv0900_st_dvbs2_single._entry, section ".printk_index", align 4
@stv0900_set_ts_parallel_serial._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.89, ptr @.str.2, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"stv0900_set_ts_parallel_serial\00", [33 x i8] zeroinitializer }, align 32
@stv0900_set_ts_parallel_serial._entry_ptr = internal global ptr @stv0900_set_ts_parallel_serial._entry, section ".printk_index", align 4
@stv0900_set_ts_parallel_serial._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.2, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\017%s: 0x0a\0A\00", [20 x i8] zeroinitializer }, align 32
@stv0900_set_ts_parallel_serial._entry_ptr.92 = internal global ptr @stv0900_set_ts_parallel_serial._entry.90, section ".printk_index", align 4
@stv0900_set_ts_parallel_serial._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.89, ptr @.str.2, i32 451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\017%s: 0x12\0A\00", [20 x i8] zeroinitializer }, align 32
@stv0900_set_ts_parallel_serial._entry_ptr.95 = internal global ptr @stv0900_set_ts_parallel_serial._entry.93, section ".printk_index", align 4
@stv0900_set_mclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.2, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: Mclk set to %d, Quartz = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stv0900_set_mclk\00", [47 x i8] zeroinitializer }, align 32
@stv0900_set_mclk._entry_ptr = internal global ptr @stv0900_set_mclk._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.98 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.107 = private unnamed_addr constant [9 x i8] c"stvdebug\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 23, i32 5 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 136, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 160, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 518, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 520, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 526, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 528, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 543, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 545, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 835, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 855, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 857, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 868, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 885, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 941, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1079, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant [21 x i8] c"FE_STV0900_S2CarLoop\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 140, i32 44 }
@___asan_gen_.215 = private unnamed_addr constant [31 x i8] c"FE_STV0900_S2LowQPCarLoopCut30\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 329, i32 31 }
@___asan_gen_.218 = private unnamed_addr constant [30 x i8] c"FE_STV0900_S2APSKCarLoopCut30\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 301, i32 31 }
@___asan_gen_.221 = private unnamed_addr constant [26 x i8] c"FE_STV0900_S2CarLoopCut20\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 175, i32 44 }
@___asan_gen_.224 = private unnamed_addr constant [31 x i8] c"FE_STV0900_S2LowQPCarLoopCut20\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 240, i32 44 }
@___asan_gen_.227 = private unnamed_addr constant [30 x i8] c"FE_STV0900_S2APSKCarLoopCut20\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 211, i32 44 }
@___asan_gen_.230 = private unnamed_addr constant [26 x i8] c"FE_STV0900_S2CarLoopCut30\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 267, i32 44 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1195, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant [26 x i8] c"FE_STV0900_S2ShortCarLoop\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 254, i32 44 }
@___asan_gen_.242 = private unnamed_addr constant [31 x i8] c"FE_STV0900_S2ShortCarLoopCut30\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 341, i32 1 }
@___asan_gen_.245 = private unnamed_addr constant [12 x i8] c"stv0900_ops\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1864, i32 38 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1951, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1955, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1823, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1830, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant [20 x i8] c"stv0900_first_inode\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 34, i32 30 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1694, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1843, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1644, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1647, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1658, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1527, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1537, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 280, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 600, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 634, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant [11 x i8] c"stv0900_rf\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 80, i32 35 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 673, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant [14 x i8] c"stv0900_s2_cn\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 18, i32 35 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1793, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1574, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1631, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1634, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1546, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1549, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1552, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1343, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1348, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1366, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant [16 x i8] c"STV0900_InitVal\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 350, i32 18 }
@___asan_gen_.425 = private unnamed_addr constant [23 x i8] c"STV0900_Cut20_AddOnVal\00", align 1
@___asan_gen_.426 = private unnamed_addr constant [46 x i8] c"../drivers/media/dvb-frontends/stv0900_init.h\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 534, i32 18 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1264, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 363, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 405, i32 5 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 451, i32 5 }
@___asan_gen_.452 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.458 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.459 = private constant [46 x i8] c"../drivers/media/dvb-frontends/stv0900_core.c\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 295, i32 2 }
@llvm.compiler.used = appending global [172 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__ksymtab_stv0900_attach, ptr @__param_debug, ptr @stv0900_activate_s2_modcod._entry, ptr @stv0900_activate_s2_modcod._entry_ptr, ptr @stv0900_activate_s2_modcod_single._entry, ptr @stv0900_activate_s2_modcod_single._entry_ptr, ptr @stv0900_attach._entry, ptr @stv0900_attach._entry.34, ptr @stv0900_attach._entry_ptr, ptr @stv0900_attach._entry_ptr.36, ptr @stv0900_carr_get_quality._entry, ptr @stv0900_carr_get_quality._entry_ptr, ptr @stv0900_get_demod_lock._entry, ptr @stv0900_get_demod_lock._entry.20, ptr @stv0900_get_demod_lock._entry.23, ptr @stv0900_get_demod_lock._entry_ptr, ptr @stv0900_get_demod_lock._entry_ptr.22, ptr @stv0900_get_demod_lock._entry_ptr.25, ptr @stv0900_get_mclk_freq._entry, ptr @stv0900_get_mclk_freq._entry_ptr, ptr @stv0900_get_optim_carr_loop._entry, ptr @stv0900_get_optim_carr_loop._entry_ptr, ptr @stv0900_get_optim_short_carr_loop._entry, ptr @stv0900_get_optim_short_carr_loop._entry_ptr, ptr @stv0900_get_rf_level._entry, ptr @stv0900_get_rf_level._entry.57, ptr @stv0900_get_rf_level._entry_ptr, ptr @stv0900_get_rf_level._entry_ptr.59, ptr @stv0900_init._entry, ptr @stv0900_init._entry_ptr, ptr @stv0900_init_internal._entry, ptr @stv0900_init_internal._entry.82, ptr @stv0900_init_internal._entry.85, ptr @stv0900_init_internal._entry_ptr, ptr @stv0900_init_internal._entry_ptr.84, ptr @stv0900_init_internal._entry_ptr.87, ptr @stv0900_read_reg._entry, ptr @stv0900_read_reg._entry_ptr, ptr @stv0900_read_status._entry, ptr @stv0900_read_status._entry.45, ptr @stv0900_read_status._entry.47, ptr @stv0900_read_status._entry_ptr, ptr @stv0900_read_status._entry_ptr.46, ptr @stv0900_read_status._entry_ptr.48, ptr @stv0900_release._entry, ptr @stv0900_release._entry.38, ptr @stv0900_release._entry_ptr, ptr @stv0900_release._entry_ptr.40, ptr @stv0900_search._entry, ptr @stv0900_search._entry.68, ptr @stv0900_search._entry.71, ptr @stv0900_search._entry_ptr, ptr @stv0900_search._entry_ptr.70, ptr @stv0900_search._entry_ptr.73, ptr @stv0900_set_bandwidth._entry, ptr @stv0900_set_bandwidth._entry.16, ptr @stv0900_set_bandwidth._entry_ptr, ptr @stv0900_set_bandwidth._entry_ptr.17, ptr @stv0900_set_mclk._entry, ptr @stv0900_set_mclk._entry_ptr, ptr @stv0900_set_mis._entry, ptr @stv0900_set_mis._entry.75, ptr @stv0900_set_mis._entry.78, ptr @stv0900_set_mis._entry_ptr, ptr @stv0900_set_mis._entry_ptr.77, ptr @stv0900_set_mis._entry_ptr.80, ptr @stv0900_set_tone._entry, ptr @stv0900_set_tone._entry_ptr, ptr @stv0900_set_ts_parallel_serial._entry, ptr @stv0900_set_ts_parallel_serial._entry.90, ptr @stv0900_set_ts_parallel_serial._entry.93, ptr @stv0900_set_ts_parallel_serial._entry_ptr, ptr @stv0900_set_ts_parallel_serial._entry_ptr.92, ptr @stv0900_set_ts_parallel_serial._entry_ptr.95, ptr @stv0900_set_tuner._entry, ptr @stv0900_set_tuner._entry.10, ptr @stv0900_set_tuner._entry.12, ptr @stv0900_set_tuner._entry.7, ptr @stv0900_set_tuner._entry_ptr, ptr @stv0900_set_tuner._entry_ptr.11, ptr @stv0900_set_tuner._entry_ptr.14, ptr @stv0900_set_tuner._entry_ptr.9, ptr @stv0900_sleep._entry, ptr @stv0900_sleep._entry_ptr, ptr @stv0900_st_dvbs2_single._entry, ptr @stv0900_st_dvbs2_single._entry_ptr, ptr @stv0900_status._entry, ptr @stv0900_status._entry.51, ptr @stv0900_status._entry_ptr, ptr @stv0900_status._entry_ptr.53, ptr @stv0900_stop_all_s2_modcod._entry, ptr @stv0900_stop_all_s2_modcod._entry_ptr, ptr @stv0900_write_reg._entry, ptr @stv0900_write_reg._entry_ptr, ptr @stvdebug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @FE_STV0900_S2CarLoop, ptr @FE_STV0900_S2LowQPCarLoopCut30, ptr @FE_STV0900_S2APSKCarLoopCut30, ptr @FE_STV0900_S2CarLoopCut20, ptr @FE_STV0900_S2LowQPCarLoopCut20, ptr @FE_STV0900_S2APSKCarLoopCut20, ptr @FE_STV0900_S2CarLoopCut30, ptr @.str.31, ptr @FE_STV0900_S2ShortCarLoop, ptr @FE_STV0900_S2ShortCarLoopCut30, ptr @stv0900_ops, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @stv0900_first_inode, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @stv0900_rf, ptr @.str.61, ptr @stv0900_s2_cn, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.86, ptr @STV0900_InitVal, ptr @STV0900_Cut20_AddOnVal, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.94, ptr @.str.96, ptr @.str.97], section "llvm.metadata"
@0 = internal global [118 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stvdebug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_set_tuner._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_set_tuner._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_set_tuner._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_set_tuner._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_set_bandwidth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_set_bandwidth._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_get_demod_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_get_demod_lock._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_get_demod_lock._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_stop_all_s2_modcod._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_activate_s2_modcod._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_activate_s2_modcod_single._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_get_optim_carr_loop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @FE_STV0900_S2CarLoop to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @FE_STV0900_S2LowQPCarLoopCut30 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @FE_STV0900_S2APSKCarLoopCut30 to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @FE_STV0900_S2CarLoopCut20 to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @FE_STV0900_S2LowQPCarLoopCut20 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @FE_STV0900_S2APSKCarLoopCut20 to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @FE_STV0900_S2CarLoopCut30 to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_get_optim_short_carr_loop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @FE_STV0900_S2ShortCarLoop to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @FE_STV0900_S2ShortCarLoopCut30 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_attach._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_release._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_first_inode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_sleep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_read_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_read_status._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_read_status._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_status._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_get_mclk_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_get_rf_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_get_rf_level._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_rf to i32), i32 4004, i32 5024, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_carr_get_quality._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_s2_cn to i32), i32 4004, i32 5024, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_set_tone._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_search._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_search._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_search._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_set_mis._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_set_mis._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_set_mis._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_init_internal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_init_internal._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_init_internal._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @STV0900_InitVal to i32), i32 724, i32 896, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @STV0900_Cut20_AddOnVal to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_st_dvbs2_single._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_set_ts_parallel_serial._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_set_ts_parallel_serial._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_set_ts_parallel_serial._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_set_mclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ge2comp(i32 noundef %a, i32 noundef %width) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %width)
  %cmp = icmp eq i32 %width, 32
  br i1 %cmp, label %entry.return_crit_edge, label %if.else

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add i32 %width, -1
  %shl = shl nuw nsw i32 1, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %a)
  %cmp1.not = icmp sgt i32 %shl, %a
  %shl2.neg = shl nsw i32 -1, %width
  %sub3 = select i1 %cmp1.not, i32 0, i32 %shl2.neg
  %cond = add i32 %sub3, %a
  br label %return

return:                                           ; preds = %if.else, %entry.return_crit_edge
  %retval.0 = phi i32 [ %cond, %if.else ], [ %a, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stv0900_write_reg(ptr nocapture noundef readonly %intp, i16 noundef zeroext %reg_addr, i8 noundef zeroext %reg_data) local_unnamed_addr #1 align 64 {
entry:
  %data = alloca [3 x i8], align 1
  %i2cmsg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data) #8
  %0 = getelementptr inbounds [3 x i8], ptr %data, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %data, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg) #8
  %2 = getelementptr inbounds i8, ptr %i2cmsg, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %i2c_addr = getelementptr inbounds %struct.stv0900_internal, ptr %intp, i32 0, i32 18
  %4 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i2c_addr, align 4
  %conv = zext i8 %5 to i16
  %6 = ptrtoint ptr %i2cmsg to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %i2cmsg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 3, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg, i32 0, i32 3
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %data, ptr %buf, align 4
  %10 = lshr i16 %reg_addr, 8
  %conv2 = trunc i16 %10 to i8
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv2, ptr %data, align 1
  %conv5 = trunc i16 %reg_addr to i8
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv5, ptr %0, align 1
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %reg_data, ptr %1, align 1
  %i2c_adap = getelementptr inbounds %struct.stv0900_internal, ptr %intp, i32 0, i32 17
  %14 = ptrtoint ptr %i2c_adap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c_adap, align 4
  %call = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %i2cmsg, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %entry.if.end14_crit_edge, label %do.body

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

do.body:                                          ; preds = %entry
  %16 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %do.body.if.end14_crit_edge, label %do.end

do.body.if.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call) #11
  br label %if.end14

if.end14:                                         ; preds = %do.end, %do.body.if.end14_crit_edge, %entry.if.end14_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @stv0900_read_reg(ptr nocapture noundef readonly %intp, i16 noundef zeroext %reg) local_unnamed_addr #1 align 64 {
entry:
  %b0 = alloca [2 x i8], align 1
  %buf = alloca i8, align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0) #8
  %0 = getelementptr inbounds [2 x i8], ptr %b0, i32 0, i32 1
  %conv = zext i16 %reg to i32
  %1 = lshr i16 %reg, 8
  %conv1 = trunc i16 %1 to i8
  %2 = ptrtoint ptr %b0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv1, ptr %b0, align 1
  %conv4 = trunc i16 %reg to i8
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv4, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #8
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %buf, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #8
  %5 = getelementptr inbounds i8, ptr %msg, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %i2c_addr = getelementptr inbounds %struct.stv0900_internal, ptr %intp, i32 0, i32 18
  %7 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %i2c_addr, align 4
  %conv6 = zext i8 %8 to i16
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv6, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 2, ptr %len, align 4
  %buf7 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %12 = ptrtoint ptr %buf7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %b0, ptr %buf7, align 4
  %arrayinit.element8 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %13 = ptrtoint ptr %arrayinit.element8 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv6, ptr %arrayinit.element8, align 4
  %flags12 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %14 = ptrtoint ptr %flags12 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %flags12, align 2
  %len13 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %15 = ptrtoint ptr %len13 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %len13, align 4
  %buf14 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %16 = ptrtoint ptr %buf14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf, ptr %buf14, align 4
  %i2c_adap = getelementptr inbounds %struct.stv0900_internal, ptr %intp, i32 0, i32 17
  %17 = ptrtoint ptr %i2c_adap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_adap, align 4
  %call = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %entry.if.end23_crit_edge, label %do.body

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

do.body:                                          ; preds = %entry
  %19 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %do.body.if.end23_crit_edge, label %do.end

do.body.if.end23_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call, i32 noundef %conv) #11
  br label %if.end23

if.end23:                                         ; preds = %do.end, %do.body.if.end23_crit_edge, %entry.if.end23_crit_edge
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %buf, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0) #8
  ret i8 %21
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stv0900_write_bits(ptr nocapture noundef readonly %intp, i32 noundef %label, i8 noundef zeroext %val) local_unnamed_addr #1 align 64 {
entry:
  %data.i = alloca [3 x i8], align 1
  %i2cmsg.i = alloca %struct.i2c_msg, align 4
  %b0.i = alloca [2 x i8], align 1
  %buf.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %label, 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i) #8
  %0 = getelementptr inbounds [2 x i8], ptr %b0.i, i32 0, i32 1
  %1 = lshr i32 %label, 24
  %conv1.i = trunc i32 %1 to i8
  %2 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv1.i, ptr %b0.i, align 1
  %conv4.i = trunc i32 %shr to i8
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv4.i, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i) #8
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %buf.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %i2c_addr.i = getelementptr inbounds %struct.stv0900_internal, ptr %intp, i32 0, i32 18
  %7 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %i2c_addr.i, align 4
  %conv6.i = zext i8 %8 to i16
  %9 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv6.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags.i, align 2
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 2, ptr %5, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %b0.i, ptr %buf7.i, align 4
  %arrayinit.element8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %13 = ptrtoint ptr %arrayinit.element8.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv6.i, ptr %arrayinit.element8.i, align 4
  %flags12.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %14 = ptrtoint ptr %flags12.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %flags12.i, align 2
  %len13.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %15 = ptrtoint ptr %len13.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %len13.i, align 4
  %buf14.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %16 = ptrtoint ptr %buf14.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf.i, ptr %buf14.i, align 4
  %i2c_adap.i = getelementptr inbounds %struct.stv0900_internal, ptr %intp, i32 0, i32 17
  %17 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_adap.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.stv0900_read_reg.exit_crit_edge, label %do.body.i

entry.stv0900_read_reg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_read_reg.exit

do.body.i:                                        ; preds = %entry
  %19 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %do.body.i.stv0900_read_reg.exit_crit_edge, label %do.end.i

do.body.i.stv0900_read_reg.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_read_reg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i, i32 noundef %shr) #11
  br label %stv0900_read_reg.exit

stv0900_read_reg.exit:                            ; preds = %do.end.i, %do.body.i.stv0900_read_reg.exit_crit_edge, %entry.stv0900_read_reg.exit_crit_edge
  %20 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %buf.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i) #8
  %22 = and i32 %label, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i = icmp eq i32 %22, 0
  br i1 %cmp.i, label %while.body.i.1, label %stv0900_read_reg.exit.extract_mask_pos.exit_crit_edge

stv0900_read_reg.exit.extract_mask_pos.exit_crit_edge: ; preds = %stv0900_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %extract_mask_pos.exit

while.body.i.1:                                   ; preds = %stv0900_read_reg.exit
  %23 = and i32 %label, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i.1 = icmp eq i32 %23, 0
  br i1 %cmp.i.1, label %while.body.i.2, label %while.body.i.1.extract_mask_pos.exit_crit_edge

while.body.i.1.extract_mask_pos.exit_crit_edge:   ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %extract_mask_pos.exit

while.body.i.2:                                   ; preds = %while.body.i.1
  %24 = and i32 %label, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i.2 = icmp eq i32 %24, 0
  br i1 %cmp.i.2, label %while.body.i.3, label %while.body.i.2.extract_mask_pos.exit_crit_edge

while.body.i.2.extract_mask_pos.exit_crit_edge:   ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %extract_mask_pos.exit

while.body.i.3:                                   ; preds = %while.body.i.2
  %25 = and i32 %label, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i.3 = icmp eq i32 %25, 0
  br i1 %cmp.i.3, label %while.body.i.4, label %while.body.i.3.extract_mask_pos.exit_crit_edge

while.body.i.3.extract_mask_pos.exit_crit_edge:   ; preds = %while.body.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %extract_mask_pos.exit

while.body.i.4:                                   ; preds = %while.body.i.3
  %26 = and i32 %label, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i.4 = icmp eq i32 %26, 0
  br i1 %cmp.i.4, label %while.body.i.5, label %while.body.i.4.extract_mask_pos.exit_crit_edge

while.body.i.4.extract_mask_pos.exit_crit_edge:   ; preds = %while.body.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %extract_mask_pos.exit

while.body.i.5:                                   ; preds = %while.body.i.4
  %27 = and i32 %label, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i.5 = icmp eq i32 %27, 0
  br i1 %cmp.i.5, label %while.body.i.6, label %while.body.i.5.extract_mask_pos.exit_crit_edge

while.body.i.5.extract_mask_pos.exit_crit_edge:   ; preds = %while.body.i.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %extract_mask_pos.exit

while.body.i.6:                                   ; preds = %while.body.i.5
  call void @__sanitizer_cov_trace_pc() #10
  %28 = and i32 %label, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i.6 = icmp eq i32 %28, 0
  %spec.select = select i1 %cmp.i.6, i32 7, i32 6
  br label %extract_mask_pos.exit

extract_mask_pos.exit:                            ; preds = %while.body.i.6, %while.body.i.5.extract_mask_pos.exit_crit_edge, %while.body.i.4.extract_mask_pos.exit_crit_edge, %while.body.i.3.extract_mask_pos.exit_crit_edge, %while.body.i.2.extract_mask_pos.exit_crit_edge, %while.body.i.1.extract_mask_pos.exit_crit_edge, %stv0900_read_reg.exit.extract_mask_pos.exit_crit_edge
  %indvars.iv.i.lcssa = phi i32 [ 0, %stv0900_read_reg.exit.extract_mask_pos.exit_crit_edge ], [ 1, %while.body.i.1.extract_mask_pos.exit_crit_edge ], [ 2, %while.body.i.2.extract_mask_pos.exit_crit_edge ], [ 3, %while.body.i.3.extract_mask_pos.exit_crit_edge ], [ 4, %while.body.i.4.extract_mask_pos.exit_crit_edge ], [ 5, %while.body.i.5.extract_mask_pos.exit_crit_edge ], [ %spec.select, %while.body.i.6 ]
  %conv.i19 = trunc i32 %label to i8
  %conv2 = zext i8 %val to i32
  %shl = shl nuw nsw i32 %conv2, %indvars.iv.i.lcssa
  %conv532 = and i32 %shl, %label
  %conv5 = trunc i32 %conv532 to i8
  %neg = xor i8 %conv.i19, -1
  %and8 = and i8 %21, %neg
  %or = or i8 %and8, %conv5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #8
  %29 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %30 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i) #8
  %31 = getelementptr inbounds i8, ptr %i2cmsg.i, i32 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 262143, ptr %31, align 4
  %33 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %i2c_addr.i, align 4
  %conv.i22 = zext i8 %34 to i16
  %35 = ptrtoint ptr %i2cmsg.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i22, ptr %i2cmsg.i, align 4
  %flags.i23 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i, i32 0, i32 1
  %36 = ptrtoint ptr %flags.i23 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %flags.i23, align 2
  %buf.i25 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i, i32 0, i32 3
  %37 = ptrtoint ptr %buf.i25 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %data.i, ptr %buf.i25, align 4
  %38 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv1.i, ptr %data.i, align 1
  %39 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv4.i, ptr %29, align 1
  %40 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %or, ptr %30, align 1
  %41 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i2c_adap.i, align 4
  %call.i27 = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %i2cmsg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i27)
  %cmp.not.i28 = icmp eq i32 %call.i27, 1
  br i1 %cmp.not.i28, label %extract_mask_pos.exit.stv0900_write_reg.exit_crit_edge, label %do.body.i30

extract_mask_pos.exit.stv0900_write_reg.exit_crit_edge: ; preds = %extract_mask_pos.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit

do.body.i30:                                      ; preds = %extract_mask_pos.exit
  %43 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i29 = icmp eq i32 %43, 0
  br i1 %tobool.not.i29, label %do.body.i30.stv0900_write_reg.exit_crit_edge, label %do.end.i31

do.body.i30.stv0900_write_reg.exit_crit_edge:     ; preds = %do.body.i30
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit

do.end.i31:                                       ; preds = %do.body.i30
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i27) #11
  br label %stv0900_write_reg.exit

stv0900_write_reg.exit:                           ; preds = %do.end.i31, %do.body.i30.stv0900_write_reg.exit_crit_edge, %extract_mask_pos.exit.stv0900_write_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @stv0900_get_bits(ptr nocapture noundef readonly %intp, i32 noundef %label) local_unnamed_addr #1 align 64 {
entry:
  %b0.i = alloca [2 x i8], align 1
  %buf.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %label, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.i = icmp eq i32 %0, 0
  br i1 %cmp.i, label %while.body.i.1, label %entry.extract_mask_pos.exit_crit_edge

entry.extract_mask_pos.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %extract_mask_pos.exit

while.body.i.1:                                   ; preds = %entry
  %1 = and i32 %label, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.1 = icmp eq i32 %1, 0
  br i1 %cmp.i.1, label %while.body.i.2, label %while.body.i.1.extract_mask_pos.exit_crit_edge

while.body.i.1.extract_mask_pos.exit_crit_edge:   ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %extract_mask_pos.exit

while.body.i.2:                                   ; preds = %while.body.i.1
  %2 = and i32 %label, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i.2 = icmp eq i32 %2, 0
  br i1 %cmp.i.2, label %while.body.i.3, label %while.body.i.2.extract_mask_pos.exit_crit_edge

while.body.i.2.extract_mask_pos.exit_crit_edge:   ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %extract_mask_pos.exit

while.body.i.3:                                   ; preds = %while.body.i.2
  %3 = and i32 %label, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.3 = icmp eq i32 %3, 0
  br i1 %cmp.i.3, label %while.body.i.4, label %while.body.i.3.extract_mask_pos.exit_crit_edge

while.body.i.3.extract_mask_pos.exit_crit_edge:   ; preds = %while.body.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %extract_mask_pos.exit

while.body.i.4:                                   ; preds = %while.body.i.3
  %4 = and i32 %label, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i.4 = icmp eq i32 %4, 0
  br i1 %cmp.i.4, label %while.body.i.5, label %while.body.i.4.extract_mask_pos.exit_crit_edge

while.body.i.4.extract_mask_pos.exit_crit_edge:   ; preds = %while.body.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %extract_mask_pos.exit

while.body.i.5:                                   ; preds = %while.body.i.4
  %5 = and i32 %label, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.5 = icmp eq i32 %5, 0
  br i1 %cmp.i.5, label %while.body.i.6, label %while.body.i.5.extract_mask_pos.exit_crit_edge

while.body.i.5.extract_mask_pos.exit_crit_edge:   ; preds = %while.body.i.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %extract_mask_pos.exit

while.body.i.6:                                   ; preds = %while.body.i.5
  call void @__sanitizer_cov_trace_pc() #10
  %6 = and i32 %label, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.6 = icmp eq i32 %6, 0
  %spec.select = select i1 %cmp.i.6, i8 7, i8 6
  br label %extract_mask_pos.exit

extract_mask_pos.exit:                            ; preds = %while.body.i.6, %while.body.i.5.extract_mask_pos.exit_crit_edge, %while.body.i.4.extract_mask_pos.exit_crit_edge, %while.body.i.3.extract_mask_pos.exit_crit_edge, %while.body.i.2.extract_mask_pos.exit_crit_edge, %while.body.i.1.extract_mask_pos.exit_crit_edge, %entry.extract_mask_pos.exit_crit_edge
  %indvars.iv.i.lcssa = phi i8 [ 0, %entry.extract_mask_pos.exit_crit_edge ], [ 1, %while.body.i.1.extract_mask_pos.exit_crit_edge ], [ 2, %while.body.i.2.extract_mask_pos.exit_crit_edge ], [ 3, %while.body.i.3.extract_mask_pos.exit_crit_edge ], [ 4, %while.body.i.4.extract_mask_pos.exit_crit_edge ], [ 5, %while.body.i.5.extract_mask_pos.exit_crit_edge ], [ %spec.select, %while.body.i.6 ]
  %shr = lshr i32 %label, 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i) #8
  %7 = getelementptr inbounds [2 x i8], ptr %b0.i, i32 0, i32 1
  %8 = lshr i32 %label, 24
  %conv1.i = trunc i32 %8 to i8
  %9 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv1.i, ptr %b0.i, align 1
  %conv4.i = trunc i32 %shr to i8
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv4.i, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i) #8
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %buf.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %12 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %13 = call ptr @memset(ptr %12, i32 255, i32 16)
  %i2c_addr.i = getelementptr inbounds %struct.stv0900_internal, ptr %intp, i32 0, i32 18
  %14 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %i2c_addr.i, align 4
  %conv6.i10 = zext i8 %15 to i16
  %16 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv6.i10, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %flags.i, align 2
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 2, ptr %12, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %19 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %b0.i, ptr %buf7.i, align 4
  %arrayinit.element8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %20 = ptrtoint ptr %arrayinit.element8.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv6.i10, ptr %arrayinit.element8.i, align 4
  %flags12.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %21 = ptrtoint ptr %flags12.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1, ptr %flags12.i, align 2
  %len13.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %22 = ptrtoint ptr %len13.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %len13.i, align 4
  %buf14.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %23 = ptrtoint ptr %buf14.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %buf.i, ptr %buf14.i, align 4
  %i2c_adap.i = getelementptr inbounds %struct.stv0900_internal, ptr %intp, i32 0, i32 17
  %24 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i2c_adap.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %extract_mask_pos.exit.stv0900_read_reg.exit_crit_edge, label %do.body.i

extract_mask_pos.exit.stv0900_read_reg.exit_crit_edge: ; preds = %extract_mask_pos.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_read_reg.exit

do.body.i:                                        ; preds = %extract_mask_pos.exit
  %26 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %do.body.i.stv0900_read_reg.exit_crit_edge, label %do.end.i

do.body.i.stv0900_read_reg.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_read_reg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i, i32 noundef %shr) #11
  br label %stv0900_read_reg.exit

stv0900_read_reg.exit:                            ; preds = %do.end.i, %do.body.i.stv0900_read_reg.exit_crit_edge, %extract_mask_pos.exit.stv0900_read_reg.exit_crit_edge
  %conv.i = trunc i32 %label to i8
  %27 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %buf.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i) #8
  %and8 = and i8 %28, %conv.i
  %shr4 = lshr i8 %and8, %indvars.iv.i.lcssa
  ret i8 %shr4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stv0900_set_tuner(ptr noundef %fe, i32 noundef %frequency, i32 noundef %bandwidth) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %set_frequency = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 16
  %0 = ptrtoint ptr %set_frequency to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_frequency, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end22_crit_edge, label %if.then

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then:                                          ; preds = %entry
  %call = tail call i32 %1(ptr noundef %fe, i32 noundef %frequency) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  %2 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool4.not = icmp eq i32 %2, 0
  br i1 %cmp, label %do.body, label %do.body10

do.body:                                          ; preds = %if.then
  br i1 %tobool4.not, label %do.body.if.end22_crit_edge, label %do.end

do.body.if.end22_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #11
  br label %if.end22

do.body10:                                        ; preds = %if.then
  br i1 %tobool4.not, label %do.body10.if.end22_crit_edge, label %do.end15

do.body10.if.end22_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

do.end15:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, i32 noundef %frequency) #11
  br label %if.end22

if.end22:                                         ; preds = %do.end15, %do.body10.if.end22_crit_edge, %do.end, %do.body.if.end22_crit_edge, %entry.if.end22_crit_edge
  %set_bandwidth = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 17
  %3 = ptrtoint ptr %set_bandwidth to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %set_bandwidth, align 4
  %tobool23.not = icmp eq ptr %4, null
  br i1 %tobool23.not, label %if.end22.if.end53_crit_edge, label %if.then24

if.end22.if.end53_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then24:                                        ; preds = %if.end22
  %call26 = tail call i32 %4(ptr noundef %fe, i32 noundef %bandwidth) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  %5 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool30.not = icmp eq i32 %5, 0
  br i1 %cmp27, label %do.body29, label %do.body41

do.body29:                                        ; preds = %if.then24
  br i1 %tobool30.not, label %do.body29.if.end53_crit_edge, label %do.end34

do.body29.if.end53_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

do.end34:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #11
  br label %if.end53

do.body41:                                        ; preds = %if.then24
  br i1 %tobool30.not, label %do.body41.if.end53_crit_edge, label %do.end46

do.body41.if.end53_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

do.end46:                                         ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #10
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.6, i32 noundef %bandwidth) #11
  br label %if.end53

if.end53:                                         ; preds = %do.end46, %do.body41.if.end53_crit_edge, %do.end34, %do.body29.if.end53_crit_edge, %if.end22.if.end53_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stv0900_set_bandwidth(ptr noundef %fe, i32 noundef %bandwidth) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %set_bandwidth = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 17
  %0 = ptrtoint ptr %set_bandwidth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_bandwidth, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end22_crit_edge, label %if.then

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then:                                          ; preds = %entry
  %call = tail call i32 %1(ptr noundef %fe, i32 noundef %bandwidth) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  %2 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool4.not = icmp eq i32 %2, 0
  br i1 %cmp, label %do.body, label %do.body10

do.body:                                          ; preds = %if.then
  br i1 %tobool4.not, label %do.body.if.end22_crit_edge, label %do.end

do.body.if.end22_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.15) #11
  br label %if.end22

do.body10:                                        ; preds = %if.then
  br i1 %tobool4.not, label %do.body10.if.end22_crit_edge, label %do.end15

do.body10.if.end22_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

do.end15:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.15, i32 noundef %bandwidth) #11
  br label %if.end22

if.end22:                                         ; preds = %do.end15, %do.body10.if.end22_crit_edge, %do.end, %do.body.if.end22_crit_edge, %entry.if.end22_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stv0900_get_freq_auto(ptr nocapture noundef readonly %intp, i32 noundef %demod) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @shiftx(i32 noundef -186056449, i32 noundef %demod, i32 noundef 33554432) #8
  %call1 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %intp, i32 noundef %call)
  %conv = zext i8 %call1 to i32
  %shl = shl nuw nsw i32 %conv, 10
  %call2 = tail call i32 @shiftx(i32 noundef -185990913, i32 noundef %demod, i32 noundef 33554432) #8
  %call3 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %intp, i32 noundef %call2)
  %conv4 = zext i8 %call3 to i32
  %shl5 = shl nuw nsw i32 %conv4, 2
  %add = or i32 %shl5, %shl
  %call6 = tail call i32 @shiftx(i32 noundef -185925440, i32 noundef %demod, i32 noundef 33554432) #8
  %call7 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %intp, i32 noundef %call6)
  %conv8 = zext i8 %call7 to i32
  %add9 = add nuw nsw i32 %add, %conv8
  %mul = mul nuw nsw i32 %add9, 1000
  %div30 = lshr i32 %mul, 6
  %call10 = tail call i32 @shiftx(i32 noundef -185204733, i32 noundef %demod, i32 noundef 33554432) #8
  %call11 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %intp, i32 noundef %call10)
  %0 = lshr i8 %call11, 2
  %1 = zext i8 %0 to i32
  %call13 = tail call i32 @shiftx(i32 noundef -185138945, i32 noundef %demod, i32 noundef 33554432) #8
  %call14 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %intp, i32 noundef %call13)
  %conv15 = zext i8 %call14 to i32
  %add16 = add nuw nsw i32 %conv15, %1
  %mul17 = mul nuw nsw i32 %add16, 1000
  %div1831 = lshr i32 %mul17, 11
  %add19 = add nuw nsw i32 %div1831, %div30
  ret i32 %add19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shiftx(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stv0900_set_tuner_auto(ptr nocapture noundef readonly %intp, i32 noundef %Frequency, i32 noundef %Bandwidth, i32 noundef %demod) local_unnamed_addr #1 align 64 {
entry:
  %data.i = alloca [3 x i8], align 1
  %i2cmsg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %Frequency, 6
  %div = udiv i32 %mul, 1000
  %call = tail call i32 @shiftx(i32 noundef -186056449, i32 noundef %demod, i32 noundef 33554432) #8
  %shr = lshr i32 %div, 10
  %conv = trunc i32 %shr to i8
  tail call void @stv0900_write_bits(ptr noundef %intp, i32 noundef %call, i8 noundef zeroext %conv)
  %call1 = tail call i32 @shiftx(i32 noundef -185990913, i32 noundef %demod, i32 noundef 33554432) #8
  %shr2 = lshr i32 %div, 2
  %conv3 = trunc i32 %shr2 to i8
  tail call void @stv0900_write_bits(ptr noundef %intp, i32 noundef %call1, i8 noundef zeroext %conv3)
  %call4 = tail call i32 @shiftx(i32 noundef -185925440, i32 noundef %demod, i32 noundef 33554432) #8
  %0 = trunc i32 %div to i8
  %conv6 = and i8 %0, 3
  tail call void @stv0900_write_bits(ptr noundef %intp, i32 noundef %call4, i8 noundef zeroext %conv6)
  %call7 = tail call i32 @shiftx(i32 noundef -185925569, i32 noundef %demod, i32 noundef 33554432) #8
  %div8 = udiv i32 %Bandwidth, 2000000
  %conv9 = trunc i32 %div8 to i8
  tail call void @stv0900_write_bits(ptr noundef %intp, i32 noundef %call7, i8 noundef zeroext %conv9)
  %call10 = tail call i32 @shiftx(i32 noundef 62704, i32 noundef %demod, i32 noundef 512) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #8
  %1 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %2 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i) #8
  %3 = getelementptr inbounds i8, ptr %i2cmsg.i, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 262143, ptr %3, align 4
  %i2c_addr.i = getelementptr inbounds %struct.stv0900_internal, ptr %intp, i32 0, i32 18
  %5 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %i2c_addr.i, align 4
  %conv.i = zext i8 %6 to i16
  %7 = ptrtoint ptr %i2cmsg.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv.i, ptr %i2cmsg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i, i32 0, i32 1
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i, i32 0, i32 3
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %data.i, ptr %buf.i, align 4
  %10 = lshr i32 %call10, 8
  %conv2.i = trunc i32 %10 to i8
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv2.i, ptr %data.i, align 1
  %conv5.i = trunc i32 %call10 to i8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv5.i, ptr %1, align 1
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %2, align 1
  %i2c_adap.i = getelementptr inbounds %struct.stv0900_internal, ptr %intp, i32 0, i32 17
  %14 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c_adap.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %i2cmsg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %entry.stv0900_write_reg.exit_crit_edge, label %do.body.i

entry.stv0900_write_reg.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit

do.body.i:                                        ; preds = %entry
  %16 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %do.body.i.stv0900_write_reg.exit_crit_edge, label %do.end.i

do.body.i.stv0900_write_reg.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i) #11
  br label %stv0900_write_reg.exit

stv0900_write_reg.exit:                           ; preds = %do.end.i, %do.body.i.stv0900_write_reg.exit_crit_edge, %entry.stv0900_write_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stv0900_get_demod_lock(ptr nocapture noundef readonly %intp, i32 noundef %demod, i32 noundef %time_out) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %time_out)
  %cmp51 = icmp sgt i32 %time_out, 0
  br i1 %cmp51, label %entry.while.body_crit_edge, label %entry.do.body28_crit_edge

entry.do.body28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body28

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end14.while.body_crit_edge, %entry.while.body_crit_edge
  %timer.052 = phi i32 [ %add, %if.end14.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %call = tail call i32 @shiftx(i32 noundef -199557024, i32 noundef %demod, i32 noundef 33554432) #8
  %call2 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %intp, i32 noundef %call)
  %0 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %while.body.do.end6_crit_edge, label %do.end

while.body.do.end6_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %call2 to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %conv) #11
  br label %do.end6

do.end6:                                          ; preds = %do.end, %while.body.do.end6_crit_edge
  %1 = and i8 %call2, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %switch = icmp eq i8 %1, 2
  br i1 %switch, label %sw.epilog, label %do.end6.if.then13_crit_edge

do.end6.if.then13_crit_edge:                      ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

sw.epilog:                                        ; preds = %do.end6
  %call8 = tail call i32 @shiftx(i32 noundef -200146936, i32 noundef %demod, i32 noundef 33554432) #8
  %call9 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %intp, i32 noundef %call8)
  %conv10 = zext i8 %call9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call9)
  %cmp11 = icmp eq i8 %call9, 0
  br i1 %cmp11, label %sw.epilog.if.then13_crit_edge, label %sw.epilog.if.end14_crit_edge

sw.epilog.if.end14_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

sw.epilog.if.then13_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.then13:                                        ; preds = %sw.epilog.if.then13_crit_edge, %do.end6.if.then13_crit_edge
  tail call void @msleep(i32 noundef 10) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %sw.epilog.if.end14_crit_edge
  %lock.149 = phi i32 [ 0, %if.then13 ], [ %conv10, %sw.epilog.if.end14_crit_edge ]
  %add = add i32 %timer.052, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %time_out)
  %cmp = icmp slt i32 %add, %time_out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lock.149)
  %cmp1 = icmp eq i32 %lock.149, 0
  %or.cond = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %or.cond, label %if.end14.while.body_crit_edge, label %while.end

if.end14.while.body_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end14
  br i1 %cmp1, label %while.end.do.body28_crit_edge, label %do.body17

while.end.do.body28_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body28

do.body17:                                        ; preds = %while.end
  %2 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool18.not = icmp eq i32 %2, 0
  br i1 %tobool18.not, label %do.body17.if.end39_crit_edge, label %do.body17.if.end39.sink.split_crit_edge

do.body17.if.end39.sink.split_crit_edge:          ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39.sink.split

do.body17.if.end39_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

do.body28:                                        ; preds = %while.end.do.body28_crit_edge, %entry.do.body28_crit_edge
  %3 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool29.not = icmp eq i32 %3, 0
  br i1 %tobool29.not, label %do.body28.if.end39_crit_edge, label %do.body28.if.end39.sink.split_crit_edge

do.body28.if.end39.sink.split_crit_edge:          ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39.sink.split

do.body28.if.end39_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.end39.sink.split:                              ; preds = %do.body28.if.end39.sink.split_crit_edge, %do.body17.if.end39.sink.split_crit_edge
  %.str.24.sink = phi ptr [ @.str.21, %do.body17.if.end39.sink.split_crit_edge ], [ @.str.24, %do.body28.if.end39.sink.split_crit_edge ]
  %lock.0.lcssa57.ph = phi i32 [ %lock.149, %do.body17.if.end39.sink.split_crit_edge ], [ 0, %do.body28.if.end39.sink.split_crit_edge ]
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.24.sink) #11
  br label %if.end39

if.end39:                                         ; preds = %if.end39.sink.split, %do.body28.if.end39_crit_edge, %do.body17.if.end39_crit_edge
  %lock.0.lcssa57 = phi i32 [ 0, %do.body28.if.end39_crit_edge ], [ %lock.149, %do.body17.if.end39_crit_edge ], [ %lock.0.lcssa57.ph, %if.end39.sink.split ]
  ret i32 %lock.0.lcssa57
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stv0900_stop_all_s2_modcod(ptr nocapture noundef readonly %intp, i32 noundef %demod) local_unnamed_addr #1 align 64 {
entry:
  %data.i = alloca [3 x i8], align 1
  %i2cmsg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call i32 @shiftx(i32 noundef 62640, i32 noundef %demod, i32 noundef 512) #8
  %1 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %2 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %3 = getelementptr inbounds i8, ptr %i2cmsg.i, i32 4
  %i2c_addr.i = getelementptr inbounds %struct.stv0900_internal, ptr %intp, i32 0, i32 18
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i, i32 0, i32 1
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i, i32 0, i32 3
  %i2c_adap.i = getelementptr inbounds %struct.stv0900_internal, ptr %intp, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %stv0900_write_reg.exit.for.body_crit_edge, %do.end3
  %i.07 = phi i32 [ 0, %do.end3 ], [ %inc, %stv0900_write_reg.exit.for.body_crit_edge ]
  %add = add i32 %i.07, %call4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i) #8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 262143, ptr %3, align 4
  %5 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %i2c_addr.i, align 4
  %conv.i = zext i8 %6 to i16
  %7 = ptrtoint ptr %i2cmsg.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv.i, ptr %i2cmsg.i, align 4
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags.i, align 2
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %data.i, ptr %buf.i, align 4
  %10 = lshr i32 %add, 8
  %conv2.i = trunc i32 %10 to i8
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv2.i, ptr %data.i, align 1
  %conv5.i = trunc i32 %add to i8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv5.i, ptr %1, align 1
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %2, align 1
  %14 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c_adap.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %i2cmsg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %for.body.stv0900_write_reg.exit_crit_edge, label %do.body.i

for.body.stv0900_write_reg.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit

do.body.i:                                        ; preds = %for.body
  %16 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %do.body.i.stv0900_write_reg.exit_crit_edge, label %do.end.i

do.body.i.stv0900_write_reg.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i) #11
  br label %stv0900_write_reg.exit

stv0900_write_reg.exit:                           ; preds = %do.end.i, %do.body.i.stv0900_write_reg.exit_crit_edge, %for.body.stv0900_write_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %stv0900_write_reg.exit.for.body_crit_edge

stv0900_write_reg.exit.for.body_crit_edge:        ; preds = %stv0900_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %stv0900_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stv0900_activate_s2_modcod(ptr nocapture noundef readonly %intp, i32 noundef %demod) local_unnamed_addr #1 align 64 {
entry:
  %data.i174 = alloca [3 x i8], align 1
  %i2cmsg.i175 = alloca %struct.i2c_msg, align 4
  %data.i157 = alloca [3 x i8], align 1
  %i2cmsg.i158 = alloca %struct.i2c_msg, align 4
  %data.i140 = alloca [3 x i8], align 1
  %i2cmsg.i141 = alloca %struct.i2c_msg, align 4
  %data.i123 = alloca [3 x i8], align 1
  %i2cmsg.i124 = alloca %struct.i2c_msg, align 4
  %data.i106 = alloca [3 x i8], align 1
  %i2cmsg.i107 = alloca %struct.i2c_msg, align 4
  %data.i = alloca [3 x i8], align 1
  %i2cmsg.i = alloca %struct.i2c_msg, align 4
  %b0.i = alloca [2 x i8], align 1
  %buf.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.28) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %chip_id = getelementptr inbounds %struct.stv0900_internal, ptr %intp, i32 0, i32 20
  %1 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %chip_id, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %2)
  %cmp = icmp ult i8 %2, 18
  br i1 %cmp, label %if.then5, label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.end3
  %3 = getelementptr inbounds [3 x i8], ptr %data.i123, i32 0, i32 1
  %4 = getelementptr inbounds [3 x i8], ptr %data.i123, i32 0, i32 2
  %5 = getelementptr inbounds i8, ptr %i2cmsg.i124, i32 4
  %i2c_addr.i125 = getelementptr inbounds %struct.stv0900_internal, ptr %intp, i32 0, i32 18
  %flags.i127 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i124, i32 0, i32 1
  %buf.i129 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i124, i32 0, i32 3
  %i2c_adap.i132 = getelementptr inbounds %struct.stv0900_internal, ptr %intp, i32 0, i32 17
  br label %for.body

if.then5:                                         ; preds = %do.end3
  tail call void @msleep(i32 noundef 5) #8
  %call6 = tail call i32 @shiftx(i32 noundef 62500, i32 noundef %demod, i32 noundef 512) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i) #8
  %6 = getelementptr inbounds [2 x i8], ptr %b0.i, i32 0, i32 1
  %conv.i = and i32 %call6, 65535
  %7 = lshr i32 %call6, 8
  %conv1.i = trunc i32 %7 to i8
  %8 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv1.i, ptr %b0.i, align 1
  %conv4.i = trunc i32 %call6 to i8
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv4.i, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i) #8
  %10 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %buf.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %11 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %12 = call ptr @memset(ptr %11, i32 255, i32 16)
  %i2c_addr.i = getelementptr inbounds %struct.stv0900_internal, ptr %intp, i32 0, i32 18
  %13 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %i2c_addr.i, align 4
  %conv6.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv6.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags.i, align 2
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 2, ptr %11, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %18 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %b0.i, ptr %buf7.i, align 4
  %arrayinit.element8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %19 = ptrtoint ptr %arrayinit.element8.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv6.i, ptr %arrayinit.element8.i, align 4
  %flags12.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %20 = ptrtoint ptr %flags12.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %flags12.i, align 2
  %len13.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %21 = ptrtoint ptr %len13.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1, ptr %len13.i, align 4
  %buf14.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %22 = ptrtoint ptr %buf14.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %buf.i, ptr %buf14.i, align 4
  %i2c_adap.i = getelementptr inbounds %struct.stv0900_internal, ptr %intp, i32 0, i32 17
  %23 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c_adap.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.then5.stv0900_read_reg.exit_crit_edge, label %do.body.i

if.then5.stv0900_read_reg.exit_crit_edge:         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_read_reg.exit

do.body.i:                                        ; preds = %if.then5
  %25 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %do.body.i.stv0900_read_reg.exit_crit_edge, label %do.end.i

do.body.i.stv0900_read_reg.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_read_reg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i, i32 noundef %conv.i) #11
  br label %stv0900_read_reg.exit

stv0900_read_reg.exit:                            ; preds = %do.end.i, %do.body.i.stv0900_read_reg.exit_crit_edge, %if.then5.stv0900_read_reg.exit_crit_edge
  %26 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %buf.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i) #8
  %conv9 = zext i8 %27 to i32
  %and = and i32 %conv9, 3
  %and10 = lshr i32 %conv9, 2
  %shr = and i32 %and10, 31
  %call11 = call i32 @shiftx(i32 noundef 62655, i32 noundef %demod, i32 noundef 512) #8
  %div93 = lshr i32 %shr, 1
  %sub = sub i32 %call11, %div93
  %28 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %stv0900_read_reg.exit.sw.epilog_crit_edge [
    i32 3, label %stv0900_read_reg.exit.if.end63_crit_edge
    i32 1, label %sw.bb12
    i32 2, label %stv0900_read_reg.exit.if.end63_crit_edge200
  ]

stv0900_read_reg.exit.if.end63_crit_edge200:      ; preds = %stv0900_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

stv0900_read_reg.exit.if.end63_crit_edge:         ; preds = %stv0900_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

stv0900_read_reg.exit.sw.epilog_crit_edge:        ; preds = %stv0900_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb12:                                          ; preds = %stv0900_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %stv0900_read_reg.exit.sw.epilog_crit_edge
  %fmod.0 = phi i8 [ 13, %sw.bb12 ], [ 14, %stv0900_read_reg.exit.sw.epilog_crit_edge ]
  %29 = add nsw i32 %shr, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %29)
  %30 = icmp ult i32 %29, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp25 = icmp ult i32 %and, 2
  %or.cond94 = select i1 %30, i1 %cmp25, i1 false
  br i1 %or.cond94, label %if.then27, label %sw.epilog.if.end63_crit_edge

sw.epilog.if.end63_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then27:                                        ; preds = %sw.epilog
  %31 = and i32 %conv9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp28 = icmp eq i32 %31, 0
  br i1 %cmp28, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.then27
  %conv32 = or i8 %fmod.0, -16
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #8
  %32 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %33 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i) #8
  %34 = getelementptr inbounds i8, ptr %i2cmsg.i, i32 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 262143, ptr %34, align 4
  %36 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %i2c_addr.i, align 4
  %conv.i96 = zext i8 %37 to i16
  %38 = ptrtoint ptr %i2cmsg.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv.i96, ptr %i2cmsg.i, align 4
  %flags.i97 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i, i32 0, i32 1
  %39 = ptrtoint ptr %flags.i97 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %flags.i97, align 2
  %buf.i99 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i, i32 0, i32 3
  %40 = ptrtoint ptr %buf.i99 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %data.i, ptr %buf.i99, align 4
  %41 = lshr i32 %sub, 8
  %conv2.i = trunc i32 %41 to i8
  %42 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv2.i, ptr %data.i, align 1
  %conv5.i = trunc i32 %sub to i8
  %43 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv5.i, ptr %32, align 1
  %44 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv32, ptr %33, align 1
  %45 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i2c_adap.i, align 4
  %call.i101 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %i2cmsg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i101)
  %cmp.not.i102 = icmp eq i32 %call.i101, 1
  br i1 %cmp.not.i102, label %if.then30.stv0900_write_reg.exit_crit_edge, label %do.body.i104

if.then30.stv0900_write_reg.exit_crit_edge:       ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit

do.body.i104:                                     ; preds = %if.then30
  %47 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i103 = icmp eq i32 %47, 0
  br i1 %tobool.not.i103, label %do.body.i104.stv0900_write_reg.exit_crit_edge, label %do.end.i105

do.body.i104.stv0900_write_reg.exit_crit_edge:    ; preds = %do.body.i104
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit

do.end.i105:                                      ; preds = %do.body.i104
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i101) #11
  br label %stv0900_write_reg.exit

stv0900_write_reg.exit:                           ; preds = %do.end.i105, %do.body.i104.stv0900_write_reg.exit_crit_edge, %if.then30.stv0900_write_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  br label %if.end63

if.else:                                          ; preds = %if.then27
  %48 = shl nuw i8 %fmod.0, 4
  %conv35 = or i8 %48, 15
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i106) #8
  %49 = getelementptr inbounds [3 x i8], ptr %data.i106, i32 0, i32 1
  %50 = getelementptr inbounds [3 x i8], ptr %data.i106, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i107) #8
  %51 = getelementptr inbounds i8, ptr %i2cmsg.i107, i32 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 262143, ptr %51, align 4
  %53 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %i2c_addr.i, align 4
  %conv.i109 = zext i8 %54 to i16
  %55 = ptrtoint ptr %i2cmsg.i107 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv.i109, ptr %i2cmsg.i107, align 4
  %flags.i110 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i107, i32 0, i32 1
  %56 = ptrtoint ptr %flags.i110 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 0, ptr %flags.i110, align 2
  %buf.i112 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i107, i32 0, i32 3
  %57 = ptrtoint ptr %buf.i112 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %data.i106, ptr %buf.i112, align 4
  %58 = lshr i32 %sub, 8
  %conv2.i113 = trunc i32 %58 to i8
  %59 = ptrtoint ptr %data.i106 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv2.i113, ptr %data.i106, align 1
  %conv5.i114 = trunc i32 %sub to i8
  %60 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv5.i114, ptr %49, align 1
  %61 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv35, ptr %50, align 1
  %62 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %i2c_adap.i, align 4
  %call.i116 = call i32 @i2c_transfer(ptr noundef %63, ptr noundef nonnull %i2cmsg.i107, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i116)
  %cmp.not.i117 = icmp eq i32 %call.i116, 1
  br i1 %cmp.not.i117, label %if.else.stv0900_write_reg.exit122_crit_edge, label %do.body.i119

if.else.stv0900_write_reg.exit122_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit122

do.body.i119:                                     ; preds = %if.else
  %64 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i118 = icmp eq i32 %64, 0
  br i1 %tobool.not.i118, label %do.body.i119.stv0900_write_reg.exit122_crit_edge, label %do.end.i121

do.body.i119.stv0900_write_reg.exit122_crit_edge: ; preds = %do.body.i119
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit122

do.end.i121:                                      ; preds = %do.body.i119
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i116) #11
  br label %stv0900_write_reg.exit122

stv0900_write_reg.exit122:                        ; preds = %do.end.i121, %do.body.i119.stv0900_write_reg.exit122_crit_edge, %if.else.stv0900_write_reg.exit122_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i107) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i106) #8
  br label %if.end63

for.body:                                         ; preds = %stv0900_write_reg.exit139.for.body_crit_edge, %for.cond.preheader
  %reg_index.0197 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %stv0900_write_reg.exit139.for.body_crit_edge ]
  %call46 = call i32 @shiftx(i32 noundef 62640, i32 noundef %demod, i32 noundef 512) #8
  %add = add i32 %call46, %reg_index.0197
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i123) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i124) #8
  %65 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 262143, ptr %5, align 4
  %66 = ptrtoint ptr %i2c_addr.i125 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %i2c_addr.i125, align 4
  %conv.i126 = zext i8 %67 to i16
  %68 = ptrtoint ptr %i2cmsg.i124 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv.i126, ptr %i2cmsg.i124, align 4
  %69 = ptrtoint ptr %flags.i127 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 0, ptr %flags.i127, align 2
  %70 = ptrtoint ptr %buf.i129 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %data.i123, ptr %buf.i129, align 4
  %71 = lshr i32 %add, 8
  %conv2.i130 = trunc i32 %71 to i8
  %72 = ptrtoint ptr %data.i123 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv2.i130, ptr %data.i123, align 1
  %conv5.i131 = trunc i32 %add to i8
  %73 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv5.i131, ptr %3, align 1
  %74 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 -1, ptr %4, align 1
  %75 = ptrtoint ptr %i2c_adap.i132 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %i2c_adap.i132, align 4
  %call.i133 = call i32 @i2c_transfer(ptr noundef %76, ptr noundef nonnull %i2cmsg.i124, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i133)
  %cmp.not.i134 = icmp eq i32 %call.i133, 1
  br i1 %cmp.not.i134, label %for.body.stv0900_write_reg.exit139_crit_edge, label %do.body.i136

for.body.stv0900_write_reg.exit139_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit139

do.body.i136:                                     ; preds = %for.body
  %77 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.not.i135 = icmp eq i32 %77, 0
  br i1 %tobool.not.i135, label %do.body.i136.stv0900_write_reg.exit139_crit_edge, label %do.end.i138

do.body.i136.stv0900_write_reg.exit139_crit_edge: ; preds = %do.body.i136
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit139

do.end.i138:                                      ; preds = %do.body.i136
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i133) #11
  br label %stv0900_write_reg.exit139

stv0900_write_reg.exit139:                        ; preds = %do.end.i138, %do.body.i136.stv0900_write_reg.exit139_crit_edge, %for.body.stv0900_write_reg.exit139_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i124) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i123) #8
  %inc = add nuw nsw i32 %reg_index.0197, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.end, label %stv0900_write_reg.exit139.for.body_crit_edge

stv0900_write_reg.exit139.for.body_crit_edge:     ; preds = %stv0900_write_reg.exit139
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %stv0900_write_reg.exit139
  %call48 = call i32 @shiftx(i32 noundef 62654, i32 noundef %demod, i32 noundef 512) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i140) #8
  %78 = getelementptr inbounds [3 x i8], ptr %data.i140, i32 0, i32 1
  %79 = getelementptr inbounds [3 x i8], ptr %data.i140, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i141) #8
  %80 = getelementptr inbounds i8, ptr %i2cmsg.i141, i32 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 262143, ptr %80, align 4
  %82 = ptrtoint ptr %i2c_addr.i125 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %i2c_addr.i125, align 4
  %conv.i143 = zext i8 %83 to i16
  %84 = ptrtoint ptr %i2cmsg.i141 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv.i143, ptr %i2cmsg.i141, align 4
  %flags.i144 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i141, i32 0, i32 1
  %85 = ptrtoint ptr %flags.i144 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 0, ptr %flags.i144, align 2
  %buf.i146 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i141, i32 0, i32 3
  %86 = ptrtoint ptr %buf.i146 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %data.i140, ptr %buf.i146, align 4
  %87 = lshr i32 %call48, 8
  %conv2.i147 = trunc i32 %87 to i8
  %88 = ptrtoint ptr %data.i140 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv2.i147, ptr %data.i140, align 1
  %conv5.i148 = trunc i32 %call48 to i8
  %89 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv5.i148, ptr %78, align 1
  %90 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 -1, ptr %79, align 1
  %91 = ptrtoint ptr %i2c_adap.i132 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %i2c_adap.i132, align 4
  %call.i150 = call i32 @i2c_transfer(ptr noundef %92, ptr noundef nonnull %i2cmsg.i141, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i150)
  %cmp.not.i151 = icmp eq i32 %call.i150, 1
  br i1 %cmp.not.i151, label %for.end.stv0900_write_reg.exit156_crit_edge, label %do.body.i153

for.end.stv0900_write_reg.exit156_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit156

do.body.i153:                                     ; preds = %for.end
  %93 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool.not.i152 = icmp eq i32 %93, 0
  br i1 %tobool.not.i152, label %do.body.i153.stv0900_write_reg.exit156_crit_edge, label %do.end.i155

do.body.i153.stv0900_write_reg.exit156_crit_edge: ; preds = %do.body.i153
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit156

do.end.i155:                                      ; preds = %do.body.i153
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i154 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i150) #11
  br label %stv0900_write_reg.exit156

stv0900_write_reg.exit156:                        ; preds = %do.end.i155, %do.body.i153.stv0900_write_reg.exit156_crit_edge, %for.end.stv0900_write_reg.exit156_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i141) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i140) #8
  %call50 = call i32 @shiftx(i32 noundef 62655, i32 noundef %demod, i32 noundef 512) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i157) #8
  %94 = getelementptr inbounds [3 x i8], ptr %data.i157, i32 0, i32 1
  %95 = getelementptr inbounds [3 x i8], ptr %data.i157, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i158) #8
  %96 = getelementptr inbounds i8, ptr %i2cmsg.i158, i32 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 262143, ptr %96, align 4
  %98 = ptrtoint ptr %i2c_addr.i125 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %i2c_addr.i125, align 4
  %conv.i160 = zext i8 %99 to i16
  %100 = ptrtoint ptr %i2cmsg.i158 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %conv.i160, ptr %i2cmsg.i158, align 4
  %flags.i161 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i158, i32 0, i32 1
  %101 = ptrtoint ptr %flags.i161 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 0, ptr %flags.i161, align 2
  %buf.i163 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i158, i32 0, i32 3
  %102 = ptrtoint ptr %buf.i163 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %data.i157, ptr %buf.i163, align 4
  %103 = lshr i32 %call50, 8
  %conv2.i164 = trunc i32 %103 to i8
  %104 = ptrtoint ptr %data.i157 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv2.i164, ptr %data.i157, align 1
  %conv5.i165 = trunc i32 %call50 to i8
  %105 = ptrtoint ptr %94 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv5.i165, ptr %94, align 1
  %106 = ptrtoint ptr %95 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 -49, ptr %95, align 1
  %107 = ptrtoint ptr %i2c_adap.i132 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %i2c_adap.i132, align 4
  %call.i167 = call i32 @i2c_transfer(ptr noundef %108, ptr noundef nonnull %i2cmsg.i158, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i167)
  %cmp.not.i168 = icmp eq i32 %call.i167, 1
  br i1 %cmp.not.i168, label %stv0900_write_reg.exit156.stv0900_write_reg.exit173_crit_edge, label %do.body.i170

stv0900_write_reg.exit156.stv0900_write_reg.exit173_crit_edge: ; preds = %stv0900_write_reg.exit156
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit173

do.body.i170:                                     ; preds = %stv0900_write_reg.exit156
  %109 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool.not.i169 = icmp eq i32 %109, 0
  br i1 %tobool.not.i169, label %do.body.i170.stv0900_write_reg.exit173_crit_edge, label %do.end.i172

do.body.i170.stv0900_write_reg.exit173_crit_edge: ; preds = %do.body.i170
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit173

do.end.i172:                                      ; preds = %do.body.i170
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i171 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i167) #11
  br label %stv0900_write_reg.exit173

stv0900_write_reg.exit173:                        ; preds = %do.end.i172, %do.body.i170.stv0900_write_reg.exit173_crit_edge, %stv0900_write_reg.exit156.stv0900_write_reg.exit173_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i158) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i157) #8
  %110 = getelementptr inbounds [3 x i8], ptr %data.i174, i32 0, i32 1
  %111 = getelementptr inbounds [3 x i8], ptr %data.i174, i32 0, i32 2
  %112 = getelementptr inbounds i8, ptr %i2cmsg.i175, i32 4
  %flags.i178 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i175, i32 0, i32 1
  %buf.i180 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i175, i32 0, i32 3
  br label %for.body55

for.body55:                                       ; preds = %stv0900_write_reg.exit190.for.body55_crit_edge, %stv0900_write_reg.exit173
  %reg_index.1198 = phi i32 [ 0, %stv0900_write_reg.exit173 ], [ %inc60, %stv0900_write_reg.exit190.for.body55_crit_edge ]
  %call56 = call i32 @shiftx(i32 noundef 62647, i32 noundef %demod, i32 noundef 512) #8
  %add57 = add i32 %call56, %reg_index.1198
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i174) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i175) #8
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 262143, ptr %112, align 4
  %114 = ptrtoint ptr %i2c_addr.i125 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %i2c_addr.i125, align 4
  %conv.i177 = zext i8 %115 to i16
  %116 = ptrtoint ptr %i2cmsg.i175 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %conv.i177, ptr %i2cmsg.i175, align 4
  %117 = ptrtoint ptr %flags.i178 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 0, ptr %flags.i178, align 2
  %118 = ptrtoint ptr %buf.i180 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %data.i174, ptr %buf.i180, align 4
  %119 = lshr i32 %add57, 8
  %conv2.i181 = trunc i32 %119 to i8
  %120 = ptrtoint ptr %data.i174 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv2.i181, ptr %data.i174, align 1
  %conv5.i182 = trunc i32 %add57 to i8
  %121 = ptrtoint ptr %110 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv5.i182, ptr %110, align 1
  %122 = ptrtoint ptr %111 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 -52, ptr %111, align 1
  %123 = ptrtoint ptr %i2c_adap.i132 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %i2c_adap.i132, align 4
  %call.i184 = call i32 @i2c_transfer(ptr noundef %124, ptr noundef nonnull %i2cmsg.i175, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i184)
  %cmp.not.i185 = icmp eq i32 %call.i184, 1
  br i1 %cmp.not.i185, label %for.body55.stv0900_write_reg.exit190_crit_edge, label %do.body.i187

for.body55.stv0900_write_reg.exit190_crit_edge:   ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit190

do.body.i187:                                     ; preds = %for.body55
  %125 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool.not.i186 = icmp eq i32 %125, 0
  br i1 %tobool.not.i186, label %do.body.i187.stv0900_write_reg.exit190_crit_edge, label %do.end.i189

do.body.i187.stv0900_write_reg.exit190_crit_edge: ; preds = %do.body.i187
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit190

do.end.i189:                                      ; preds = %do.body.i187
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i188 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i184) #11
  br label %stv0900_write_reg.exit190

stv0900_write_reg.exit190:                        ; preds = %do.end.i189, %do.body.i187.stv0900_write_reg.exit190_crit_edge, %for.body55.stv0900_write_reg.exit190_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i175) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i174) #8
  %inc60 = add nuw nsw i32 %reg_index.1198, 1
  %exitcond199.not = icmp eq i32 %inc60, 8
  br i1 %exitcond199.not, label %stv0900_write_reg.exit190.if.end63_crit_edge, label %stv0900_write_reg.exit190.for.body55_crit_edge

stv0900_write_reg.exit190.for.body55_crit_edge:   ; preds = %stv0900_write_reg.exit190
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body55

stv0900_write_reg.exit190.if.end63_crit_edge:     ; preds = %stv0900_write_reg.exit190
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.end63:                                         ; preds = %stv0900_write_reg.exit190.if.end63_crit_edge, %stv0900_write_reg.exit122, %stv0900_write_reg.exit, %sw.epilog.if.end63_crit_edge, %stv0900_read_reg.exit.if.end63_crit_edge, %stv0900_read_reg.exit.if.end63_crit_edge200
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stv0900_activate_s2_modcod_single(ptr nocapture noundef readonly %intp, i32 noundef %demod) local_unnamed_addr #1 align 64 {
entry:
  %data.i54 = alloca [3 x i8], align 1
  %i2cmsg.i55 = alloca %struct.i2c_msg, align 4
  %data.i37 = alloca [3 x i8], align 1
  %i2cmsg.i38 = alloca %struct.i2c_msg, align 4
  %data.i20 = alloca [3 x i8], align 1
  %i2cmsg.i21 = alloca %struct.i2c_msg, align 4
  %data.i = alloca [3 x i8], align 1
  %i2cmsg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.29) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call i32 @shiftx(i32 noundef 62640, i32 noundef %demod, i32 noundef 512) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #8
  %1 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %2 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i) #8
  %3 = getelementptr inbounds i8, ptr %i2cmsg.i, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 262143, ptr %3, align 4
  %i2c_addr.i = getelementptr inbounds %struct.stv0900_internal, ptr %intp, i32 0, i32 18
  %5 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %i2c_addr.i, align 4
  %conv.i = zext i8 %6 to i16
  %7 = ptrtoint ptr %i2cmsg.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv.i, ptr %i2cmsg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i, i32 0, i32 1
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i, i32 0, i32 3
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %data.i, ptr %buf.i, align 4
  %10 = lshr i32 %call4, 8
  %conv2.i = trunc i32 %10 to i8
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv2.i, ptr %data.i, align 1
  %conv5.i = trunc i32 %call4 to i8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv5.i, ptr %1, align 1
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %2, align 1
  %i2c_adap.i = getelementptr inbounds %struct.stv0900_internal, ptr %intp, i32 0, i32 17
  %14 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c_adap.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %i2cmsg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %do.end3.stv0900_write_reg.exit_crit_edge, label %do.body.i

do.end3.stv0900_write_reg.exit_crit_edge:         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit

do.body.i:                                        ; preds = %do.end3
  %16 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %do.body.i.stv0900_write_reg.exit_crit_edge, label %do.end.i

do.body.i.stv0900_write_reg.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i) #11
  br label %stv0900_write_reg.exit

stv0900_write_reg.exit:                           ; preds = %do.end.i, %do.body.i.stv0900_write_reg.exit_crit_edge, %do.end3.stv0900_write_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  %call5 = call i32 @shiftx(i32 noundef 62641, i32 noundef %demod, i32 noundef 512) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i20) #8
  %17 = getelementptr inbounds [3 x i8], ptr %data.i20, i32 0, i32 1
  %18 = getelementptr inbounds [3 x i8], ptr %data.i20, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i21) #8
  %19 = getelementptr inbounds i8, ptr %i2cmsg.i21, i32 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 262143, ptr %19, align 4
  %21 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %i2c_addr.i, align 4
  %conv.i23 = zext i8 %22 to i16
  %23 = ptrtoint ptr %i2cmsg.i21 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv.i23, ptr %i2cmsg.i21, align 4
  %flags.i24 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i21, i32 0, i32 1
  %24 = ptrtoint ptr %flags.i24 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %flags.i24, align 2
  %buf.i26 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i21, i32 0, i32 3
  %25 = ptrtoint ptr %buf.i26 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %data.i20, ptr %buf.i26, align 4
  %26 = lshr i32 %call5, 8
  %conv2.i27 = trunc i32 %26 to i8
  %27 = ptrtoint ptr %data.i20 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv2.i27, ptr %data.i20, align 1
  %conv5.i28 = trunc i32 %call5 to i8
  %28 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv5.i28, ptr %17, align 1
  %29 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -16, ptr %18, align 1
  %30 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i2c_adap.i, align 4
  %call.i30 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %i2cmsg.i21, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i30)
  %cmp.not.i31 = icmp eq i32 %call.i30, 1
  br i1 %cmp.not.i31, label %stv0900_write_reg.exit.stv0900_write_reg.exit36_crit_edge, label %do.body.i33

stv0900_write_reg.exit.stv0900_write_reg.exit36_crit_edge: ; preds = %stv0900_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit36

do.body.i33:                                      ; preds = %stv0900_write_reg.exit
  %32 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i32 = icmp eq i32 %32, 0
  br i1 %tobool.not.i32, label %do.body.i33.stv0900_write_reg.exit36_crit_edge, label %do.end.i35

do.body.i33.stv0900_write_reg.exit36_crit_edge:   ; preds = %do.body.i33
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit36

do.end.i35:                                       ; preds = %do.body.i33
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i30) #11
  br label %stv0900_write_reg.exit36

stv0900_write_reg.exit36:                         ; preds = %do.end.i35, %do.body.i33.stv0900_write_reg.exit36_crit_edge, %stv0900_write_reg.exit.stv0900_write_reg.exit36_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i21) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i20) #8
  %call7 = call i32 @shiftx(i32 noundef 62655, i32 noundef %demod, i32 noundef 512) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i37) #8
  %33 = getelementptr inbounds [3 x i8], ptr %data.i37, i32 0, i32 1
  %34 = getelementptr inbounds [3 x i8], ptr %data.i37, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i38) #8
  %35 = getelementptr inbounds i8, ptr %i2cmsg.i38, i32 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 262143, ptr %35, align 4
  %37 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %i2c_addr.i, align 4
  %conv.i40 = zext i8 %38 to i16
  %39 = ptrtoint ptr %i2cmsg.i38 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv.i40, ptr %i2cmsg.i38, align 4
  %flags.i41 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i38, i32 0, i32 1
  %40 = ptrtoint ptr %flags.i41 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %flags.i41, align 2
  %buf.i43 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i38, i32 0, i32 3
  %41 = ptrtoint ptr %buf.i43 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %data.i37, ptr %buf.i43, align 4
  %42 = lshr i32 %call7, 8
  %conv2.i44 = trunc i32 %42 to i8
  %43 = ptrtoint ptr %data.i37 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv2.i44, ptr %data.i37, align 1
  %conv5.i45 = trunc i32 %call7 to i8
  %44 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv5.i45, ptr %33, align 1
  %45 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 15, ptr %34, align 1
  %46 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %i2c_adap.i, align 4
  %call.i47 = call i32 @i2c_transfer(ptr noundef %47, ptr noundef nonnull %i2cmsg.i38, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i47)
  %cmp.not.i48 = icmp eq i32 %call.i47, 1
  br i1 %cmp.not.i48, label %stv0900_write_reg.exit36.stv0900_write_reg.exit53_crit_edge, label %do.body.i50

stv0900_write_reg.exit36.stv0900_write_reg.exit53_crit_edge: ; preds = %stv0900_write_reg.exit36
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit53

do.body.i50:                                      ; preds = %stv0900_write_reg.exit36
  %48 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i49 = icmp eq i32 %48, 0
  br i1 %tobool.not.i49, label %do.body.i50.stv0900_write_reg.exit53_crit_edge, label %do.end.i52

do.body.i50.stv0900_write_reg.exit53_crit_edge:   ; preds = %do.body.i50
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit53

do.end.i52:                                       ; preds = %do.body.i50
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i47) #11
  br label %stv0900_write_reg.exit53

stv0900_write_reg.exit53:                         ; preds = %do.end.i52, %do.body.i50.stv0900_write_reg.exit53_crit_edge, %stv0900_write_reg.exit36.stv0900_write_reg.exit53_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i38) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i37) #8
  %49 = getelementptr inbounds [3 x i8], ptr %data.i54, i32 0, i32 1
  %50 = getelementptr inbounds [3 x i8], ptr %data.i54, i32 0, i32 2
  %51 = getelementptr inbounds i8, ptr %i2cmsg.i55, i32 4
  %flags.i58 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i55, i32 0, i32 1
  %buf.i60 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i55, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %stv0900_write_reg.exit70.for.body_crit_edge, %stv0900_write_reg.exit53
  %reg_index.071 = phi i32 [ 0, %stv0900_write_reg.exit53 ], [ %inc, %stv0900_write_reg.exit70.for.body_crit_edge ]
  %call10 = call i32 @shiftx(i32 noundef 62642, i32 noundef %demod, i32 noundef 512) #8
  %add = add i32 %call10, %reg_index.071
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i54) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i55) #8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 262143, ptr %51, align 4
  %53 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %i2c_addr.i, align 4
  %conv.i57 = zext i8 %54 to i16
  %55 = ptrtoint ptr %i2cmsg.i55 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv.i57, ptr %i2cmsg.i55, align 4
  %56 = ptrtoint ptr %flags.i58 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 0, ptr %flags.i58, align 2
  %57 = ptrtoint ptr %buf.i60 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %data.i54, ptr %buf.i60, align 4
  %58 = lshr i32 %add, 8
  %conv2.i61 = trunc i32 %58 to i8
  %59 = ptrtoint ptr %data.i54 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv2.i61, ptr %data.i54, align 1
  %conv5.i62 = trunc i32 %add to i8
  %60 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv5.i62, ptr %49, align 1
  %61 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %50, align 1
  %62 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %i2c_adap.i, align 4
  %call.i64 = call i32 @i2c_transfer(ptr noundef %63, ptr noundef nonnull %i2cmsg.i55, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i64)
  %cmp.not.i65 = icmp eq i32 %call.i64, 1
  br i1 %cmp.not.i65, label %for.body.stv0900_write_reg.exit70_crit_edge, label %do.body.i67

for.body.stv0900_write_reg.exit70_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit70

do.body.i67:                                      ; preds = %for.body
  %64 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i66 = icmp eq i32 %64, 0
  br i1 %tobool.not.i66, label %do.body.i67.stv0900_write_reg.exit70_crit_edge, label %do.end.i69

do.body.i67.stv0900_write_reg.exit70_crit_edge:   ; preds = %do.body.i67
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit70

do.end.i69:                                       ; preds = %do.body.i67
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i64) #11
  br label %stv0900_write_reg.exit70

stv0900_write_reg.exit70:                         ; preds = %do.end.i69, %do.body.i67.stv0900_write_reg.exit70_crit_edge, %for.body.stv0900_write_reg.exit70_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i55) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i54) #8
  %inc = add nuw nsw i32 %reg_index.071, 1
  %exitcond.not = icmp eq i32 %inc, 13
  br i1 %exitcond.not, label %for.end, label %stv0900_write_reg.exit70.for.body_crit_edge

stv0900_write_reg.exit70.for.body_crit_edge:      ; preds = %stv0900_write_reg.exit70
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %stv0900_write_reg.exit70
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stv0900_start_search(ptr noundef readonly %intp, i32 noundef %demod) local_unnamed_addr #1 align 64 {
entry:
  %data.i906 = alloca [3 x i8], align 1
  %i2cmsg.i907 = alloca %struct.i2c_msg, align 4
  %data.i889 = alloca [3 x i8], align 1
  %i2cmsg.i890 = alloca %struct.i2c_msg, align 4
  %data.i872 = alloca [3 x i8], align 1
  %i2cmsg.i873 = alloca %struct.i2c_msg, align 4
  %data.i855 = alloca [3 x i8], align 1
  %i2cmsg.i856 = alloca %struct.i2c_msg, align 4
  %data.i838 = alloca [3 x i8], align 1
  %i2cmsg.i839 = alloca %struct.i2c_msg, align 4
  %data.i821 = alloca [3 x i8], align 1
  %i2cmsg.i822 = alloca %struct.i2c_msg, align 4
  %data.i804 = alloca [3 x i8], align 1
  %i2cmsg.i805 = alloca %struct.i2c_msg, align 4
  %data.i787 = alloca [3 x i8], align 1
  %i2cmsg.i788 = alloca %struct.i2c_msg, align 4
  %data.i770 = alloca [3 x i8], align 1
  %i2cmsg.i771 = alloca %struct.i2c_msg, align 4
  %data.i753 = alloca [3 x i8], align 1
  %i2cmsg.i754 = alloca %struct.i2c_msg, align 4
  %data.i736 = alloca [3 x i8], align 1
  %i2cmsg.i737 = alloca %struct.i2c_msg, align 4
  %data.i719 = alloca [3 x i8], align 1
  %i2cmsg.i720 = alloca %struct.i2c_msg, align 4
  %data.i702 = alloca [3 x i8], align 1
  %i2cmsg.i703 = alloca %struct.i2c_msg, align 4
  %data.i685 = alloca [3 x i8], align 1
  %i2cmsg.i686 = alloca %struct.i2c_msg, align 4
  %data.i668 = alloca [3 x i8], align 1
  %i2cmsg.i669 = alloca %struct.i2c_msg, align 4
  %data.i651 = alloca [3 x i8], align 1
  %i2cmsg.i652 = alloca %struct.i2c_msg, align 4
  %data.i634 = alloca [3 x i8], align 1
  %i2cmsg.i635 = alloca %struct.i2c_msg, align 4
  %data.i617 = alloca [3 x i8], align 1
  %i2cmsg.i618 = alloca %struct.i2c_msg, align 4
  %data.i600 = alloca [3 x i8], align 1
  %i2cmsg.i601 = alloca %struct.i2c_msg, align 4
  %data.i583 = alloca [3 x i8], align 1
  %i2cmsg.i584 = alloca %struct.i2c_msg, align 4
  %data.i566 = alloca [3 x i8], align 1
  %i2cmsg.i567 = alloca %struct.i2c_msg, align 4
  %data.i549 = alloca [3 x i8], align 1
  %i2cmsg.i550 = alloca %struct.i2c_msg, align 4
  %data.i532 = alloca [3 x i8], align 1
  %i2cmsg.i533 = alloca %struct.i2c_msg, align 4
  %data.i515 = alloca [3 x i8], align 1
  %i2cmsg.i516 = alloca %struct.i2c_msg, align 4
  %data.i498 = alloca [3 x i8], align 1
  %i2cmsg.i499 = alloca %struct.i2c_msg, align 4
  %data.i481 = alloca [3 x i8], align 1
  %i2cmsg.i482 = alloca %struct.i2c_msg, align 4
  %data.i464 = alloca [3 x i8], align 1
  %i2cmsg.i465 = alloca %struct.i2c_msg, align 4
  %data.i447 = alloca [3 x i8], align 1
  %i2cmsg.i448 = alloca %struct.i2c_msg, align 4
  %data.i430 = alloca [3 x i8], align 1
  %i2cmsg.i431 = alloca %struct.i2c_msg, align 4
  %data.i413 = alloca [3 x i8], align 1
  %i2cmsg.i414 = alloca %struct.i2c_msg, align 4
  %data.i396 = alloca [3 x i8], align 1
  %i2cmsg.i397 = alloca %struct.i2c_msg, align 4
  %data.i379 = alloca [3 x i8], align 1
  %i2cmsg.i380 = alloca %struct.i2c_msg, align 4
  %data.i362 = alloca [3 x i8], align 1
  %i2cmsg.i363 = alloca %struct.i2c_msg, align 4
  %data.i345 = alloca [3 x i8], align 1
  %i2cmsg.i346 = alloca %struct.i2c_msg, align 4
  %data.i328 = alloca [3 x i8], align 1
  %i2cmsg.i329 = alloca %struct.i2c_msg, align 4
  %data.i = alloca [3 x i8], align 1
  %i2cmsg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @shiftx(i32 noundef -199884769, i32 noundef %demod, i32 noundef 33554432) #8
  tail call void @stv0900_write_bits(ptr noundef %intp, i32 noundef %call, i8 noundef zeroext 31)
  %chip_id = getelementptr inbounds %struct.stv0900_internal, ptr %intp, i32 0, i32 20
  %0 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %chip_id, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %1)
  %cmp = icmp eq i8 %1, 16
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @shiftx(i32 noundef 62498, i32 noundef %demod, i32 noundef 512) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #8
  %2 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i) #8
  %4 = getelementptr inbounds i8, ptr %i2cmsg.i, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 262143, ptr %4, align 4
  %i2c_addr.i = getelementptr inbounds %struct.stv0900_internal, ptr %intp, i32 0, i32 18
  %6 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %i2c_addr.i, align 4
  %conv.i = zext i8 %7 to i16
  %8 = ptrtoint ptr %i2cmsg.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i, ptr %i2cmsg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i, i32 0, i32 3
  %10 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %data.i, ptr %buf.i, align 4
  %11 = lshr i32 %call2, 8
  %conv2.i = trunc i32 %11 to i8
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv2.i, ptr %data.i, align 1
  %conv5.i = trunc i32 %call2 to i8
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv5.i, ptr %2, align 1
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -86, ptr %3, align 1
  %i2c_adap.i = getelementptr inbounds %struct.stv0900_internal, ptr %intp, i32 0, i32 17
  %15 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c_adap.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %i2cmsg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.then.stv0900_write_reg.exit_crit_edge, label %do.body.i

if.then.stv0900_write_reg.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit

do.body.i:                                        ; preds = %if.then
  %17 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %do.body.i.stv0900_write_reg.exit_crit_edge, label %do.end.i

do.body.i.stv0900_write_reg.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i) #11
  br label %stv0900_write_reg.exit

stv0900_write_reg.exit:                           ; preds = %do.end.i, %do.body.i.stv0900_write_reg.exit_crit_edge, %if.then.stv0900_write_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  %18 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %18)
  %.pr = load i8, ptr %chip_id, align 2
  br label %if.end

if.end:                                           ; preds = %stv0900_write_reg.exit, %entry.if.end_crit_edge
  %19 = phi i8 [ %.pr, %stv0900_write_reg.exit ], [ %1, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %19)
  %cmp6 = icmp ult i8 %19, 32
  br i1 %cmp6, label %if.then8, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then8:                                         ; preds = %if.end
  %call9 = call i32 @shiftx(i32 noundef 62526, i32 noundef %demod, i32 noundef 512) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i328) #8
  %20 = getelementptr inbounds [3 x i8], ptr %data.i328, i32 0, i32 1
  %21 = getelementptr inbounds [3 x i8], ptr %data.i328, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i329) #8
  %22 = getelementptr inbounds i8, ptr %i2cmsg.i329, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 262143, ptr %22, align 4
  %i2c_addr.i330 = getelementptr inbounds %struct.stv0900_internal, ptr %intp, i32 0, i32 18
  %24 = ptrtoint ptr %i2c_addr.i330 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %i2c_addr.i330, align 4
  %conv.i331 = zext i8 %25 to i16
  %26 = ptrtoint ptr %i2cmsg.i329 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i331, ptr %i2cmsg.i329, align 4
  %flags.i332 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i329, i32 0, i32 1
  %27 = ptrtoint ptr %flags.i332 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %flags.i332, align 2
  %buf.i334 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i329, i32 0, i32 3
  %28 = ptrtoint ptr %buf.i334 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %data.i328, ptr %buf.i334, align 4
  %29 = lshr i32 %call9, 8
  %conv2.i335 = trunc i32 %29 to i8
  %30 = ptrtoint ptr %data.i328 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv2.i335, ptr %data.i328, align 1
  %conv5.i336 = trunc i32 %call9 to i8
  %31 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv5.i336, ptr %20, align 1
  %32 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 85, ptr %21, align 1
  %i2c_adap.i337 = getelementptr inbounds %struct.stv0900_internal, ptr %intp, i32 0, i32 17
  %33 = ptrtoint ptr %i2c_adap.i337 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i2c_adap.i337, align 4
  %call.i338 = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %i2cmsg.i329, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i338)
  %cmp.not.i339 = icmp eq i32 %call.i338, 1
  br i1 %cmp.not.i339, label %if.then8.stv0900_write_reg.exit344_crit_edge, label %do.body.i341

if.then8.stv0900_write_reg.exit344_crit_edge:     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit344

do.body.i341:                                     ; preds = %if.then8
  %35 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i340 = icmp eq i32 %35, 0
  br i1 %tobool.not.i340, label %do.body.i341.stv0900_write_reg.exit344_crit_edge, label %do.end.i343

do.body.i341.stv0900_write_reg.exit344_crit_edge: ; preds = %do.body.i341
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit344

do.end.i343:                                      ; preds = %do.body.i341
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i342 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i338) #11
  br label %stv0900_write_reg.exit344

stv0900_write_reg.exit344:                        ; preds = %do.end.i343, %do.body.i341.stv0900_write_reg.exit344_crit_edge, %if.then8.stv0900_write_reg.exit344_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i329) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i328) #8
  br label %if.end11

if.end11:                                         ; preds = %stv0900_write_reg.exit344, %if.end.if.end11_crit_edge
  %36 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %chip_id, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %37)
  %cmp14 = icmp ult i8 %37, 33
  br i1 %cmp14, label %if.then16, label %if.else37

if.then16:                                        ; preds = %if.end11
  %symbol_rate = getelementptr inbounds %struct.stv0900_internal, ptr %intp, i32 0, i32 6
  %38 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %symbol_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000001, i32 %39)
  %cmp17 = icmp slt i32 %39, 5000001
  %call20 = call i32 @shiftx(i32 noundef 62520, i32 noundef %demod, i32 noundef 512) #8
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.then16
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i345) #8
  %40 = getelementptr inbounds [3 x i8], ptr %data.i345, i32 0, i32 1
  %41 = getelementptr inbounds [3 x i8], ptr %data.i345, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i346) #8
  %42 = getelementptr inbounds i8, ptr %i2cmsg.i346, i32 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 262143, ptr %42, align 4
  %i2c_addr.i347 = getelementptr inbounds %struct.stv0900_internal, ptr %intp, i32 0, i32 18
  %44 = ptrtoint ptr %i2c_addr.i347 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %i2c_addr.i347, align 4
  %conv.i348 = zext i8 %45 to i16
  %46 = ptrtoint ptr %i2cmsg.i346 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv.i348, ptr %i2cmsg.i346, align 4
  %flags.i349 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i346, i32 0, i32 1
  %47 = ptrtoint ptr %flags.i349 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %flags.i349, align 2
  %buf.i351 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i346, i32 0, i32 3
  %48 = ptrtoint ptr %buf.i351 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %data.i345, ptr %buf.i351, align 4
  %49 = lshr i32 %call20, 8
  %conv2.i352 = trunc i32 %49 to i8
  %50 = ptrtoint ptr %data.i345 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv2.i352, ptr %data.i345, align 1
  %conv5.i353 = trunc i32 %call20 to i8
  %51 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv5.i353, ptr %40, align 1
  %52 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 68, ptr %41, align 1
  %i2c_adap.i354 = getelementptr inbounds %struct.stv0900_internal, ptr %intp, i32 0, i32 17
  %53 = ptrtoint ptr %i2c_adap.i354 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %i2c_adap.i354, align 4
  %call.i355 = call i32 @i2c_transfer(ptr noundef %54, ptr noundef nonnull %i2cmsg.i346, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i355)
  %cmp.not.i356 = icmp eq i32 %call.i355, 1
  br i1 %cmp.not.i356, label %if.then19.stv0900_write_reg.exit361_crit_edge, label %do.body.i358

if.then19.stv0900_write_reg.exit361_crit_edge:    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit361

do.body.i358:                                     ; preds = %if.then19
  %55 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i357 = icmp eq i32 %55, 0
  br i1 %tobool.not.i357, label %do.body.i358.stv0900_write_reg.exit361_crit_edge, label %do.end.i360

do.body.i358.stv0900_write_reg.exit361_crit_edge: ; preds = %do.body.i358
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit361

do.end.i360:                                      ; preds = %do.body.i358
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i359 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i355) #11
  br label %stv0900_write_reg.exit361

stv0900_write_reg.exit361:                        ; preds = %do.end.i360, %do.body.i358.stv0900_write_reg.exit361_crit_edge, %if.then19.stv0900_write_reg.exit361_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i346) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i345) #8
  %call22 = call i32 @shiftx(i32 noundef 62530, i32 noundef %demod, i32 noundef 512) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i362) #8
  %56 = getelementptr inbounds [3 x i8], ptr %data.i362, i32 0, i32 1
  %57 = getelementptr inbounds [3 x i8], ptr %data.i362, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i363) #8
  %58 = getelementptr inbounds i8, ptr %i2cmsg.i363, i32 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 262143, ptr %58, align 4
  %60 = ptrtoint ptr %i2c_addr.i347 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %i2c_addr.i347, align 4
  %conv.i365 = zext i8 %61 to i16
  %62 = ptrtoint ptr %i2cmsg.i363 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv.i365, ptr %i2cmsg.i363, align 4
  %flags.i366 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i363, i32 0, i32 1
  %63 = ptrtoint ptr %flags.i366 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 0, ptr %flags.i366, align 2
  %buf.i368 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i363, i32 0, i32 3
  %64 = ptrtoint ptr %buf.i368 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %data.i362, ptr %buf.i368, align 4
  %65 = lshr i32 %call22, 8
  %conv2.i369 = trunc i32 %65 to i8
  %66 = ptrtoint ptr %data.i362 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv2.i369, ptr %data.i362, align 1
  %conv5.i370 = trunc i32 %call22 to i8
  %67 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv5.i370, ptr %56, align 1
  %68 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 15, ptr %57, align 1
  %69 = ptrtoint ptr %i2c_adap.i354 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %i2c_adap.i354, align 4
  %call.i372 = call i32 @i2c_transfer(ptr noundef %70, ptr noundef nonnull %i2cmsg.i363, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i372)
  %cmp.not.i373 = icmp eq i32 %call.i372, 1
  br i1 %cmp.not.i373, label %stv0900_write_reg.exit361.stv0900_write_reg.exit378_crit_edge, label %do.body.i375

stv0900_write_reg.exit361.stv0900_write_reg.exit378_crit_edge: ; preds = %stv0900_write_reg.exit361
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit378

do.body.i375:                                     ; preds = %stv0900_write_reg.exit361
  %71 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i374 = icmp eq i32 %71, 0
  br i1 %tobool.not.i374, label %do.body.i375.stv0900_write_reg.exit378_crit_edge, label %do.end.i377

do.body.i375.stv0900_write_reg.exit378_crit_edge: ; preds = %do.body.i375
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit378

do.end.i377:                                      ; preds = %do.body.i375
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i376 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i372) #11
  br label %stv0900_write_reg.exit378

stv0900_write_reg.exit378:                        ; preds = %do.end.i377, %do.body.i375.stv0900_write_reg.exit378_crit_edge, %stv0900_write_reg.exit361.stv0900_write_reg.exit378_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i363) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i362) #8
  %call24 = call i32 @shiftx(i32 noundef 62531, i32 noundef %demod, i32 noundef 512) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i379) #8
  %72 = getelementptr inbounds [3 x i8], ptr %data.i379, i32 0, i32 1
  %73 = getelementptr inbounds [3 x i8], ptr %data.i379, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i380) #8
  %74 = getelementptr inbounds i8, ptr %i2cmsg.i380, i32 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 262143, ptr %74, align 4
  %76 = ptrtoint ptr %i2c_addr.i347 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %i2c_addr.i347, align 4
  %conv.i382 = zext i8 %77 to i16
  %78 = ptrtoint ptr %i2cmsg.i380 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv.i382, ptr %i2cmsg.i380, align 4
  %flags.i383 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i380, i32 0, i32 1
  %79 = ptrtoint ptr %flags.i383 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 0, ptr %flags.i383, align 2
  %buf.i385 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i380, i32 0, i32 3
  %80 = ptrtoint ptr %buf.i385 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %data.i379, ptr %buf.i385, align 4
  %81 = lshr i32 %call24, 8
  %conv2.i386 = trunc i32 %81 to i8
  %82 = ptrtoint ptr %data.i379 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv2.i386, ptr %data.i379, align 1
  %conv5.i387 = trunc i32 %call24 to i8
  %83 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv5.i387, ptr %72, align 1
  %84 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 -1, ptr %73, align 1
  %85 = ptrtoint ptr %i2c_adap.i354 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %i2c_adap.i354, align 4
  %call.i389 = call i32 @i2c_transfer(ptr noundef %86, ptr noundef nonnull %i2cmsg.i380, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i389)
  %cmp.not.i390 = icmp eq i32 %call.i389, 1
  br i1 %cmp.not.i390, label %stv0900_write_reg.exit378.stv0900_write_reg.exit395_crit_edge, label %do.body.i392

stv0900_write_reg.exit378.stv0900_write_reg.exit395_crit_edge: ; preds = %stv0900_write_reg.exit378
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit395

do.body.i392:                                     ; preds = %stv0900_write_reg.exit378
  %87 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool.not.i391 = icmp eq i32 %87, 0
  br i1 %tobool.not.i391, label %do.body.i392.stv0900_write_reg.exit395_crit_edge, label %do.end.i394

do.body.i392.stv0900_write_reg.exit395_crit_edge: ; preds = %do.body.i392
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit395

do.end.i394:                                      ; preds = %do.body.i392
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i393 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i389) #11
  br label %stv0900_write_reg.exit395

stv0900_write_reg.exit395:                        ; preds = %do.end.i394, %do.body.i392.stv0900_write_reg.exit395_crit_edge, %stv0900_write_reg.exit378.stv0900_write_reg.exit395_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i380) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i379) #8
  %call26 = call i32 @shiftx(i32 noundef 62534, i32 noundef %demod, i32 noundef 512) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i396) #8
  %88 = getelementptr inbounds [3 x i8], ptr %data.i396, i32 0, i32 1
  %89 = getelementptr inbounds [3 x i8], ptr %data.i396, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i397) #8
  %90 = getelementptr inbounds i8, ptr %i2cmsg.i397, i32 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 262143, ptr %90, align 4
  %92 = ptrtoint ptr %i2c_addr.i347 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %i2c_addr.i347, align 4
  %conv.i399 = zext i8 %93 to i16
  %94 = ptrtoint ptr %i2cmsg.i397 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %conv.i399, ptr %i2cmsg.i397, align 4
  %flags.i400 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i397, i32 0, i32 1
  %95 = ptrtoint ptr %flags.i400 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 0, ptr %flags.i400, align 2
  %buf.i402 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i397, i32 0, i32 3
  %96 = ptrtoint ptr %buf.i402 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %data.i396, ptr %buf.i402, align 4
  %97 = lshr i32 %call26, 8
  %conv2.i403 = trunc i32 %97 to i8
  %98 = ptrtoint ptr %data.i396 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv2.i403, ptr %data.i396, align 1
  %conv5.i404 = trunc i32 %call26 to i8
  %99 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv5.i404, ptr %88, align 1
  %100 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 -16, ptr %89, align 1
  %101 = ptrtoint ptr %i2c_adap.i354 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %i2c_adap.i354, align 4
  %call.i406 = call i32 @i2c_transfer(ptr noundef %102, ptr noundef nonnull %i2cmsg.i397, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i406)
  %cmp.not.i407 = icmp eq i32 %call.i406, 1
  br i1 %cmp.not.i407, label %stv0900_write_reg.exit395.stv0900_write_reg.exit412_crit_edge, label %do.body.i409

stv0900_write_reg.exit395.stv0900_write_reg.exit412_crit_edge: ; preds = %stv0900_write_reg.exit395
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit412

do.body.i409:                                     ; preds = %stv0900_write_reg.exit395
  %103 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool.not.i408 = icmp eq i32 %103, 0
  br i1 %tobool.not.i408, label %do.body.i409.stv0900_write_reg.exit412_crit_edge, label %do.end.i411

do.body.i409.stv0900_write_reg.exit412_crit_edge: ; preds = %do.body.i409
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit412

do.end.i411:                                      ; preds = %do.body.i409
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i410 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i406) #11
  br label %stv0900_write_reg.exit412

stv0900_write_reg.exit412:                        ; preds = %do.end.i411, %do.body.i409.stv0900_write_reg.exit412_crit_edge, %stv0900_write_reg.exit395.stv0900_write_reg.exit412_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i397) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i396) #8
  %call28 = call i32 @shiftx(i32 noundef 62535, i32 noundef %demod, i32 noundef 512) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i413) #8
  %104 = getelementptr inbounds [3 x i8], ptr %data.i413, i32 0, i32 1
  %105 = getelementptr inbounds [3 x i8], ptr %data.i413, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i414) #8
  %106 = getelementptr inbounds i8, ptr %i2cmsg.i414, i32 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 262143, ptr %106, align 4
  %108 = ptrtoint ptr %i2c_addr.i347 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %i2c_addr.i347, align 4
  %conv.i416 = zext i8 %109 to i16
  %110 = ptrtoint ptr %i2cmsg.i414 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %conv.i416, ptr %i2cmsg.i414, align 4
  %flags.i417 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i414, i32 0, i32 1
  %111 = ptrtoint ptr %flags.i417 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 0, ptr %flags.i417, align 2
  %buf.i419 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i414, i32 0, i32 3
  %112 = ptrtoint ptr %buf.i419 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %data.i413, ptr %buf.i419, align 4
  %113 = lshr i32 %call28, 8
  %conv2.i420 = trunc i32 %113 to i8
  %114 = ptrtoint ptr %data.i413 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %conv2.i420, ptr %data.i413, align 1
  %conv5.i421 = trunc i32 %call28 to i8
  %115 = ptrtoint ptr %104 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv5.i421, ptr %104, align 1
  %116 = ptrtoint ptr %105 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %105, align 1
  %117 = ptrtoint ptr %i2c_adap.i354 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %i2c_adap.i354, align 4
  %call.i423 = call i32 @i2c_transfer(ptr noundef %118, ptr noundef nonnull %i2cmsg.i414, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i423)
  %cmp.not.i424 = icmp eq i32 %call.i423, 1
  br i1 %cmp.not.i424, label %stv0900_write_reg.exit412.stv0900_write_reg.exit429_crit_edge, label %do.body.i426

stv0900_write_reg.exit412.stv0900_write_reg.exit429_crit_edge: ; preds = %stv0900_write_reg.exit412
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit429

do.body.i426:                                     ; preds = %stv0900_write_reg.exit412
  %119 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool.not.i425 = icmp eq i32 %119, 0
  br i1 %tobool.not.i425, label %do.body.i426.stv0900_write_reg.exit429_crit_edge, label %do.end.i428

do.body.i426.stv0900_write_reg.exit429_crit_edge: ; preds = %do.body.i426
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit429

do.end.i428:                                      ; preds = %do.body.i426
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i427 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i423) #11
  br label %stv0900_write_reg.exit429

stv0900_write_reg.exit429:                        ; preds = %do.end.i428, %do.body.i426.stv0900_write_reg.exit429_crit_edge, %stv0900_write_reg.exit412.stv0900_write_reg.exit429_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i414) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i413) #8
  %call30 = call i32 @shiftx(i32 noundef 62546, i32 noundef %demod, i32 noundef 512) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i430) #8
  %120 = getelementptr inbounds [3 x i8], ptr %data.i430, i32 0, i32 1
  %121 = getelementptr inbounds [3 x i8], ptr %data.i430, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i431) #8
  %122 = getelementptr inbounds i8, ptr %i2cmsg.i431, i32 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 262143, ptr %122, align 4
  %124 = ptrtoint ptr %i2c_addr.i347 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %i2c_addr.i347, align 4
  %conv.i433 = zext i8 %125 to i16
  %126 = ptrtoint ptr %i2cmsg.i431 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %conv.i433, ptr %i2cmsg.i431, align 4
  %flags.i434 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i431, i32 0, i32 1
  %127 = ptrtoint ptr %flags.i434 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 0, ptr %flags.i434, align 2
  %buf.i436 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i431, i32 0, i32 3
  %128 = ptrtoint ptr %buf.i436 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %data.i430, ptr %buf.i436, align 4
  %129 = lshr i32 %call30, 8
  %conv2.i437 = trunc i32 %129 to i8
  %130 = ptrtoint ptr %data.i430 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv2.i437, ptr %data.i430, align 1
  %conv5.i438 = trunc i32 %call30 to i8
  %131 = ptrtoint ptr %120 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %conv5.i438, ptr %120, align 1
  %132 = ptrtoint ptr %121 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 104, ptr %121, align 1
  %133 = ptrtoint ptr %i2c_adap.i354 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %i2c_adap.i354, align 4
  %call.i440 = call i32 @i2c_transfer(ptr noundef %134, ptr noundef nonnull %i2cmsg.i431, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i440)
  %cmp.not.i441 = icmp eq i32 %call.i440, 1
  br i1 %cmp.not.i441, label %stv0900_write_reg.exit429.stv0900_write_reg.exit446_crit_edge, label %do.body.i443

stv0900_write_reg.exit429.stv0900_write_reg.exit446_crit_edge: ; preds = %stv0900_write_reg.exit429
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit446

do.body.i443:                                     ; preds = %stv0900_write_reg.exit429
  %135 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool.not.i442 = icmp eq i32 %135, 0
  br i1 %tobool.not.i442, label %do.body.i443.stv0900_write_reg.exit446_crit_edge, label %do.end.i445

do.body.i443.stv0900_write_reg.exit446_crit_edge: ; preds = %do.body.i443
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit446

do.end.i445:                                      ; preds = %do.body.i443
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i444 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i440) #11
  br label %stv0900_write_reg.exit446

stv0900_write_reg.exit446:                        ; preds = %do.end.i445, %do.body.i443.stv0900_write_reg.exit446_crit_edge, %stv0900_write_reg.exit429.stv0900_write_reg.exit446_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i431) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i430) #8
  br label %if.end91

if.else:                                          ; preds = %if.then16
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i447) #8
  %136 = getelementptr inbounds [3 x i8], ptr %data.i447, i32 0, i32 1
  %137 = getelementptr inbounds [3 x i8], ptr %data.i447, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i448) #8
  %138 = getelementptr inbounds i8, ptr %i2cmsg.i448, i32 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 262143, ptr %138, align 4
  %i2c_addr.i449 = getelementptr inbounds %struct.stv0900_internal, ptr %intp, i32 0, i32 18
  %140 = ptrtoint ptr %i2c_addr.i449 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %i2c_addr.i449, align 4
  %conv.i450 = zext i8 %141 to i16
  %142 = ptrtoint ptr %i2cmsg.i448 to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 %conv.i450, ptr %i2cmsg.i448, align 4
  %flags.i451 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i448, i32 0, i32 1
  %143 = ptrtoint ptr %flags.i451 to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 0, ptr %flags.i451, align 2
  %buf.i453 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i448, i32 0, i32 3
  %144 = ptrtoint ptr %buf.i453 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %data.i447, ptr %buf.i453, align 4
  %145 = lshr i32 %call20, 8
  %conv2.i454 = trunc i32 %145 to i8
  %146 = ptrtoint ptr %data.i447 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %conv2.i454, ptr %data.i447, align 1
  %conv5.i455 = trunc i32 %call20 to i8
  %147 = ptrtoint ptr %136 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %conv5.i455, ptr %136, align 1
  %148 = ptrtoint ptr %137 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 -60, ptr %137, align 1
  %i2c_adap.i456 = getelementptr inbounds %struct.stv0900_internal, ptr %intp, i32 0, i32 17
  %149 = ptrtoint ptr %i2c_adap.i456 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %i2c_adap.i456, align 4
  %call.i457 = call i32 @i2c_transfer(ptr noundef %150, ptr noundef nonnull %i2cmsg.i448, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i457)
  %cmp.not.i458 = icmp eq i32 %call.i457, 1
  br i1 %cmp.not.i458, label %if.else.stv0900_write_reg.exit463_crit_edge, label %do.body.i460

if.else.stv0900_write_reg.exit463_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit463

do.body.i460:                                     ; preds = %if.else
  %151 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool.not.i459 = icmp eq i32 %151, 0
  br i1 %tobool.not.i459, label %do.body.i460.stv0900_write_reg.exit463_crit_edge, label %do.end.i462

do.body.i460.stv0900_write_reg.exit463_crit_edge: ; preds = %do.body.i460
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit463

do.end.i462:                                      ; preds = %do.body.i460
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i461 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i457) #11
  br label %stv0900_write_reg.exit463

stv0900_write_reg.exit463:                        ; preds = %do.end.i462, %do.body.i460.stv0900_write_reg.exit463_crit_edge, %if.else.stv0900_write_reg.exit463_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i448) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i447) #8
  %call34 = call i32 @shiftx(i32 noundef 62546, i32 noundef %demod, i32 noundef 512) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i464) #8
  %152 = getelementptr inbounds [3 x i8], ptr %data.i464, i32 0, i32 1
  %153 = getelementptr inbounds [3 x i8], ptr %data.i464, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i465) #8
  %154 = getelementptr inbounds i8, ptr %i2cmsg.i465, i32 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 262143, ptr %154, align 4
  %156 = ptrtoint ptr %i2c_addr.i449 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %i2c_addr.i449, align 4
  %conv.i467 = zext i8 %157 to i16
  %158 = ptrtoint ptr %i2cmsg.i465 to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %conv.i467, ptr %i2cmsg.i465, align 4
  %flags.i468 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i465, i32 0, i32 1
  %159 = ptrtoint ptr %flags.i468 to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 0, ptr %flags.i468, align 2
  %buf.i470 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i465, i32 0, i32 3
  %160 = ptrtoint ptr %buf.i470 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %data.i464, ptr %buf.i470, align 4
  %161 = lshr i32 %call34, 8
  %conv2.i471 = trunc i32 %161 to i8
  %162 = ptrtoint ptr %data.i464 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %conv2.i471, ptr %data.i464, align 1
  %conv5.i472 = trunc i32 %call34 to i8
  %163 = ptrtoint ptr %152 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %conv5.i472, ptr %152, align 1
  %164 = ptrtoint ptr %153 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 68, ptr %153, align 1
  %165 = ptrtoint ptr %i2c_adap.i456 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %i2c_adap.i456, align 4
  %call.i474 = call i32 @i2c_transfer(ptr noundef %166, ptr noundef nonnull %i2cmsg.i465, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i474)
  %cmp.not.i475 = icmp eq i32 %call.i474, 1
  br i1 %cmp.not.i475, label %stv0900_write_reg.exit463.stv0900_write_reg.exit480_crit_edge, label %do.body.i477

stv0900_write_reg.exit463.stv0900_write_reg.exit480_crit_edge: ; preds = %stv0900_write_reg.exit463
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit480

do.body.i477:                                     ; preds = %stv0900_write_reg.exit463
  %167 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %tobool.not.i476 = icmp eq i32 %167, 0
  br i1 %tobool.not.i476, label %do.body.i477.stv0900_write_reg.exit480_crit_edge, label %do.end.i479

do.body.i477.stv0900_write_reg.exit480_crit_edge: ; preds = %do.body.i477
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit480

do.end.i479:                                      ; preds = %do.body.i477
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i478 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i474) #11
  br label %stv0900_write_reg.exit480

stv0900_write_reg.exit480:                        ; preds = %do.end.i479, %do.body.i477.stv0900_write_reg.exit480_crit_edge, %stv0900_write_reg.exit463.stv0900_write_reg.exit480_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i465) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i464) #8
  br label %if.end91

if.else37:                                        ; preds = %if.end11
  %arrayidx39 = getelementptr %struct.stv0900_internal, ptr %intp, i32 0, i32 6, i32 %demod
  %168 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000001, i32 %169)
  %cmp40 = icmp slt i32 %169, 5000001
  %call43 = call i32 @shiftx(i32 noundef 62546, i32 noundef %demod, i32 noundef 512) #8
  br i1 %cmp40, label %if.then42, label %if.else45

if.then42:                                        ; preds = %if.else37
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i481) #8
  %170 = getelementptr inbounds [3 x i8], ptr %data.i481, i32 0, i32 1
  %171 = getelementptr inbounds [3 x i8], ptr %data.i481, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i482) #8
  %172 = getelementptr inbounds i8, ptr %i2cmsg.i482, i32 4
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 262143, ptr %172, align 4
  %i2c_addr.i483 = getelementptr inbounds %struct.stv0900_internal, ptr %intp, i32 0, i32 18
  %174 = ptrtoint ptr %i2c_addr.i483 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %i2c_addr.i483, align 4
  %conv.i484 = zext i8 %175 to i16
  %176 = ptrtoint ptr %i2cmsg.i482 to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 %conv.i484, ptr %i2cmsg.i482, align 4
  %flags.i485 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i482, i32 0, i32 1
  %177 = ptrtoint ptr %flags.i485 to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 0, ptr %flags.i485, align 2
  %buf.i487 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i482, i32 0, i32 3
  %178 = ptrtoint ptr %buf.i487 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %data.i481, ptr %buf.i487, align 4
  %179 = lshr i32 %call43, 8
  %conv2.i488 = trunc i32 %179 to i8
  %180 = ptrtoint ptr %data.i481 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %conv2.i488, ptr %data.i481, align 1
  %conv5.i489 = trunc i32 %call43 to i8
  %181 = ptrtoint ptr %170 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 %conv5.i489, ptr %170, align 1
  %182 = ptrtoint ptr %171 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 104, ptr %171, align 1
  %i2c_adap.i490 = getelementptr inbounds %struct.stv0900_internal, ptr %intp, i32 0, i32 17
  %183 = ptrtoint ptr %i2c_adap.i490 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %i2c_adap.i490, align 4
  %call.i491 = call i32 @i2c_transfer(ptr noundef %184, ptr noundef nonnull %i2cmsg.i482, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i491)
  %cmp.not.i492 = icmp eq i32 %call.i491, 1
  br i1 %cmp.not.i492, label %if.then42.stv0900_write_reg.exit497_crit_edge, label %do.body.i494

if.then42.stv0900_write_reg.exit497_crit_edge:    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit497

do.body.i494:                                     ; preds = %if.then42
  %185 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool.not.i493 = icmp eq i32 %185, 0
  br i1 %tobool.not.i493, label %do.body.i494.stv0900_write_reg.exit497_crit_edge, label %do.end.i496

do.body.i494.stv0900_write_reg.exit497_crit_edge: ; preds = %do.body.i494
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit497

do.end.i496:                                      ; preds = %do.body.i494
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i495 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i491) #11
  br label %stv0900_write_reg.exit497

stv0900_write_reg.exit497:                        ; preds = %do.end.i496, %do.body.i494.stv0900_write_reg.exit497_crit_edge, %if.then42.stv0900_write_reg.exit497_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i482) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i481) #8
  br label %if.end48

if.else45:                                        ; preds = %if.else37
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i498) #8
  %186 = getelementptr inbounds [3 x i8], ptr %data.i498, i32 0, i32 1
  %187 = getelementptr inbounds [3 x i8], ptr %data.i498, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i499) #8
  %188 = getelementptr inbounds i8, ptr %i2cmsg.i499, i32 4
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 262143, ptr %188, align 4
  %i2c_addr.i500 = getelementptr inbounds %struct.stv0900_internal, ptr %intp, i32 0, i32 18
  %190 = ptrtoint ptr %i2c_addr.i500 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %i2c_addr.i500, align 4
  %conv.i501 = zext i8 %191 to i16
  %192 = ptrtoint ptr %i2cmsg.i499 to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 %conv.i501, ptr %i2cmsg.i499, align 4
  %flags.i502 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i499, i32 0, i32 1
  %193 = ptrtoint ptr %flags.i502 to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 0, ptr %flags.i502, align 2
  %buf.i504 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i499, i32 0, i32 3
  %194 = ptrtoint ptr %buf.i504 to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %data.i498, ptr %buf.i504, align 4
  %195 = lshr i32 %call43, 8
  %conv2.i505 = trunc i32 %195 to i8
  %196 = ptrtoint ptr %data.i498 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %conv2.i505, ptr %data.i498, align 1
  %conv5.i506 = trunc i32 %call43 to i8
  %197 = ptrtoint ptr %186 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 %conv5.i506, ptr %186, align 1
  %198 = ptrtoint ptr %187 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 68, ptr %187, align 1
  %i2c_adap.i507 = getelementptr inbounds %struct.stv0900_internal, ptr %intp, i32 0, i32 17
  %199 = ptrtoint ptr %i2c_adap.i507 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %i2c_adap.i507, align 4
  %call.i508 = call i32 @i2c_transfer(ptr noundef %200, ptr noundef nonnull %i2cmsg.i499, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i508)
  %cmp.not.i509 = icmp eq i32 %call.i508, 1
  br i1 %cmp.not.i509, label %if.else45.stv0900_write_reg.exit514_crit_edge, label %do.body.i511

if.else45.stv0900_write_reg.exit514_crit_edge:    ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit514

do.body.i511:                                     ; preds = %if.else45
  %201 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %tobool.not.i510 = icmp eq i32 %201, 0
  br i1 %tobool.not.i510, label %do.body.i511.stv0900_write_reg.exit514_crit_edge, label %do.end.i513

do.body.i511.stv0900_write_reg.exit514_crit_edge: ; preds = %do.body.i511
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit514

do.end.i513:                                      ; preds = %do.body.i511
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i512 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i508) #11
  br label %stv0900_write_reg.exit514

stv0900_write_reg.exit514:                        ; preds = %do.end.i513, %do.body.i511.stv0900_write_reg.exit514_crit_edge, %if.else45.stv0900_write_reg.exit514_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i499) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i498) #8
  br label %if.end48

if.end48:                                         ; preds = %stv0900_write_reg.exit514, %stv0900_write_reg.exit497
  %call49 = call i32 @shiftx(i32 noundef 62520, i32 noundef %demod, i32 noundef 512) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i515) #8
  %202 = getelementptr inbounds [3 x i8], ptr %data.i515, i32 0, i32 1
  %203 = getelementptr inbounds [3 x i8], ptr %data.i515, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i516) #8
  %204 = getelementptr inbounds i8, ptr %i2cmsg.i516, i32 4
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 262143, ptr %204, align 4
  %i2c_addr.i517 = getelementptr inbounds %struct.stv0900_internal, ptr %intp, i32 0, i32 18
  %206 = ptrtoint ptr %i2c_addr.i517 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %i2c_addr.i517, align 4
  %conv.i518 = zext i8 %207 to i16
  %208 = ptrtoint ptr %i2cmsg.i516 to i32
  call void @__asan_store2_noabort(i32 %208)
  store i16 %conv.i518, ptr %i2cmsg.i516, align 4
  %flags.i519 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i516, i32 0, i32 1
  %209 = ptrtoint ptr %flags.i519 to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 0, ptr %flags.i519, align 2
  %buf.i521 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i516, i32 0, i32 3
  %210 = ptrtoint ptr %buf.i521 to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %data.i515, ptr %buf.i521, align 4
  %211 = lshr i32 %call49, 8
  %conv2.i522 = trunc i32 %211 to i8
  %212 = ptrtoint ptr %data.i515 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %conv2.i522, ptr %data.i515, align 1
  %conv5.i523 = trunc i32 %call49 to i8
  %213 = ptrtoint ptr %202 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %conv5.i523, ptr %202, align 1
  %214 = ptrtoint ptr %203 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 70, ptr %203, align 1
  %i2c_adap.i524 = getelementptr inbounds %struct.stv0900_internal, ptr %intp, i32 0, i32 17
  %215 = ptrtoint ptr %i2c_adap.i524 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %i2c_adap.i524, align 4
  %call.i525 = call i32 @i2c_transfer(ptr noundef %216, ptr noundef nonnull %i2cmsg.i516, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i525)
  %cmp.not.i526 = icmp eq i32 %call.i525, 1
  br i1 %cmp.not.i526, label %if.end48.stv0900_write_reg.exit531_crit_edge, label %do.body.i528

if.end48.stv0900_write_reg.exit531_crit_edge:     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit531

do.body.i528:                                     ; preds = %if.end48
  %217 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %tobool.not.i527 = icmp eq i32 %217, 0
  br i1 %tobool.not.i527, label %do.body.i528.stv0900_write_reg.exit531_crit_edge, label %do.end.i530

do.body.i528.stv0900_write_reg.exit531_crit_edge: ; preds = %do.body.i528
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit531

do.end.i530:                                      ; preds = %do.body.i528
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i529 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i525) #11
  br label %stv0900_write_reg.exit531

stv0900_write_reg.exit531:                        ; preds = %do.end.i530, %do.body.i528.stv0900_write_reg.exit531_crit_edge, %if.end48.stv0900_write_reg.exit531_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i516) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i515) #8
  %arrayidx51 = getelementptr %struct.stv0900_internal, ptr %intp, i32 0, i32 9, i32 %demod
  %218 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %arrayidx51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %219)
  %cmp52 = icmp eq i32 %219, 2
  br i1 %cmp52, label %stv0900_write_reg.exit531.if.end72_crit_edge, label %if.else57

stv0900_write_reg.exit531.if.end72_crit_edge:     ; preds = %stv0900_write_reg.exit531
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.else57:                                        ; preds = %stv0900_write_reg.exit531
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx58 = getelementptr %struct.stv0900_internal, ptr %intp, i32 0, i32 7, i32 %demod
  %220 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %arrayidx58, align 4
  %div59 = sdiv i32 %221, 2000
  %222 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %arrayidx39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000001, i32 %223)
  %cmp62 = icmp slt i32 %223, 5000001
  %freq.0.v = select i1 %cmp62, i32 80, i32 600
  %freq.0 = add nsw i32 %freq.0.v, %div59
  %shl = shl i32 %freq.0, 16
  br label %if.end72

if.end72:                                         ; preds = %if.else57, %stv0900_write_reg.exit531.if.end72_crit_edge
  %shl.sink = phi i32 [ %shl, %if.else57 ], [ 65536000, %stv0900_write_reg.exit531.if.end72_crit_edge ]
  %mclk68 = getelementptr inbounds %struct.stv0900_internal, ptr %intp, i32 0, i32 1
  %224 = ptrtoint ptr %mclk68 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %mclk68, align 4
  %div69 = sdiv i32 %225, 1000
  %div70 = udiv i32 %shl.sink, %div69
  %call73 = call i32 @shiftx(i32 noundef -197000705, i32 noundef %demod, i32 noundef 33554432) #8
  %226 = lshr i32 %div70, 8
  %conv75 = trunc i32 %226 to i8
  call void @stv0900_write_bits(ptr noundef %intp, i32 noundef %call73, i8 noundef zeroext %conv75)
  %call76 = call i32 @shiftx(i32 noundef -196935425, i32 noundef %demod, i32 noundef 33554432) #8
  %conv79 = trunc i32 %div70 to i8
  call void @stv0900_write_bits(ptr noundef %intp, i32 noundef %call76, i8 noundef zeroext %conv79)
  %call82 = call i32 @shiftx(i32 noundef -196738561, i32 noundef %demod, i32 noundef 33554432) #8
  %.neg = mul i32 %div70, -65536
  %227 = lshr exact i32 %.neg, 16
  %228 = lshr i32 %.neg, 24
  %conv86 = trunc i32 %228 to i8
  call void @stv0900_write_bits(ptr noundef %intp, i32 noundef %call82, i8 noundef zeroext %conv86)
  %call87 = call i32 @shiftx(i32 noundef -196673281, i32 noundef %demod, i32 noundef 33554432) #8
  %conv90 = trunc i32 %227 to i8
  call void @stv0900_write_bits(ptr noundef %intp, i32 noundef %call87, i8 noundef zeroext %conv90)
  br label %if.end91

if.end91:                                         ; preds = %if.end72, %stv0900_write_reg.exit480, %stv0900_write_reg.exit446
  %call92 = call i32 @shiftx(i32 noundef 62536, i32 noundef %demod, i32 noundef 512) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i532) #8
  %229 = getelementptr inbounds [3 x i8], ptr %data.i532, i32 0, i32 1
  %230 = getelementptr inbounds [3 x i8], ptr %data.i532, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i533) #8
  %231 = getelementptr inbounds i8, ptr %i2cmsg.i533, i32 4
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 262143, ptr %231, align 4
  %i2c_addr.i534 = getelementptr inbounds %struct.stv0900_internal, ptr %intp, i32 0, i32 18
  %233 = ptrtoint ptr %i2c_addr.i534 to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %i2c_addr.i534, align 4
  %conv.i535 = zext i8 %234 to i16
  %235 = ptrtoint ptr %i2cmsg.i533 to i32
  call void @__asan_store2_noabort(i32 %235)
  store i16 %conv.i535, ptr %i2cmsg.i533, align 4
  %flags.i536 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i533, i32 0, i32 1
  %236 = ptrtoint ptr %flags.i536 to i32
  call void @__asan_store2_noabort(i32 %236)
  store i16 0, ptr %flags.i536, align 2
  %buf.i538 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i533, i32 0, i32 3
  %237 = ptrtoint ptr %buf.i538 to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %data.i532, ptr %buf.i538, align 4
  %238 = lshr i32 %call92, 8
  %conv2.i539 = trunc i32 %238 to i8
  %239 = ptrtoint ptr %data.i532 to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 %conv2.i539, ptr %data.i532, align 1
  %conv5.i540 = trunc i32 %call92 to i8
  %240 = ptrtoint ptr %229 to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %conv5.i540, ptr %229, align 1
  %241 = ptrtoint ptr %230 to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 0, ptr %230, align 1
  %i2c_adap.i541 = getelementptr inbounds %struct.stv0900_internal, ptr %intp, i32 0, i32 17
  %242 = ptrtoint ptr %i2c_adap.i541 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %i2c_adap.i541, align 4
  %call.i542 = call i32 @i2c_transfer(ptr noundef %243, ptr noundef nonnull %i2cmsg.i533, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i542)
  %cmp.not.i543 = icmp eq i32 %call.i542, 1
  br i1 %cmp.not.i543, label %if.end91.stv0900_write_reg.exit548_crit_edge, label %do.body.i545

if.end91.stv0900_write_reg.exit548_crit_edge:     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit548

do.body.i545:                                     ; preds = %if.end91
  %244 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %244)
  %tobool.not.i544 = icmp eq i32 %244, 0
  br i1 %tobool.not.i544, label %do.body.i545.stv0900_write_reg.exit548_crit_edge, label %do.end.i547

do.body.i545.stv0900_write_reg.exit548_crit_edge: ; preds = %do.body.i545
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit548

do.end.i547:                                      ; preds = %do.body.i545
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i546 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i542) #11
  br label %stv0900_write_reg.exit548

stv0900_write_reg.exit548:                        ; preds = %do.end.i547, %do.body.i545.stv0900_write_reg.exit548_crit_edge, %if.end91.stv0900_write_reg.exit548_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i533) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i532) #8
  %call94 = call i32 @shiftx(i32 noundef 62537, i32 noundef %demod, i32 noundef 512) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i549) #8
  %245 = getelementptr inbounds [3 x i8], ptr %data.i549, i32 0, i32 1
  %246 = getelementptr inbounds [3 x i8], ptr %data.i549, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i550) #8
  %247 = getelementptr inbounds i8, ptr %i2cmsg.i550, i32 4
  %248 = ptrtoint ptr %247 to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 262143, ptr %247, align 4
  %249 = ptrtoint ptr %i2c_addr.i534 to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %i2c_addr.i534, align 4
  %conv.i552 = zext i8 %250 to i16
  %251 = ptrtoint ptr %i2cmsg.i550 to i32
  call void @__asan_store2_noabort(i32 %251)
  store i16 %conv.i552, ptr %i2cmsg.i550, align 4
  %flags.i553 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i550, i32 0, i32 1
  %252 = ptrtoint ptr %flags.i553 to i32
  call void @__asan_store2_noabort(i32 %252)
  store i16 0, ptr %flags.i553, align 2
  %buf.i555 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i550, i32 0, i32 3
  %253 = ptrtoint ptr %buf.i555 to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr %data.i549, ptr %buf.i555, align 4
  %254 = lshr i32 %call94, 8
  %conv2.i556 = trunc i32 %254 to i8
  %255 = ptrtoint ptr %data.i549 to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 %conv2.i556, ptr %data.i549, align 1
  %conv5.i557 = trunc i32 %call94 to i8
  %256 = ptrtoint ptr %245 to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 %conv5.i557, ptr %245, align 1
  %257 = ptrtoint ptr %246 to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 0, ptr %246, align 1
  %258 = ptrtoint ptr %i2c_adap.i541 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %i2c_adap.i541, align 4
  %call.i559 = call i32 @i2c_transfer(ptr noundef %259, ptr noundef nonnull %i2cmsg.i550, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i559)
  %cmp.not.i560 = icmp eq i32 %call.i559, 1
  br i1 %cmp.not.i560, label %stv0900_write_reg.exit548.stv0900_write_reg.exit565_crit_edge, label %do.body.i562

stv0900_write_reg.exit548.stv0900_write_reg.exit565_crit_edge: ; preds = %stv0900_write_reg.exit548
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit565

do.body.i562:                                     ; preds = %stv0900_write_reg.exit548
  %260 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %260)
  %tobool.not.i561 = icmp eq i32 %260, 0
  br i1 %tobool.not.i561, label %do.body.i562.stv0900_write_reg.exit565_crit_edge, label %do.end.i564

do.body.i562.stv0900_write_reg.exit565_crit_edge: ; preds = %do.body.i562
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit565

do.end.i564:                                      ; preds = %do.body.i562
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i563 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i559) #11
  br label %stv0900_write_reg.exit565

stv0900_write_reg.exit565:                        ; preds = %do.end.i564, %do.body.i562.stv0900_write_reg.exit565_crit_edge, %stv0900_write_reg.exit548.stv0900_write_reg.exit565_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i550) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i549) #8
  %261 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %chip_id, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %262)
  %cmp98 = icmp ugt i8 %262, 31
  br i1 %cmp98, label %if.then100, label %stv0900_write_reg.exit565.if.end123_crit_edge

stv0900_write_reg.exit565.if.end123_crit_edge:    ; preds = %stv0900_write_reg.exit565
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end123

if.then100:                                       ; preds = %stv0900_write_reg.exit565
  %call101 = call i32 @shiftx(i32 noundef 62575, i32 noundef %demod, i32 noundef 512) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i566) #8
  %263 = getelementptr inbounds [3 x i8], ptr %data.i566, i32 0, i32 1
  %264 = getelementptr inbounds [3 x i8], ptr %data.i566, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i567) #8
  %265 = getelementptr inbounds i8, ptr %i2cmsg.i567, i32 4
  %266 = ptrtoint ptr %265 to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 262143, ptr %265, align 4
  %267 = ptrtoint ptr %i2c_addr.i534 to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %i2c_addr.i534, align 4
  %conv.i569 = zext i8 %268 to i16
  %269 = ptrtoint ptr %i2cmsg.i567 to i32
  call void @__asan_store2_noabort(i32 %269)
  store i16 %conv.i569, ptr %i2cmsg.i567, align 4
  %flags.i570 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i567, i32 0, i32 1
  %270 = ptrtoint ptr %flags.i570 to i32
  call void @__asan_store2_noabort(i32 %270)
  store i16 0, ptr %flags.i570, align 2
  %buf.i572 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i567, i32 0, i32 3
  %271 = ptrtoint ptr %buf.i572 to i32
  call void @__asan_store4_noabort(i32 %271)
  store ptr %data.i566, ptr %buf.i572, align 4
  %272 = lshr i32 %call101, 8
  %conv2.i573 = trunc i32 %272 to i8
  %273 = ptrtoint ptr %data.i566 to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 %conv2.i573, ptr %data.i566, align 1
  %conv5.i574 = trunc i32 %call101 to i8
  %274 = ptrtoint ptr %263 to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 %conv5.i574, ptr %263, align 1
  %275 = ptrtoint ptr %264 to i32
  call void @__asan_store1_noabort(i32 %275)
  store i8 65, ptr %264, align 1
  %276 = ptrtoint ptr %i2c_adap.i541 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %i2c_adap.i541, align 4
  %call.i576 = call i32 @i2c_transfer(ptr noundef %277, ptr noundef nonnull %i2cmsg.i567, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i576)
  %cmp.not.i577 = icmp eq i32 %call.i576, 1
  br i1 %cmp.not.i577, label %if.then100.stv0900_write_reg.exit582_crit_edge, label %do.body.i579

if.then100.stv0900_write_reg.exit582_crit_edge:   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit582

do.body.i579:                                     ; preds = %if.then100
  %278 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %278)
  %tobool.not.i578 = icmp eq i32 %278, 0
  br i1 %tobool.not.i578, label %do.body.i579.stv0900_write_reg.exit582_crit_edge, label %do.end.i581

do.body.i579.stv0900_write_reg.exit582_crit_edge: ; preds = %do.body.i579
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit582

do.end.i581:                                      ; preds = %do.body.i579
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i580 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i576) #11
  br label %stv0900_write_reg.exit582

stv0900_write_reg.exit582:                        ; preds = %do.end.i581, %do.body.i579.stv0900_write_reg.exit582_crit_edge, %if.then100.stv0900_write_reg.exit582_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i567) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i566) #8
  %call103 = call i32 @shiftx(i32 noundef 62680, i32 noundef %demod, i32 noundef 512) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i583) #8
  %279 = getelementptr inbounds [3 x i8], ptr %data.i583, i32 0, i32 1
  %280 = getelementptr inbounds [3 x i8], ptr %data.i583, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i584) #8
  %281 = getelementptr inbounds i8, ptr %i2cmsg.i584, i32 4
  %282 = ptrtoint ptr %281 to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 262143, ptr %281, align 4
  %283 = ptrtoint ptr %i2c_addr.i534 to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %i2c_addr.i534, align 4
  %conv.i586 = zext i8 %284 to i16
  %285 = ptrtoint ptr %i2cmsg.i584 to i32
  call void @__asan_store2_noabort(i32 %285)
  store i16 %conv.i586, ptr %i2cmsg.i584, align 4
  %flags.i587 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i584, i32 0, i32 1
  %286 = ptrtoint ptr %flags.i587 to i32
  call void @__asan_store2_noabort(i32 %286)
  store i16 0, ptr %flags.i587, align 2
  %buf.i589 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i584, i32 0, i32 3
  %287 = ptrtoint ptr %buf.i589 to i32
  call void @__asan_store4_noabort(i32 %287)
  store ptr %data.i583, ptr %buf.i589, align 4
  %288 = lshr i32 %call103, 8
  %conv2.i590 = trunc i32 %288 to i8
  %289 = ptrtoint ptr %data.i583 to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 %conv2.i590, ptr %data.i583, align 1
  %conv5.i591 = trunc i32 %call103 to i8
  %290 = ptrtoint ptr %279 to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 %conv5.i591, ptr %279, align 1
  %291 = ptrtoint ptr %280 to i32
  call void @__asan_store1_noabort(i32 %291)
  store i8 65, ptr %280, align 1
  %292 = ptrtoint ptr %i2c_adap.i541 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %i2c_adap.i541, align 4
  %call.i593 = call i32 @i2c_transfer(ptr noundef %293, ptr noundef nonnull %i2cmsg.i584, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i593)
  %cmp.not.i594 = icmp eq i32 %call.i593, 1
  br i1 %cmp.not.i594, label %stv0900_write_reg.exit582.stv0900_write_reg.exit599_crit_edge, label %do.body.i596

stv0900_write_reg.exit582.stv0900_write_reg.exit599_crit_edge: ; preds = %stv0900_write_reg.exit582
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit599

do.body.i596:                                     ; preds = %stv0900_write_reg.exit582
  %294 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %294)
  %tobool.not.i595 = icmp eq i32 %294, 0
  br i1 %tobool.not.i595, label %do.body.i596.stv0900_write_reg.exit599_crit_edge, label %do.end.i598

do.body.i596.stv0900_write_reg.exit599_crit_edge: ; preds = %do.body.i596
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit599

do.end.i598:                                      ; preds = %do.body.i596
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i597 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i593) #11
  br label %stv0900_write_reg.exit599

stv0900_write_reg.exit599:                        ; preds = %do.end.i598, %do.body.i596.stv0900_write_reg.exit599_crit_edge, %stv0900_write_reg.exit582.stv0900_write_reg.exit599_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i584) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i583) #8
  %arrayidx105 = getelementptr %struct.stv0900_internal, ptr %intp, i32 0, i32 10, i32 %demod
  %295 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %arrayidx105, align 4
  %297 = zext i32 %296 to i64
  call void @__sanitizer_cov_trace_switch(i64 %297, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %296, label %stv0900_write_reg.exit599.if.end123_crit_edge [
    i32 1, label %stv0900_write_reg.exit599.if.then117_crit_edge
    i32 3, label %stv0900_write_reg.exit599.if.then117_crit_edge923
    i32 0, label %stv0900_write_reg.exit599.if.then117_crit_edge924
  ]

stv0900_write_reg.exit599.if.then117_crit_edge924: ; preds = %stv0900_write_reg.exit599
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then117

stv0900_write_reg.exit599.if.then117_crit_edge923: ; preds = %stv0900_write_reg.exit599
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then117

stv0900_write_reg.exit599.if.then117_crit_edge:   ; preds = %stv0900_write_reg.exit599
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then117

stv0900_write_reg.exit599.if.end123_crit_edge:    ; preds = %stv0900_write_reg.exit599
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end123

if.then117:                                       ; preds = %stv0900_write_reg.exit599.if.then117_crit_edge, %stv0900_write_reg.exit599.if.then117_crit_edge923, %stv0900_write_reg.exit599.if.then117_crit_edge924
  %call118 = call i32 @shiftx(i32 noundef 62770, i32 noundef %demod, i32 noundef 512) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i600) #8
  %298 = getelementptr inbounds [3 x i8], ptr %data.i600, i32 0, i32 1
  %299 = getelementptr inbounds [3 x i8], ptr %data.i600, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i601) #8
  %300 = getelementptr inbounds i8, ptr %i2cmsg.i601, i32 4
  %301 = ptrtoint ptr %300 to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 262143, ptr %300, align 4
  %302 = ptrtoint ptr %i2c_addr.i534 to i32
  call void @__asan_load1_noabort(i32 %302)
  %303 = load i8, ptr %i2c_addr.i534, align 4
  %conv.i603 = zext i8 %303 to i16
  %304 = ptrtoint ptr %i2cmsg.i601 to i32
  call void @__asan_store2_noabort(i32 %304)
  store i16 %conv.i603, ptr %i2cmsg.i601, align 4
  %flags.i604 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i601, i32 0, i32 1
  %305 = ptrtoint ptr %flags.i604 to i32
  call void @__asan_store2_noabort(i32 %305)
  store i16 0, ptr %flags.i604, align 2
  %buf.i606 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i601, i32 0, i32 3
  %306 = ptrtoint ptr %buf.i606 to i32
  call void @__asan_store4_noabort(i32 %306)
  store ptr %data.i600, ptr %buf.i606, align 4
  %307 = lshr i32 %call118, 8
  %conv2.i607 = trunc i32 %307 to i8
  %308 = ptrtoint ptr %data.i600 to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 %conv2.i607, ptr %data.i600, align 1
  %conv5.i608 = trunc i32 %call118 to i8
  %309 = ptrtoint ptr %298 to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 %conv5.i608, ptr %298, align 1
  %310 = ptrtoint ptr %299 to i32
  call void @__asan_store1_noabort(i32 %310)
  store i8 -126, ptr %299, align 1
  %311 = ptrtoint ptr %i2c_adap.i541 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %i2c_adap.i541, align 4
  %call.i610 = call i32 @i2c_transfer(ptr noundef %312, ptr noundef nonnull %i2cmsg.i601, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i610)
  %cmp.not.i611 = icmp eq i32 %call.i610, 1
  br i1 %cmp.not.i611, label %if.then117.stv0900_write_reg.exit616_crit_edge, label %do.body.i613

if.then117.stv0900_write_reg.exit616_crit_edge:   ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit616

do.body.i613:                                     ; preds = %if.then117
  %313 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %313)
  %tobool.not.i612 = icmp eq i32 %313, 0
  br i1 %tobool.not.i612, label %do.body.i613.stv0900_write_reg.exit616_crit_edge, label %do.end.i615

do.body.i613.stv0900_write_reg.exit616_crit_edge: ; preds = %do.body.i613
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit616

do.end.i615:                                      ; preds = %do.body.i613
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i614 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i610) #11
  br label %stv0900_write_reg.exit616

stv0900_write_reg.exit616:                        ; preds = %do.end.i615, %do.body.i613.stv0900_write_reg.exit616_crit_edge, %if.then117.stv0900_write_reg.exit616_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i601) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i600) #8
  %call120 = call i32 @shiftx(i32 noundef 62781, i32 noundef %demod, i32 noundef 512) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i617) #8
  %314 = getelementptr inbounds [3 x i8], ptr %data.i617, i32 0, i32 1
  %315 = getelementptr inbounds [3 x i8], ptr %data.i617, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i618) #8
  %316 = getelementptr inbounds i8, ptr %i2cmsg.i618, i32 4
  %317 = ptrtoint ptr %316 to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 262143, ptr %316, align 4
  %318 = ptrtoint ptr %i2c_addr.i534 to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %i2c_addr.i534, align 4
  %conv.i620 = zext i8 %319 to i16
  %320 = ptrtoint ptr %i2cmsg.i618 to i32
  call void @__asan_store2_noabort(i32 %320)
  store i16 %conv.i620, ptr %i2cmsg.i618, align 4
  %flags.i621 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i618, i32 0, i32 1
  %321 = ptrtoint ptr %flags.i621 to i32
  call void @__asan_store2_noabort(i32 %321)
  store i16 0, ptr %flags.i621, align 2
  %buf.i623 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i618, i32 0, i32 3
  %322 = ptrtoint ptr %buf.i623 to i32
  call void @__asan_store4_noabort(i32 %322)
  store ptr %data.i617, ptr %buf.i623, align 4
  %323 = lshr i32 %call120, 8
  %conv2.i624 = trunc i32 %323 to i8
  %324 = ptrtoint ptr %data.i617 to i32
  call void @__asan_store1_noabort(i32 %324)
  store i8 %conv2.i624, ptr %data.i617, align 1
  %conv5.i625 = trunc i32 %call120 to i8
  %325 = ptrtoint ptr %314 to i32
  call void @__asan_store1_noabort(i32 %325)
  store i8 %conv5.i625, ptr %314, align 1
  %326 = ptrtoint ptr %315 to i32
  call void @__asan_store1_noabort(i32 %326)
  store i8 0, ptr %315, align 1
  %327 = ptrtoint ptr %i2c_adap.i541 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %i2c_adap.i541, align 4
  %call.i627 = call i32 @i2c_transfer(ptr noundef %328, ptr noundef nonnull %i2cmsg.i618, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i627)
  %cmp.not.i628 = icmp eq i32 %call.i627, 1
  br i1 %cmp.not.i628, label %stv0900_write_reg.exit616.stv0900_write_reg.exit633_crit_edge, label %do.body.i630

stv0900_write_reg.exit616.stv0900_write_reg.exit633_crit_edge: ; preds = %stv0900_write_reg.exit616
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit633

do.body.i630:                                     ; preds = %stv0900_write_reg.exit616
  %329 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %329)
  %tobool.not.i629 = icmp eq i32 %329, 0
  br i1 %tobool.not.i629, label %do.body.i630.stv0900_write_reg.exit633_crit_edge, label %do.end.i632

do.body.i630.stv0900_write_reg.exit633_crit_edge: ; preds = %do.body.i630
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit633

do.end.i632:                                      ; preds = %do.body.i630
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i631 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i627) #11
  br label %stv0900_write_reg.exit633

stv0900_write_reg.exit633:                        ; preds = %do.end.i632, %do.body.i630.stv0900_write_reg.exit633_crit_edge, %stv0900_write_reg.exit616.stv0900_write_reg.exit633_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i618) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i617) #8
  br label %if.end123

if.end123:                                        ; preds = %stv0900_write_reg.exit633, %stv0900_write_reg.exit599.if.end123_crit_edge, %stv0900_write_reg.exit565.if.end123_crit_edge
  %call124 = call i32 @shiftx(i32 noundef 62553, i32 noundef %demod, i32 noundef 512) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i634) #8
  %330 = getelementptr inbounds [3 x i8], ptr %data.i634, i32 0, i32 1
  %331 = getelementptr inbounds [3 x i8], ptr %data.i634, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i635) #8
  %332 = getelementptr inbounds i8, ptr %i2cmsg.i635, i32 4
  %333 = ptrtoint ptr %332 to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 262143, ptr %332, align 4
  %334 = ptrtoint ptr %i2c_addr.i534 to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %i2c_addr.i534, align 4
  %conv.i637 = zext i8 %335 to i16
  %336 = ptrtoint ptr %i2cmsg.i635 to i32
  call void @__asan_store2_noabort(i32 %336)
  store i16 %conv.i637, ptr %i2cmsg.i635, align 4
  %flags.i638 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i635, i32 0, i32 1
  %337 = ptrtoint ptr %flags.i638 to i32
  call void @__asan_store2_noabort(i32 %337)
  store i16 0, ptr %flags.i638, align 2
  %buf.i640 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i635, i32 0, i32 3
  %338 = ptrtoint ptr %buf.i640 to i32
  call void @__asan_store4_noabort(i32 %338)
  store ptr %data.i634, ptr %buf.i640, align 4
  %339 = lshr i32 %call124, 8
  %conv2.i641 = trunc i32 %339 to i8
  %340 = ptrtoint ptr %data.i634 to i32
  call void @__asan_store1_noabort(i32 %340)
  store i8 %conv2.i641, ptr %data.i634, align 1
  %conv5.i642 = trunc i32 %call124 to i8
  %341 = ptrtoint ptr %330 to i32
  call void @__asan_store1_noabort(i32 %341)
  store i8 %conv5.i642, ptr %330, align 1
  %342 = ptrtoint ptr %331 to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 0, ptr %331, align 1
  %343 = ptrtoint ptr %i2c_adap.i541 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %i2c_adap.i541, align 4
  %call.i644 = call i32 @i2c_transfer(ptr noundef %344, ptr noundef nonnull %i2cmsg.i635, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i644)
  %cmp.not.i645 = icmp eq i32 %call.i644, 1
  br i1 %cmp.not.i645, label %if.end123.stv0900_write_reg.exit650_crit_edge, label %do.body.i647

if.end123.stv0900_write_reg.exit650_crit_edge:    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit650

do.body.i647:                                     ; preds = %if.end123
  %345 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %345)
  %tobool.not.i646 = icmp eq i32 %345, 0
  br i1 %tobool.not.i646, label %do.body.i647.stv0900_write_reg.exit650_crit_edge, label %do.end.i649

do.body.i647.stv0900_write_reg.exit650_crit_edge: ; preds = %do.body.i647
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit650

do.end.i649:                                      ; preds = %do.body.i647
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i648 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i644) #11
  br label %stv0900_write_reg.exit650

stv0900_write_reg.exit650:                        ; preds = %do.end.i649, %do.body.i647.stv0900_write_reg.exit650_crit_edge, %if.end123.stv0900_write_reg.exit650_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i635) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i634) #8
  %call126 = call i32 @shiftx(i32 noundef 62547, i32 noundef %demod, i32 noundef 512) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i651) #8
  %346 = getelementptr inbounds [3 x i8], ptr %data.i651, i32 0, i32 1
  %347 = getelementptr inbounds [3 x i8], ptr %data.i651, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i652) #8
  %348 = getelementptr inbounds i8, ptr %i2cmsg.i652, i32 4
  %349 = ptrtoint ptr %348 to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 262143, ptr %348, align 4
  %350 = ptrtoint ptr %i2c_addr.i534 to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %i2c_addr.i534, align 4
  %conv.i654 = zext i8 %351 to i16
  %352 = ptrtoint ptr %i2cmsg.i652 to i32
  call void @__asan_store2_noabort(i32 %352)
  store i16 %conv.i654, ptr %i2cmsg.i652, align 4
  %flags.i655 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i652, i32 0, i32 1
  %353 = ptrtoint ptr %flags.i655 to i32
  call void @__asan_store2_noabort(i32 %353)
  store i16 0, ptr %flags.i655, align 2
  %buf.i657 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i652, i32 0, i32 3
  %354 = ptrtoint ptr %buf.i657 to i32
  call void @__asan_store4_noabort(i32 %354)
  store ptr %data.i651, ptr %buf.i657, align 4
  %355 = lshr i32 %call126, 8
  %conv2.i658 = trunc i32 %355 to i8
  %356 = ptrtoint ptr %data.i651 to i32
  call void @__asan_store1_noabort(i32 %356)
  store i8 %conv2.i658, ptr %data.i651, align 1
  %conv5.i659 = trunc i32 %call126 to i8
  %357 = ptrtoint ptr %346 to i32
  call void @__asan_store1_noabort(i32 %357)
  store i8 %conv5.i659, ptr %346, align 1
  %358 = ptrtoint ptr %347 to i32
  call void @__asan_store1_noabort(i32 %358)
  store i8 -32, ptr %347, align 1
  %359 = ptrtoint ptr %i2c_adap.i541 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %i2c_adap.i541, align 4
  %call.i661 = call i32 @i2c_transfer(ptr noundef %360, ptr noundef nonnull %i2cmsg.i652, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i661)
  %cmp.not.i662 = icmp eq i32 %call.i661, 1
  br i1 %cmp.not.i662, label %stv0900_write_reg.exit650.stv0900_write_reg.exit667_crit_edge, label %do.body.i664

stv0900_write_reg.exit650.stv0900_write_reg.exit667_crit_edge: ; preds = %stv0900_write_reg.exit650
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit667

do.body.i664:                                     ; preds = %stv0900_write_reg.exit650
  %361 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %361)
  %tobool.not.i663 = icmp eq i32 %361, 0
  br i1 %tobool.not.i663, label %do.body.i664.stv0900_write_reg.exit667_crit_edge, label %do.end.i666

do.body.i664.stv0900_write_reg.exit667_crit_edge: ; preds = %do.body.i664
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit667

do.end.i666:                                      ; preds = %do.body.i664
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i665 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i661) #11
  br label %stv0900_write_reg.exit667

stv0900_write_reg.exit667:                        ; preds = %do.end.i666, %do.body.i664.stv0900_write_reg.exit667_crit_edge, %stv0900_write_reg.exit650.stv0900_write_reg.exit667_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i652) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i651) #8
  %call128 = call i32 @shiftx(i32 noundef 62548, i32 noundef %demod, i32 noundef 512) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i668) #8
  %362 = getelementptr inbounds [3 x i8], ptr %data.i668, i32 0, i32 1
  %363 = getelementptr inbounds [3 x i8], ptr %data.i668, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i669) #8
  %364 = getelementptr inbounds i8, ptr %i2cmsg.i669, i32 4
  %365 = ptrtoint ptr %364 to i32
  call void @__asan_store4_noabort(i32 %365)
  store i32 262143, ptr %364, align 4
  %366 = ptrtoint ptr %i2c_addr.i534 to i32
  call void @__asan_load1_noabort(i32 %366)
  %367 = load i8, ptr %i2c_addr.i534, align 4
  %conv.i671 = zext i8 %367 to i16
  %368 = ptrtoint ptr %i2cmsg.i669 to i32
  call void @__asan_store2_noabort(i32 %368)
  store i16 %conv.i671, ptr %i2cmsg.i669, align 4
  %flags.i672 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i669, i32 0, i32 1
  %369 = ptrtoint ptr %flags.i672 to i32
  call void @__asan_store2_noabort(i32 %369)
  store i16 0, ptr %flags.i672, align 2
  %buf.i674 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i669, i32 0, i32 3
  %370 = ptrtoint ptr %buf.i674 to i32
  call void @__asan_store4_noabort(i32 %370)
  store ptr %data.i668, ptr %buf.i674, align 4
  %371 = lshr i32 %call128, 8
  %conv2.i675 = trunc i32 %371 to i8
  %372 = ptrtoint ptr %data.i668 to i32
  call void @__asan_store1_noabort(i32 %372)
  store i8 %conv2.i675, ptr %data.i668, align 1
  %conv5.i676 = trunc i32 %call128 to i8
  %373 = ptrtoint ptr %362 to i32
  call void @__asan_store1_noabort(i32 %373)
  store i8 %conv5.i676, ptr %362, align 1
  %374 = ptrtoint ptr %363 to i32
  call void @__asan_store1_noabort(i32 %374)
  store i8 -64, ptr %363, align 1
  %375 = ptrtoint ptr %i2c_adap.i541 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %i2c_adap.i541, align 4
  %call.i678 = call i32 @i2c_transfer(ptr noundef %376, ptr noundef nonnull %i2cmsg.i669, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i678)
  %cmp.not.i679 = icmp eq i32 %call.i678, 1
  br i1 %cmp.not.i679, label %stv0900_write_reg.exit667.stv0900_write_reg.exit684_crit_edge, label %do.body.i681

stv0900_write_reg.exit667.stv0900_write_reg.exit684_crit_edge: ; preds = %stv0900_write_reg.exit667
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit684

do.body.i681:                                     ; preds = %stv0900_write_reg.exit667
  %377 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %377)
  %tobool.not.i680 = icmp eq i32 %377, 0
  br i1 %tobool.not.i680, label %do.body.i681.stv0900_write_reg.exit684_crit_edge, label %do.end.i683

do.body.i681.stv0900_write_reg.exit684_crit_edge: ; preds = %do.body.i681
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit684

do.end.i683:                                      ; preds = %do.body.i681
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i682 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i678) #11
  br label %stv0900_write_reg.exit684

stv0900_write_reg.exit684:                        ; preds = %do.end.i683, %do.body.i681.stv0900_write_reg.exit684_crit_edge, %stv0900_write_reg.exit667.stv0900_write_reg.exit684_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i669) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i668) #8
  %call130 = call i32 @shiftx(i32 noundef -200015856, i32 noundef %demod, i32 noundef 33554432) #8
  call void @stv0900_write_bits(ptr noundef %intp, i32 noundef %call130, i8 noundef zeroext 0)
  %call131 = call i32 @shiftx(i32 noundef -200015864, i32 noundef %demod, i32 noundef 33554432) #8
  call void @stv0900_write_bits(ptr noundef %intp, i32 noundef %call131, i8 noundef zeroext 0)
  %call132 = call i32 @shiftx(i32 noundef -199950272, i32 noundef %demod, i32 noundef 33554432) #8
  call void @stv0900_write_bits(ptr noundef %intp, i32 noundef %call132, i8 noundef zeroext 0)
  %call133 = call i32 @shiftx(i32 noundef 62545, i32 noundef %demod, i32 noundef 512) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i685) #8
  %378 = getelementptr inbounds [3 x i8], ptr %data.i685, i32 0, i32 1
  %379 = getelementptr inbounds [3 x i8], ptr %data.i685, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i686) #8
  %380 = getelementptr inbounds i8, ptr %i2cmsg.i686, i32 4
  %381 = ptrtoint ptr %380 to i32
  call void @__asan_store4_noabort(i32 %381)
  store i32 262143, ptr %380, align 4
  %382 = ptrtoint ptr %i2c_addr.i534 to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %i2c_addr.i534, align 4
  %conv.i688 = zext i8 %383 to i16
  %384 = ptrtoint ptr %i2cmsg.i686 to i32
  call void @__asan_store2_noabort(i32 %384)
  store i16 %conv.i688, ptr %i2cmsg.i686, align 4
  %flags.i689 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i686, i32 0, i32 1
  %385 = ptrtoint ptr %flags.i689 to i32
  call void @__asan_store2_noabort(i32 %385)
  store i16 0, ptr %flags.i689, align 2
  %buf.i691 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i686, i32 0, i32 3
  %386 = ptrtoint ptr %buf.i691 to i32
  call void @__asan_store4_noabort(i32 %386)
  store ptr %data.i685, ptr %buf.i691, align 4
  %387 = lshr i32 %call133, 8
  %conv2.i692 = trunc i32 %387 to i8
  %388 = ptrtoint ptr %data.i685 to i32
  call void @__asan_store1_noabort(i32 %388)
  store i8 %conv2.i692, ptr %data.i685, align 1
  %conv5.i693 = trunc i32 %call133 to i8
  %389 = ptrtoint ptr %378 to i32
  call void @__asan_store1_noabort(i32 %389)
  store i8 %conv5.i693, ptr %378, align 1
  %390 = ptrtoint ptr %379 to i32
  call void @__asan_store1_noabort(i32 %390)
  store i8 -120, ptr %379, align 1
  %391 = ptrtoint ptr %i2c_adap.i541 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %i2c_adap.i541, align 4
  %call.i695 = call i32 @i2c_transfer(ptr noundef %392, ptr noundef nonnull %i2cmsg.i686, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i695)
  %cmp.not.i696 = icmp eq i32 %call.i695, 1
  br i1 %cmp.not.i696, label %stv0900_write_reg.exit684.stv0900_write_reg.exit701_crit_edge, label %do.body.i698

stv0900_write_reg.exit684.stv0900_write_reg.exit701_crit_edge: ; preds = %stv0900_write_reg.exit684
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit701

do.body.i698:                                     ; preds = %stv0900_write_reg.exit684
  %393 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %393)
  %tobool.not.i697 = icmp eq i32 %393, 0
  br i1 %tobool.not.i697, label %do.body.i698.stv0900_write_reg.exit701_crit_edge, label %do.end.i700

do.body.i698.stv0900_write_reg.exit701_crit_edge: ; preds = %do.body.i698
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit701

do.end.i700:                                      ; preds = %do.body.i698
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i699 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i695) #11
  br label %stv0900_write_reg.exit701

stv0900_write_reg.exit701:                        ; preds = %do.end.i700, %do.body.i698.stv0900_write_reg.exit701_crit_edge, %stv0900_write_reg.exit684.stv0900_write_reg.exit701_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i686) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i685) #8
  %394 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %394)
  %395 = load i8, ptr %chip_id, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %395)
  %cmp137 = icmp ugt i8 %395, 31
  %arrayidx141 = getelementptr %struct.stv0900_internal, ptr %intp, i32 0, i32 6, i32 %demod
  %396 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %arrayidx141, align 4
  br i1 %cmp137, label %if.then139, label %if.else175

if.then139:                                       ; preds = %stv0900_write_reg.exit701
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000000, i32 %397)
  %cmp142 = icmp slt i32 %397, 2000000
  br i1 %cmp142, label %if.then144, label %if.else158

if.then144:                                       ; preds = %if.then139
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %395)
  %cmp147 = icmp ult i8 %395, 33
  %call150 = call i32 @shiftx(i32 noundef 62525, i32 noundef %demod, i32 noundef 512) #8
  br i1 %cmp147, label %if.then149, label %if.else152

if.then149:                                       ; preds = %if.then144
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i702) #8
  %398 = getelementptr inbounds [3 x i8], ptr %data.i702, i32 0, i32 1
  %399 = getelementptr inbounds [3 x i8], ptr %data.i702, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i703) #8
  %400 = getelementptr inbounds i8, ptr %i2cmsg.i703, i32 4
  %401 = ptrtoint ptr %400 to i32
  call void @__asan_store4_noabort(i32 %401)
  store i32 262143, ptr %400, align 4
  %402 = ptrtoint ptr %i2c_addr.i534 to i32
  call void @__asan_load1_noabort(i32 %402)
  %403 = load i8, ptr %i2c_addr.i534, align 4
  %conv.i705 = zext i8 %403 to i16
  %404 = ptrtoint ptr %i2cmsg.i703 to i32
  call void @__asan_store2_noabort(i32 %404)
  store i16 %conv.i705, ptr %i2cmsg.i703, align 4
  %flags.i706 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i703, i32 0, i32 1
  %405 = ptrtoint ptr %flags.i706 to i32
  call void @__asan_store2_noabort(i32 %405)
  store i16 0, ptr %flags.i706, align 2
  %buf.i708 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i703, i32 0, i32 3
  %406 = ptrtoint ptr %buf.i708 to i32
  call void @__asan_store4_noabort(i32 %406)
  store ptr %data.i702, ptr %buf.i708, align 4
  %407 = lshr i32 %call150, 8
  %conv2.i709 = trunc i32 %407 to i8
  %408 = ptrtoint ptr %data.i702 to i32
  call void @__asan_store1_noabort(i32 %408)
  store i8 %conv2.i709, ptr %data.i702, align 1
  %conv5.i710 = trunc i32 %call150 to i8
  %409 = ptrtoint ptr %398 to i32
  call void @__asan_store1_noabort(i32 %409)
  store i8 %conv5.i710, ptr %398, align 1
  %410 = ptrtoint ptr %399 to i32
  call void @__asan_store1_noabort(i32 %410)
  store i8 57, ptr %399, align 1
  %411 = ptrtoint ptr %i2c_adap.i541 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %i2c_adap.i541, align 4
  %call.i712 = call i32 @i2c_transfer(ptr noundef %412, ptr noundef nonnull %i2cmsg.i703, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i712)
  %cmp.not.i713 = icmp eq i32 %call.i712, 1
  br i1 %cmp.not.i713, label %if.then149.stv0900_write_reg.exit718_crit_edge, label %do.body.i715

if.then149.stv0900_write_reg.exit718_crit_edge:   ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit718

do.body.i715:                                     ; preds = %if.then149
  %413 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %413)
  %tobool.not.i714 = icmp eq i32 %413, 0
  br i1 %tobool.not.i714, label %do.body.i715.stv0900_write_reg.exit718_crit_edge, label %do.end.i717

do.body.i715.stv0900_write_reg.exit718_crit_edge: ; preds = %do.body.i715
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit718

do.end.i717:                                      ; preds = %do.body.i715
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i716 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i712) #11
  br label %stv0900_write_reg.exit718

stv0900_write_reg.exit718:                        ; preds = %do.end.i717, %do.body.i715.stv0900_write_reg.exit718_crit_edge, %if.then149.stv0900_write_reg.exit718_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i703) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i702) #8
  br label %if.end155

if.else152:                                       ; preds = %if.then144
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i719) #8
  %414 = getelementptr inbounds [3 x i8], ptr %data.i719, i32 0, i32 1
  %415 = getelementptr inbounds [3 x i8], ptr %data.i719, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i720) #8
  %416 = getelementptr inbounds i8, ptr %i2cmsg.i720, i32 4
  %417 = ptrtoint ptr %416 to i32
  call void @__asan_store4_noabort(i32 %417)
  store i32 262143, ptr %416, align 4
  %418 = ptrtoint ptr %i2c_addr.i534 to i32
  call void @__asan_load1_noabort(i32 %418)
  %419 = load i8, ptr %i2c_addr.i534, align 4
  %conv.i722 = zext i8 %419 to i16
  %420 = ptrtoint ptr %i2cmsg.i720 to i32
  call void @__asan_store2_noabort(i32 %420)
  store i16 %conv.i722, ptr %i2cmsg.i720, align 4
  %flags.i723 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i720, i32 0, i32 1
  %421 = ptrtoint ptr %flags.i723 to i32
  call void @__asan_store2_noabort(i32 %421)
  store i16 0, ptr %flags.i723, align 2
  %buf.i725 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i720, i32 0, i32 3
  %422 = ptrtoint ptr %buf.i725 to i32
  call void @__asan_store4_noabort(i32 %422)
  store ptr %data.i719, ptr %buf.i725, align 4
  %423 = lshr i32 %call150, 8
  %conv2.i726 = trunc i32 %423 to i8
  %424 = ptrtoint ptr %data.i719 to i32
  call void @__asan_store1_noabort(i32 %424)
  store i8 %conv2.i726, ptr %data.i719, align 1
  %conv5.i727 = trunc i32 %call150 to i8
  %425 = ptrtoint ptr %414 to i32
  call void @__asan_store1_noabort(i32 %425)
  store i8 %conv5.i727, ptr %414, align 1
  %426 = ptrtoint ptr %415 to i32
  call void @__asan_store1_noabort(i32 %426)
  store i8 -119, ptr %415, align 1
  %427 = ptrtoint ptr %i2c_adap.i541 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %i2c_adap.i541, align 4
  %call.i729 = call i32 @i2c_transfer(ptr noundef %428, ptr noundef nonnull %i2cmsg.i720, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i729)
  %cmp.not.i730 = icmp eq i32 %call.i729, 1
  br i1 %cmp.not.i730, label %if.else152.stv0900_write_reg.exit735_crit_edge, label %do.body.i732

if.else152.stv0900_write_reg.exit735_crit_edge:   ; preds = %if.else152
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit735

do.body.i732:                                     ; preds = %if.else152
  %429 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %429)
  %tobool.not.i731 = icmp eq i32 %429, 0
  br i1 %tobool.not.i731, label %do.body.i732.stv0900_write_reg.exit735_crit_edge, label %do.end.i734

do.body.i732.stv0900_write_reg.exit735_crit_edge: ; preds = %do.body.i732
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit735

do.end.i734:                                      ; preds = %do.body.i732
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i733 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i729) #11
  br label %stv0900_write_reg.exit735

stv0900_write_reg.exit735:                        ; preds = %do.end.i734, %do.body.i732.stv0900_write_reg.exit735_crit_edge, %if.else152.stv0900_write_reg.exit735_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i720) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i719) #8
  br label %if.end155

if.end155:                                        ; preds = %stv0900_write_reg.exit735, %stv0900_write_reg.exit718
  %call156 = call i32 @shiftx(i32 noundef 62526, i32 noundef %demod, i32 noundef 512) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i736) #8
  %430 = getelementptr inbounds [3 x i8], ptr %data.i736, i32 0, i32 1
  %431 = getelementptr inbounds [3 x i8], ptr %data.i736, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i737) #8
  %432 = getelementptr inbounds i8, ptr %i2cmsg.i737, i32 4
  %433 = ptrtoint ptr %432 to i32
  call void @__asan_store4_noabort(i32 %433)
  store i32 262143, ptr %432, align 4
  %434 = ptrtoint ptr %i2c_addr.i534 to i32
  call void @__asan_load1_noabort(i32 %434)
  %435 = load i8, ptr %i2c_addr.i534, align 4
  %conv.i739 = zext i8 %435 to i16
  %436 = ptrtoint ptr %i2cmsg.i737 to i32
  call void @__asan_store2_noabort(i32 %436)
  store i16 %conv.i739, ptr %i2cmsg.i737, align 4
  %flags.i740 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i737, i32 0, i32 1
  %437 = ptrtoint ptr %flags.i740 to i32
  call void @__asan_store2_noabort(i32 %437)
  store i16 0, ptr %flags.i740, align 2
  %buf.i742 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i737, i32 0, i32 3
  %438 = ptrtoint ptr %buf.i742 to i32
  call void @__asan_store4_noabort(i32 %438)
  store ptr %data.i736, ptr %buf.i742, align 4
  %439 = lshr i32 %call156, 8
  %conv2.i743 = trunc i32 %439 to i8
  %440 = ptrtoint ptr %data.i736 to i32
  call void @__asan_store1_noabort(i32 %440)
  store i8 %conv2.i743, ptr %data.i736, align 1
  %conv5.i744 = trunc i32 %call156 to i8
  %441 = ptrtoint ptr %430 to i32
  call void @__asan_store1_noabort(i32 %441)
  store i8 %conv5.i744, ptr %430, align 1
  %442 = ptrtoint ptr %431 to i32
  call void @__asan_store1_noabort(i32 %442)
  store i8 64, ptr %431, align 1
  %443 = ptrtoint ptr %i2c_adap.i541 to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %i2c_adap.i541, align 4
  %call.i746 = call i32 @i2c_transfer(ptr noundef %444, ptr noundef nonnull %i2cmsg.i737, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i746)
  %cmp.not.i747 = icmp eq i32 %call.i746, 1
  br i1 %cmp.not.i747, label %if.end155.stv0900_write_reg.exit752_crit_edge, label %do.body.i749

if.end155.stv0900_write_reg.exit752_crit_edge:    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit752

do.body.i749:                                     ; preds = %if.end155
  %445 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %445)
  %tobool.not.i748 = icmp eq i32 %445, 0
  br i1 %tobool.not.i748, label %do.body.i749.stv0900_write_reg.exit752_crit_edge, label %do.end.i751

do.body.i749.stv0900_write_reg.exit752_crit_edge: ; preds = %do.body.i749
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit752

do.end.i751:                                      ; preds = %do.body.i749
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i750 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i746) #11
  br label %stv0900_write_reg.exit752

stv0900_write_reg.exit752:                        ; preds = %do.end.i751, %do.body.i749.stv0900_write_reg.exit752_crit_edge, %if.end155.stv0900_write_reg.exit752_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i737) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i736) #8
  br label %if.end187

if.else158:                                       ; preds = %if.then139
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000000, i32 %397)
  %cmp161 = icmp ult i32 %397, 10000000
  %call164 = call i32 @shiftx(i32 noundef 62525, i32 noundef %demod, i32 noundef 512) #8
  br i1 %cmp161, label %if.then163, label %if.else168

if.then163:                                       ; preds = %if.else158
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i753) #8
  %446 = getelementptr inbounds [3 x i8], ptr %data.i753, i32 0, i32 1
  %447 = getelementptr inbounds [3 x i8], ptr %data.i753, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i754) #8
  %448 = getelementptr inbounds i8, ptr %i2cmsg.i754, i32 4
  %449 = ptrtoint ptr %448 to i32
  call void @__asan_store4_noabort(i32 %449)
  store i32 262143, ptr %448, align 4
  %450 = ptrtoint ptr %i2c_addr.i534 to i32
  call void @__asan_load1_noabort(i32 %450)
  %451 = load i8, ptr %i2c_addr.i534, align 4
  %conv.i756 = zext i8 %451 to i16
  %452 = ptrtoint ptr %i2cmsg.i754 to i32
  call void @__asan_store2_noabort(i32 %452)
  store i16 %conv.i756, ptr %i2cmsg.i754, align 4
  %flags.i757 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i754, i32 0, i32 1
  %453 = ptrtoint ptr %flags.i757 to i32
  call void @__asan_store2_noabort(i32 %453)
  store i16 0, ptr %flags.i757, align 2
  %buf.i759 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i754, i32 0, i32 3
  %454 = ptrtoint ptr %buf.i759 to i32
  call void @__asan_store4_noabort(i32 %454)
  store ptr %data.i753, ptr %buf.i759, align 4
  %455 = lshr i32 %call164, 8
  %conv2.i760 = trunc i32 %455 to i8
  %456 = ptrtoint ptr %data.i753 to i32
  call void @__asan_store1_noabort(i32 %456)
  store i8 %conv2.i760, ptr %data.i753, align 1
  %conv5.i761 = trunc i32 %call164 to i8
  %457 = ptrtoint ptr %446 to i32
  call void @__asan_store1_noabort(i32 %457)
  store i8 %conv5.i761, ptr %446, align 1
  %458 = ptrtoint ptr %447 to i32
  call void @__asan_store1_noabort(i32 %458)
  store i8 76, ptr %447, align 1
  %459 = ptrtoint ptr %i2c_adap.i541 to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %i2c_adap.i541, align 4
  %call.i763 = call i32 @i2c_transfer(ptr noundef %460, ptr noundef nonnull %i2cmsg.i754, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i763)
  %cmp.not.i764 = icmp eq i32 %call.i763, 1
  br i1 %cmp.not.i764, label %if.then163.stv0900_write_reg.exit769_crit_edge, label %do.body.i766

if.then163.stv0900_write_reg.exit769_crit_edge:   ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit769

do.body.i766:                                     ; preds = %if.then163
  %461 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %461)
  %tobool.not.i765 = icmp eq i32 %461, 0
  br i1 %tobool.not.i765, label %do.body.i766.stv0900_write_reg.exit769_crit_edge, label %do.end.i768

do.body.i766.stv0900_write_reg.exit769_crit_edge: ; preds = %do.body.i766
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit769

do.end.i768:                                      ; preds = %do.body.i766
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i767 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i763) #11
  br label %stv0900_write_reg.exit769

stv0900_write_reg.exit769:                        ; preds = %do.end.i768, %do.body.i766.stv0900_write_reg.exit769_crit_edge, %if.then163.stv0900_write_reg.exit769_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i754) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i753) #8
  %call166 = call i32 @shiftx(i32 noundef 62526, i32 noundef %demod, i32 noundef 512) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i770) #8
  %462 = getelementptr inbounds [3 x i8], ptr %data.i770, i32 0, i32 1
  %463 = getelementptr inbounds [3 x i8], ptr %data.i770, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i771) #8
  %464 = getelementptr inbounds i8, ptr %i2cmsg.i771, i32 4
  %465 = ptrtoint ptr %464 to i32
  call void @__asan_store4_noabort(i32 %465)
  store i32 262143, ptr %464, align 4
  %466 = ptrtoint ptr %i2c_addr.i534 to i32
  call void @__asan_load1_noabort(i32 %466)
  %467 = load i8, ptr %i2c_addr.i534, align 4
  %conv.i773 = zext i8 %467 to i16
  %468 = ptrtoint ptr %i2cmsg.i771 to i32
  call void @__asan_store2_noabort(i32 %468)
  store i16 %conv.i773, ptr %i2cmsg.i771, align 4
  %flags.i774 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i771, i32 0, i32 1
  %469 = ptrtoint ptr %flags.i774 to i32
  call void @__asan_store2_noabort(i32 %469)
  store i16 0, ptr %flags.i774, align 2
  %buf.i776 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i771, i32 0, i32 3
  %470 = ptrtoint ptr %buf.i776 to i32
  call void @__asan_store4_noabort(i32 %470)
  store ptr %data.i770, ptr %buf.i776, align 4
  %471 = lshr i32 %call166, 8
  %conv2.i777 = trunc i32 %471 to i8
  %472 = ptrtoint ptr %data.i770 to i32
  call void @__asan_store1_noabort(i32 %472)
  store i8 %conv2.i777, ptr %data.i770, align 1
  %conv5.i778 = trunc i32 %call166 to i8
  %473 = ptrtoint ptr %462 to i32
  call void @__asan_store1_noabort(i32 %473)
  store i8 %conv5.i778, ptr %462, align 1
  %474 = ptrtoint ptr %463 to i32
  call void @__asan_store1_noabort(i32 %474)
  store i8 32, ptr %463, align 1
  %475 = ptrtoint ptr %i2c_adap.i541 to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %i2c_adap.i541, align 4
  %call.i780 = call i32 @i2c_transfer(ptr noundef %476, ptr noundef nonnull %i2cmsg.i771, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i780)
  %cmp.not.i781 = icmp eq i32 %call.i780, 1
  br i1 %cmp.not.i781, label %stv0900_write_reg.exit769.stv0900_write_reg.exit786_crit_edge, label %do.body.i783

stv0900_write_reg.exit769.stv0900_write_reg.exit786_crit_edge: ; preds = %stv0900_write_reg.exit769
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit786

do.body.i783:                                     ; preds = %stv0900_write_reg.exit769
  %477 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %477)
  %tobool.not.i782 = icmp eq i32 %477, 0
  br i1 %tobool.not.i782, label %do.body.i783.stv0900_write_reg.exit786_crit_edge, label %do.end.i785

do.body.i783.stv0900_write_reg.exit786_crit_edge: ; preds = %do.body.i783
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit786

do.end.i785:                                      ; preds = %do.body.i783
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i784 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i780) #11
  br label %stv0900_write_reg.exit786

stv0900_write_reg.exit786:                        ; preds = %do.end.i785, %do.body.i783.stv0900_write_reg.exit786_crit_edge, %stv0900_write_reg.exit769.stv0900_write_reg.exit786_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i771) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i770) #8
  br label %if.end187

if.else168:                                       ; preds = %if.else158
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i787) #8
  %478 = getelementptr inbounds [3 x i8], ptr %data.i787, i32 0, i32 1
  %479 = getelementptr inbounds [3 x i8], ptr %data.i787, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i788) #8
  %480 = getelementptr inbounds i8, ptr %i2cmsg.i788, i32 4
  %481 = ptrtoint ptr %480 to i32
  call void @__asan_store4_noabort(i32 %481)
  store i32 262143, ptr %480, align 4
  %482 = ptrtoint ptr %i2c_addr.i534 to i32
  call void @__asan_load1_noabort(i32 %482)
  %483 = load i8, ptr %i2c_addr.i534, align 4
  %conv.i790 = zext i8 %483 to i16
  %484 = ptrtoint ptr %i2cmsg.i788 to i32
  call void @__asan_store2_noabort(i32 %484)
  store i16 %conv.i790, ptr %i2cmsg.i788, align 4
  %flags.i791 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i788, i32 0, i32 1
  %485 = ptrtoint ptr %flags.i791 to i32
  call void @__asan_store2_noabort(i32 %485)
  store i16 0, ptr %flags.i791, align 2
  %buf.i793 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i788, i32 0, i32 3
  %486 = ptrtoint ptr %buf.i793 to i32
  call void @__asan_store4_noabort(i32 %486)
  store ptr %data.i787, ptr %buf.i793, align 4
  %487 = lshr i32 %call164, 8
  %conv2.i794 = trunc i32 %487 to i8
  %488 = ptrtoint ptr %data.i787 to i32
  call void @__asan_store1_noabort(i32 %488)
  store i8 %conv2.i794, ptr %data.i787, align 1
  %conv5.i795 = trunc i32 %call164 to i8
  %489 = ptrtoint ptr %478 to i32
  call void @__asan_store1_noabort(i32 %489)
  store i8 %conv5.i795, ptr %478, align 1
  %490 = ptrtoint ptr %479 to i32
  call void @__asan_store1_noabort(i32 %490)
  store i8 75, ptr %479, align 1
  %491 = ptrtoint ptr %i2c_adap.i541 to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %i2c_adap.i541, align 4
  %call.i797 = call i32 @i2c_transfer(ptr noundef %492, ptr noundef nonnull %i2cmsg.i788, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i797)
  %cmp.not.i798 = icmp eq i32 %call.i797, 1
  br i1 %cmp.not.i798, label %if.else168.stv0900_write_reg.exit803_crit_edge, label %do.body.i800

if.else168.stv0900_write_reg.exit803_crit_edge:   ; preds = %if.else168
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit803

do.body.i800:                                     ; preds = %if.else168
  %493 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %493)
  %tobool.not.i799 = icmp eq i32 %493, 0
  br i1 %tobool.not.i799, label %do.body.i800.stv0900_write_reg.exit803_crit_edge, label %do.end.i802

do.body.i800.stv0900_write_reg.exit803_crit_edge: ; preds = %do.body.i800
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit803

do.end.i802:                                      ; preds = %do.body.i800
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i801 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i797) #11
  br label %stv0900_write_reg.exit803

stv0900_write_reg.exit803:                        ; preds = %do.end.i802, %do.body.i800.stv0900_write_reg.exit803_crit_edge, %if.else168.stv0900_write_reg.exit803_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i788) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i787) #8
  %call171 = call i32 @shiftx(i32 noundef 62526, i32 noundef %demod, i32 noundef 512) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i804) #8
  %494 = getelementptr inbounds [3 x i8], ptr %data.i804, i32 0, i32 1
  %495 = getelementptr inbounds [3 x i8], ptr %data.i804, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i805) #8
  %496 = getelementptr inbounds i8, ptr %i2cmsg.i805, i32 4
  %497 = ptrtoint ptr %496 to i32
  call void @__asan_store4_noabort(i32 %497)
  store i32 262143, ptr %496, align 4
  %498 = ptrtoint ptr %i2c_addr.i534 to i32
  call void @__asan_load1_noabort(i32 %498)
  %499 = load i8, ptr %i2c_addr.i534, align 4
  %conv.i807 = zext i8 %499 to i16
  %500 = ptrtoint ptr %i2cmsg.i805 to i32
  call void @__asan_store2_noabort(i32 %500)
  store i16 %conv.i807, ptr %i2cmsg.i805, align 4
  %flags.i808 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i805, i32 0, i32 1
  %501 = ptrtoint ptr %flags.i808 to i32
  call void @__asan_store2_noabort(i32 %501)
  store i16 0, ptr %flags.i808, align 2
  %buf.i810 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i805, i32 0, i32 3
  %502 = ptrtoint ptr %buf.i810 to i32
  call void @__asan_store4_noabort(i32 %502)
  store ptr %data.i804, ptr %buf.i810, align 4
  %503 = lshr i32 %call171, 8
  %conv2.i811 = trunc i32 %503 to i8
  %504 = ptrtoint ptr %data.i804 to i32
  call void @__asan_store1_noabort(i32 %504)
  store i8 %conv2.i811, ptr %data.i804, align 1
  %conv5.i812 = trunc i32 %call171 to i8
  %505 = ptrtoint ptr %494 to i32
  call void @__asan_store1_noabort(i32 %505)
  store i8 %conv5.i812, ptr %494, align 1
  %506 = ptrtoint ptr %495 to i32
  call void @__asan_store1_noabort(i32 %506)
  store i8 32, ptr %495, align 1
  %507 = ptrtoint ptr %i2c_adap.i541 to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %i2c_adap.i541, align 4
  %call.i814 = call i32 @i2c_transfer(ptr noundef %508, ptr noundef nonnull %i2cmsg.i805, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i814)
  %cmp.not.i815 = icmp eq i32 %call.i814, 1
  br i1 %cmp.not.i815, label %stv0900_write_reg.exit803.stv0900_write_reg.exit820_crit_edge, label %do.body.i817

stv0900_write_reg.exit803.stv0900_write_reg.exit820_crit_edge: ; preds = %stv0900_write_reg.exit803
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit820

do.body.i817:                                     ; preds = %stv0900_write_reg.exit803
  %509 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %509)
  %tobool.not.i816 = icmp eq i32 %509, 0
  br i1 %tobool.not.i816, label %do.body.i817.stv0900_write_reg.exit820_crit_edge, label %do.end.i819

do.body.i817.stv0900_write_reg.exit820_crit_edge: ; preds = %do.body.i817
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit820

do.end.i819:                                      ; preds = %do.body.i817
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i818 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i814) #11
  br label %stv0900_write_reg.exit820

stv0900_write_reg.exit820:                        ; preds = %do.end.i819, %do.body.i817.stv0900_write_reg.exit820_crit_edge, %stv0900_write_reg.exit803.stv0900_write_reg.exit820_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i805) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i804) #8
  br label %if.end187

if.else175:                                       ; preds = %stv0900_write_reg.exit701
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000000, i32 %397)
  %cmp178 = icmp slt i32 %397, 10000000
  %call181 = call i32 @shiftx(i32 noundef 62525, i32 noundef %demod, i32 noundef 512) #8
  br i1 %cmp178, label %if.then180, label %if.else183

if.then180:                                       ; preds = %if.else175
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i821) #8
  %510 = getelementptr inbounds [3 x i8], ptr %data.i821, i32 0, i32 1
  %511 = getelementptr inbounds [3 x i8], ptr %data.i821, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i822) #8
  %512 = getelementptr inbounds i8, ptr %i2cmsg.i822, i32 4
  %513 = ptrtoint ptr %512 to i32
  call void @__asan_store4_noabort(i32 %513)
  store i32 262143, ptr %512, align 4
  %514 = ptrtoint ptr %i2c_addr.i534 to i32
  call void @__asan_load1_noabort(i32 %514)
  %515 = load i8, ptr %i2c_addr.i534, align 4
  %conv.i824 = zext i8 %515 to i16
  %516 = ptrtoint ptr %i2cmsg.i822 to i32
  call void @__asan_store2_noabort(i32 %516)
  store i16 %conv.i824, ptr %i2cmsg.i822, align 4
  %flags.i825 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i822, i32 0, i32 1
  %517 = ptrtoint ptr %flags.i825 to i32
  call void @__asan_store2_noabort(i32 %517)
  store i16 0, ptr %flags.i825, align 2
  %buf.i827 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i822, i32 0, i32 3
  %518 = ptrtoint ptr %buf.i827 to i32
  call void @__asan_store4_noabort(i32 %518)
  store ptr %data.i821, ptr %buf.i827, align 4
  %519 = lshr i32 %call181, 8
  %conv2.i828 = trunc i32 %519 to i8
  %520 = ptrtoint ptr %data.i821 to i32
  call void @__asan_store1_noabort(i32 %520)
  store i8 %conv2.i828, ptr %data.i821, align 1
  %conv5.i829 = trunc i32 %call181 to i8
  %521 = ptrtoint ptr %510 to i32
  call void @__asan_store1_noabort(i32 %521)
  store i8 %conv5.i829, ptr %510, align 1
  %522 = ptrtoint ptr %511 to i32
  call void @__asan_store1_noabort(i32 %522)
  store i8 -17, ptr %511, align 1
  %523 = ptrtoint ptr %i2c_adap.i541 to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %i2c_adap.i541, align 4
  %call.i831 = call i32 @i2c_transfer(ptr noundef %524, ptr noundef nonnull %i2cmsg.i822, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i831)
  %cmp.not.i832 = icmp eq i32 %call.i831, 1
  br i1 %cmp.not.i832, label %if.then180.stv0900_write_reg.exit837_crit_edge, label %do.body.i834

if.then180.stv0900_write_reg.exit837_crit_edge:   ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit837

do.body.i834:                                     ; preds = %if.then180
  %525 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %525)
  %tobool.not.i833 = icmp eq i32 %525, 0
  br i1 %tobool.not.i833, label %do.body.i834.stv0900_write_reg.exit837_crit_edge, label %do.end.i836

do.body.i834.stv0900_write_reg.exit837_crit_edge: ; preds = %do.body.i834
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit837

do.end.i836:                                      ; preds = %do.body.i834
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i835 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i831) #11
  br label %stv0900_write_reg.exit837

stv0900_write_reg.exit837:                        ; preds = %do.end.i836, %do.body.i834.stv0900_write_reg.exit837_crit_edge, %if.then180.stv0900_write_reg.exit837_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i822) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i821) #8
  br label %if.end187

if.else183:                                       ; preds = %if.else175
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i838) #8
  %526 = getelementptr inbounds [3 x i8], ptr %data.i838, i32 0, i32 1
  %527 = getelementptr inbounds [3 x i8], ptr %data.i838, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i839) #8
  %528 = getelementptr inbounds i8, ptr %i2cmsg.i839, i32 4
  %529 = ptrtoint ptr %528 to i32
  call void @__asan_store4_noabort(i32 %529)
  store i32 262143, ptr %528, align 4
  %530 = ptrtoint ptr %i2c_addr.i534 to i32
  call void @__asan_load1_noabort(i32 %530)
  %531 = load i8, ptr %i2c_addr.i534, align 4
  %conv.i841 = zext i8 %531 to i16
  %532 = ptrtoint ptr %i2cmsg.i839 to i32
  call void @__asan_store2_noabort(i32 %532)
  store i16 %conv.i841, ptr %i2cmsg.i839, align 4
  %flags.i842 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i839, i32 0, i32 1
  %533 = ptrtoint ptr %flags.i842 to i32
  call void @__asan_store2_noabort(i32 %533)
  store i16 0, ptr %flags.i842, align 2
  %buf.i844 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i839, i32 0, i32 3
  %534 = ptrtoint ptr %buf.i844 to i32
  call void @__asan_store4_noabort(i32 %534)
  store ptr %data.i838, ptr %buf.i844, align 4
  %535 = lshr i32 %call181, 8
  %conv2.i845 = trunc i32 %535 to i8
  %536 = ptrtoint ptr %data.i838 to i32
  call void @__asan_store1_noabort(i32 %536)
  store i8 %conv2.i845, ptr %data.i838, align 1
  %conv5.i846 = trunc i32 %call181 to i8
  %537 = ptrtoint ptr %526 to i32
  call void @__asan_store1_noabort(i32 %537)
  store i8 %conv5.i846, ptr %526, align 1
  %538 = ptrtoint ptr %527 to i32
  call void @__asan_store1_noabort(i32 %538)
  store i8 -19, ptr %527, align 1
  %539 = ptrtoint ptr %i2c_adap.i541 to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load ptr, ptr %i2c_adap.i541, align 4
  %call.i848 = call i32 @i2c_transfer(ptr noundef %540, ptr noundef nonnull %i2cmsg.i839, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i848)
  %cmp.not.i849 = icmp eq i32 %call.i848, 1
  br i1 %cmp.not.i849, label %if.else183.stv0900_write_reg.exit854_crit_edge, label %do.body.i851

if.else183.stv0900_write_reg.exit854_crit_edge:   ; preds = %if.else183
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit854

do.body.i851:                                     ; preds = %if.else183
  %541 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %541)
  %tobool.not.i850 = icmp eq i32 %541, 0
  br i1 %tobool.not.i850, label %do.body.i851.stv0900_write_reg.exit854_crit_edge, label %do.end.i853

do.body.i851.stv0900_write_reg.exit854_crit_edge: ; preds = %do.body.i851
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit854

do.end.i853:                                      ; preds = %do.body.i851
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i852 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i848) #11
  br label %stv0900_write_reg.exit854

stv0900_write_reg.exit854:                        ; preds = %do.end.i853, %do.body.i851.stv0900_write_reg.exit854_crit_edge, %if.else183.stv0900_write_reg.exit854_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i839) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i838) #8
  br label %if.end187

if.end187:                                        ; preds = %stv0900_write_reg.exit854, %stv0900_write_reg.exit837, %stv0900_write_reg.exit820, %stv0900_write_reg.exit786, %stv0900_write_reg.exit752
  %arrayidx189 = getelementptr %struct.stv0900_internal, ptr %intp, i32 0, i32 9, i32 %demod
  %542 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load i32, ptr %arrayidx189, align 4
  %544 = zext i32 %543 to i64
  call void @__sanitizer_cov_trace_switch(i64 %544, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %543, label %if.end187.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb194
  ]

if.end187.sw.epilog_crit_edge:                    ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end187
  %call190 = call i32 @shiftx(i32 noundef 62486, i32 noundef %demod, i32 noundef 512) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i855) #8
  %545 = getelementptr inbounds [3 x i8], ptr %data.i855, i32 0, i32 1
  %546 = getelementptr inbounds [3 x i8], ptr %data.i855, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i856) #8
  %547 = getelementptr inbounds i8, ptr %i2cmsg.i856, i32 4
  %548 = ptrtoint ptr %547 to i32
  call void @__asan_store4_noabort(i32 %548)
  store i32 262143, ptr %547, align 4
  %549 = ptrtoint ptr %i2c_addr.i534 to i32
  call void @__asan_load1_noabort(i32 %549)
  %550 = load i8, ptr %i2c_addr.i534, align 4
  %conv.i858 = zext i8 %550 to i16
  %551 = ptrtoint ptr %i2cmsg.i856 to i32
  call void @__asan_store2_noabort(i32 %551)
  store i16 %conv.i858, ptr %i2cmsg.i856, align 4
  %flags.i859 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i856, i32 0, i32 1
  %552 = ptrtoint ptr %flags.i859 to i32
  call void @__asan_store2_noabort(i32 %552)
  store i16 0, ptr %flags.i859, align 2
  %buf.i861 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i856, i32 0, i32 3
  %553 = ptrtoint ptr %buf.i861 to i32
  call void @__asan_store4_noabort(i32 %553)
  store ptr %data.i855, ptr %buf.i861, align 4
  %554 = lshr i32 %call190, 8
  %conv2.i862 = trunc i32 %554 to i8
  %555 = ptrtoint ptr %data.i855 to i32
  call void @__asan_store1_noabort(i32 %555)
  store i8 %conv2.i862, ptr %data.i855, align 1
  %conv5.i863 = trunc i32 %call190 to i8
  %556 = ptrtoint ptr %545 to i32
  call void @__asan_store1_noabort(i32 %556)
  store i8 %conv5.i863, ptr %545, align 1
  %557 = ptrtoint ptr %546 to i32
  call void @__asan_store1_noabort(i32 %557)
  store i8 31, ptr %546, align 1
  %558 = ptrtoint ptr %i2c_adap.i541 to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %i2c_adap.i541, align 4
  %call.i865 = call i32 @i2c_transfer(ptr noundef %559, ptr noundef nonnull %i2cmsg.i856, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i865)
  %cmp.not.i866 = icmp eq i32 %call.i865, 1
  br i1 %cmp.not.i866, label %sw.bb.stv0900_write_reg.exit871_crit_edge, label %do.body.i868

sw.bb.stv0900_write_reg.exit871_crit_edge:        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit871

do.body.i868:                                     ; preds = %sw.bb
  %560 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %560)
  %tobool.not.i867 = icmp eq i32 %560, 0
  br i1 %tobool.not.i867, label %do.body.i868.stv0900_write_reg.exit871_crit_edge, label %do.end.i870

do.body.i868.stv0900_write_reg.exit871_crit_edge: ; preds = %do.body.i868
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit871

do.end.i870:                                      ; preds = %do.body.i868
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i869 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i865) #11
  br label %stv0900_write_reg.exit871

stv0900_write_reg.exit871:                        ; preds = %do.end.i870, %do.body.i868.stv0900_write_reg.exit871_crit_edge, %sw.bb.stv0900_write_reg.exit871_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i856) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i855) #8
  %call192 = call i32 @shiftx(i32 noundef 62486, i32 noundef %demod, i32 noundef 512) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i872) #8
  %561 = getelementptr inbounds [3 x i8], ptr %data.i872, i32 0, i32 1
  %562 = getelementptr inbounds [3 x i8], ptr %data.i872, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i873) #8
  %563 = getelementptr inbounds i8, ptr %i2cmsg.i873, i32 4
  %564 = ptrtoint ptr %563 to i32
  call void @__asan_store4_noabort(i32 %564)
  store i32 262143, ptr %563, align 4
  %565 = ptrtoint ptr %i2c_addr.i534 to i32
  call void @__asan_load1_noabort(i32 %565)
  %566 = load i8, ptr %i2c_addr.i534, align 4
  %conv.i875 = zext i8 %566 to i16
  %567 = ptrtoint ptr %i2cmsg.i873 to i32
  call void @__asan_store2_noabort(i32 %567)
  store i16 %conv.i875, ptr %i2cmsg.i873, align 4
  %flags.i876 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i873, i32 0, i32 1
  %568 = ptrtoint ptr %flags.i876 to i32
  call void @__asan_store2_noabort(i32 %568)
  store i16 0, ptr %flags.i876, align 2
  %buf.i878 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i873, i32 0, i32 3
  %569 = ptrtoint ptr %buf.i878 to i32
  call void @__asan_store4_noabort(i32 %569)
  store ptr %data.i872, ptr %buf.i878, align 4
  %570 = lshr i32 %call192, 8
  %conv2.i879 = trunc i32 %570 to i8
  %571 = ptrtoint ptr %data.i872 to i32
  call void @__asan_store1_noabort(i32 %571)
  store i8 %conv2.i879, ptr %data.i872, align 1
  %conv5.i880 = trunc i32 %call192 to i8
  %572 = ptrtoint ptr %561 to i32
  call void @__asan_store1_noabort(i32 %572)
  store i8 %conv5.i880, ptr %561, align 1
  %573 = ptrtoint ptr %562 to i32
  call void @__asan_store1_noabort(i32 %573)
  store i8 24, ptr %562, align 1
  %574 = ptrtoint ptr %i2c_adap.i541 to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load ptr, ptr %i2c_adap.i541, align 4
  %call.i882 = call i32 @i2c_transfer(ptr noundef %575, ptr noundef nonnull %i2cmsg.i873, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i882)
  %cmp.not.i883 = icmp eq i32 %call.i882, 1
  br i1 %cmp.not.i883, label %stv0900_write_reg.exit871.stv0900_write_reg.exit888_crit_edge, label %do.body.i885

stv0900_write_reg.exit871.stv0900_write_reg.exit888_crit_edge: ; preds = %stv0900_write_reg.exit871
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit888

do.body.i885:                                     ; preds = %stv0900_write_reg.exit871
  %576 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %576)
  %tobool.not.i884 = icmp eq i32 %576, 0
  br i1 %tobool.not.i884, label %do.body.i885.stv0900_write_reg.exit888_crit_edge, label %do.end.i887

do.body.i885.stv0900_write_reg.exit888_crit_edge: ; preds = %do.body.i885
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit888

do.end.i887:                                      ; preds = %do.body.i885
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i886 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i882) #11
  br label %stv0900_write_reg.exit888

stv0900_write_reg.exit888:                        ; preds = %do.end.i887, %do.body.i885.stv0900_write_reg.exit888_crit_edge, %stv0900_write_reg.exit871.stv0900_write_reg.exit888_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i873) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i872) #8
  br label %sw.epilog

sw.bb194:                                         ; preds = %if.end187
  %call195 = call i32 @shiftx(i32 noundef 62486, i32 noundef %demod, i32 noundef 512) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i889) #8
  %577 = getelementptr inbounds [3 x i8], ptr %data.i889, i32 0, i32 1
  %578 = getelementptr inbounds [3 x i8], ptr %data.i889, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i890) #8
  %579 = getelementptr inbounds i8, ptr %i2cmsg.i890, i32 4
  %580 = ptrtoint ptr %579 to i32
  call void @__asan_store4_noabort(i32 %580)
  store i32 262143, ptr %579, align 4
  %581 = ptrtoint ptr %i2c_addr.i534 to i32
  call void @__asan_load1_noabort(i32 %581)
  %582 = load i8, ptr %i2c_addr.i534, align 4
  %conv.i892 = zext i8 %582 to i16
  %583 = ptrtoint ptr %i2cmsg.i890 to i32
  call void @__asan_store2_noabort(i32 %583)
  store i16 %conv.i892, ptr %i2cmsg.i890, align 4
  %flags.i893 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i890, i32 0, i32 1
  %584 = ptrtoint ptr %flags.i893 to i32
  call void @__asan_store2_noabort(i32 %584)
  store i16 0, ptr %flags.i893, align 2
  %buf.i895 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i890, i32 0, i32 3
  %585 = ptrtoint ptr %buf.i895 to i32
  call void @__asan_store4_noabort(i32 %585)
  store ptr %data.i889, ptr %buf.i895, align 4
  %586 = lshr i32 %call195, 8
  %conv2.i896 = trunc i32 %586 to i8
  %587 = ptrtoint ptr %data.i889 to i32
  call void @__asan_store1_noabort(i32 %587)
  store i8 %conv2.i896, ptr %data.i889, align 1
  %conv5.i897 = trunc i32 %call195 to i8
  %588 = ptrtoint ptr %577 to i32
  call void @__asan_store1_noabort(i32 %588)
  store i8 %conv5.i897, ptr %577, align 1
  %589 = ptrtoint ptr %578 to i32
  call void @__asan_store1_noabort(i32 %589)
  store i8 31, ptr %578, align 1
  %590 = ptrtoint ptr %i2c_adap.i541 to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %i2c_adap.i541, align 4
  %call.i899 = call i32 @i2c_transfer(ptr noundef %591, ptr noundef nonnull %i2cmsg.i890, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i899)
  %cmp.not.i900 = icmp eq i32 %call.i899, 1
  br i1 %cmp.not.i900, label %sw.bb194.stv0900_write_reg.exit905_crit_edge, label %do.body.i902

sw.bb194.stv0900_write_reg.exit905_crit_edge:     ; preds = %sw.bb194
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit905

do.body.i902:                                     ; preds = %sw.bb194
  %592 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %592)
  %tobool.not.i901 = icmp eq i32 %592, 0
  br i1 %tobool.not.i901, label %do.body.i902.stv0900_write_reg.exit905_crit_edge, label %do.end.i904

do.body.i902.stv0900_write_reg.exit905_crit_edge: ; preds = %do.body.i902
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit905

do.end.i904:                                      ; preds = %do.body.i902
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i903 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i899) #11
  br label %stv0900_write_reg.exit905

stv0900_write_reg.exit905:                        ; preds = %do.end.i904, %do.body.i902.stv0900_write_reg.exit905_crit_edge, %sw.bb194.stv0900_write_reg.exit905_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i890) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i889) #8
  %call197 = call i32 @shiftx(i32 noundef 62486, i32 noundef %demod, i32 noundef 512) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i906) #8
  %593 = getelementptr inbounds [3 x i8], ptr %data.i906, i32 0, i32 1
  %594 = getelementptr inbounds [3 x i8], ptr %data.i906, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i907) #8
  %595 = getelementptr inbounds i8, ptr %i2cmsg.i907, i32 4
  %596 = ptrtoint ptr %595 to i32
  call void @__asan_store4_noabort(i32 %596)
  store i32 262143, ptr %595, align 4
  %597 = ptrtoint ptr %i2c_addr.i534 to i32
  call void @__asan_load1_noabort(i32 %597)
  %598 = load i8, ptr %i2c_addr.i534, align 4
  %conv.i909 = zext i8 %598 to i16
  %599 = ptrtoint ptr %i2cmsg.i907 to i32
  call void @__asan_store2_noabort(i32 %599)
  store i16 %conv.i909, ptr %i2cmsg.i907, align 4
  %flags.i910 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i907, i32 0, i32 1
  %600 = ptrtoint ptr %flags.i910 to i32
  call void @__asan_store2_noabort(i32 %600)
  store i16 0, ptr %flags.i910, align 2
  %buf.i912 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i907, i32 0, i32 3
  %601 = ptrtoint ptr %buf.i912 to i32
  call void @__asan_store4_noabort(i32 %601)
  store ptr %data.i906, ptr %buf.i912, align 4
  %602 = lshr i32 %call197, 8
  %conv2.i913 = trunc i32 %602 to i8
  %603 = ptrtoint ptr %data.i906 to i32
  call void @__asan_store1_noabort(i32 %603)
  store i8 %conv2.i913, ptr %data.i906, align 1
  %conv5.i914 = trunc i32 %call197 to i8
  %604 = ptrtoint ptr %593 to i32
  call void @__asan_store1_noabort(i32 %604)
  store i8 %conv5.i914, ptr %593, align 1
  %605 = ptrtoint ptr %594 to i32
  call void @__asan_store1_noabort(i32 %605)
  store i8 21, ptr %594, align 1
  %606 = ptrtoint ptr %i2c_adap.i541 to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %i2c_adap.i541, align 4
  %call.i916 = call i32 @i2c_transfer(ptr noundef %607, ptr noundef nonnull %i2cmsg.i907, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i916)
  %cmp.not.i917 = icmp eq i32 %call.i916, 1
  br i1 %cmp.not.i917, label %stv0900_write_reg.exit905.stv0900_write_reg.exit922_crit_edge, label %do.body.i919

stv0900_write_reg.exit905.stv0900_write_reg.exit922_crit_edge: ; preds = %stv0900_write_reg.exit905
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit922

do.body.i919:                                     ; preds = %stv0900_write_reg.exit905
  %608 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %608)
  %tobool.not.i918 = icmp eq i32 %608, 0
  br i1 %tobool.not.i918, label %do.body.i919.stv0900_write_reg.exit922_crit_edge, label %do.end.i921

do.body.i919.stv0900_write_reg.exit922_crit_edge: ; preds = %do.body.i919
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit922

do.end.i921:                                      ; preds = %do.body.i919
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i920 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i916) #11
  br label %stv0900_write_reg.exit922

stv0900_write_reg.exit922:                        ; preds = %do.end.i921, %do.body.i919.stv0900_write_reg.exit922_crit_edge, %stv0900_write_reg.exit905.stv0900_write_reg.exit922_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i907) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i906) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %stv0900_write_reg.exit922, %stv0900_write_reg.exit888, %if.end187.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @stv0900_get_optim_carr_loop(i32 noundef %srate, i32 noundef %modcode, i32 noundef %pilot, i8 noundef zeroext %chip_id) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.30) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %chip_id)
  %cmp = icmp ult i8 %chip_id, 19
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %chip_id)
  %cmp7 = icmp eq i8 %chip_id, 32
  %FE_STV0900_S2CarLoopCut20.FE_STV0900_S2CarLoopCut30 = select i1 %cmp7, ptr @FE_STV0900_S2CarLoopCut20, ptr @FE_STV0900_S2CarLoopCut30
  %FE_STV0900_S2LowQPCarLoopCut20.FE_STV0900_S2LowQPCarLoopCut30 = select i1 %cmp7, ptr @FE_STV0900_S2LowQPCarLoopCut20, ptr @FE_STV0900_S2LowQPCarLoopCut30
  %FE_STV0900_S2APSKCarLoopCut20.FE_STV0900_S2APSKCarLoopCut30 = select i1 %cmp7, ptr @FE_STV0900_S2APSKCarLoopCut20, ptr @FE_STV0900_S2APSKCarLoopCut30
  %cls2.0 = select i1 %cmp, ptr @FE_STV0900_S2CarLoop, ptr %FE_STV0900_S2CarLoopCut20.FE_STV0900_S2CarLoopCut30
  %cllqs2.0 = select i1 %cmp, ptr @FE_STV0900_S2LowQPCarLoopCut30, ptr %FE_STV0900_S2LowQPCarLoopCut20.FE_STV0900_S2LowQPCarLoopCut30
  %cllas2.0 = select i1 %cmp, ptr @FE_STV0900_S2APSKCarLoopCut30, ptr %FE_STV0900_S2APSKCarLoopCut20.FE_STV0900_S2APSKCarLoopCut30
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %modcode)
  %cmp13 = icmp ult i32 %modcode, 4
  br i1 %cmp13, label %land.rhs.preheader, label %land.rhs29.preheader

land.rhs29.preheader:                             ; preds = %do.end3
  %1 = ptrtoint ptr %cls2.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cls2.0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %modcode)
  %cmp32.not = icmp eq i32 %2, %modcode
  br i1 %cmp32.not, label %land.rhs29.preheader.if.else116_crit_edge, label %while.body35

land.rhs29.preheader.if.else116_crit_edge:        ; preds = %land.rhs29.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else116

land.rhs.preheader:                               ; preds = %do.end3
  %3 = ptrtoint ptr %cllqs2.0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cllqs2.0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %modcode)
  %cmp19.not = icmp eq i32 %4, %modcode
  br i1 %cmp19.not, label %land.rhs.preheader.if.then61_crit_edge, label %while.body

land.rhs.preheader.if.then61_crit_edge:           ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then61

while.body:                                       ; preds = %land.rhs.preheader
  %arrayidx.1 = getelementptr %struct.stv0900_car_loop_optim, ptr %cllqs2.0, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %modcode)
  %cmp19.not.1 = icmp eq i32 %6, %modcode
  br i1 %cmp19.not.1, label %while.body.if.then61_crit_edge, label %while.body.1

while.body.if.then61_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then61

while.body.1:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.2 = getelementptr %struct.stv0900_car_loop_optim, ptr %cllqs2.0, i32 2
  %7 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %modcode)
  %cmp19.not.2 = icmp eq i32 %8, %modcode
  %spec.select = select i1 %cmp19.not.2, i32 2, i32 3
  br label %if.then61

while.body35:                                     ; preds = %land.rhs29.preheader
  %arrayidx30.1 = getelementptr %struct.stv0900_car_loop_optim, ptr %cls2.0, i32 1
  %9 = ptrtoint ptr %arrayidx30.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx30.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %modcode)
  %cmp32.not.1 = icmp eq i32 %10, %modcode
  br i1 %cmp32.not.1, label %while.body35.if.else116_crit_edge, label %while.body35.1

while.body35.if.else116_crit_edge:                ; preds = %while.body35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else116

while.body35.1:                                   ; preds = %while.body35
  %arrayidx30.2 = getelementptr %struct.stv0900_car_loop_optim, ptr %cls2.0, i32 2
  %11 = ptrtoint ptr %arrayidx30.2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx30.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %modcode)
  %cmp32.not.2 = icmp eq i32 %12, %modcode
  br i1 %cmp32.not.2, label %while.body35.1.if.else116_crit_edge, label %while.body35.2

while.body35.1.if.else116_crit_edge:              ; preds = %while.body35.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else116

while.body35.2:                                   ; preds = %while.body35.1
  %arrayidx30.3 = getelementptr %struct.stv0900_car_loop_optim, ptr %cls2.0, i32 3
  %13 = ptrtoint ptr %arrayidx30.3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx30.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %modcode)
  %cmp32.not.3 = icmp eq i32 %14, %modcode
  br i1 %cmp32.not.3, label %while.body35.2.if.else116_crit_edge, label %while.body35.3

while.body35.2.if.else116_crit_edge:              ; preds = %while.body35.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else116

while.body35.3:                                   ; preds = %while.body35.2
  %arrayidx30.4 = getelementptr %struct.stv0900_car_loop_optim, ptr %cls2.0, i32 4
  %15 = ptrtoint ptr %arrayidx30.4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx30.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %modcode)
  %cmp32.not.4 = icmp eq i32 %16, %modcode
  br i1 %cmp32.not.4, label %while.body35.3.if.else116_crit_edge, label %while.body35.4

while.body35.3.if.else116_crit_edge:              ; preds = %while.body35.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else116

while.body35.4:                                   ; preds = %while.body35.3
  %arrayidx30.5 = getelementptr %struct.stv0900_car_loop_optim, ptr %cls2.0, i32 5
  %17 = ptrtoint ptr %arrayidx30.5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx30.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %modcode)
  %cmp32.not.5 = icmp eq i32 %18, %modcode
  br i1 %cmp32.not.5, label %while.body35.4.if.else116_crit_edge, label %while.body35.5

while.body35.4.if.else116_crit_edge:              ; preds = %while.body35.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else116

while.body35.5:                                   ; preds = %while.body35.4
  %arrayidx30.6 = getelementptr %struct.stv0900_car_loop_optim, ptr %cls2.0, i32 6
  %19 = ptrtoint ptr %arrayidx30.6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx30.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %modcode)
  %cmp32.not.6 = icmp eq i32 %20, %modcode
  br i1 %cmp32.not.6, label %while.body35.5.if.else116_crit_edge, label %while.body35.6

while.body35.5.if.else116_crit_edge:              ; preds = %while.body35.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else116

while.body35.6:                                   ; preds = %while.body35.5
  %arrayidx30.7 = getelementptr %struct.stv0900_car_loop_optim, ptr %cls2.0, i32 7
  %21 = ptrtoint ptr %arrayidx30.7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx30.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %modcode)
  %cmp32.not.7 = icmp eq i32 %22, %modcode
  br i1 %cmp32.not.7, label %while.body35.6.if.else116_crit_edge, label %while.body35.7

while.body35.6.if.else116_crit_edge:              ; preds = %while.body35.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else116

while.body35.7:                                   ; preds = %while.body35.6
  %arrayidx30.8 = getelementptr %struct.stv0900_car_loop_optim, ptr %cls2.0, i32 8
  %23 = ptrtoint ptr %arrayidx30.8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx30.8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %modcode)
  %cmp32.not.8 = icmp eq i32 %24, %modcode
  br i1 %cmp32.not.8, label %while.body35.7.if.else116_crit_edge, label %while.body35.8

while.body35.7.if.else116_crit_edge:              ; preds = %while.body35.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else116

while.body35.8:                                   ; preds = %while.body35.7
  %arrayidx30.9 = getelementptr %struct.stv0900_car_loop_optim, ptr %cls2.0, i32 9
  %25 = ptrtoint ptr %arrayidx30.9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx30.9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %modcode)
  %cmp32.not.9 = icmp eq i32 %26, %modcode
  br i1 %cmp32.not.9, label %while.body35.8.if.else116_crit_edge, label %while.body35.9

while.body35.8.if.else116_crit_edge:              ; preds = %while.body35.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else116

while.body35.9:                                   ; preds = %while.body35.8
  %arrayidx30.10 = getelementptr %struct.stv0900_car_loop_optim, ptr %cls2.0, i32 10
  %27 = ptrtoint ptr %arrayidx30.10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx30.10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %modcode)
  %cmp32.not.10 = icmp eq i32 %28, %modcode
  br i1 %cmp32.not.10, label %while.body35.9.if.else116_crit_edge, label %while.body35.10

while.body35.9.if.else116_crit_edge:              ; preds = %while.body35.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else116

while.body35.10:                                  ; preds = %while.body35.9
  %arrayidx30.11 = getelementptr %struct.stv0900_car_loop_optim, ptr %cls2.0, i32 11
  %29 = ptrtoint ptr %arrayidx30.11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx30.11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %modcode)
  %cmp32.not.11 = icmp eq i32 %30, %modcode
  br i1 %cmp32.not.11, label %while.body35.10.if.else116_crit_edge, label %while.body35.11

while.body35.10.if.else116_crit_edge:             ; preds = %while.body35.10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else116

while.body35.11:                                  ; preds = %while.body35.10
  %arrayidx30.12 = getelementptr %struct.stv0900_car_loop_optim, ptr %cls2.0, i32 12
  %31 = ptrtoint ptr %arrayidx30.12 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx30.12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %modcode)
  %cmp32.not.12 = icmp eq i32 %32, %modcode
  br i1 %cmp32.not.12, label %while.body35.11.if.else116_crit_edge, label %while.body35.12

while.body35.11.if.else116_crit_edge:             ; preds = %while.body35.11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else116

while.body35.12:                                  ; preds = %while.body35.11
  %arrayidx30.13 = getelementptr %struct.stv0900_car_loop_optim, ptr %cls2.0, i32 13
  %33 = ptrtoint ptr %arrayidx30.13 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx30.13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %modcode)
  %cmp32.not.13 = icmp eq i32 %34, %modcode
  br i1 %cmp32.not.13, label %while.body35.12.if.else116_crit_edge, label %while.body35.13

while.body35.12.if.else116_crit_edge:             ; preds = %while.body35.12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else116

while.body35.13:                                  ; preds = %while.body35.12
  %35 = ptrtoint ptr %cllas2.0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cllas2.0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %modcode)
  %cmp47.not = icmp eq i32 %36, %modcode
  br i1 %cmp47.not, label %while.body35.13.while.end52_crit_edge, label %while.body50

while.body35.13.while.end52_crit_edge:            ; preds = %while.body35.13
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end52

while.body50:                                     ; preds = %while.body35.13
  %arrayidx45.1 = getelementptr %struct.stv0900_car_loop_optim, ptr %cllas2.0, i32 1
  %37 = ptrtoint ptr %arrayidx45.1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx45.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %modcode)
  %cmp47.not.1 = icmp eq i32 %38, %modcode
  br i1 %cmp47.not.1, label %while.body50.while.end52_crit_edge, label %while.body50.1

while.body50.while.end52_crit_edge:               ; preds = %while.body50
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end52

while.body50.1:                                   ; preds = %while.body50
  %arrayidx45.2 = getelementptr %struct.stv0900_car_loop_optim, ptr %cllas2.0, i32 2
  %39 = ptrtoint ptr %arrayidx45.2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx45.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %modcode)
  %cmp47.not.2 = icmp eq i32 %40, %modcode
  br i1 %cmp47.not.2, label %while.body50.1.while.end52_crit_edge, label %while.body50.2

while.body50.1.while.end52_crit_edge:             ; preds = %while.body50.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end52

while.body50.2:                                   ; preds = %while.body50.1
  %arrayidx45.3 = getelementptr %struct.stv0900_car_loop_optim, ptr %cllas2.0, i32 3
  %41 = ptrtoint ptr %arrayidx45.3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx45.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %modcode)
  %cmp47.not.3 = icmp eq i32 %42, %modcode
  br i1 %cmp47.not.3, label %while.body50.2.while.end52_crit_edge, label %while.body50.3

while.body50.2.while.end52_crit_edge:             ; preds = %while.body50.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end52

while.body50.3:                                   ; preds = %while.body50.2
  %arrayidx45.4 = getelementptr %struct.stv0900_car_loop_optim, ptr %cllas2.0, i32 4
  %43 = ptrtoint ptr %arrayidx45.4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx45.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %modcode)
  %cmp47.not.4 = icmp eq i32 %44, %modcode
  br i1 %cmp47.not.4, label %while.body50.3.while.end52_crit_edge, label %while.body50.4

while.body50.3.while.end52_crit_edge:             ; preds = %while.body50.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end52

while.body50.4:                                   ; preds = %while.body50.3
  %arrayidx45.5 = getelementptr %struct.stv0900_car_loop_optim, ptr %cllas2.0, i32 5
  %45 = ptrtoint ptr %arrayidx45.5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx45.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %modcode)
  %cmp47.not.5 = icmp eq i32 %46, %modcode
  br i1 %cmp47.not.5, label %while.body50.4.while.end52_crit_edge, label %while.body50.5

while.body50.4.while.end52_crit_edge:             ; preds = %while.body50.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end52

while.body50.5:                                   ; preds = %while.body50.4
  %arrayidx45.6 = getelementptr %struct.stv0900_car_loop_optim, ptr %cllas2.0, i32 6
  %47 = ptrtoint ptr %arrayidx45.6 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx45.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %modcode)
  %cmp47.not.6 = icmp eq i32 %48, %modcode
  br i1 %cmp47.not.6, label %while.body50.5.while.end52_crit_edge, label %while.body50.6

while.body50.5.while.end52_crit_edge:             ; preds = %while.body50.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end52

while.body50.6:                                   ; preds = %while.body50.5
  %arrayidx45.7 = getelementptr %struct.stv0900_car_loop_optim, ptr %cllas2.0, i32 7
  %49 = ptrtoint ptr %arrayidx45.7 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx45.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %modcode)
  %cmp47.not.7 = icmp eq i32 %50, %modcode
  br i1 %cmp47.not.7, label %while.body50.6.while.end52_crit_edge, label %while.body50.7

while.body50.6.while.end52_crit_edge:             ; preds = %while.body50.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end52

while.body50.7:                                   ; preds = %while.body50.6
  %arrayidx45.8 = getelementptr %struct.stv0900_car_loop_optim, ptr %cllas2.0, i32 8
  %51 = ptrtoint ptr %arrayidx45.8 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx45.8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %modcode)
  %cmp47.not.8 = icmp eq i32 %52, %modcode
  br i1 %cmp47.not.8, label %while.body50.7.while.end52_crit_edge, label %while.body50.8

while.body50.7.while.end52_crit_edge:             ; preds = %while.body50.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end52

while.body50.8:                                   ; preds = %while.body50.7
  %arrayidx45.9 = getelementptr %struct.stv0900_car_loop_optim, ptr %cllas2.0, i32 9
  %53 = ptrtoint ptr %arrayidx45.9 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx45.9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %modcode)
  %cmp47.not.9 = icmp eq i32 %54, %modcode
  br i1 %cmp47.not.9, label %while.body50.8.while.end52_crit_edge, label %while.body50.9

while.body50.8.while.end52_crit_edge:             ; preds = %while.body50.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end52

while.body50.9:                                   ; preds = %while.body50.8
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx45.10 = getelementptr %struct.stv0900_car_loop_optim, ptr %cllas2.0, i32 10
  %55 = ptrtoint ptr %arrayidx45.10 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx45.10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %modcode)
  %cmp47.not.10 = icmp eq i32 %56, %modcode
  %spec.select318 = select i1 %cmp47.not.10, i32 10, i32 11
  br label %while.end52

while.end52:                                      ; preds = %while.body50.9, %while.body50.8.while.end52_crit_edge, %while.body50.7.while.end52_crit_edge, %while.body50.6.while.end52_crit_edge, %while.body50.5.while.end52_crit_edge, %while.body50.4.while.end52_crit_edge, %while.body50.3.while.end52_crit_edge, %while.body50.2.while.end52_crit_edge, %while.body50.1.while.end52_crit_edge, %while.body50.while.end52_crit_edge, %while.body35.13.while.end52_crit_edge
  %i.2.lcssa = phi i32 [ 0, %while.body35.13.while.end52_crit_edge ], [ 1, %while.body50.while.end52_crit_edge ], [ 2, %while.body50.1.while.end52_crit_edge ], [ 3, %while.body50.2.while.end52_crit_edge ], [ 4, %while.body50.3.while.end52_crit_edge ], [ 5, %while.body50.4.while.end52_crit_edge ], [ 6, %while.body50.5.while.end52_crit_edge ], [ 7, %while.body50.6.while.end52_crit_edge ], [ 8, %while.body50.7.while.end52_crit_edge ], [ 9, %while.body50.8.while.end52_crit_edge ], [ %spec.select318, %while.body50.9 ]
  %57 = tail call i32 @llvm.umin.i32(i32 %i.2.lcssa, i32 10)
  br label %if.else116

if.then61:                                        ; preds = %while.body.1, %while.body.if.then61_crit_edge, %land.rhs.preheader.if.then61_crit_edge
  %i.0.lcssa = phi i32 [ 0, %land.rhs.preheader.if.then61_crit_edge ], [ 1, %while.body.if.then61_crit_edge ], [ %spec.select, %while.body.1 ]
  %58 = tail call i32 @llvm.umin.i32(i32 %i.0.lcssa, i32 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pilot)
  %tobool62.not = icmp eq i32 %pilot, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000001, i32 %srate)
  %cmp90 = icmp slt i32 %srate, 3000001
  br i1 %tobool62.not, label %if.else89, label %if.then63

if.then63:                                        ; preds = %if.then61
  br i1 %cmp90, label %if.then66, label %if.else68

if.then66:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  %car_loop_pilots_on_2 = getelementptr %struct.stv0900_car_loop_optim, ptr %cllqs2.0, i32 %58, i32 1
  %59 = ptrtoint ptr %car_loop_pilots_on_2 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %car_loop_pilots_on_2, align 4
  br label %if.end220

if.else68:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000001, i32 %srate)
  %cmp69 = icmp ult i32 %srate, 7000001
  br i1 %cmp69, label %if.then71, label %if.else73

if.then71:                                        ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #10
  %car_loop_pilots_on_5 = getelementptr %struct.stv0900_car_loop_optim, ptr %cllqs2.0, i32 %58, i32 3
  %61 = ptrtoint ptr %car_loop_pilots_on_5 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %car_loop_pilots_on_5, align 2
  br label %if.end220

if.else73:                                        ; preds = %if.else68
  call void @__sanitizer_cov_trace_const_cmp4(i32 15000001, i32 %srate)
  %cmp74 = icmp ult i32 %srate, 15000001
  br i1 %cmp74, label %if.then76, label %if.else78

if.then76:                                        ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #10
  %car_loop_pilots_on_10 = getelementptr %struct.stv0900_car_loop_optim, ptr %cllqs2.0, i32 %58, i32 5
  %63 = ptrtoint ptr %car_loop_pilots_on_10 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %car_loop_pilots_on_10, align 4
  br label %if.end220

if.else78:                                        ; preds = %if.else73
  call void @__sanitizer_cov_trace_const_cmp4(i32 25000001, i32 %srate)
  %cmp79 = icmp ult i32 %srate, 25000001
  br i1 %cmp79, label %if.then81, label %if.else83

if.then81:                                        ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #10
  %car_loop_pilots_on_20 = getelementptr %struct.stv0900_car_loop_optim, ptr %cllqs2.0, i32 %58, i32 7
  %65 = ptrtoint ptr %car_loop_pilots_on_20 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %car_loop_pilots_on_20, align 2
  br label %if.end220

if.else83:                                        ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #10
  %car_loop_pilots_on_30 = getelementptr %struct.stv0900_car_loop_optim, ptr %cllqs2.0, i32 %58, i32 9
  %67 = ptrtoint ptr %car_loop_pilots_on_30 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %car_loop_pilots_on_30, align 4
  br label %if.end220

if.else89:                                        ; preds = %if.then61
  br i1 %cmp90, label %if.then92, label %if.else94

if.then92:                                        ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #10
  %car_loop_pilots_off_2 = getelementptr %struct.stv0900_car_loop_optim, ptr %cllqs2.0, i32 %58, i32 2
  %69 = ptrtoint ptr %car_loop_pilots_off_2 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %car_loop_pilots_off_2, align 1
  br label %if.end220

if.else94:                                        ; preds = %if.else89
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000001, i32 %srate)
  %cmp95 = icmp ult i32 %srate, 7000001
  br i1 %cmp95, label %if.then97, label %if.else99

if.then97:                                        ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #10
  %car_loop_pilots_off_5 = getelementptr %struct.stv0900_car_loop_optim, ptr %cllqs2.0, i32 %58, i32 4
  %71 = ptrtoint ptr %car_loop_pilots_off_5 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %car_loop_pilots_off_5, align 1
  br label %if.end220

if.else99:                                        ; preds = %if.else94
  call void @__sanitizer_cov_trace_const_cmp4(i32 15000001, i32 %srate)
  %cmp100 = icmp ult i32 %srate, 15000001
  br i1 %cmp100, label %if.then102, label %if.else104

if.then102:                                       ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #10
  %car_loop_pilots_off_10 = getelementptr %struct.stv0900_car_loop_optim, ptr %cllqs2.0, i32 %58, i32 6
  %73 = ptrtoint ptr %car_loop_pilots_off_10 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %car_loop_pilots_off_10, align 1
  br label %if.end220

if.else104:                                       ; preds = %if.else99
  call void @__sanitizer_cov_trace_const_cmp4(i32 25000001, i32 %srate)
  %cmp105 = icmp ult i32 %srate, 25000001
  br i1 %cmp105, label %if.then107, label %if.else109

if.then107:                                       ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #10
  %car_loop_pilots_off_20 = getelementptr %struct.stv0900_car_loop_optim, ptr %cllqs2.0, i32 %58, i32 8
  %75 = ptrtoint ptr %car_loop_pilots_off_20 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %car_loop_pilots_off_20, align 1
  br label %if.end220

if.else109:                                       ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #10
  %car_loop_pilots_off_30 = getelementptr %struct.stv0900_car_loop_optim, ptr %cllqs2.0, i32 %58, i32 10
  %77 = ptrtoint ptr %car_loop_pilots_off_30 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %car_loop_pilots_off_30, align 1
  br label %if.end220

if.else116:                                       ; preds = %while.end52, %while.body35.12.if.else116_crit_edge, %while.body35.11.if.else116_crit_edge, %while.body35.10.if.else116_crit_edge, %while.body35.9.if.else116_crit_edge, %while.body35.8.if.else116_crit_edge, %while.body35.7.if.else116_crit_edge, %while.body35.6.if.else116_crit_edge, %while.body35.5.if.else116_crit_edge, %while.body35.4.if.else116_crit_edge, %while.body35.3.if.else116_crit_edge, %while.body35.2.if.else116_crit_edge, %while.body35.1.if.else116_crit_edge, %while.body35.if.else116_crit_edge, %land.rhs29.preheader.if.else116_crit_edge
  %i.3.ph = phi i32 [ 13, %while.body35.12.if.else116_crit_edge ], [ 12, %while.body35.11.if.else116_crit_edge ], [ 11, %while.body35.10.if.else116_crit_edge ], [ 10, %while.body35.9.if.else116_crit_edge ], [ 9, %while.body35.8.if.else116_crit_edge ], [ 8, %while.body35.7.if.else116_crit_edge ], [ 7, %while.body35.6.if.else116_crit_edge ], [ 6, %while.body35.5.if.else116_crit_edge ], [ 5, %while.body35.4.if.else116_crit_edge ], [ 4, %while.body35.3.if.else116_crit_edge ], [ 3, %while.body35.2.if.else116_crit_edge ], [ 2, %while.body35.1.if.else116_crit_edge ], [ 1, %while.body35.if.else116_crit_edge ], [ 0, %land.rhs29.preheader.if.else116_crit_edge ], [ %57, %while.end52 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %modcode)
  %cmp117 = icmp ult i32 %modcode, 18
  br i1 %cmp117, label %if.then119, label %if.else184

if.then119:                                       ; preds = %if.else116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pilot)
  %tobool120.not = icmp eq i32 %pilot, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000001, i32 %srate)
  %cmp153 = icmp slt i32 %srate, 3000001
  br i1 %tobool120.not, label %if.else152, label %if.then121

if.then121:                                       ; preds = %if.then119
  br i1 %cmp153, label %if.then124, label %if.else127

if.then124:                                       ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #10
  %car_loop_pilots_on_2126 = getelementptr %struct.stv0900_car_loop_optim, ptr %cls2.0, i32 %i.3.ph, i32 1
  %79 = ptrtoint ptr %car_loop_pilots_on_2126 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %car_loop_pilots_on_2126, align 4
  br label %if.end220

if.else127:                                       ; preds = %if.then121
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000001, i32 %srate)
  %cmp128 = icmp ult i32 %srate, 7000001
  br i1 %cmp128, label %if.then130, label %if.else133

if.then130:                                       ; preds = %if.else127
  call void @__sanitizer_cov_trace_pc() #10
  %car_loop_pilots_on_5132 = getelementptr %struct.stv0900_car_loop_optim, ptr %cls2.0, i32 %i.3.ph, i32 3
  %81 = ptrtoint ptr %car_loop_pilots_on_5132 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %car_loop_pilots_on_5132, align 2
  br label %if.end220

if.else133:                                       ; preds = %if.else127
  call void @__sanitizer_cov_trace_const_cmp4(i32 15000001, i32 %srate)
  %cmp134 = icmp ult i32 %srate, 15000001
  br i1 %cmp134, label %if.then136, label %if.else139

if.then136:                                       ; preds = %if.else133
  call void @__sanitizer_cov_trace_pc() #10
  %car_loop_pilots_on_10138 = getelementptr %struct.stv0900_car_loop_optim, ptr %cls2.0, i32 %i.3.ph, i32 5
  %83 = ptrtoint ptr %car_loop_pilots_on_10138 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %car_loop_pilots_on_10138, align 4
  br label %if.end220

if.else139:                                       ; preds = %if.else133
  call void @__sanitizer_cov_trace_const_cmp4(i32 25000001, i32 %srate)
  %cmp140 = icmp ult i32 %srate, 25000001
  br i1 %cmp140, label %if.then142, label %if.else145

if.then142:                                       ; preds = %if.else139
  call void @__sanitizer_cov_trace_pc() #10
  %car_loop_pilots_on_20144 = getelementptr %struct.stv0900_car_loop_optim, ptr %cls2.0, i32 %i.3.ph, i32 7
  %85 = ptrtoint ptr %car_loop_pilots_on_20144 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %car_loop_pilots_on_20144, align 2
  br label %if.end220

if.else145:                                       ; preds = %if.else139
  call void @__sanitizer_cov_trace_pc() #10
  %car_loop_pilots_on_30147 = getelementptr %struct.stv0900_car_loop_optim, ptr %cls2.0, i32 %i.3.ph, i32 9
  %87 = ptrtoint ptr %car_loop_pilots_on_30147 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %car_loop_pilots_on_30147, align 4
  br label %if.end220

if.else152:                                       ; preds = %if.then119
  br i1 %cmp153, label %if.then155, label %if.else158

if.then155:                                       ; preds = %if.else152
  call void @__sanitizer_cov_trace_pc() #10
  %car_loop_pilots_off_2157 = getelementptr %struct.stv0900_car_loop_optim, ptr %cls2.0, i32 %i.3.ph, i32 2
  %89 = ptrtoint ptr %car_loop_pilots_off_2157 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %car_loop_pilots_off_2157, align 1
  br label %if.end220

if.else158:                                       ; preds = %if.else152
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000001, i32 %srate)
  %cmp159 = icmp ult i32 %srate, 7000001
  br i1 %cmp159, label %if.then161, label %if.else164

if.then161:                                       ; preds = %if.else158
  call void @__sanitizer_cov_trace_pc() #10
  %car_loop_pilots_off_5163 = getelementptr %struct.stv0900_car_loop_optim, ptr %cls2.0, i32 %i.3.ph, i32 4
  %91 = ptrtoint ptr %car_loop_pilots_off_5163 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %car_loop_pilots_off_5163, align 1
  br label %if.end220

if.else164:                                       ; preds = %if.else158
  call void @__sanitizer_cov_trace_const_cmp4(i32 15000001, i32 %srate)
  %cmp165 = icmp ult i32 %srate, 15000001
  br i1 %cmp165, label %if.then167, label %if.else170

if.then167:                                       ; preds = %if.else164
  call void @__sanitizer_cov_trace_pc() #10
  %car_loop_pilots_off_10169 = getelementptr %struct.stv0900_car_loop_optim, ptr %cls2.0, i32 %i.3.ph, i32 6
  %93 = ptrtoint ptr %car_loop_pilots_off_10169 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %car_loop_pilots_off_10169, align 1
  br label %if.end220

if.else170:                                       ; preds = %if.else164
  call void @__sanitizer_cov_trace_const_cmp4(i32 25000001, i32 %srate)
  %cmp171 = icmp ult i32 %srate, 25000001
  br i1 %cmp171, label %if.then173, label %if.else176

if.then173:                                       ; preds = %if.else170
  call void @__sanitizer_cov_trace_pc() #10
  %car_loop_pilots_off_20175 = getelementptr %struct.stv0900_car_loop_optim, ptr %cls2.0, i32 %i.3.ph, i32 8
  %95 = ptrtoint ptr %car_loop_pilots_off_20175 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %car_loop_pilots_off_20175, align 1
  br label %if.end220

if.else176:                                       ; preds = %if.else170
  call void @__sanitizer_cov_trace_pc() #10
  %car_loop_pilots_off_30178 = getelementptr %struct.stv0900_car_loop_optim, ptr %cls2.0, i32 %i.3.ph, i32 10
  %97 = ptrtoint ptr %car_loop_pilots_off_30178 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %car_loop_pilots_off_30178, align 1
  br label %if.end220

if.else184:                                       ; preds = %if.else116
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %i.3.ph)
  %cmp185 = icmp ult i32 %i.3.ph, 11
  br i1 %cmp185, label %if.then187, label %if.else184.if.end220_crit_edge

if.else184.if.end220_crit_edge:                   ; preds = %if.else184
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end220

if.then187:                                       ; preds = %if.else184
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000001, i32 %srate)
  %cmp188 = icmp slt i32 %srate, 3000001
  br i1 %cmp188, label %if.then190, label %if.else193

if.then190:                                       ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #10
  %car_loop_pilots_on_2192 = getelementptr %struct.stv0900_car_loop_optim, ptr %cllas2.0, i32 %i.3.ph, i32 1
  %99 = ptrtoint ptr %car_loop_pilots_on_2192 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %car_loop_pilots_on_2192, align 4
  br label %if.end220

if.else193:                                       ; preds = %if.then187
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000001, i32 %srate)
  %cmp194 = icmp ult i32 %srate, 7000001
  br i1 %cmp194, label %if.then196, label %if.else199

if.then196:                                       ; preds = %if.else193
  call void @__sanitizer_cov_trace_pc() #10
  %car_loop_pilots_on_5198 = getelementptr %struct.stv0900_car_loop_optim, ptr %cllas2.0, i32 %i.3.ph, i32 3
  %101 = ptrtoint ptr %car_loop_pilots_on_5198 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %car_loop_pilots_on_5198, align 2
  br label %if.end220

if.else199:                                       ; preds = %if.else193
  call void @__sanitizer_cov_trace_const_cmp4(i32 15000001, i32 %srate)
  %cmp200 = icmp ult i32 %srate, 15000001
  br i1 %cmp200, label %if.then202, label %if.else205

if.then202:                                       ; preds = %if.else199
  call void @__sanitizer_cov_trace_pc() #10
  %car_loop_pilots_on_10204 = getelementptr %struct.stv0900_car_loop_optim, ptr %cllas2.0, i32 %i.3.ph, i32 5
  %103 = ptrtoint ptr %car_loop_pilots_on_10204 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %car_loop_pilots_on_10204, align 4
  br label %if.end220

if.else205:                                       ; preds = %if.else199
  call void @__sanitizer_cov_trace_const_cmp4(i32 25000001, i32 %srate)
  %cmp206 = icmp ult i32 %srate, 25000001
  br i1 %cmp206, label %if.then208, label %if.else211

if.then208:                                       ; preds = %if.else205
  call void @__sanitizer_cov_trace_pc() #10
  %car_loop_pilots_on_20210 = getelementptr %struct.stv0900_car_loop_optim, ptr %cllas2.0, i32 %i.3.ph, i32 7
  %105 = ptrtoint ptr %car_loop_pilots_on_20210 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %car_loop_pilots_on_20210, align 2
  br label %if.end220

if.else211:                                       ; preds = %if.else205
  call void @__sanitizer_cov_trace_pc() #10
  %car_loop_pilots_on_30213 = getelementptr %struct.stv0900_car_loop_optim, ptr %cllas2.0, i32 %i.3.ph, i32 9
  %107 = ptrtoint ptr %car_loop_pilots_on_30213 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %car_loop_pilots_on_30213, align 4
  br label %if.end220

if.end220:                                        ; preds = %if.else211, %if.then208, %if.then202, %if.then196, %if.then190, %if.else184.if.end220_crit_edge, %if.else176, %if.then173, %if.then167, %if.then161, %if.then155, %if.else145, %if.then142, %if.then136, %if.then130, %if.then124, %if.else109, %if.then107, %if.then102, %if.then97, %if.then92, %if.else83, %if.then81, %if.then76, %if.then71, %if.then66
  %aclc_value.0 = phi i8 [ %60, %if.then66 ], [ %62, %if.then71 ], [ %64, %if.then76 ], [ %66, %if.then81 ], [ %68, %if.else83 ], [ %70, %if.then92 ], [ %72, %if.then97 ], [ %74, %if.then102 ], [ %76, %if.then107 ], [ %78, %if.else109 ], [ %80, %if.then124 ], [ %82, %if.then130 ], [ %84, %if.then136 ], [ %86, %if.then142 ], [ %88, %if.else145 ], [ %90, %if.then155 ], [ %92, %if.then161 ], [ %94, %if.then167 ], [ %96, %if.then173 ], [ %98, %if.else176 ], [ %100, %if.then190 ], [ %102, %if.then196 ], [ %104, %if.then202 ], [ %106, %if.then208 ], [ %108, %if.else211 ], [ 41, %if.else184.if.end220_crit_edge ]
  ret i8 %aclc_value.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @stv0900_get_optim_short_carr_loop(i32 noundef %srate, i32 noundef %modulation, i8 noundef zeroext %chip_id) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.31) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %switch.tableidx = add i32 %modulation, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %1 = icmp ult i32 %switch.tableidx, 3
  %spec.select = select i1 %1, i32 %modulation, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %chip_id)
  %cmp = icmp ugt i8 %chip_id, 47
  br i1 %cmp, label %if.then8, label %if.else32

if.then8:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000001, i32 %srate)
  %cmp9 = icmp slt i32 %srate, 3000001
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %car_loop_2 = getelementptr %struct.stv0900_short_frames_car_loop_optim_vs_mod, ptr @FE_STV0900_S2ShortCarLoopCut30, i32 %spec.select, i32 1
  br label %if.end89

if.else:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000001, i32 %srate)
  %cmp12 = icmp ult i32 %srate, 7000001
  br i1 %cmp12, label %if.then14, label %if.else16

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %car_loop_5 = getelementptr %struct.stv0900_short_frames_car_loop_optim_vs_mod, ptr @FE_STV0900_S2ShortCarLoopCut30, i32 %spec.select, i32 2
  br label %if.end89

if.else16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 15000001, i32 %srate)
  %cmp17 = icmp ult i32 %srate, 15000001
  br i1 %cmp17, label %if.then19, label %if.else21

if.then19:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #10
  %car_loop_10 = getelementptr %struct.stv0900_short_frames_car_loop_optim_vs_mod, ptr @FE_STV0900_S2ShortCarLoopCut30, i32 %spec.select, i32 3
  br label %if.end89

if.else21:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_const_cmp4(i32 25000001, i32 %srate)
  %cmp22 = icmp ult i32 %srate, 25000001
  br i1 %cmp22, label %if.then24, label %if.else26

if.then24:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #10
  %car_loop_20 = getelementptr %struct.stv0900_short_frames_car_loop_optim_vs_mod, ptr @FE_STV0900_S2ShortCarLoopCut30, i32 %spec.select, i32 4
  br label %if.end89

if.else26:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #10
  %car_loop_30 = getelementptr %struct.stv0900_short_frames_car_loop_optim_vs_mod, ptr @FE_STV0900_S2ShortCarLoopCut30, i32 %spec.select, i32 5
  br label %if.end89

if.else32:                                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %chip_id)
  %cmp34 = icmp ugt i8 %chip_id, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000001, i32 %srate)
  %cmp37 = icmp slt i32 %srate, 3000001
  br i1 %cmp34, label %if.then36, label %if.else62

if.then36:                                        ; preds = %if.else32
  br i1 %cmp37, label %if.then39, label %if.else41

if.then39:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %car_loop_cut20_2 = getelementptr %struct.stv0900_short_frames_car_loop_optim, ptr @FE_STV0900_S2ShortCarLoop, i32 %spec.select, i32 2
  br label %if.end89

if.else41:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000001, i32 %srate)
  %cmp42 = icmp ult i32 %srate, 7000001
  br i1 %cmp42, label %if.then44, label %if.else46

if.then44:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #10
  %car_loop_cut20_5 = getelementptr %struct.stv0900_short_frames_car_loop_optim, ptr @FE_STV0900_S2ShortCarLoop, i32 %spec.select, i32 4
  br label %if.end89

if.else46:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_const_cmp4(i32 15000001, i32 %srate)
  %cmp47 = icmp ult i32 %srate, 15000001
  br i1 %cmp47, label %if.then49, label %if.else51

if.then49:                                        ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #10
  %car_loop_cut20_10 = getelementptr %struct.stv0900_short_frames_car_loop_optim, ptr @FE_STV0900_S2ShortCarLoop, i32 %spec.select, i32 6
  br label %if.end89

if.else51:                                        ; preds = %if.else46
  call void @__sanitizer_cov_trace_const_cmp4(i32 25000001, i32 %srate)
  %cmp52 = icmp ult i32 %srate, 25000001
  br i1 %cmp52, label %if.then54, label %if.else56

if.then54:                                        ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #10
  %car_loop_cut20_20 = getelementptr %struct.stv0900_short_frames_car_loop_optim, ptr @FE_STV0900_S2ShortCarLoop, i32 %spec.select, i32 8
  br label %if.end89

if.else56:                                        ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #10
  %car_loop_cut20_30 = getelementptr %struct.stv0900_short_frames_car_loop_optim, ptr @FE_STV0900_S2ShortCarLoop, i32 %spec.select, i32 10
  br label %if.end89

if.else62:                                        ; preds = %if.else32
  br i1 %cmp37, label %if.then65, label %if.else67

if.then65:                                        ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #10
  %car_loop_cut12_2 = getelementptr %struct.stv0900_short_frames_car_loop_optim, ptr @FE_STV0900_S2ShortCarLoop, i32 %spec.select, i32 1
  br label %if.end89

if.else67:                                        ; preds = %if.else62
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000001, i32 %srate)
  %cmp68 = icmp ult i32 %srate, 7000001
  br i1 %cmp68, label %if.then70, label %if.else72

if.then70:                                        ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #10
  %car_loop_cut12_5 = getelementptr %struct.stv0900_short_frames_car_loop_optim, ptr @FE_STV0900_S2ShortCarLoop, i32 %spec.select, i32 3
  br label %if.end89

if.else72:                                        ; preds = %if.else67
  call void @__sanitizer_cov_trace_const_cmp4(i32 15000001, i32 %srate)
  %cmp73 = icmp ult i32 %srate, 15000001
  br i1 %cmp73, label %if.then75, label %if.else77

if.then75:                                        ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #10
  %car_loop_cut12_10 = getelementptr %struct.stv0900_short_frames_car_loop_optim, ptr @FE_STV0900_S2ShortCarLoop, i32 %spec.select, i32 5
  br label %if.end89

if.else77:                                        ; preds = %if.else72
  call void @__sanitizer_cov_trace_const_cmp4(i32 25000001, i32 %srate)
  %cmp78 = icmp ult i32 %srate, 25000001
  br i1 %cmp78, label %if.then80, label %if.else82

if.then80:                                        ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #10
  %car_loop_cut12_20 = getelementptr %struct.stv0900_short_frames_car_loop_optim, ptr @FE_STV0900_S2ShortCarLoop, i32 %spec.select, i32 7
  br label %if.end89

if.else82:                                        ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #10
  %car_loop_cut12_30 = getelementptr %struct.stv0900_short_frames_car_loop_optim, ptr @FE_STV0900_S2ShortCarLoop, i32 %spec.select, i32 9
  br label %if.end89

if.end89:                                         ; preds = %if.else82, %if.then80, %if.then75, %if.then70, %if.then65, %if.else56, %if.then54, %if.then49, %if.then44, %if.then39, %if.else26, %if.then24, %if.then19, %if.then14, %if.then11
  %aclc_value.0.in = phi ptr [ %car_loop_2, %if.then11 ], [ %car_loop_5, %if.then14 ], [ %car_loop_10, %if.then19 ], [ %car_loop_20, %if.then24 ], [ %car_loop_30, %if.else26 ], [ %car_loop_cut20_2, %if.then39 ], [ %car_loop_cut20_5, %if.then44 ], [ %car_loop_cut20_10, %if.then49 ], [ %car_loop_cut20_20, %if.then54 ], [ %car_loop_cut20_30, %if.else56 ], [ %car_loop_cut12_2, %if.then65 ], [ %car_loop_cut12_5, %if.then70 ], [ %car_loop_cut12_10, %if.then75 ], [ %car_loop_cut12_20, %if.then80 ], [ %car_loop_cut12_30, %if.else82 ]
  %2 = ptrtoint ptr %aclc_value.0.in to i32
  call void @__asan_load1_noabort(i32 %2)
  %aclc_value.0 = load i8, ptr %aclc_value.0.in, align 1
  ret i8 %aclc_value.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @stv0900_attach(ptr noundef %config, ptr noundef %i2c, i32 noundef %demod) #1 align 64 {
entry:
  %init_params = alloca %struct.stv0900_init_params, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %init_params) #8
  %0 = getelementptr inbounds i8, ptr %init_params, i32 16
  %1 = call ptr @memset(ptr %0, i32 255, i32 24)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1056) #12
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.do.body32_crit_edge, label %if.end

entry.do.body32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32

if.end:                                           ; preds = %entry
  %demod1 = getelementptr inbounds %struct.stv0900_state, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %demod1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %demod, ptr %demod1, align 4
  %config2 = getelementptr inbounds %struct.stv0900_state, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %config2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %config, ptr %config2, align 8
  %i2c_adap = getelementptr inbounds %struct.stv0900_state, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %i2c_adap to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %i2c, ptr %i2c_adap, align 4
  %frontend = getelementptr inbounds %struct.stv0900_state, ptr %call7.i.i, i32 0, i32 3
  %ops = getelementptr inbounds %struct.stv0900_state, ptr %call7.i.i, i32 0, i32 3, i32 1
  %6 = call ptr @memcpy(ptr %ops, ptr @stv0900_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.stv0900_state, ptr %call7.i.i, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %demodulator_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %demod)
  %switch = icmp ult i32 %demod, 2
  br i1 %switch, label %sw.bb, label %if.end.do.body32_crit_edge

if.end.do.body32_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32

sw.bb:                                            ; preds = %if.end
  %xtal = getelementptr inbounds %struct.stv0900_config, ptr %config, i32 0, i32 2
  %8 = ptrtoint ptr %xtal to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xtal, align 4
  %10 = ptrtoint ptr %init_params to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %init_params, align 4
  %demod_mode = getelementptr inbounds %struct.stv0900_config, ptr %config, i32 0, i32 1
  %11 = ptrtoint ptr %demod_mode to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %demod_mode, align 1
  %conv = zext i8 %12 to i32
  %demod_mode4 = getelementptr inbounds %struct.stv0900_init_params, ptr %init_params, i32 0, i32 1
  %13 = ptrtoint ptr %demod_mode4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %demod_mode4, align 4
  %rolloff = getelementptr inbounds %struct.stv0900_init_params, ptr %init_params, i32 0, i32 2
  %14 = ptrtoint ptr %rolloff to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %rolloff, align 4
  %path1_mode = getelementptr inbounds %struct.stv0900_config, ptr %config, i32 0, i32 5
  %15 = ptrtoint ptr %path1_mode to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %path1_mode, align 2
  %conv5 = zext i8 %16 to i32
  %path1_ts_clock = getelementptr inbounds %struct.stv0900_init_params, ptr %init_params, i32 0, i32 3
  %17 = ptrtoint ptr %path1_ts_clock to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv5, ptr %path1_ts_clock, align 4
  %tun1_maddress = getelementptr inbounds %struct.stv0900_config, ptr %config, i32 0, i32 8
  %18 = ptrtoint ptr %tun1_maddress to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tun1_maddress, align 4
  %tun1_maddress6 = getelementptr inbounds %struct.stv0900_init_params, ptr %init_params, i32 0, i32 4
  %20 = ptrtoint ptr %tun1_maddress6 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %tun1_maddress6, align 4
  %tun1_iq_inv = getelementptr inbounds %struct.stv0900_init_params, ptr %init_params, i32 0, i32 7
  %21 = ptrtoint ptr %tun1_iq_inv to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %tun1_iq_inv, align 4
  %tun1_adc = getelementptr inbounds %struct.stv0900_config, ptr %config, i32 0, i32 10
  %22 = ptrtoint ptr %tun1_adc to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %tun1_adc, align 2
  %conv7 = zext i8 %23 to i32
  %tuner1_adc = getelementptr inbounds %struct.stv0900_init_params, ptr %init_params, i32 0, i32 5
  %24 = ptrtoint ptr %tuner1_adc to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv7, ptr %tuner1_adc, align 4
  %tun1_type = getelementptr inbounds %struct.stv0900_config, ptr %config, i32 0, i32 12
  %25 = ptrtoint ptr %tun1_type to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %tun1_type, align 4
  %conv8 = zext i8 %26 to i32
  %tuner1_type = getelementptr inbounds %struct.stv0900_init_params, ptr %init_params, i32 0, i32 6
  %27 = ptrtoint ptr %tuner1_type to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv8, ptr %tuner1_type, align 4
  %path2_mode = getelementptr inbounds %struct.stv0900_config, ptr %config, i32 0, i32 6
  %28 = ptrtoint ptr %path2_mode to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %path2_mode, align 1
  %conv9 = zext i8 %29 to i32
  %path2_ts_clock = getelementptr inbounds %struct.stv0900_init_params, ptr %init_params, i32 0, i32 8
  %30 = ptrtoint ptr %path2_ts_clock to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv9, ptr %path2_ts_clock, align 4
  %ts_config_regs = getelementptr inbounds %struct.stv0900_config, ptr %config, i32 0, i32 7
  %31 = ptrtoint ptr %ts_config_regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ts_config_regs, align 4
  %ts_config = getelementptr inbounds %struct.stv0900_init_params, ptr %init_params, i32 0, i32 13
  %33 = ptrtoint ptr %ts_config to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %ts_config, align 4
  %tun2_maddress = getelementptr inbounds %struct.stv0900_config, ptr %config, i32 0, i32 9
  %34 = ptrtoint ptr %tun2_maddress to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %tun2_maddress, align 1
  %tun2_maddress10 = getelementptr inbounds %struct.stv0900_init_params, ptr %init_params, i32 0, i32 9
  %36 = ptrtoint ptr %tun2_maddress10 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %tun2_maddress10, align 4
  %tun2_adc = getelementptr inbounds %struct.stv0900_config, ptr %config, i32 0, i32 11
  %37 = ptrtoint ptr %tun2_adc to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %tun2_adc, align 1
  %conv11 = zext i8 %38 to i32
  %tuner2_adc = getelementptr inbounds %struct.stv0900_init_params, ptr %init_params, i32 0, i32 10
  %39 = ptrtoint ptr %tuner2_adc to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv11, ptr %tuner2_adc, align 4
  %tun2_type = getelementptr inbounds %struct.stv0900_config, ptr %config, i32 0, i32 13
  %40 = ptrtoint ptr %tun2_type to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %tun2_type, align 1
  %conv12 = zext i8 %41 to i32
  %tuner2_type = getelementptr inbounds %struct.stv0900_init_params, ptr %init_params, i32 0, i32 11
  %42 = ptrtoint ptr %tuner2_type to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv12, ptr %tuner2_type, align 4
  %tun2_iq_inv = getelementptr inbounds %struct.stv0900_init_params, ptr %init_params, i32 0, i32 12
  %43 = ptrtoint ptr %tun2_iq_inv to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %tun2_iq_inv, align 4
  %call14 = call fastcc i32 @stv0900_init_internal(ptr noundef %frontend, ptr noundef nonnull %init_params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.end16, label %sw.bb.do.body32_crit_edge

sw.bb.do.body32_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32

if.end16:                                         ; preds = %sw.bb
  %44 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call7.i.i, align 8
  %chip_id = getelementptr inbounds %struct.stv0900_internal, ptr %45, i32 0, i32 20
  %46 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %chip_id, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %47)
  %cmp18 = icmp ugt i8 %47, 47
  br i1 %cmp18, label %if.then20, label %if.end16.do.body_crit_edge

if.end16.do.body_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %caps = getelementptr inbounds %struct.stv0900_state, ptr %call7.i.i, i32 0, i32 3, i32 1, i32 0, i32 8
  %48 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %caps, align 4
  %or = or i32 %49, 67108864
  store i32 %or, ptr %caps, align 4
  br label %do.body

do.body:                                          ; preds = %if.then20, %if.end16.do.body_crit_edge
  %50 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool24.not = icmp eq i32 %50, 0
  br i1 %tobool24.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef %demod) #11
  br label %cleanup

do.body32:                                        ; preds = %sw.bb.do.body32_crit_edge, %if.end.do.body32_crit_edge, %entry.do.body32_crit_edge
  %51 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool33.not = icmp eq i32 %51, 0
  br i1 %tobool33.not, label %do.body32.do.end42_crit_edge, label %do.end37

do.body32.do.end42_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end42

do.end37:                                         ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.33, i32 noundef %demod) #11
  br label %do.end42

do.end42:                                         ; preds = %do.end37, %do.body32.do.end42_crit_edge
  tail call void @kfree(ptr noundef %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end42 ], [ %frontend, %do.end ], [ %frontend, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %init_params) #8
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stv0900_init_internal(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %p_init) unnamed_addr #1 align 64 {
entry:
  %data.i700 = alloca [3 x i8], align 1
  %i2cmsg.i701 = alloca %struct.i2c_msg, align 4
  %data.i31.i = alloca [3 x i8], align 1
  %i2cmsg.i32.i = alloca %struct.i2c_msg, align 4
  %data.i16.i = alloca [3 x i8], align 1
  %i2cmsg.i17.i = alloca %struct.i2c_msg, align 4
  %data.i1.i657 = alloca [3 x i8], align 1
  %i2cmsg.i2.i658 = alloca %struct.i2c_msg, align 4
  %data.i.i659 = alloca [3 x i8], align 1
  %i2cmsg.i.i660 = alloca %struct.i2c_msg, align 4
  %b0.i.i.i661 = alloca [2 x i8], align 1
  %buf.i.i.i662 = alloca i8, align 1
  %msg.i.i.i663 = alloca [2 x %struct.i2c_msg], align 4
  %data.i642 = alloca [3 x i8], align 1
  %i2cmsg.i643 = alloca %struct.i2c_msg, align 4
  %data.i627 = alloca [3 x i8], align 1
  %i2cmsg.i628 = alloca %struct.i2c_msg, align 4
  %data.i612 = alloca [3 x i8], align 1
  %i2cmsg.i613 = alloca %struct.i2c_msg, align 4
  %data.i597 = alloca [3 x i8], align 1
  %i2cmsg.i598 = alloca %struct.i2c_msg, align 4
  %data.i582 = alloca [3 x i8], align 1
  %i2cmsg.i583 = alloca %struct.i2c_msg, align 4
  %data.i567 = alloca [3 x i8], align 1
  %i2cmsg.i568 = alloca %struct.i2c_msg, align 4
  %data.i552 = alloca [3 x i8], align 1
  %i2cmsg.i553 = alloca %struct.i2c_msg, align 4
  %data.i537 = alloca [3 x i8], align 1
  %i2cmsg.i538 = alloca %struct.i2c_msg, align 4
  %data.i522 = alloca [3 x i8], align 1
  %i2cmsg.i523 = alloca %struct.i2c_msg, align 4
  %data.i507 = alloca [3 x i8], align 1
  %i2cmsg.i508 = alloca %struct.i2c_msg, align 4
  %data.i492 = alloca [3 x i8], align 1
  %i2cmsg.i493 = alloca %struct.i2c_msg, align 4
  %data.i477 = alloca [3 x i8], align 1
  %i2cmsg.i478 = alloca %struct.i2c_msg, align 4
  %data.i462 = alloca [3 x i8], align 1
  %i2cmsg.i463 = alloca %struct.i2c_msg, align 4
  %data.i447 = alloca [3 x i8], align 1
  %i2cmsg.i448 = alloca %struct.i2c_msg, align 4
  %data.i432 = alloca [3 x i8], align 1
  %i2cmsg.i433 = alloca %struct.i2c_msg, align 4
  %data.i417 = alloca [3 x i8], align 1
  %i2cmsg.i418 = alloca %struct.i2c_msg, align 4
  %data.i402 = alloca [3 x i8], align 1
  %i2cmsg.i403 = alloca %struct.i2c_msg, align 4
  %data.i387 = alloca [3 x i8], align 1
  %i2cmsg.i388 = alloca %struct.i2c_msg, align 4
  %data.i372 = alloca [3 x i8], align 1
  %i2cmsg.i373 = alloca %struct.i2c_msg, align 4
  %data.i357 = alloca [3 x i8], align 1
  %i2cmsg.i358 = alloca %struct.i2c_msg, align 4
  %data.i = alloca [3 x i8], align 1
  %i2cmsg.i = alloca %struct.i2c_msg, align 4
  %data.i258.i = alloca [3 x i8], align 1
  %i2cmsg.i259.i = alloca %struct.i2c_msg, align 4
  %data.i243.i = alloca [3 x i8], align 1
  %i2cmsg.i244.i = alloca %struct.i2c_msg, align 4
  %data.i228.i = alloca [3 x i8], align 1
  %i2cmsg.i229.i = alloca %struct.i2c_msg, align 4
  %data.i213.i = alloca [3 x i8], align 1
  %i2cmsg.i214.i = alloca %struct.i2c_msg, align 4
  %data.i198.i = alloca [3 x i8], align 1
  %i2cmsg.i199.i = alloca %struct.i2c_msg, align 4
  %data.i183.i = alloca [3 x i8], align 1
  %i2cmsg.i184.i = alloca %struct.i2c_msg, align 4
  %data.i168.i = alloca [3 x i8], align 1
  %i2cmsg.i169.i = alloca %struct.i2c_msg, align 4
  %data.i153.i = alloca [3 x i8], align 1
  %i2cmsg.i154.i = alloca %struct.i2c_msg, align 4
  %data.i138.i = alloca [3 x i8], align 1
  %i2cmsg.i139.i = alloca %struct.i2c_msg, align 4
  %data.i123.i = alloca [3 x i8], align 1
  %i2cmsg.i124.i = alloca %struct.i2c_msg, align 4
  %data.i108.i = alloca [3 x i8], align 1
  %i2cmsg.i109.i = alloca %struct.i2c_msg, align 4
  %data.i.i319 = alloca [3 x i8], align 1
  %i2cmsg.i.i320 = alloca %struct.i2c_msg, align 4
  %b0.i = alloca [2 x i8], align 1
  %buf.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %data.i128.i250 = alloca [3 x i8], align 1
  %i2cmsg.i129.i251 = alloca %struct.i2c_msg, align 4
  %data.i113.i252 = alloca [3 x i8], align 1
  %i2cmsg.i114.i253 = alloca %struct.i2c_msg, align 4
  %data.i98.i254 = alloca [3 x i8], align 1
  %i2cmsg.i99.i255 = alloca %struct.i2c_msg, align 4
  %data.i81.i = alloca [3 x i8], align 1
  %i2cmsg.i82.i = alloca %struct.i2c_msg, align 4
  %data.i64.i = alloca [3 x i8], align 1
  %i2cmsg.i65.i = alloca %struct.i2c_msg, align 4
  %data.i49.i = alloca [3 x i8], align 1
  %i2cmsg.i50.i = alloca %struct.i2c_msg, align 4
  %data.i34.i = alloca [3 x i8], align 1
  %i2cmsg.i35.i = alloca %struct.i2c_msg, align 4
  %data.i17.i = alloca [3 x i8], align 1
  %i2cmsg.i18.i = alloca %struct.i2c_msg, align 4
  %data.i1.i = alloca [3 x i8], align 1
  %i2cmsg.i2.i = alloca %struct.i2c_msg, align 4
  %data.i.i256 = alloca [3 x i8], align 1
  %i2cmsg.i.i257 = alloca %struct.i2c_msg, align 4
  %b0.i.i.i = alloca [2 x i8], align 1
  %buf.i.i.i = alloca i8, align 1
  %msg.i.i.i = alloca [2 x %struct.i2c_msg], align 4
  %data.i410.i = alloca [3 x i8], align 1
  %i2cmsg.i411.i = alloca %struct.i2c_msg, align 4
  %data.i395.i = alloca [3 x i8], align 1
  %i2cmsg.i396.i = alloca %struct.i2c_msg, align 4
  %data.i380.i = alloca [3 x i8], align 1
  %i2cmsg.i381.i = alloca %struct.i2c_msg, align 4
  %data.i365.i = alloca [3 x i8], align 1
  %i2cmsg.i366.i = alloca %struct.i2c_msg, align 4
  %data.i350.i = alloca [3 x i8], align 1
  %i2cmsg.i351.i = alloca %struct.i2c_msg, align 4
  %data.i335.i = alloca [3 x i8], align 1
  %i2cmsg.i336.i = alloca %struct.i2c_msg, align 4
  %data.i320.i = alloca [3 x i8], align 1
  %i2cmsg.i321.i = alloca %struct.i2c_msg, align 4
  %data.i305.i = alloca [3 x i8], align 1
  %i2cmsg.i306.i = alloca %struct.i2c_msg, align 4
  %data.i288.i = alloca [3 x i8], align 1
  %i2cmsg.i289.i = alloca %struct.i2c_msg, align 4
  %data.i273.i = alloca [3 x i8], align 1
  %i2cmsg.i274.i = alloca %struct.i2c_msg, align 4
  %b0.i253.i = alloca [2 x i8], align 1
  %buf.i254.i = alloca i8, align 1
  %msg.i255.i = alloca [2 x %struct.i2c_msg], align 4
  %data.i238.i = alloca [3 x i8], align 1
  %i2cmsg.i239.i = alloca %struct.i2c_msg, align 4
  %data.i223.i = alloca [3 x i8], align 1
  %i2cmsg.i224.i = alloca %struct.i2c_msg, align 4
  %b0.i203.i = alloca [2 x i8], align 1
  %buf.i204.i = alloca i8, align 1
  %msg.i205.i = alloca [2 x %struct.i2c_msg], align 4
  %data.i188.i = alloca [3 x i8], align 1
  %i2cmsg.i189.i = alloca %struct.i2c_msg, align 4
  %data.i173.i = alloca [3 x i8], align 1
  %i2cmsg.i174.i = alloca %struct.i2c_msg, align 4
  %data.i158.i = alloca [3 x i8], align 1
  %i2cmsg.i159.i = alloca %struct.i2c_msg, align 4
  %data.i143.i = alloca [3 x i8], align 1
  %i2cmsg.i144.i = alloca %struct.i2c_msg, align 4
  %data.i128.i = alloca [3 x i8], align 1
  %i2cmsg.i129.i = alloca %struct.i2c_msg, align 4
  %data.i113.i = alloca [3 x i8], align 1
  %i2cmsg.i114.i = alloca %struct.i2c_msg, align 4
  %data.i98.i = alloca [3 x i8], align 1
  %i2cmsg.i99.i = alloca %struct.i2c_msg, align 4
  %data.i83.i = alloca [3 x i8], align 1
  %i2cmsg.i84.i = alloca %struct.i2c_msg, align 4
  %data.i.i = alloca [3 x i8], align 1
  %i2cmsg.i.i = alloca %struct.i2c_msg, align 4
  %b0.i.i = alloca [2 x i8], align 1
  %buf.i.i = alloca i8, align 1
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %i2c_adap = getelementptr inbounds %struct.stv0900_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %i2c_adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_adap, align 4
  %config = getelementptr inbounds %struct.stv0900_state, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4
  %8 = load ptr, ptr @stv0900_first_inode, align 4
  %cmp.not.i = icmp eq ptr %8, null
  br i1 %cmp.not.i, label %entry.find_inode.exit_crit_edge, label %entry.land.rhs.i_crit_edge

entry.land.rhs.i_crit_edge:                       ; preds = %entry
  br label %land.rhs.i

entry.find_inode.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_inode.exit

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %entry.land.rhs.i_crit_edge
  %temp_chip.015.i = phi ptr [ %16, %while.body.i.land.rhs.i_crit_edge ], [ %8, %entry.land.rhs.i_crit_edge ]
  %9 = ptrtoint ptr %temp_chip.015.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %temp_chip.015.i, align 4
  %i2c_adap2.i = getelementptr inbounds %struct.stv0900_internal, ptr %10, i32 0, i32 17
  %11 = ptrtoint ptr %i2c_adap2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c_adap2.i, align 4
  %cmp3.not.i = icmp eq ptr %12, %3
  br i1 %cmp3.not.i, label %lor.rhs.i, label %land.rhs.i.while.body.i_crit_edge

land.rhs.i.while.body.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

lor.rhs.i:                                        ; preds = %land.rhs.i
  %i2c_addr5.i = getelementptr inbounds %struct.stv0900_internal, ptr %10, i32 0, i32 18
  %13 = ptrtoint ptr %i2c_addr5.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %i2c_addr5.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %7)
  %cmp7.not.i = icmp eq i8 %14, %7
  br i1 %cmp7.not.i, label %lor.rhs.i.find_inode.exit_crit_edge, label %lor.rhs.i.while.body.i_crit_edge

lor.rhs.i.while.body.i_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

lor.rhs.i.find_inode.exit_crit_edge:              ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_inode.exit

while.body.i:                                     ; preds = %lor.rhs.i.while.body.i_crit_edge, %land.rhs.i.while.body.i_crit_edge
  %next_inode.i = getelementptr inbounds %struct.stv0900_inode, ptr %temp_chip.015.i, i32 0, i32 1
  %15 = ptrtoint ptr %next_inode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %next_inode.i, align 4
  %cmp1.not.i = icmp eq ptr %16, null
  br i1 %cmp1.not.i, label %while.body.i.find_inode.exit_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

while.body.i.find_inode.exit_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_inode.exit

find_inode.exit:                                  ; preds = %while.body.i.find_inode.exit_crit_edge, %lor.rhs.i.find_inode.exit_crit_edge, %entry.find_inode.exit_crit_edge
  %temp_chip.1.i = phi ptr [ null, %entry.find_inode.exit_crit_edge ], [ %temp_chip.015.i, %lor.rhs.i.find_inode.exit_crit_edge ], [ null, %while.body.i.find_inode.exit_crit_edge ]
  %17 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %find_inode.exit.do.end4_crit_edge, label %do.end

find_inode.exit.do.end4_crit_edge:                ; preds = %find_inode.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

do.end:                                           ; preds = %find_inode.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.81) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %find_inode.exit.do.end4_crit_edge
  %cmp.not = icmp eq ptr %temp_chip.1.i, null
  br i1 %cmp.not, label %do.end4.if.else_crit_edge, label %land.lhs.true

do.end4.if.else_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %do.end4
  %demod_mode = getelementptr inbounds %struct.stv0900_init_params, ptr %p_init, i32 0, i32 1
  %18 = ptrtoint ptr %demod_mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %demod_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp5 = icmp eq i32 %19, 1
  br i1 %cmp5, label %if.then6, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then6:                                         ; preds = %land.lhs.true
  %20 = ptrtoint ptr %temp_chip.1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %temp_chip.1.i, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %1, align 4
  %dmds_used = getelementptr inbounds %struct.stv0900_internal, ptr %21, i32 0, i32 23
  %23 = ptrtoint ptr %dmds_used to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dmds_used, align 4
  %inc = add i32 %24, 1
  store i32 %inc, ptr %dmds_used, align 4
  %25 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool10.not = icmp eq i32 %25, 0
  br i1 %tobool10.not, label %if.then6.cleanup_crit_edge, label %do.end14

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end14:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.81) #11
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.end4.if.else_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3264, i32 noundef 244) #12
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i, ptr %1, align 4
  %cmp23 = icmp eq ptr %call7.i, null
  br i1 %cmp23, label %if.else.cleanup_crit_edge, label %if.end25

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end25:                                         ; preds = %if.else
  %28 = load ptr, ptr @stv0900_first_inode, align 4
  %cmp.i = icmp eq ptr %28, null
  br i1 %cmp.i, label %if.then.i, label %if.end25.while.cond.i_crit_edge

if.end25.while.cond.i_crit_edge:                  ; preds = %if.end25
  br label %while.cond.i

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3264, i32 noundef 8) #12
  store ptr %call7.i.i, ptr @stv0900_first_inode, align 4
  br label %if.end10.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end25.while.cond.i_crit_edge
  %new_node.0.i = phi ptr [ %31, %while.cond.i.while.cond.i_crit_edge ], [ %28, %if.end25.while.cond.i_crit_edge ]
  %next_inode.i246 = getelementptr inbounds %struct.stv0900_inode, ptr %new_node.0.i, i32 0, i32 1
  %30 = ptrtoint ptr %next_inode.i246 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %next_inode.i246, align 4
  %cmp1.not.i247 = icmp eq ptr %31, null
  br i1 %cmp1.not.i247, label %while.end.i, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  %next_inode.i246.le = getelementptr inbounds %struct.stv0900_inode, ptr %new_node.0.i, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i27.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3264, i32 noundef 8) #12
  %33 = ptrtoint ptr %next_inode.i246.le to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i27.i, ptr %next_inode.i246.le, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %while.end.i, %if.then.i
  %new_node.1.i = phi ptr [ %call7.i.i, %if.then.i ], [ %call7.i27.i, %while.end.i ]
  %cmp11.not.i = icmp eq ptr %new_node.1.i, null
  br i1 %cmp11.not.i, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  tail call void @kfree(ptr noundef %35) #8
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %1, align 4
  br label %cleanup

if.end32:                                         ; preds = %if.end10.i
  %37 = ptrtoint ptr %new_node.1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call7.i, ptr %new_node.1.i, align 8
  %next_inode14.i = getelementptr inbounds %struct.stv0900_inode, ptr %new_node.1.i, i32 0, i32 1
  %38 = ptrtoint ptr %next_inode14.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %next_inode14.i, align 4
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %dmds_used34 = getelementptr inbounds %struct.stv0900_internal, ptr %40, i32 0, i32 23
  %41 = ptrtoint ptr %dmds_used34 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %dmds_used34, align 4
  %42 = ptrtoint ptr %i2c_adap to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i2c_adap, align 4
  %44 = load ptr, ptr %1, align 4
  %i2c_adap37 = getelementptr inbounds %struct.stv0900_internal, ptr %44, i32 0, i32 17
  %45 = ptrtoint ptr %i2c_adap37 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %43, ptr %i2c_adap37, align 4
  %46 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %config, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %47, align 4
  %50 = load ptr, ptr %1, align 4
  %i2c_addr = getelementptr inbounds %struct.stv0900_internal, ptr %50, i32 0, i32 18
  %51 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %49, ptr %i2c_addr, align 4
  %52 = load ptr, ptr %config, align 4
  %clkmode = getelementptr inbounds %struct.stv0900_config, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %clkmode to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %clkmode, align 4
  %55 = load ptr, ptr %1, align 4
  %clkmode43 = getelementptr inbounds %struct.stv0900_internal, ptr %55, i32 0, i32 19
  %56 = ptrtoint ptr %clkmode43 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %54, ptr %clkmode43, align 1
  %57 = load ptr, ptr %1, align 4
  %errs = getelementptr inbounds %struct.stv0900_internal, ptr %57, i32 0, i32 22
  %58 = ptrtoint ptr %errs to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %errs, align 4
  %59 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool46.not = icmp eq i32 %59, 0
  br i1 %tobool46.not, label %if.end32.if.end56_crit_edge, label %do.end50

if.end32.if.end56_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

do.end50:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.81) #11
  br label %if.end56

if.end56:                                         ; preds = %do.end50, %if.end32.if.end56_crit_edge
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %cmp58 = icmp eq ptr %61, null
  br i1 %cmp58, label %if.end56.cleanup_crit_edge, label %if.end.i

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end56
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i.i) #8
  %62 = getelementptr inbounds [2 x i8], ptr %b0.i.i, i32 0, i32 1
  %63 = ptrtoint ptr %b0.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 -15, ptr %b0.i.i, align 1
  %64 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %62, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i.i) #8
  %65 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %buf.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #8
  %66 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %67 = call ptr @memset(ptr %66, i32 255, i32 16)
  %i2c_addr.i.i = getelementptr inbounds %struct.stv0900_internal, ptr %61, i32 0, i32 18
  %68 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %i2c_addr.i.i, align 4
  %conv6.i.i = zext i8 %69 to i16
  %70 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv6.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 0, ptr %flags.i.i, align 2
  %72 = ptrtoint ptr %66 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 2, ptr %66, align 4
  %buf7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %73 = ptrtoint ptr %buf7.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %b0.i.i, ptr %buf7.i.i, align 4
  %arrayinit.element8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %74 = ptrtoint ptr %arrayinit.element8.i.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv6.i.i, ptr %arrayinit.element8.i.i, align 4
  %flags12.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %75 = ptrtoint ptr %flags12.i.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 1, ptr %flags12.i.i, align 2
  %len13.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %76 = ptrtoint ptr %len13.i.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 1, ptr %len13.i.i, align 4
  %buf14.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %77 = ptrtoint ptr %buf14.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %buf.i.i, ptr %buf14.i.i, align 4
  %i2c_adap.i.i = getelementptr inbounds %struct.stv0900_internal, ptr %61, i32 0, i32 17
  %78 = ptrtoint ptr %i2c_adap.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %i2c_adap.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %79, ptr noundef nonnull %msg.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %if.end.i.stv0900_read_reg.exit.i_crit_edge, label %do.body.i.i

if.end.i.stv0900_read_reg.exit.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_read_reg.exit.i

do.body.i.i:                                      ; preds = %if.end.i
  %80 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i.i = icmp eq i32 %80, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.stv0900_read_reg.exit.i_crit_edge, label %do.end.i.i

do.body.i.i.stv0900_read_reg.exit.i_crit_edge:    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_read_reg.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call20.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i.i, i32 noundef 61696) #11
  br label %stv0900_read_reg.exit.i

stv0900_read_reg.exit.i:                          ; preds = %do.end.i.i, %do.body.i.i.stv0900_read_reg.exit.i_crit_edge, %if.end.i.stv0900_read_reg.exit.i_crit_edge
  %81 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %buf.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i.i) #8
  %chip_id.i = getelementptr inbounds %struct.stv0900_internal, ptr %61, i32 0, i32 20
  %83 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %chip_id.i, align 2
  %errs.i = getelementptr inbounds %struct.stv0900_internal, ptr %61, i32 0, i32 22
  %84 = ptrtoint ptr %errs.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %errs.i, align 4
  %86 = zext i32 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %85, label %if.else68 [
    i32 0, label %if.end4.i
    i32 1, label %stv0900_read_reg.exit.i.cleanup_crit_edge
  ]

stv0900_read_reg.exit.i.cleanup_crit_edge:        ; preds = %stv0900_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4.i:                                        ; preds = %stv0900_read_reg.exit.i
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i) #8
  %87 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 1
  %88 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i.i) #8
  %89 = getelementptr inbounds i8, ptr %i2cmsg.i.i, i32 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 262143, ptr %89, align 4
  %91 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %i2c_addr.i.i, align 4
  %conv.i.i = zext i8 %92 to i16
  %93 = ptrtoint ptr %i2cmsg.i.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %conv.i.i, ptr %i2cmsg.i.i, align 4
  %flags.i74.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i.i, i32 0, i32 1
  %94 = ptrtoint ptr %flags.i74.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 0, ptr %flags.i74.i, align 2
  %buf.i76.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i.i, i32 0, i32 3
  %95 = ptrtoint ptr %buf.i76.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %data.i.i, ptr %buf.i76.i, align 4
  %96 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 -12, ptr %data.i.i, align 1
  %97 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 22, ptr %87, align 1
  %98 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 92, ptr %88, align 1
  %99 = ptrtoint ptr %i2c_adap.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %i2c_adap.i.i, align 4
  %call.i78.i = call i32 @i2c_transfer(ptr noundef %100, ptr noundef nonnull %i2cmsg.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i78.i)
  %cmp.not.i79.i = icmp eq i32 %call.i78.i, 1
  br i1 %cmp.not.i79.i, label %if.end4.i.stv0900_write_reg.exit.i_crit_edge, label %do.body.i81.i

if.end4.i.stv0900_write_reg.exit.i_crit_edge:     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit.i

do.body.i81.i:                                    ; preds = %if.end4.i
  %101 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool.not.i80.i = icmp eq i32 %101, 0
  br i1 %tobool.not.i80.i, label %do.body.i81.i.stv0900_write_reg.exit.i_crit_edge, label %do.end.i82.i

do.body.i81.i.stv0900_write_reg.exit.i_crit_edge: ; preds = %do.body.i81.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit.i

do.end.i82.i:                                     ; preds = %do.body.i81.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i78.i) #11
  br label %stv0900_write_reg.exit.i

stv0900_write_reg.exit.i:                         ; preds = %do.end.i82.i, %do.body.i81.i.stv0900_write_reg.exit.i_crit_edge, %if.end4.i.stv0900_write_reg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i83.i) #8
  %102 = getelementptr inbounds [3 x i8], ptr %data.i83.i, i32 0, i32 1
  %103 = getelementptr inbounds [3 x i8], ptr %data.i83.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i84.i) #8
  %104 = getelementptr inbounds i8, ptr %i2cmsg.i84.i, i32 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 262143, ptr %104, align 4
  %106 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %i2c_addr.i.i, align 4
  %conv.i86.i = zext i8 %107 to i16
  %108 = ptrtoint ptr %i2cmsg.i84.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %conv.i86.i, ptr %i2cmsg.i84.i, align 4
  %flags.i87.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i84.i, i32 0, i32 1
  %109 = ptrtoint ptr %flags.i87.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 0, ptr %flags.i87.i, align 2
  %buf.i89.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i84.i, i32 0, i32 3
  %110 = ptrtoint ptr %buf.i89.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %data.i83.i, ptr %buf.i89.i, align 4
  %111 = ptrtoint ptr %data.i83.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 -14, ptr %data.i83.i, align 1
  %112 = ptrtoint ptr %102 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 22, ptr %102, align 1
  %113 = ptrtoint ptr %103 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 92, ptr %103, align 1
  %114 = ptrtoint ptr %i2c_adap.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %i2c_adap.i.i, align 4
  %call.i91.i = call i32 @i2c_transfer(ptr noundef %115, ptr noundef nonnull %i2cmsg.i84.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i91.i)
  %cmp.not.i92.i = icmp eq i32 %call.i91.i, 1
  br i1 %cmp.not.i92.i, label %stv0900_write_reg.exit.i.stv0900_write_reg.exit97.i_crit_edge, label %do.body.i94.i

stv0900_write_reg.exit.i.stv0900_write_reg.exit97.i_crit_edge: ; preds = %stv0900_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit97.i

do.body.i94.i:                                    ; preds = %stv0900_write_reg.exit.i
  %116 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool.not.i93.i = icmp eq i32 %116, 0
  br i1 %tobool.not.i93.i, label %do.body.i94.i.stv0900_write_reg.exit97.i_crit_edge, label %do.end.i96.i

do.body.i94.i.stv0900_write_reg.exit97.i_crit_edge: ; preds = %do.body.i94.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit97.i

do.end.i96.i:                                     ; preds = %do.body.i94.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i95.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i91.i) #11
  br label %stv0900_write_reg.exit97.i

stv0900_write_reg.exit97.i:                       ; preds = %do.end.i96.i, %do.body.i94.i.stv0900_write_reg.exit97.i_crit_edge, %stv0900_write_reg.exit.i.stv0900_write_reg.exit97.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i84.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i83.i) #8
  call void @msleep(i32 noundef 3) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i98.i) #8
  %117 = getelementptr inbounds [3 x i8], ptr %data.i98.i, i32 0, i32 1
  %118 = getelementptr inbounds [3 x i8], ptr %data.i98.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i99.i) #8
  %119 = getelementptr inbounds i8, ptr %i2cmsg.i99.i, i32 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 262143, ptr %119, align 4
  %121 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %i2c_addr.i.i, align 4
  %conv.i101.i = zext i8 %122 to i16
  %123 = ptrtoint ptr %i2cmsg.i99.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %conv.i101.i, ptr %i2cmsg.i99.i, align 4
  %flags.i102.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i99.i, i32 0, i32 1
  %124 = ptrtoint ptr %flags.i102.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 0, ptr %flags.i102.i, align 2
  %buf.i104.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i99.i, i32 0, i32 3
  %125 = ptrtoint ptr %buf.i104.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %data.i98.i, ptr %buf.i104.i, align 4
  %126 = ptrtoint ptr %data.i98.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 -12, ptr %data.i98.i, align 1
  %127 = ptrtoint ptr %117 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 -32, ptr %117, align 1
  %128 = ptrtoint ptr %118 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 108, ptr %118, align 1
  %129 = ptrtoint ptr %i2c_adap.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %i2c_adap.i.i, align 4
  %call.i106.i = call i32 @i2c_transfer(ptr noundef %130, ptr noundef nonnull %i2cmsg.i99.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i106.i)
  %cmp.not.i107.i = icmp eq i32 %call.i106.i, 1
  br i1 %cmp.not.i107.i, label %stv0900_write_reg.exit97.i.stv0900_write_reg.exit112.i_crit_edge, label %do.body.i109.i

stv0900_write_reg.exit97.i.stv0900_write_reg.exit112.i_crit_edge: ; preds = %stv0900_write_reg.exit97.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit112.i

do.body.i109.i:                                   ; preds = %stv0900_write_reg.exit97.i
  %131 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool.not.i108.i = icmp eq i32 %131, 0
  br i1 %tobool.not.i108.i, label %do.body.i109.i.stv0900_write_reg.exit112.i_crit_edge, label %do.end.i111.i

do.body.i109.i.stv0900_write_reg.exit112.i_crit_edge: ; preds = %do.body.i109.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit112.i

do.end.i111.i:                                    ; preds = %do.body.i109.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i110.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i106.i) #11
  br label %stv0900_write_reg.exit112.i

stv0900_write_reg.exit112.i:                      ; preds = %do.end.i111.i, %do.body.i109.i.stv0900_write_reg.exit112.i_crit_edge, %stv0900_write_reg.exit97.i.stv0900_write_reg.exit112.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i99.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i98.i) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i113.i) #8
  %132 = getelementptr inbounds [3 x i8], ptr %data.i113.i, i32 0, i32 1
  %133 = getelementptr inbounds [3 x i8], ptr %data.i113.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i114.i) #8
  %134 = getelementptr inbounds i8, ptr %i2cmsg.i114.i, i32 4
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 262143, ptr %134, align 4
  %136 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %i2c_addr.i.i, align 4
  %conv.i116.i = zext i8 %137 to i16
  %138 = ptrtoint ptr %i2cmsg.i114.i to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %conv.i116.i, ptr %i2cmsg.i114.i, align 4
  %flags.i117.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i114.i, i32 0, i32 1
  %139 = ptrtoint ptr %flags.i117.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 0, ptr %flags.i117.i, align 2
  %buf.i119.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i114.i, i32 0, i32 3
  %140 = ptrtoint ptr %buf.i119.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %data.i113.i, ptr %buf.i119.i, align 4
  %141 = ptrtoint ptr %data.i113.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 -14, ptr %data.i113.i, align 1
  %142 = ptrtoint ptr %132 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 -32, ptr %132, align 1
  %143 = ptrtoint ptr %133 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 111, ptr %133, align 1
  %144 = ptrtoint ptr %i2c_adap.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %i2c_adap.i.i, align 4
  %call.i121.i = call i32 @i2c_transfer(ptr noundef %145, ptr noundef nonnull %i2cmsg.i114.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i121.i)
  %cmp.not.i122.i = icmp eq i32 %call.i121.i, 1
  br i1 %cmp.not.i122.i, label %stv0900_write_reg.exit112.i.stv0900_write_reg.exit127.i_crit_edge, label %do.body.i124.i

stv0900_write_reg.exit112.i.stv0900_write_reg.exit127.i_crit_edge: ; preds = %stv0900_write_reg.exit112.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit127.i

do.body.i124.i:                                   ; preds = %stv0900_write_reg.exit112.i
  %146 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool.not.i123.i = icmp eq i32 %146, 0
  br i1 %tobool.not.i123.i, label %do.body.i124.i.stv0900_write_reg.exit127.i_crit_edge, label %do.end.i126.i

do.body.i124.i.stv0900_write_reg.exit127.i_crit_edge: ; preds = %do.body.i124.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit127.i

do.end.i126.i:                                    ; preds = %do.body.i124.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i125.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i121.i) #11
  br label %stv0900_write_reg.exit127.i

stv0900_write_reg.exit127.i:                      ; preds = %do.end.i126.i, %do.body.i124.i.stv0900_write_reg.exit127.i_crit_edge, %stv0900_write_reg.exit112.i.stv0900_write_reg.exit127.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i114.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i113.i) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i128.i) #8
  %147 = getelementptr inbounds [3 x i8], ptr %data.i128.i, i32 0, i32 1
  %148 = getelementptr inbounds [3 x i8], ptr %data.i128.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i129.i) #8
  %149 = getelementptr inbounds i8, ptr %i2cmsg.i129.i, i32 4
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 262143, ptr %149, align 4
  %151 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %i2c_addr.i.i, align 4
  %conv.i131.i = zext i8 %152 to i16
  %153 = ptrtoint ptr %i2cmsg.i129.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %conv.i131.i, ptr %i2cmsg.i129.i, align 4
  %flags.i132.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i129.i, i32 0, i32 1
  %154 = ptrtoint ptr %flags.i132.i to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 0, ptr %flags.i132.i, align 2
  %buf.i134.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i129.i, i32 0, i32 3
  %155 = ptrtoint ptr %buf.i134.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %data.i128.i, ptr %buf.i134.i, align 4
  %156 = ptrtoint ptr %data.i128.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 -15, ptr %data.i128.i, align 1
  %157 = ptrtoint ptr %147 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 42, ptr %147, align 1
  %158 = ptrtoint ptr %148 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 32, ptr %148, align 1
  %159 = ptrtoint ptr %i2c_adap.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %i2c_adap.i.i, align 4
  %call.i136.i = call i32 @i2c_transfer(ptr noundef %160, ptr noundef nonnull %i2cmsg.i129.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i136.i)
  %cmp.not.i137.i = icmp eq i32 %call.i136.i, 1
  br i1 %cmp.not.i137.i, label %stv0900_write_reg.exit127.i.stv0900_write_reg.exit142.i_crit_edge, label %do.body.i139.i

stv0900_write_reg.exit127.i.stv0900_write_reg.exit142.i_crit_edge: ; preds = %stv0900_write_reg.exit127.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit142.i

do.body.i139.i:                                   ; preds = %stv0900_write_reg.exit127.i
  %161 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %tobool.not.i138.i = icmp eq i32 %161, 0
  br i1 %tobool.not.i138.i, label %do.body.i139.i.stv0900_write_reg.exit142.i_crit_edge, label %do.end.i141.i

do.body.i139.i.stv0900_write_reg.exit142.i_crit_edge: ; preds = %do.body.i139.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit142.i

do.end.i141.i:                                    ; preds = %do.body.i139.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i140.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i136.i) #11
  br label %stv0900_write_reg.exit142.i

stv0900_write_reg.exit142.i:                      ; preds = %do.end.i141.i, %do.body.i139.i.stv0900_write_reg.exit142.i_crit_edge, %stv0900_write_reg.exit127.i.stv0900_write_reg.exit142.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i129.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i128.i) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i143.i) #8
  %162 = getelementptr inbounds [3 x i8], ptr %data.i143.i, i32 0, i32 1
  %163 = getelementptr inbounds [3 x i8], ptr %data.i143.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i144.i) #8
  %164 = getelementptr inbounds i8, ptr %i2cmsg.i144.i, i32 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 262143, ptr %164, align 4
  %166 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %i2c_addr.i.i, align 4
  %conv.i146.i = zext i8 %167 to i16
  %168 = ptrtoint ptr %i2cmsg.i144.i to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 %conv.i146.i, ptr %i2cmsg.i144.i, align 4
  %flags.i147.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i144.i, i32 0, i32 1
  %169 = ptrtoint ptr %flags.i147.i to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 0, ptr %flags.i147.i, align 2
  %buf.i149.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i144.i, i32 0, i32 3
  %170 = ptrtoint ptr %buf.i149.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %data.i143.i, ptr %buf.i149.i, align 4
  %171 = ptrtoint ptr %data.i143.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 -15, ptr %data.i143.i, align 1
  %172 = ptrtoint ptr %162 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 43, ptr %162, align 1
  %173 = ptrtoint ptr %163 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 32, ptr %163, align 1
  %174 = ptrtoint ptr %i2c_adap.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %i2c_adap.i.i, align 4
  %call.i151.i = call i32 @i2c_transfer(ptr noundef %175, ptr noundef nonnull %i2cmsg.i144.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i151.i)
  %cmp.not.i152.i = icmp eq i32 %call.i151.i, 1
  br i1 %cmp.not.i152.i, label %stv0900_write_reg.exit142.i.stv0900_write_reg.exit157.i_crit_edge, label %do.body.i154.i

stv0900_write_reg.exit142.i.stv0900_write_reg.exit157.i_crit_edge: ; preds = %stv0900_write_reg.exit142.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit157.i

do.body.i154.i:                                   ; preds = %stv0900_write_reg.exit142.i
  %176 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %tobool.not.i153.i = icmp eq i32 %176, 0
  br i1 %tobool.not.i153.i, label %do.body.i154.i.stv0900_write_reg.exit157.i_crit_edge, label %do.end.i156.i

do.body.i154.i.stv0900_write_reg.exit157.i_crit_edge: ; preds = %do.body.i154.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit157.i

do.end.i156.i:                                    ; preds = %do.body.i154.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i155.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i151.i) #11
  br label %stv0900_write_reg.exit157.i

stv0900_write_reg.exit157.i:                      ; preds = %do.end.i156.i, %do.body.i154.i.stv0900_write_reg.exit157.i_crit_edge, %stv0900_write_reg.exit142.i.stv0900_write_reg.exit157.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i144.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i143.i) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i158.i) #8
  %177 = getelementptr inbounds [3 x i8], ptr %data.i158.i, i32 0, i32 1
  %178 = getelementptr inbounds [3 x i8], ptr %data.i158.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i159.i) #8
  %179 = getelementptr inbounds i8, ptr %i2cmsg.i159.i, i32 4
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 262143, ptr %179, align 4
  %181 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %i2c_addr.i.i, align 4
  %conv.i161.i = zext i8 %182 to i16
  %183 = ptrtoint ptr %i2cmsg.i159.i to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 %conv.i161.i, ptr %i2cmsg.i159.i, align 4
  %flags.i162.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i159.i, i32 0, i32 1
  %184 = ptrtoint ptr %flags.i162.i to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 0, ptr %flags.i162.i, align 2
  %buf.i164.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i159.i, i32 0, i32 3
  %185 = ptrtoint ptr %buf.i164.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %data.i158.i, ptr %buf.i164.i, align 4
  %186 = ptrtoint ptr %data.i158.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 -15, ptr %data.i158.i, align 1
  %187 = ptrtoint ptr %177 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 -77, ptr %177, align 1
  %188 = ptrtoint ptr %178 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 19, ptr %178, align 1
  %189 = ptrtoint ptr %i2c_adap.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %i2c_adap.i.i, align 4
  %call.i166.i = call i32 @i2c_transfer(ptr noundef %190, ptr noundef nonnull %i2cmsg.i159.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i166.i)
  %cmp.not.i167.i = icmp eq i32 %call.i166.i, 1
  br i1 %cmp.not.i167.i, label %stv0900_write_reg.exit157.i.stv0900_write_reg.exit172.i_crit_edge, label %do.body.i169.i

stv0900_write_reg.exit157.i.stv0900_write_reg.exit172.i_crit_edge: ; preds = %stv0900_write_reg.exit157.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit172.i

do.body.i169.i:                                   ; preds = %stv0900_write_reg.exit157.i
  %191 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %tobool.not.i168.i = icmp eq i32 %191, 0
  br i1 %tobool.not.i168.i, label %do.body.i169.i.stv0900_write_reg.exit172.i_crit_edge, label %do.end.i171.i

do.body.i169.i.stv0900_write_reg.exit172.i_crit_edge: ; preds = %do.body.i169.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit172.i

do.end.i171.i:                                    ; preds = %do.body.i169.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i170.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i166.i) #11
  br label %stv0900_write_reg.exit172.i

stv0900_write_reg.exit172.i:                      ; preds = %do.end.i171.i, %do.body.i169.i.stv0900_write_reg.exit172.i_crit_edge, %stv0900_write_reg.exit157.i.stv0900_write_reg.exit172.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i159.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i158.i) #8
  call void @msleep(i32 noundef 3) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i173.i) #8
  %192 = getelementptr inbounds [3 x i8], ptr %data.i173.i, i32 0, i32 1
  %193 = getelementptr inbounds [3 x i8], ptr %data.i173.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i174.i) #8
  %194 = getelementptr inbounds i8, ptr %i2cmsg.i174.i, i32 4
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 262143, ptr %194, align 4
  %196 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %i2c_addr.i.i, align 4
  %conv.i176.i = zext i8 %197 to i16
  %198 = ptrtoint ptr %i2cmsg.i174.i to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 %conv.i176.i, ptr %i2cmsg.i174.i, align 4
  %flags.i177.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i174.i, i32 0, i32 1
  %199 = ptrtoint ptr %flags.i177.i to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 0, ptr %flags.i177.i, align 2
  %buf.i179.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i174.i, i32 0, i32 3
  %200 = ptrtoint ptr %buf.i179.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %data.i173.i, ptr %buf.i179.i, align 4
  %201 = ptrtoint ptr %data.i173.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 -15, ptr %data.i173.i, align 1
  %202 = ptrtoint ptr %192 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 41, ptr %192, align 1
  %203 = ptrtoint ptr %193 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 8, ptr %193, align 1
  %204 = ptrtoint ptr %i2c_adap.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %i2c_adap.i.i, align 4
  %call.i181.i = call i32 @i2c_transfer(ptr noundef %205, ptr noundef nonnull %i2cmsg.i174.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i181.i)
  %cmp.not.i182.i = icmp eq i32 %call.i181.i, 1
  br i1 %cmp.not.i182.i, label %stv0900_write_reg.exit172.i.stv0900_write_reg.exit187.i_crit_edge, label %do.body.i184.i

stv0900_write_reg.exit172.i.stv0900_write_reg.exit187.i_crit_edge: ; preds = %stv0900_write_reg.exit172.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit187.i

do.body.i184.i:                                   ; preds = %stv0900_write_reg.exit172.i
  %206 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %tobool.not.i183.i = icmp eq i32 %206, 0
  br i1 %tobool.not.i183.i, label %do.body.i184.i.stv0900_write_reg.exit187.i_crit_edge, label %do.end.i186.i

do.body.i184.i.stv0900_write_reg.exit187.i_crit_edge: ; preds = %do.body.i184.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit187.i

do.end.i186.i:                                    ; preds = %do.body.i184.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i185.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i181.i) #11
  br label %stv0900_write_reg.exit187.i

stv0900_write_reg.exit187.i:                      ; preds = %do.end.i186.i, %do.body.i184.i.stv0900_write_reg.exit187.i_crit_edge, %stv0900_write_reg.exit172.i.stv0900_write_reg.exit187.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i174.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i173.i) #8
  %clkmode.i = getelementptr inbounds %struct.stv0900_internal, ptr %61, i32 0, i32 19
  %207 = ptrtoint ptr %clkmode.i to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %clkmode.i, align 1
  %209 = zext i8 %208 to i64
  call void @__sanitizer_cov_trace_switch(i64 %209, ptr @__sancov_gen_cov_switch_values.101)
  switch i8 %208, label %sw.default.i [
    i8 0, label %stv0900_write_reg.exit187.i.sw.bb.i_crit_edge
    i8 2, label %stv0900_write_reg.exit187.i.sw.bb.i_crit_edge735
  ]

stv0900_write_reg.exit187.i.sw.bb.i_crit_edge735: ; preds = %stv0900_write_reg.exit187.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

stv0900_write_reg.exit187.i.sw.bb.i_crit_edge:    ; preds = %stv0900_write_reg.exit187.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %stv0900_write_reg.exit187.i.sw.bb.i_crit_edge, %stv0900_write_reg.exit187.i.sw.bb.i_crit_edge735
  %210 = or i8 %208, 32
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i188.i) #8
  %211 = getelementptr inbounds [3 x i8], ptr %data.i188.i, i32 0, i32 1
  %212 = getelementptr inbounds [3 x i8], ptr %data.i188.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i189.i) #8
  %213 = getelementptr inbounds i8, ptr %i2cmsg.i189.i, i32 4
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 262143, ptr %213, align 4
  %215 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %i2c_addr.i.i, align 4
  %conv.i191.i = zext i8 %216 to i16
  %217 = ptrtoint ptr %i2cmsg.i189.i to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 %conv.i191.i, ptr %i2cmsg.i189.i, align 4
  %flags.i192.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i189.i, i32 0, i32 1
  %218 = ptrtoint ptr %flags.i192.i to i32
  call void @__asan_store2_noabort(i32 %218)
  store i16 0, ptr %flags.i192.i, align 2
  %buf.i194.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i189.i, i32 0, i32 3
  %219 = ptrtoint ptr %buf.i194.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %data.i188.i, ptr %buf.i194.i, align 4
  %220 = ptrtoint ptr %data.i188.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 -15, ptr %data.i188.i, align 1
  %221 = ptrtoint ptr %211 to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 -74, ptr %211, align 1
  %222 = ptrtoint ptr %212 to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %210, ptr %212, align 1
  %223 = ptrtoint ptr %i2c_adap.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %i2c_adap.i.i, align 4
  %call.i196.i = call i32 @i2c_transfer(ptr noundef %224, ptr noundef nonnull %i2cmsg.i189.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i196.i)
  %cmp.not.i197.i = icmp eq i32 %call.i196.i, 1
  br i1 %cmp.not.i197.i, label %sw.bb.i.stv0900_write_reg.exit202.i_crit_edge, label %do.body.i199.i

sw.bb.i.stv0900_write_reg.exit202.i_crit_edge:    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit202.i

do.body.i199.i:                                   ; preds = %sw.bb.i
  %225 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %225)
  %tobool.not.i198.i = icmp eq i32 %225, 0
  br i1 %tobool.not.i198.i, label %do.body.i199.i.stv0900_write_reg.exit202.i_crit_edge, label %do.end.i201.i

do.body.i199.i.stv0900_write_reg.exit202.i_crit_edge: ; preds = %do.body.i199.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit202.i

do.end.i201.i:                                    ; preds = %do.body.i199.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i200.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i196.i) #11
  br label %stv0900_write_reg.exit202.i

stv0900_write_reg.exit202.i:                      ; preds = %do.end.i201.i, %do.body.i199.i.stv0900_write_reg.exit202.i_crit_edge, %sw.bb.i.stv0900_write_reg.exit202.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i189.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i188.i) #8
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %stv0900_write_reg.exit187.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i203.i) #8
  %226 = getelementptr inbounds [2 x i8], ptr %b0.i203.i, i32 0, i32 1
  %227 = ptrtoint ptr %b0.i203.i to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 -15, ptr %b0.i203.i, align 1
  %228 = ptrtoint ptr %226 to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 -74, ptr %226, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i204.i) #8
  %229 = ptrtoint ptr %buf.i204.i to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 0, ptr %buf.i204.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i205.i) #8
  %230 = getelementptr inbounds i8, ptr %msg.i205.i, i32 4
  %231 = call ptr @memset(ptr %230, i32 255, i32 16)
  %232 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %i2c_addr.i.i, align 4
  %conv6.i207.i = zext i8 %233 to i16
  %234 = ptrtoint ptr %msg.i205.i to i32
  call void @__asan_store2_noabort(i32 %234)
  store i16 %conv6.i207.i, ptr %msg.i205.i, align 4
  %flags.i208.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i205.i, i32 0, i32 1
  %235 = ptrtoint ptr %flags.i208.i to i32
  call void @__asan_store2_noabort(i32 %235)
  store i16 0, ptr %flags.i208.i, align 2
  %236 = ptrtoint ptr %230 to i32
  call void @__asan_store2_noabort(i32 %236)
  store i16 2, ptr %230, align 4
  %buf7.i210.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i205.i, i32 0, i32 3
  %237 = ptrtoint ptr %buf7.i210.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %b0.i203.i, ptr %buf7.i210.i, align 4
  %arrayinit.element8.i211.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i205.i, i32 1
  %238 = ptrtoint ptr %arrayinit.element8.i211.i to i32
  call void @__asan_store2_noabort(i32 %238)
  store i16 %conv6.i207.i, ptr %arrayinit.element8.i211.i, align 4
  %flags12.i212.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i205.i, i32 1, i32 1
  %239 = ptrtoint ptr %flags12.i212.i to i32
  call void @__asan_store2_noabort(i32 %239)
  store i16 1, ptr %flags12.i212.i, align 2
  %len13.i213.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i205.i, i32 1, i32 2
  %240 = ptrtoint ptr %len13.i213.i to i32
  call void @__asan_store2_noabort(i32 %240)
  store i16 1, ptr %len13.i213.i, align 4
  %buf14.i214.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i205.i, i32 1, i32 3
  %241 = ptrtoint ptr %buf14.i214.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr %buf.i204.i, ptr %buf14.i214.i, align 4
  %242 = ptrtoint ptr %i2c_adap.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %i2c_adap.i.i, align 4
  %call.i216.i = call i32 @i2c_transfer(ptr noundef %243, ptr noundef nonnull %msg.i205.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i216.i)
  %cmp.not.i217.i = icmp eq i32 %call.i216.i, 2
  br i1 %cmp.not.i217.i, label %sw.default.i.stv0900_read_reg.exit222.i_crit_edge, label %do.body.i219.i

sw.default.i.stv0900_read_reg.exit222.i_crit_edge: ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_read_reg.exit222.i

do.body.i219.i:                                   ; preds = %sw.default.i
  %244 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %244)
  %tobool.not.i218.i = icmp eq i32 %244, 0
  br i1 %tobool.not.i218.i, label %do.body.i219.i.stv0900_read_reg.exit222.i_crit_edge, label %do.end.i221.i

do.body.i219.i.stv0900_read_reg.exit222.i_crit_edge: ; preds = %do.body.i219.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_read_reg.exit222.i

do.end.i221.i:                                    ; preds = %do.body.i219.i
  call void @__sanitizer_cov_trace_pc() #10
  %call20.i220.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i216.i, i32 noundef 61878) #11
  br label %stv0900_read_reg.exit222.i

stv0900_read_reg.exit222.i:                       ; preds = %do.end.i221.i, %do.body.i219.i.stv0900_read_reg.exit222.i_crit_edge, %sw.default.i.stv0900_read_reg.exit222.i_crit_edge
  %245 = ptrtoint ptr %buf.i204.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %buf.i204.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i205.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i204.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i203.i) #8
  %247 = and i8 %246, 2
  %248 = or i8 %247, 32
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i223.i) #8
  %249 = getelementptr inbounds [3 x i8], ptr %data.i223.i, i32 0, i32 1
  %250 = getelementptr inbounds [3 x i8], ptr %data.i223.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i224.i) #8
  %251 = getelementptr inbounds i8, ptr %i2cmsg.i224.i, i32 4
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 262143, ptr %251, align 4
  %253 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %i2c_addr.i.i, align 4
  %conv.i226.i = zext i8 %254 to i16
  %255 = ptrtoint ptr %i2cmsg.i224.i to i32
  call void @__asan_store2_noabort(i32 %255)
  store i16 %conv.i226.i, ptr %i2cmsg.i224.i, align 4
  %flags.i227.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i224.i, i32 0, i32 1
  %256 = ptrtoint ptr %flags.i227.i to i32
  call void @__asan_store2_noabort(i32 %256)
  store i16 0, ptr %flags.i227.i, align 2
  %buf.i229.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i224.i, i32 0, i32 3
  %257 = ptrtoint ptr %buf.i229.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr %data.i223.i, ptr %buf.i229.i, align 4
  %258 = ptrtoint ptr %data.i223.i to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 -15, ptr %data.i223.i, align 1
  %259 = ptrtoint ptr %249 to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 -74, ptr %249, align 1
  %260 = ptrtoint ptr %250 to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 %248, ptr %250, align 1
  %261 = ptrtoint ptr %i2c_adap.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %i2c_adap.i.i, align 4
  %call.i231.i = call i32 @i2c_transfer(ptr noundef %262, ptr noundef nonnull %i2cmsg.i224.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i231.i)
  %cmp.not.i232.i = icmp eq i32 %call.i231.i, 1
  br i1 %cmp.not.i232.i, label %stv0900_read_reg.exit222.i.stv0900_write_reg.exit237.i_crit_edge, label %do.body.i234.i

stv0900_read_reg.exit222.i.stv0900_write_reg.exit237.i_crit_edge: ; preds = %stv0900_read_reg.exit222.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit237.i

do.body.i234.i:                                   ; preds = %stv0900_read_reg.exit222.i
  %263 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %263)
  %tobool.not.i233.i = icmp eq i32 %263, 0
  br i1 %tobool.not.i233.i, label %do.body.i234.i.stv0900_write_reg.exit237.i_crit_edge, label %do.end.i236.i

do.body.i234.i.stv0900_write_reg.exit237.i_crit_edge: ; preds = %do.body.i234.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit237.i

do.end.i236.i:                                    ; preds = %do.body.i234.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i235.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i231.i) #11
  br label %stv0900_write_reg.exit237.i

stv0900_write_reg.exit237.i:                      ; preds = %do.end.i236.i, %do.body.i234.i.stv0900_write_reg.exit237.i_crit_edge, %stv0900_read_reg.exit222.i.stv0900_write_reg.exit237.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i224.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i223.i) #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %stv0900_write_reg.exit237.i, %stv0900_write_reg.exit202.i
  call void @msleep(i32 noundef 3) #8
  %264 = getelementptr inbounds [3 x i8], ptr %data.i238.i, i32 0, i32 1
  %265 = getelementptr inbounds [3 x i8], ptr %data.i238.i, i32 0, i32 2
  %266 = getelementptr inbounds i8, ptr %i2cmsg.i239.i, i32 4
  %flags.i242.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i239.i, i32 0, i32 1
  %buf.i244.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i239.i, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %stv0900_write_reg.exit252.i.for.body.i_crit_edge, %sw.epilog.i
  %i.0425.i = phi i32 [ 0, %sw.epilog.i ], [ %inc.i, %stv0900_write_reg.exit252.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [181 x [2 x i16]], ptr @STV0900_InitVal, i32 0, i32 %i.0425.i
  %267 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %267)
  %268 = load i16, ptr %arrayidx.i, align 2
  %arrayidx16.i = getelementptr [181 x [2 x i16]], ptr @STV0900_InitVal, i32 0, i32 %i.0425.i, i32 1
  %269 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load2_noabort(i32 %269)
  %270 = load i16, ptr %arrayidx16.i, align 2
  %conv17.i = trunc i16 %270 to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i238.i) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i239.i) #8
  %271 = ptrtoint ptr %266 to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 262143, ptr %266, align 4
  %272 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %i2c_addr.i.i, align 4
  %conv.i241.i = zext i8 %273 to i16
  %274 = ptrtoint ptr %i2cmsg.i239.i to i32
  call void @__asan_store2_noabort(i32 %274)
  store i16 %conv.i241.i, ptr %i2cmsg.i239.i, align 4
  %275 = ptrtoint ptr %flags.i242.i to i32
  call void @__asan_store2_noabort(i32 %275)
  store i16 0, ptr %flags.i242.i, align 2
  %276 = ptrtoint ptr %buf.i244.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store ptr %data.i238.i, ptr %buf.i244.i, align 4
  %277 = lshr i16 %268, 8
  %conv2.i.i = trunc i16 %277 to i8
  %278 = ptrtoint ptr %data.i238.i to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 %conv2.i.i, ptr %data.i238.i, align 1
  %conv5.i.i = trunc i16 %268 to i8
  %279 = ptrtoint ptr %264 to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 %conv5.i.i, ptr %264, align 1
  %280 = ptrtoint ptr %265 to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 %conv17.i, ptr %265, align 1
  %281 = ptrtoint ptr %i2c_adap.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %i2c_adap.i.i, align 4
  %call.i246.i = call i32 @i2c_transfer(ptr noundef %282, ptr noundef nonnull %i2cmsg.i239.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i246.i)
  %cmp.not.i247.i = icmp eq i32 %call.i246.i, 1
  br i1 %cmp.not.i247.i, label %for.body.i.stv0900_write_reg.exit252.i_crit_edge, label %do.body.i249.i

for.body.i.stv0900_write_reg.exit252.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit252.i

do.body.i249.i:                                   ; preds = %for.body.i
  %283 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %283)
  %tobool.not.i248.i = icmp eq i32 %283, 0
  br i1 %tobool.not.i248.i, label %do.body.i249.i.stv0900_write_reg.exit252.i_crit_edge, label %do.end.i251.i

do.body.i249.i.stv0900_write_reg.exit252.i_crit_edge: ; preds = %do.body.i249.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit252.i

do.end.i251.i:                                    ; preds = %do.body.i249.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i250.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i246.i) #11
  br label %stv0900_write_reg.exit252.i

stv0900_write_reg.exit252.i:                      ; preds = %do.end.i251.i, %do.body.i249.i.stv0900_write_reg.exit252.i_crit_edge, %for.body.i.stv0900_write_reg.exit252.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i239.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i238.i) #8
  %inc.i = add nuw nsw i32 %i.0425.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 181
  br i1 %exitcond.not.i, label %for.end.i, label %stv0900_write_reg.exit252.i.for.body.i_crit_edge

stv0900_write_reg.exit252.i.for.body.i_crit_edge: ; preds = %stv0900_write_reg.exit252.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %stv0900_write_reg.exit252.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i253.i) #8
  %284 = getelementptr inbounds [2 x i8], ptr %b0.i253.i, i32 0, i32 1
  %285 = ptrtoint ptr %b0.i253.i to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 -15, ptr %b0.i253.i, align 1
  %286 = ptrtoint ptr %284 to i32
  call void @__asan_store1_noabort(i32 %286)
  store i8 0, ptr %284, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i254.i) #8
  %287 = ptrtoint ptr %buf.i254.i to i32
  call void @__asan_store1_noabort(i32 %287)
  store i8 0, ptr %buf.i254.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i255.i) #8
  %288 = getelementptr inbounds i8, ptr %msg.i255.i, i32 4
  %289 = call ptr @memset(ptr %288, i32 255, i32 16)
  %290 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %i2c_addr.i.i, align 4
  %conv6.i257.i = zext i8 %291 to i16
  %292 = ptrtoint ptr %msg.i255.i to i32
  call void @__asan_store2_noabort(i32 %292)
  store i16 %conv6.i257.i, ptr %msg.i255.i, align 4
  %flags.i258.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i255.i, i32 0, i32 1
  %293 = ptrtoint ptr %flags.i258.i to i32
  call void @__asan_store2_noabort(i32 %293)
  store i16 0, ptr %flags.i258.i, align 2
  %294 = ptrtoint ptr %288 to i32
  call void @__asan_store2_noabort(i32 %294)
  store i16 2, ptr %288, align 4
  %buf7.i260.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i255.i, i32 0, i32 3
  %295 = ptrtoint ptr %buf7.i260.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store ptr %b0.i253.i, ptr %buf7.i260.i, align 4
  %arrayinit.element8.i261.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i255.i, i32 1
  %296 = ptrtoint ptr %arrayinit.element8.i261.i to i32
  call void @__asan_store2_noabort(i32 %296)
  store i16 %conv6.i257.i, ptr %arrayinit.element8.i261.i, align 4
  %flags12.i262.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i255.i, i32 1, i32 1
  %297 = ptrtoint ptr %flags12.i262.i to i32
  call void @__asan_store2_noabort(i32 %297)
  store i16 1, ptr %flags12.i262.i, align 2
  %len13.i263.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i255.i, i32 1, i32 2
  %298 = ptrtoint ptr %len13.i263.i to i32
  call void @__asan_store2_noabort(i32 %298)
  store i16 1, ptr %len13.i263.i, align 4
  %buf14.i264.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i255.i, i32 1, i32 3
  %299 = ptrtoint ptr %buf14.i264.i to i32
  call void @__asan_store4_noabort(i32 %299)
  store ptr %buf.i254.i, ptr %buf14.i264.i, align 4
  %300 = ptrtoint ptr %i2c_adap.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %i2c_adap.i.i, align 4
  %call.i266.i = call i32 @i2c_transfer(ptr noundef %301, ptr noundef nonnull %msg.i255.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i266.i)
  %cmp.not.i267.i = icmp eq i32 %call.i266.i, 2
  br i1 %cmp.not.i267.i, label %for.end.i.stv0900_read_reg.exit272.i_crit_edge, label %do.body.i269.i

for.end.i.stv0900_read_reg.exit272.i_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_read_reg.exit272.i

do.body.i269.i:                                   ; preds = %for.end.i
  %302 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %302)
  %tobool.not.i268.i = icmp eq i32 %302, 0
  br i1 %tobool.not.i268.i, label %do.body.i269.i.stv0900_read_reg.exit272.i_crit_edge, label %do.end.i271.i

do.body.i269.i.stv0900_read_reg.exit272.i_crit_edge: ; preds = %do.body.i269.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_read_reg.exit272.i

do.end.i271.i:                                    ; preds = %do.body.i269.i
  call void @__sanitizer_cov_trace_pc() #10
  %call20.i270.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i266.i, i32 noundef 61696) #11
  br label %stv0900_read_reg.exit272.i

stv0900_read_reg.exit272.i:                       ; preds = %do.end.i271.i, %do.body.i269.i.stv0900_read_reg.exit272.i_crit_edge, %for.end.i.stv0900_read_reg.exit272.i_crit_edge
  %303 = ptrtoint ptr %buf.i254.i to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %buf.i254.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i255.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i254.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i253.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %304)
  %cmp20.i = icmp ugt i8 %304, 31
  br i1 %cmp20.i, label %if.then22.i, label %stv0900_read_reg.exit272.i.if.end35.i_crit_edge

stv0900_read_reg.exit272.i.if.end35.i_crit_edge:  ; preds = %stv0900_read_reg.exit272.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

if.then22.i:                                      ; preds = %stv0900_read_reg.exit272.i
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i273.i) #8
  %305 = getelementptr inbounds [3 x i8], ptr %data.i273.i, i32 0, i32 1
  %306 = getelementptr inbounds [3 x i8], ptr %data.i273.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i274.i) #8
  %307 = getelementptr inbounds i8, ptr %i2cmsg.i274.i, i32 4
  %308 = ptrtoint ptr %307 to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 262143, ptr %307, align 4
  %309 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %i2c_addr.i.i, align 4
  %conv.i276.i = zext i8 %310 to i16
  %311 = ptrtoint ptr %i2cmsg.i274.i to i32
  call void @__asan_store2_noabort(i32 %311)
  store i16 %conv.i276.i, ptr %i2cmsg.i274.i, align 4
  %flags.i277.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i274.i, i32 0, i32 1
  %312 = ptrtoint ptr %flags.i277.i to i32
  call void @__asan_store2_noabort(i32 %312)
  store i16 0, ptr %flags.i277.i, align 2
  %buf.i279.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i274.i, i32 0, i32 3
  %313 = ptrtoint ptr %buf.i279.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store ptr %data.i273.i, ptr %buf.i279.i, align 4
  %314 = ptrtoint ptr %data.i273.i to i32
  call void @__asan_store1_noabort(i32 %314)
  store i8 -10, ptr %data.i273.i, align 1
  %315 = ptrtoint ptr %305 to i32
  call void @__asan_store1_noabort(i32 %315)
  store i8 48, ptr %305, align 1
  %316 = ptrtoint ptr %306 to i32
  call void @__asan_store1_noabort(i32 %316)
  store i8 12, ptr %306, align 1
  %317 = ptrtoint ptr %i2c_adap.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %i2c_adap.i.i, align 4
  %call.i281.i = call i32 @i2c_transfer(ptr noundef %318, ptr noundef nonnull %i2cmsg.i274.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i281.i)
  %cmp.not.i282.i = icmp eq i32 %call.i281.i, 1
  br i1 %cmp.not.i282.i, label %if.then22.i.stv0900_write_reg.exit287.i_crit_edge, label %do.body.i284.i

if.then22.i.stv0900_write_reg.exit287.i_crit_edge: ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit287.i

do.body.i284.i:                                   ; preds = %if.then22.i
  %319 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %319)
  %tobool.not.i283.i = icmp eq i32 %319, 0
  br i1 %tobool.not.i283.i, label %do.body.i284.i.stv0900_write_reg.exit287.i_crit_edge, label %do.end.i286.i

do.body.i284.i.stv0900_write_reg.exit287.i_crit_edge: ; preds = %do.body.i284.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit287.i

do.end.i286.i:                                    ; preds = %do.body.i284.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i285.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i281.i) #11
  br label %stv0900_write_reg.exit287.i

stv0900_write_reg.exit287.i:                      ; preds = %do.end.i286.i, %do.body.i284.i.stv0900_write_reg.exit287.i_crit_edge, %if.then22.i.stv0900_write_reg.exit287.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i274.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i273.i) #8
  %320 = getelementptr inbounds [3 x i8], ptr %data.i288.i, i32 0, i32 1
  %321 = getelementptr inbounds [3 x i8], ptr %data.i288.i, i32 0, i32 2
  %322 = getelementptr inbounds i8, ptr %i2cmsg.i289.i, i32 4
  %flags.i292.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i289.i, i32 0, i32 1
  %buf.i294.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i289.i, i32 0, i32 3
  br label %for.body26.i

for.body26.i:                                     ; preds = %stv0900_write_reg.exit304.i.for.body26.i_crit_edge, %stv0900_write_reg.exit287.i
  %i.1426.i = phi i32 [ 0, %stv0900_write_reg.exit287.i ], [ %inc33.i, %stv0900_write_reg.exit304.i.for.body26.i_crit_edge ]
  %arrayidx27.i = getelementptr [32 x [2 x i16]], ptr @STV0900_Cut20_AddOnVal, i32 0, i32 %i.1426.i
  %323 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load2_noabort(i32 %323)
  %324 = load i16, ptr %arrayidx27.i, align 2
  %arrayidx30.i = getelementptr [32 x [2 x i16]], ptr @STV0900_Cut20_AddOnVal, i32 0, i32 %i.1426.i, i32 1
  %325 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load2_noabort(i32 %325)
  %326 = load i16, ptr %arrayidx30.i, align 2
  %conv31.i = trunc i16 %326 to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i288.i) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i289.i) #8
  %327 = ptrtoint ptr %322 to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 262143, ptr %322, align 4
  %328 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %i2c_addr.i.i, align 4
  %conv.i291.i = zext i8 %329 to i16
  %330 = ptrtoint ptr %i2cmsg.i289.i to i32
  call void @__asan_store2_noabort(i32 %330)
  store i16 %conv.i291.i, ptr %i2cmsg.i289.i, align 4
  %331 = ptrtoint ptr %flags.i292.i to i32
  call void @__asan_store2_noabort(i32 %331)
  store i16 0, ptr %flags.i292.i, align 2
  %332 = ptrtoint ptr %buf.i294.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store ptr %data.i288.i, ptr %buf.i294.i, align 4
  %333 = lshr i16 %324, 8
  %conv2.i295.i = trunc i16 %333 to i8
  %334 = ptrtoint ptr %data.i288.i to i32
  call void @__asan_store1_noabort(i32 %334)
  store i8 %conv2.i295.i, ptr %data.i288.i, align 1
  %conv5.i296.i = trunc i16 %324 to i8
  %335 = ptrtoint ptr %320 to i32
  call void @__asan_store1_noabort(i32 %335)
  store i8 %conv5.i296.i, ptr %320, align 1
  %336 = ptrtoint ptr %321 to i32
  call void @__asan_store1_noabort(i32 %336)
  store i8 %conv31.i, ptr %321, align 1
  %337 = ptrtoint ptr %i2c_adap.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %i2c_adap.i.i, align 4
  %call.i298.i = call i32 @i2c_transfer(ptr noundef %338, ptr noundef nonnull %i2cmsg.i289.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i298.i)
  %cmp.not.i299.i = icmp eq i32 %call.i298.i, 1
  br i1 %cmp.not.i299.i, label %for.body26.i.stv0900_write_reg.exit304.i_crit_edge, label %do.body.i301.i

for.body26.i.stv0900_write_reg.exit304.i_crit_edge: ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit304.i

do.body.i301.i:                                   ; preds = %for.body26.i
  %339 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %339)
  %tobool.not.i300.i = icmp eq i32 %339, 0
  br i1 %tobool.not.i300.i, label %do.body.i301.i.stv0900_write_reg.exit304.i_crit_edge, label %do.end.i303.i

do.body.i301.i.stv0900_write_reg.exit304.i_crit_edge: ; preds = %do.body.i301.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit304.i

do.end.i303.i:                                    ; preds = %do.body.i301.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i302.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i298.i) #11
  br label %stv0900_write_reg.exit304.i

stv0900_write_reg.exit304.i:                      ; preds = %do.end.i303.i, %do.body.i301.i.stv0900_write_reg.exit304.i_crit_edge, %for.body26.i.stv0900_write_reg.exit304.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i289.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i288.i) #8
  %inc33.i = add nuw nsw i32 %i.1426.i, 1
  %exitcond427.not.i = icmp eq i32 %inc33.i, 32
  br i1 %exitcond427.not.i, label %stv0900_write_reg.exit304.i.if.end35.i_crit_edge, label %stv0900_write_reg.exit304.i.for.body26.i_crit_edge

stv0900_write_reg.exit304.i.for.body26.i_crit_edge: ; preds = %stv0900_write_reg.exit304.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body26.i

stv0900_write_reg.exit304.i.if.end35.i_crit_edge: ; preds = %stv0900_write_reg.exit304.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

if.end35.i:                                       ; preds = %stv0900_write_reg.exit304.i.if.end35.i_crit_edge, %stv0900_read_reg.exit272.i.if.end35.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i305.i) #8
  %340 = getelementptr inbounds [3 x i8], ptr %data.i305.i, i32 0, i32 1
  %341 = getelementptr inbounds [3 x i8], ptr %data.i305.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i306.i) #8
  %342 = getelementptr inbounds i8, ptr %i2cmsg.i306.i, i32 4
  %343 = ptrtoint ptr %342 to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 262143, ptr %342, align 4
  %344 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %i2c_addr.i.i, align 4
  %conv.i308.i = zext i8 %345 to i16
  %346 = ptrtoint ptr %i2cmsg.i306.i to i32
  call void @__asan_store2_noabort(i32 %346)
  store i16 %conv.i308.i, ptr %i2cmsg.i306.i, align 4
  %flags.i309.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i306.i, i32 0, i32 1
  %347 = ptrtoint ptr %flags.i309.i to i32
  call void @__asan_store2_noabort(i32 %347)
  store i16 0, ptr %flags.i309.i, align 2
  %buf.i311.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i306.i, i32 0, i32 3
  %348 = ptrtoint ptr %buf.i311.i to i32
  call void @__asan_store4_noabort(i32 %348)
  store ptr %data.i305.i, ptr %buf.i311.i, align 4
  %349 = ptrtoint ptr %data.i305.i to i32
  call void @__asan_store1_noabort(i32 %349)
  store i8 -11, ptr %data.i305.i, align 1
  %350 = ptrtoint ptr %340 to i32
  call void @__asan_store1_noabort(i32 %350)
  store i8 -95, ptr %340, align 1
  %351 = ptrtoint ptr %341 to i32
  call void @__asan_store1_noabort(i32 %351)
  store i8 108, ptr %341, align 1
  %352 = ptrtoint ptr %i2c_adap.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %i2c_adap.i.i, align 4
  %call.i313.i = call i32 @i2c_transfer(ptr noundef %353, ptr noundef nonnull %i2cmsg.i306.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i313.i)
  %cmp.not.i314.i = icmp eq i32 %call.i313.i, 1
  br i1 %cmp.not.i314.i, label %if.end35.i.stv0900_write_reg.exit319.i_crit_edge, label %do.body.i316.i

if.end35.i.stv0900_write_reg.exit319.i_crit_edge: ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit319.i

do.body.i316.i:                                   ; preds = %if.end35.i
  %354 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %354)
  %tobool.not.i315.i = icmp eq i32 %354, 0
  br i1 %tobool.not.i315.i, label %do.body.i316.i.stv0900_write_reg.exit319.i_crit_edge, label %do.end.i318.i

do.body.i316.i.stv0900_write_reg.exit319.i_crit_edge: ; preds = %do.body.i316.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit319.i

do.end.i318.i:                                    ; preds = %do.body.i316.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i317.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i313.i) #11
  br label %stv0900_write_reg.exit319.i

stv0900_write_reg.exit319.i:                      ; preds = %do.end.i318.i, %do.body.i316.i.stv0900_write_reg.exit319.i_crit_edge, %if.end35.i.stv0900_write_reg.exit319.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i306.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i305.i) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i320.i) #8
  %355 = getelementptr inbounds [3 x i8], ptr %data.i320.i, i32 0, i32 1
  %356 = getelementptr inbounds [3 x i8], ptr %data.i320.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i321.i) #8
  %357 = getelementptr inbounds i8, ptr %i2cmsg.i321.i, i32 4
  %358 = ptrtoint ptr %357 to i32
  call void @__asan_store4_noabort(i32 %358)
  store i32 262143, ptr %357, align 4
  %359 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %359)
  %360 = load i8, ptr %i2c_addr.i.i, align 4
  %conv.i323.i = zext i8 %360 to i16
  %361 = ptrtoint ptr %i2cmsg.i321.i to i32
  call void @__asan_store2_noabort(i32 %361)
  store i16 %conv.i323.i, ptr %i2cmsg.i321.i, align 4
  %flags.i324.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i321.i, i32 0, i32 1
  %362 = ptrtoint ptr %flags.i324.i to i32
  call void @__asan_store2_noabort(i32 %362)
  store i16 0, ptr %flags.i324.i, align 2
  %buf.i326.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i321.i, i32 0, i32 3
  %363 = ptrtoint ptr %buf.i326.i to i32
  call void @__asan_store4_noabort(i32 %363)
  store ptr %data.i320.i, ptr %buf.i326.i, align 4
  %364 = ptrtoint ptr %data.i320.i to i32
  call void @__asan_store1_noabort(i32 %364)
  store i8 -13, ptr %data.i320.i, align 1
  %365 = ptrtoint ptr %355 to i32
  call void @__asan_store1_noabort(i32 %365)
  store i8 -95, ptr %355, align 1
  %366 = ptrtoint ptr %356 to i32
  call void @__asan_store1_noabort(i32 %366)
  store i8 108, ptr %356, align 1
  %367 = ptrtoint ptr %i2c_adap.i.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %i2c_adap.i.i, align 4
  %call.i328.i = call i32 @i2c_transfer(ptr noundef %368, ptr noundef nonnull %i2cmsg.i321.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i328.i)
  %cmp.not.i329.i = icmp eq i32 %call.i328.i, 1
  br i1 %cmp.not.i329.i, label %stv0900_write_reg.exit319.i.stv0900_write_reg.exit334.i_crit_edge, label %do.body.i331.i

stv0900_write_reg.exit319.i.stv0900_write_reg.exit334.i_crit_edge: ; preds = %stv0900_write_reg.exit319.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit334.i

do.body.i331.i:                                   ; preds = %stv0900_write_reg.exit319.i
  %369 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %369)
  %tobool.not.i330.i = icmp eq i32 %369, 0
  br i1 %tobool.not.i330.i, label %do.body.i331.i.stv0900_write_reg.exit334.i_crit_edge, label %do.end.i333.i

do.body.i331.i.stv0900_write_reg.exit334.i_crit_edge: ; preds = %do.body.i331.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit334.i

do.end.i333.i:                                    ; preds = %do.body.i331.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i332.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i328.i) #11
  br label %stv0900_write_reg.exit334.i

stv0900_write_reg.exit334.i:                      ; preds = %do.end.i333.i, %do.body.i331.i.stv0900_write_reg.exit334.i_crit_edge, %stv0900_write_reg.exit319.i.stv0900_write_reg.exit334.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i321.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i320.i) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i335.i) #8
  %370 = getelementptr inbounds [3 x i8], ptr %data.i335.i, i32 0, i32 1
  %371 = getelementptr inbounds [3 x i8], ptr %data.i335.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i336.i) #8
  %372 = getelementptr inbounds i8, ptr %i2cmsg.i336.i, i32 4
  %373 = ptrtoint ptr %372 to i32
  call void @__asan_store4_noabort(i32 %373)
  store i32 262143, ptr %372, align 4
  %374 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %374)
  %375 = load i8, ptr %i2c_addr.i.i, align 4
  %conv.i338.i = zext i8 %375 to i16
  %376 = ptrtoint ptr %i2cmsg.i336.i to i32
  call void @__asan_store2_noabort(i32 %376)
  store i16 %conv.i338.i, ptr %i2cmsg.i336.i, align 4
  %flags.i339.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i336.i, i32 0, i32 1
  %377 = ptrtoint ptr %flags.i339.i to i32
  call void @__asan_store2_noabort(i32 %377)
  store i16 0, ptr %flags.i339.i, align 2
  %buf.i341.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i336.i, i32 0, i32 3
  %378 = ptrtoint ptr %buf.i341.i to i32
  call void @__asan_store4_noabort(i32 %378)
  store ptr %data.i335.i, ptr %buf.i341.i, align 4
  %379 = ptrtoint ptr %data.i335.i to i32
  call void @__asan_store1_noabort(i32 %379)
  store i8 -11, ptr %data.i335.i, align 1
  %380 = ptrtoint ptr %370 to i32
  call void @__asan_store1_noabort(i32 %380)
  store i8 81, ptr %370, align 1
  %381 = ptrtoint ptr %371 to i32
  call void @__asan_store1_noabort(i32 %381)
  store i8 1, ptr %371, align 1
  %382 = ptrtoint ptr %i2c_adap.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %i2c_adap.i.i, align 4
  %call.i343.i = call i32 @i2c_transfer(ptr noundef %383, ptr noundef nonnull %i2cmsg.i336.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i343.i)
  %cmp.not.i344.i = icmp eq i32 %call.i343.i, 1
  br i1 %cmp.not.i344.i, label %stv0900_write_reg.exit334.i.stv0900_write_reg.exit349.i_crit_edge, label %do.body.i346.i

stv0900_write_reg.exit334.i.stv0900_write_reg.exit349.i_crit_edge: ; preds = %stv0900_write_reg.exit334.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit349.i

do.body.i346.i:                                   ; preds = %stv0900_write_reg.exit334.i
  %384 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %384)
  %tobool.not.i345.i = icmp eq i32 %384, 0
  br i1 %tobool.not.i345.i, label %do.body.i346.i.stv0900_write_reg.exit349.i_crit_edge, label %do.end.i348.i

do.body.i346.i.stv0900_write_reg.exit349.i_crit_edge: ; preds = %do.body.i346.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit349.i

do.end.i348.i:                                    ; preds = %do.body.i346.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i347.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i343.i) #11
  br label %stv0900_write_reg.exit349.i

stv0900_write_reg.exit349.i:                      ; preds = %do.end.i348.i, %do.body.i346.i.stv0900_write_reg.exit349.i_crit_edge, %stv0900_write_reg.exit334.i.stv0900_write_reg.exit349.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i336.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i335.i) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i350.i) #8
  %385 = getelementptr inbounds [3 x i8], ptr %data.i350.i, i32 0, i32 1
  %386 = getelementptr inbounds [3 x i8], ptr %data.i350.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i351.i) #8
  %387 = getelementptr inbounds i8, ptr %i2cmsg.i351.i, i32 4
  %388 = ptrtoint ptr %387 to i32
  call void @__asan_store4_noabort(i32 %388)
  store i32 262143, ptr %387, align 4
  %389 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %389)
  %390 = load i8, ptr %i2c_addr.i.i, align 4
  %conv.i353.i = zext i8 %390 to i16
  %391 = ptrtoint ptr %i2cmsg.i351.i to i32
  call void @__asan_store2_noabort(i32 %391)
  store i16 %conv.i353.i, ptr %i2cmsg.i351.i, align 4
  %flags.i354.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i351.i, i32 0, i32 1
  %392 = ptrtoint ptr %flags.i354.i to i32
  call void @__asan_store2_noabort(i32 %392)
  store i16 0, ptr %flags.i354.i, align 2
  %buf.i356.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i351.i, i32 0, i32 3
  %393 = ptrtoint ptr %buf.i356.i to i32
  call void @__asan_store4_noabort(i32 %393)
  store ptr %data.i350.i, ptr %buf.i356.i, align 4
  %394 = ptrtoint ptr %data.i350.i to i32
  call void @__asan_store1_noabort(i32 %394)
  store i8 -13, ptr %data.i350.i, align 1
  %395 = ptrtoint ptr %385 to i32
  call void @__asan_store1_noabort(i32 %395)
  store i8 81, ptr %385, align 1
  %396 = ptrtoint ptr %386 to i32
  call void @__asan_store1_noabort(i32 %396)
  store i8 33, ptr %386, align 1
  %397 = ptrtoint ptr %i2c_adap.i.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %i2c_adap.i.i, align 4
  %call.i358.i = call i32 @i2c_transfer(ptr noundef %398, ptr noundef nonnull %i2cmsg.i351.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i358.i)
  %cmp.not.i359.i = icmp eq i32 %call.i358.i, 1
  br i1 %cmp.not.i359.i, label %stv0900_write_reg.exit349.i.stv0900_write_reg.exit364.i_crit_edge, label %do.body.i361.i

stv0900_write_reg.exit349.i.stv0900_write_reg.exit364.i_crit_edge: ; preds = %stv0900_write_reg.exit349.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit364.i

do.body.i361.i:                                   ; preds = %stv0900_write_reg.exit349.i
  %399 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %399)
  %tobool.not.i360.i = icmp eq i32 %399, 0
  br i1 %tobool.not.i360.i, label %do.body.i361.i.stv0900_write_reg.exit364.i_crit_edge, label %do.end.i363.i

do.body.i361.i.stv0900_write_reg.exit364.i_crit_edge: ; preds = %do.body.i361.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit364.i

do.end.i363.i:                                    ; preds = %do.body.i361.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i362.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i358.i) #11
  br label %stv0900_write_reg.exit364.i

stv0900_write_reg.exit364.i:                      ; preds = %do.end.i363.i, %do.body.i361.i.stv0900_write_reg.exit364.i_crit_edge, %stv0900_write_reg.exit349.i.stv0900_write_reg.exit364.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i351.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i350.i) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i365.i) #8
  %400 = getelementptr inbounds [3 x i8], ptr %data.i365.i, i32 0, i32 1
  %401 = getelementptr inbounds [3 x i8], ptr %data.i365.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i366.i) #8
  %402 = getelementptr inbounds i8, ptr %i2cmsg.i366.i, i32 4
  %403 = ptrtoint ptr %402 to i32
  call void @__asan_store4_noabort(i32 %403)
  store i32 262143, ptr %402, align 4
  %404 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %404)
  %405 = load i8, ptr %i2c_addr.i.i, align 4
  %conv.i368.i = zext i8 %405 to i16
  %406 = ptrtoint ptr %i2cmsg.i366.i to i32
  call void @__asan_store2_noabort(i32 %406)
  store i16 %conv.i368.i, ptr %i2cmsg.i366.i, align 4
  %flags.i369.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i366.i, i32 0, i32 1
  %407 = ptrtoint ptr %flags.i369.i to i32
  call void @__asan_store2_noabort(i32 %407)
  store i16 0, ptr %flags.i369.i, align 2
  %buf.i371.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i366.i, i32 0, i32 3
  %408 = ptrtoint ptr %buf.i371.i to i32
  call void @__asan_store4_noabort(i32 %408)
  store ptr %data.i365.i, ptr %buf.i371.i, align 4
  %409 = ptrtoint ptr %data.i365.i to i32
  call void @__asan_store1_noabort(i32 %409)
  store i8 -11, ptr %data.i365.i, align 1
  %410 = ptrtoint ptr %400 to i32
  call void @__asan_store1_noabort(i32 %410)
  store i8 111, ptr %400, align 1
  %411 = ptrtoint ptr %401 to i32
  call void @__asan_store1_noabort(i32 %411)
  store i8 32, ptr %401, align 1
  %412 = ptrtoint ptr %i2c_adap.i.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %i2c_adap.i.i, align 4
  %call.i373.i = call i32 @i2c_transfer(ptr noundef %413, ptr noundef nonnull %i2cmsg.i366.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i373.i)
  %cmp.not.i374.i = icmp eq i32 %call.i373.i, 1
  br i1 %cmp.not.i374.i, label %stv0900_write_reg.exit364.i.stv0900_write_reg.exit379.i_crit_edge, label %do.body.i376.i

stv0900_write_reg.exit364.i.stv0900_write_reg.exit379.i_crit_edge: ; preds = %stv0900_write_reg.exit364.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit379.i

do.body.i376.i:                                   ; preds = %stv0900_write_reg.exit364.i
  %414 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %414)
  %tobool.not.i375.i = icmp eq i32 %414, 0
  br i1 %tobool.not.i375.i, label %do.body.i376.i.stv0900_write_reg.exit379.i_crit_edge, label %do.end.i378.i

do.body.i376.i.stv0900_write_reg.exit379.i_crit_edge: ; preds = %do.body.i376.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit379.i

do.end.i378.i:                                    ; preds = %do.body.i376.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i377.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i373.i) #11
  br label %stv0900_write_reg.exit379.i

stv0900_write_reg.exit379.i:                      ; preds = %do.end.i378.i, %do.body.i376.i.stv0900_write_reg.exit379.i_crit_edge, %stv0900_write_reg.exit364.i.stv0900_write_reg.exit379.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i366.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i365.i) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i380.i) #8
  %415 = getelementptr inbounds [3 x i8], ptr %data.i380.i, i32 0, i32 1
  %416 = getelementptr inbounds [3 x i8], ptr %data.i380.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i381.i) #8
  %417 = getelementptr inbounds i8, ptr %i2cmsg.i381.i, i32 4
  %418 = ptrtoint ptr %417 to i32
  call void @__asan_store4_noabort(i32 %418)
  store i32 262143, ptr %417, align 4
  %419 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %419)
  %420 = load i8, ptr %i2c_addr.i.i, align 4
  %conv.i383.i = zext i8 %420 to i16
  %421 = ptrtoint ptr %i2cmsg.i381.i to i32
  call void @__asan_store2_noabort(i32 %421)
  store i16 %conv.i383.i, ptr %i2cmsg.i381.i, align 4
  %flags.i384.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i381.i, i32 0, i32 1
  %422 = ptrtoint ptr %flags.i384.i to i32
  call void @__asan_store2_noabort(i32 %422)
  store i16 0, ptr %flags.i384.i, align 2
  %buf.i386.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i381.i, i32 0, i32 3
  %423 = ptrtoint ptr %buf.i386.i to i32
  call void @__asan_store4_noabort(i32 %423)
  store ptr %data.i380.i, ptr %buf.i386.i, align 4
  %424 = ptrtoint ptr %data.i380.i to i32
  call void @__asan_store1_noabort(i32 %424)
  store i8 -13, ptr %data.i380.i, align 1
  %425 = ptrtoint ptr %415 to i32
  call void @__asan_store1_noabort(i32 %425)
  store i8 111, ptr %415, align 1
  %426 = ptrtoint ptr %416 to i32
  call void @__asan_store1_noabort(i32 %426)
  store i8 32, ptr %416, align 1
  %427 = ptrtoint ptr %i2c_adap.i.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %i2c_adap.i.i, align 4
  %call.i388.i = call i32 @i2c_transfer(ptr noundef %428, ptr noundef nonnull %i2cmsg.i381.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i388.i)
  %cmp.not.i389.i = icmp eq i32 %call.i388.i, 1
  br i1 %cmp.not.i389.i, label %stv0900_write_reg.exit379.i.stv0900_write_reg.exit394.i_crit_edge, label %do.body.i391.i

stv0900_write_reg.exit379.i.stv0900_write_reg.exit394.i_crit_edge: ; preds = %stv0900_write_reg.exit379.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit394.i

do.body.i391.i:                                   ; preds = %stv0900_write_reg.exit379.i
  %429 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %429)
  %tobool.not.i390.i = icmp eq i32 %429, 0
  br i1 %tobool.not.i390.i, label %do.body.i391.i.stv0900_write_reg.exit394.i_crit_edge, label %do.end.i393.i

do.body.i391.i.stv0900_write_reg.exit394.i_crit_edge: ; preds = %do.body.i391.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit394.i

do.end.i393.i:                                    ; preds = %do.body.i391.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i392.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i388.i) #11
  br label %stv0900_write_reg.exit394.i

stv0900_write_reg.exit394.i:                      ; preds = %do.end.i393.i, %do.body.i391.i.stv0900_write_reg.exit394.i_crit_edge, %stv0900_write_reg.exit379.i.stv0900_write_reg.exit394.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i381.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i380.i) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i395.i) #8
  %430 = getelementptr inbounds [3 x i8], ptr %data.i395.i, i32 0, i32 1
  %431 = getelementptr inbounds [3 x i8], ptr %data.i395.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i396.i) #8
  %432 = getelementptr inbounds i8, ptr %i2cmsg.i396.i, i32 4
  %433 = ptrtoint ptr %432 to i32
  call void @__asan_store4_noabort(i32 %433)
  store i32 262143, ptr %432, align 4
  %434 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %434)
  %435 = load i8, ptr %i2c_addr.i.i, align 4
  %conv.i398.i = zext i8 %435 to i16
  %436 = ptrtoint ptr %i2cmsg.i396.i to i32
  call void @__asan_store2_noabort(i32 %436)
  store i16 %conv.i398.i, ptr %i2cmsg.i396.i, align 4
  %flags.i399.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i396.i, i32 0, i32 1
  %437 = ptrtoint ptr %flags.i399.i to i32
  call void @__asan_store2_noabort(i32 %437)
  store i16 0, ptr %flags.i399.i, align 2
  %buf.i401.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i396.i, i32 0, i32 3
  %438 = ptrtoint ptr %buf.i401.i to i32
  call void @__asan_store4_noabort(i32 %438)
  store ptr %data.i395.i, ptr %buf.i401.i, align 4
  %439 = ptrtoint ptr %data.i395.i to i32
  call void @__asan_store1_noabort(i32 %439)
  store i8 -1, ptr %data.i395.i, align 1
  %440 = ptrtoint ptr %430 to i32
  call void @__asan_store1_noabort(i32 %440)
  store i8 17, ptr %430, align 1
  %441 = ptrtoint ptr %431 to i32
  call void @__asan_store1_noabort(i32 %441)
  store i8 -128, ptr %431, align 1
  %442 = ptrtoint ptr %i2c_adap.i.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %i2c_adap.i.i, align 4
  %call.i403.i = call i32 @i2c_transfer(ptr noundef %443, ptr noundef nonnull %i2cmsg.i396.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i403.i)
  %cmp.not.i404.i = icmp eq i32 %call.i403.i, 1
  br i1 %cmp.not.i404.i, label %stv0900_write_reg.exit394.i.stv0900_write_reg.exit409.i_crit_edge, label %do.body.i406.i

stv0900_write_reg.exit394.i.stv0900_write_reg.exit409.i_crit_edge: ; preds = %stv0900_write_reg.exit394.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit409.i

do.body.i406.i:                                   ; preds = %stv0900_write_reg.exit394.i
  %444 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %444)
  %tobool.not.i405.i = icmp eq i32 %444, 0
  br i1 %tobool.not.i405.i, label %do.body.i406.i.stv0900_write_reg.exit409.i_crit_edge, label %do.end.i408.i

do.body.i406.i.stv0900_write_reg.exit409.i_crit_edge: ; preds = %do.body.i406.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit409.i

do.end.i408.i:                                    ; preds = %do.body.i406.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i407.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i403.i) #11
  br label %stv0900_write_reg.exit409.i

stv0900_write_reg.exit409.i:                      ; preds = %do.end.i408.i, %do.body.i406.i.stv0900_write_reg.exit409.i_crit_edge, %stv0900_write_reg.exit394.i.stv0900_write_reg.exit409.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i396.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i395.i) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i410.i) #8
  %445 = getelementptr inbounds [3 x i8], ptr %data.i410.i, i32 0, i32 1
  %446 = getelementptr inbounds [3 x i8], ptr %data.i410.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i411.i) #8
  %447 = getelementptr inbounds i8, ptr %i2cmsg.i411.i, i32 4
  %448 = ptrtoint ptr %447 to i32
  call void @__asan_store4_noabort(i32 %448)
  store i32 262143, ptr %447, align 4
  %449 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %449)
  %450 = load i8, ptr %i2c_addr.i.i, align 4
  %conv.i413.i = zext i8 %450 to i16
  %451 = ptrtoint ptr %i2cmsg.i411.i to i32
  call void @__asan_store2_noabort(i32 %451)
  store i16 %conv.i413.i, ptr %i2cmsg.i411.i, align 4
  %flags.i414.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i411.i, i32 0, i32 1
  %452 = ptrtoint ptr %flags.i414.i to i32
  call void @__asan_store2_noabort(i32 %452)
  store i16 0, ptr %flags.i414.i, align 2
  %buf.i416.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i411.i, i32 0, i32 3
  %453 = ptrtoint ptr %buf.i416.i to i32
  call void @__asan_store4_noabort(i32 %453)
  store ptr %data.i410.i, ptr %buf.i416.i, align 4
  %454 = ptrtoint ptr %data.i410.i to i32
  call void @__asan_store1_noabort(i32 %454)
  store i8 -1, ptr %data.i410.i, align 1
  %455 = ptrtoint ptr %445 to i32
  call void @__asan_store1_noabort(i32 %455)
  store i8 17, ptr %445, align 1
  %456 = ptrtoint ptr %446 to i32
  call void @__asan_store1_noabort(i32 %456)
  store i8 0, ptr %446, align 1
  %457 = ptrtoint ptr %i2c_adap.i.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %i2c_adap.i.i, align 4
  %call.i418.i = call i32 @i2c_transfer(ptr noundef %458, ptr noundef nonnull %i2cmsg.i411.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i418.i)
  %cmp.not.i419.i = icmp eq i32 %call.i418.i, 1
  br i1 %cmp.not.i419.i, label %stv0900_write_reg.exit409.i.stv0900_initialize.exit.thread_crit_edge, label %do.body.i421.i

stv0900_write_reg.exit409.i.stv0900_initialize.exit.thread_crit_edge: ; preds = %stv0900_write_reg.exit409.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_initialize.exit.thread

do.body.i421.i:                                   ; preds = %stv0900_write_reg.exit409.i
  %459 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %459)
  %tobool.not.i420.i = icmp eq i32 %459, 0
  br i1 %tobool.not.i420.i, label %do.body.i421.i.stv0900_initialize.exit.thread_crit_edge, label %do.end.i423.i

do.body.i421.i.stv0900_initialize.exit.thread_crit_edge: ; preds = %do.body.i421.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_initialize.exit.thread

do.end.i423.i:                                    ; preds = %do.body.i421.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i422.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i418.i) #11
  br label %stv0900_initialize.exit.thread

stv0900_initialize.exit.thread:                   ; preds = %do.end.i423.i, %do.body.i421.i.stv0900_initialize.exit.thread_crit_edge, %stv0900_write_reg.exit409.i.stv0900_initialize.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i411.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i410.i) #8
  %460 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %1, align 4
  %demod_mode72 = getelementptr inbounds %struct.stv0900_init_params, ptr %p_init, i32 0, i32 1
  %462 = ptrtoint ptr %demod_mode72 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %demod_mode72, align 4
  %demod_mode73 = getelementptr inbounds %struct.stv0900_internal, ptr %461, i32 0, i32 3
  %464 = ptrtoint ptr %demod_mode73 to i32
  call void @__asan_store4_noabort(i32 %464)
  store i32 %463, ptr %demod_mode73, align 4
  %465 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %465)
  %tobool.not.i = icmp eq i32 %465, 0
  br i1 %tobool.not.i, label %stv0900_initialize.exit.thread.do.end3.i_crit_edge, label %do.end.i

stv0900_initialize.exit.thread.do.end3.i_crit_edge: ; preds = %stv0900_initialize.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i

do.end.i:                                         ; preds = %stv0900_initialize.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.88) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %stv0900_initialize.exit.thread.do.end3.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %463)
  %cond.i = icmp eq i32 %463, 0
  br i1 %cond.i, label %if.else.i, label %sw.default.i259

sw.default.i259:                                  ; preds = %do.end3.i
  %466 = ptrtoint ptr %demod_mode73 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %demod_mode73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %467)
  %cmp.not.i258 = icmp eq i32 %467, 1
  br i1 %cmp.not.i258, label %while.body.i.i.preheader.i, label %sw.default.i259.if.then7.i_crit_edge

sw.default.i259.if.then7.i_crit_edge:             ; preds = %sw.default.i259
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7.i

while.body.i.i.preheader.i:                       ; preds = %sw.default.i259
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i.i.i) #8
  %468 = getelementptr inbounds [2 x i8], ptr %b0.i.i.i, i32 0, i32 1
  %469 = ptrtoint ptr %b0.i.i.i to i32
  call void @__asan_store1_noabort(i32 %469)
  store i8 -6, ptr %b0.i.i.i, align 1
  %470 = ptrtoint ptr %468 to i32
  call void @__asan_store1_noabort(i32 %470)
  store i8 -122, ptr %468, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i.i.i) #8
  %471 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %471)
  store i8 0, ptr %buf.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i.i) #8
  %472 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %473 = call ptr @memset(ptr %472, i32 255, i32 16)
  %i2c_addr.i.i.i = getelementptr inbounds %struct.stv0900_internal, ptr %461, i32 0, i32 18
  %474 = ptrtoint ptr %i2c_addr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %474)
  %475 = load i8, ptr %i2c_addr.i.i.i, align 4
  %conv6.i10.i.i = zext i8 %475 to i16
  %476 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %476)
  store i16 %conv6.i10.i.i, ptr %msg.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %477 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %477)
  store i16 0, ptr %flags.i.i.i, align 2
  %478 = ptrtoint ptr %472 to i32
  call void @__asan_store2_noabort(i32 %478)
  store i16 2, ptr %472, align 4
  %buf7.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %479 = ptrtoint ptr %buf7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %479)
  store ptr %b0.i.i.i, ptr %buf7.i.i.i, align 4
  %arrayinit.element8.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 1
  %480 = ptrtoint ptr %arrayinit.element8.i.i.i to i32
  call void @__asan_store2_noabort(i32 %480)
  store i16 %conv6.i10.i.i, ptr %arrayinit.element8.i.i.i, align 4
  %flags12.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 1, i32 1
  %481 = ptrtoint ptr %flags12.i.i.i to i32
  call void @__asan_store2_noabort(i32 %481)
  store i16 1, ptr %flags12.i.i.i, align 2
  %len13.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 1, i32 2
  %482 = ptrtoint ptr %len13.i.i.i to i32
  call void @__asan_store2_noabort(i32 %482)
  store i16 1, ptr %len13.i.i.i, align 4
  %buf14.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 1, i32 3
  %483 = ptrtoint ptr %buf14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %483)
  store ptr %buf.i.i.i, ptr %buf14.i.i.i, align 4
  %i2c_adap.i.i.i = getelementptr inbounds %struct.stv0900_internal, ptr %461, i32 0, i32 17
  %484 = ptrtoint ptr %i2c_adap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %i2c_adap.i.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %485, ptr noundef nonnull %msg.i.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i, 2
  br i1 %cmp.not.i.i.i, label %while.body.i.i.preheader.i.stv0900_get_bits.exit.i_crit_edge, label %do.body.i.i.i

while.body.i.i.preheader.i.stv0900_get_bits.exit.i_crit_edge: ; preds = %while.body.i.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_get_bits.exit.i

do.body.i.i.i:                                    ; preds = %while.body.i.i.preheader.i
  %486 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %486)
  %tobool.not.i.i.i = icmp eq i32 %486, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.stv0900_get_bits.exit.i_crit_edge, label %do.end.i.i.i

do.body.i.i.i.stv0900_get_bits.exit.i_crit_edge:  ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_get_bits.exit.i

do.end.i.i.i:                                     ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call20.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i.i.i, i32 noundef 64134) #11
  br label %stv0900_get_bits.exit.i

stv0900_get_bits.exit.i:                          ; preds = %do.end.i.i.i, %do.body.i.i.i.stv0900_get_bits.exit.i_crit_edge, %while.body.i.i.preheader.i.stv0900_get_bits.exit.i_crit_edge
  %487 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_load1_noabort(i32 %487)
  %488 = load i8, ptr %buf.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i.i.i) #8
  %and8.i.i = and i8 %488, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and8.i.i)
  %cmp5.not.not.i = icmp eq i8 %and8.i.i, 0
  br i1 %cmp5.not.not.i, label %stv0900_get_bits.exit.i.if.then7.i_crit_edge, label %stv0900_get_bits.exit.i.stv0900_st_dvbs2_single.exit_crit_edge

stv0900_get_bits.exit.i.stv0900_st_dvbs2_single.exit_crit_edge: ; preds = %stv0900_get_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_st_dvbs2_single.exit

stv0900_get_bits.exit.i.if.then7.i_crit_edge:     ; preds = %stv0900_get_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7.i

if.then7.i:                                       ; preds = %stv0900_get_bits.exit.i.if.then7.i_crit_edge, %sw.default.i259.if.then7.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i256) #8
  %489 = getelementptr inbounds [3 x i8], ptr %data.i.i256, i32 0, i32 1
  %490 = getelementptr inbounds [3 x i8], ptr %data.i.i256, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i.i257) #8
  %491 = getelementptr inbounds i8, ptr %i2cmsg.i.i257, i32 4
  %492 = ptrtoint ptr %491 to i32
  call void @__asan_store4_noabort(i32 %492)
  store i32 262143, ptr %491, align 4
  %i2c_addr.i.i260 = getelementptr inbounds %struct.stv0900_internal, ptr %461, i32 0, i32 18
  %493 = ptrtoint ptr %i2c_addr.i.i260 to i32
  call void @__asan_load1_noabort(i32 %493)
  %494 = load i8, ptr %i2c_addr.i.i260, align 4
  %conv.i.i261 = zext i8 %494 to i16
  %495 = ptrtoint ptr %i2cmsg.i.i257 to i32
  call void @__asan_store2_noabort(i32 %495)
  store i16 %conv.i.i261, ptr %i2cmsg.i.i257, align 4
  %flags.i.i262 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i.i257, i32 0, i32 1
  %496 = ptrtoint ptr %flags.i.i262 to i32
  call void @__asan_store2_noabort(i32 %496)
  store i16 0, ptr %flags.i.i262, align 2
  %buf.i.i263 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i.i257, i32 0, i32 3
  %497 = ptrtoint ptr %buf.i.i263 to i32
  call void @__asan_store4_noabort(i32 %497)
  store ptr %data.i.i256, ptr %buf.i.i263, align 4
  %498 = ptrtoint ptr %data.i.i256 to i32
  call void @__asan_store1_noabort(i32 %498)
  store i8 -6, ptr %data.i.i256, align 1
  %499 = ptrtoint ptr %489 to i32
  call void @__asan_store1_noabort(i32 %499)
  store i8 -122, ptr %489, align 1
  %500 = ptrtoint ptr %490 to i32
  call void @__asan_store1_noabort(i32 %500)
  store i8 29, ptr %490, align 1
  %i2c_adap.i.i264 = getelementptr inbounds %struct.stv0900_internal, ptr %461, i32 0, i32 17
  %501 = ptrtoint ptr %i2c_adap.i.i264 to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %i2c_adap.i.i264, align 4
  %call.i.i265 = call i32 @i2c_transfer(ptr noundef %502, ptr noundef nonnull %i2cmsg.i.i257, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i265)
  %cmp.not.i.i266 = icmp eq i32 %call.i.i265, 1
  br i1 %cmp.not.i.i266, label %if.then7.i.stv0900_write_reg.exit.i271_crit_edge, label %do.body.i.i268

if.then7.i.stv0900_write_reg.exit.i271_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit.i271

do.body.i.i268:                                   ; preds = %if.then7.i
  %503 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %503)
  %tobool.not.i.i267 = icmp eq i32 %503, 0
  br i1 %tobool.not.i.i267, label %do.body.i.i268.stv0900_write_reg.exit.i271_crit_edge, label %do.end.i.i270

do.body.i.i268.stv0900_write_reg.exit.i271_crit_edge: ; preds = %do.body.i.i268
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit.i271

do.end.i.i270:                                    ; preds = %do.body.i.i268
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i.i269 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i.i265) #11
  br label %stv0900_write_reg.exit.i271

stv0900_write_reg.exit.i271:                      ; preds = %do.end.i.i270, %do.body.i.i268.stv0900_write_reg.exit.i271_crit_edge, %if.then7.i.stv0900_write_reg.exit.i271_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i.i257) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i256) #8
  %504 = ptrtoint ptr %demod_mode73 to i32
  call void @__asan_store4_noabort(i32 %504)
  store i32 1, ptr %demod_mode73, align 4
  call void @stv0900_write_bits(ptr noundef %461, i32 noundef -15662976, i8 noundef zeroext 1) #8
  call void @stv0900_write_bits(ptr noundef %461, i32 noundef -15662976, i8 noundef zeroext 0) #8
  %505 = getelementptr inbounds [3 x i8], ptr %data.i1.i, i32 0, i32 1
  %506 = getelementptr inbounds [3 x i8], ptr %data.i1.i, i32 0, i32 2
  %507 = getelementptr inbounds i8, ptr %i2cmsg.i2.i, i32 4
  %flags.i5.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i2.i, i32 0, i32 1
  %buf.i7.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i2.i, i32 0, i32 3
  br label %for.body.i273

for.cond12.preheader.i:                           ; preds = %stv0900_write_reg.exit16.i
  %508 = getelementptr inbounds [3 x i8], ptr %data.i17.i, i32 0, i32 1
  %509 = getelementptr inbounds [3 x i8], ptr %data.i17.i, i32 0, i32 2
  %510 = getelementptr inbounds i8, ptr %i2cmsg.i18.i, i32 4
  %flags.i21.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i18.i, i32 0, i32 1
  %buf.i23.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i18.i, i32 0, i32 3
  br label %for.body15.i

for.body.i273:                                    ; preds = %stv0900_write_reg.exit16.i.for.body.i273_crit_edge, %stv0900_write_reg.exit.i271
  %reg_ind.0143.i = phi i32 [ 0, %stv0900_write_reg.exit.i271 ], [ %inc.i274, %stv0900_write_reg.exit16.i.for.body.i273_crit_edge ]
  %511 = trunc i32 %reg_ind.0143.i to i16
  %conv11.i = add i16 %511, -2896
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i1.i) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i2.i) #8
  %512 = ptrtoint ptr %507 to i32
  call void @__asan_store4_noabort(i32 %512)
  store i32 262143, ptr %507, align 4
  %513 = ptrtoint ptr %i2c_addr.i.i260 to i32
  call void @__asan_load1_noabort(i32 %513)
  %514 = load i8, ptr %i2c_addr.i.i260, align 4
  %conv.i4.i = zext i8 %514 to i16
  %515 = ptrtoint ptr %i2cmsg.i2.i to i32
  call void @__asan_store2_noabort(i32 %515)
  store i16 %conv.i4.i, ptr %i2cmsg.i2.i, align 4
  %516 = ptrtoint ptr %flags.i5.i to i32
  call void @__asan_store2_noabort(i32 %516)
  store i16 0, ptr %flags.i5.i, align 2
  %517 = ptrtoint ptr %buf.i7.i to i32
  call void @__asan_store4_noabort(i32 %517)
  store ptr %data.i1.i, ptr %buf.i7.i, align 4
  %518 = lshr i16 %conv11.i, 8
  %conv2.i.i272 = trunc i16 %518 to i8
  %519 = ptrtoint ptr %data.i1.i to i32
  call void @__asan_store1_noabort(i32 %519)
  store i8 %conv2.i.i272, ptr %data.i1.i, align 1
  %conv5.i8.i = trunc i16 %conv11.i to i8
  %520 = ptrtoint ptr %505 to i32
  call void @__asan_store1_noabort(i32 %520)
  store i8 %conv5.i8.i, ptr %505, align 1
  %521 = ptrtoint ptr %506 to i32
  call void @__asan_store1_noabort(i32 %521)
  store i8 -1, ptr %506, align 1
  %522 = ptrtoint ptr %i2c_adap.i.i264 to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %i2c_adap.i.i264, align 4
  %call.i10.i = call i32 @i2c_transfer(ptr noundef %523, ptr noundef nonnull %i2cmsg.i2.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i10.i)
  %cmp.not.i11.i = icmp eq i32 %call.i10.i, 1
  br i1 %cmp.not.i11.i, label %for.body.i273.stv0900_write_reg.exit16.i_crit_edge, label %do.body.i13.i

for.body.i273.stv0900_write_reg.exit16.i_crit_edge: ; preds = %for.body.i273
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit16.i

do.body.i13.i:                                    ; preds = %for.body.i273
  %524 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %524)
  %tobool.not.i12.i = icmp eq i32 %524, 0
  br i1 %tobool.not.i12.i, label %do.body.i13.i.stv0900_write_reg.exit16.i_crit_edge, label %do.end.i15.i

do.body.i13.i.stv0900_write_reg.exit16.i_crit_edge: ; preds = %do.body.i13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit16.i

do.end.i15.i:                                     ; preds = %do.body.i13.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i10.i) #11
  br label %stv0900_write_reg.exit16.i

stv0900_write_reg.exit16.i:                       ; preds = %do.end.i15.i, %do.body.i13.i.stv0900_write_reg.exit16.i_crit_edge, %for.body.i273.stv0900_write_reg.exit16.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i2.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i1.i) #8
  %inc.i274 = add nuw nsw i32 %reg_ind.0143.i, 1
  %exitcond.not.i275 = icmp eq i32 %inc.i274, 7
  br i1 %exitcond.not.i275, label %for.cond12.preheader.i, label %stv0900_write_reg.exit16.i.for.body.i273_crit_edge

stv0900_write_reg.exit16.i.for.body.i273_crit_edge: ; preds = %stv0900_write_reg.exit16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i273

for.body15.i:                                     ; preds = %stv0900_write_reg.exit33.i.for.body15.i_crit_edge, %for.cond12.preheader.i
  %reg_ind.1144.i = phi i32 [ 0, %for.cond12.preheader.i ], [ %inc19.i, %stv0900_write_reg.exit33.i.for.body15.i_crit_edge ]
  %525 = trunc i32 %reg_ind.1144.i to i16
  %conv17.i276 = add i16 %525, -2889
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i17.i) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i18.i) #8
  %526 = ptrtoint ptr %510 to i32
  call void @__asan_store4_noabort(i32 %526)
  store i32 262143, ptr %510, align 4
  %527 = ptrtoint ptr %i2c_addr.i.i260 to i32
  call void @__asan_load1_noabort(i32 %527)
  %528 = load i8, ptr %i2c_addr.i.i260, align 4
  %conv.i20.i = zext i8 %528 to i16
  %529 = ptrtoint ptr %i2cmsg.i18.i to i32
  call void @__asan_store2_noabort(i32 %529)
  store i16 %conv.i20.i, ptr %i2cmsg.i18.i, align 4
  %530 = ptrtoint ptr %flags.i21.i to i32
  call void @__asan_store2_noabort(i32 %530)
  store i16 0, ptr %flags.i21.i, align 2
  %531 = ptrtoint ptr %buf.i23.i to i32
  call void @__asan_store4_noabort(i32 %531)
  store ptr %data.i17.i, ptr %buf.i23.i, align 4
  %532 = lshr i16 %conv17.i276, 8
  %conv2.i24.i = trunc i16 %532 to i8
  %533 = ptrtoint ptr %data.i17.i to i32
  call void @__asan_store1_noabort(i32 %533)
  store i8 %conv2.i24.i, ptr %data.i17.i, align 1
  %conv5.i25.i = trunc i16 %conv17.i276 to i8
  %534 = ptrtoint ptr %508 to i32
  call void @__asan_store1_noabort(i32 %534)
  store i8 %conv5.i25.i, ptr %508, align 1
  %535 = ptrtoint ptr %509 to i32
  call void @__asan_store1_noabort(i32 %535)
  store i8 -52, ptr %509, align 1
  %536 = ptrtoint ptr %i2c_adap.i.i264 to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %i2c_adap.i.i264, align 4
  %call.i27.i = call i32 @i2c_transfer(ptr noundef %537, ptr noundef nonnull %i2cmsg.i18.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i27.i)
  %cmp.not.i28.i = icmp eq i32 %call.i27.i, 1
  br i1 %cmp.not.i28.i, label %for.body15.i.stv0900_write_reg.exit33.i_crit_edge, label %do.body.i30.i

for.body15.i.stv0900_write_reg.exit33.i_crit_edge: ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit33.i

do.body.i30.i:                                    ; preds = %for.body15.i
  %538 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %538)
  %tobool.not.i29.i = icmp eq i32 %538, 0
  br i1 %tobool.not.i29.i, label %do.body.i30.i.stv0900_write_reg.exit33.i_crit_edge, label %do.end.i32.i

do.body.i30.i.stv0900_write_reg.exit33.i_crit_edge: ; preds = %do.body.i30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit33.i

do.end.i32.i:                                     ; preds = %do.body.i30.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i27.i) #11
  br label %stv0900_write_reg.exit33.i

stv0900_write_reg.exit33.i:                       ; preds = %do.end.i32.i, %do.body.i30.i.stv0900_write_reg.exit33.i_crit_edge, %for.body15.i.stv0900_write_reg.exit33.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i18.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i17.i) #8
  %inc19.i = add nuw nsw i32 %reg_ind.1144.i, 1
  %exitcond147.not.i = icmp eq i32 %inc19.i, 8
  br i1 %exitcond147.not.i, label %for.end20.i, label %stv0900_write_reg.exit33.i.for.body15.i_crit_edge

stv0900_write_reg.exit33.i.for.body15.i_crit_edge: ; preds = %stv0900_write_reg.exit33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body15.i

for.end20.i:                                      ; preds = %stv0900_write_reg.exit33.i
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i34.i) #8
  %539 = getelementptr inbounds [3 x i8], ptr %data.i34.i, i32 0, i32 1
  %540 = getelementptr inbounds [3 x i8], ptr %data.i34.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i35.i) #8
  %541 = getelementptr inbounds i8, ptr %i2cmsg.i35.i, i32 4
  %542 = ptrtoint ptr %541 to i32
  call void @__asan_store4_noabort(i32 %542)
  store i32 262143, ptr %541, align 4
  %543 = ptrtoint ptr %i2c_addr.i.i260 to i32
  call void @__asan_load1_noabort(i32 %543)
  %544 = load i8, ptr %i2c_addr.i.i260, align 4
  %conv.i37.i = zext i8 %544 to i16
  %545 = ptrtoint ptr %i2cmsg.i35.i to i32
  call void @__asan_store2_noabort(i32 %545)
  store i16 %conv.i37.i, ptr %i2cmsg.i35.i, align 4
  %flags.i38.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i35.i, i32 0, i32 1
  %546 = ptrtoint ptr %flags.i38.i to i32
  call void @__asan_store2_noabort(i32 %546)
  store i16 0, ptr %flags.i38.i, align 2
  %buf.i40.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i35.i, i32 0, i32 3
  %547 = ptrtoint ptr %buf.i40.i to i32
  call void @__asan_store4_noabort(i32 %547)
  store ptr %data.i34.i, ptr %buf.i40.i, align 4
  %548 = ptrtoint ptr %data.i34.i to i32
  call void @__asan_store1_noabort(i32 %548)
  store i8 -12, ptr %data.i34.i, align 1
  %549 = ptrtoint ptr %539 to i32
  call void @__asan_store1_noabort(i32 %549)
  store i8 -66, ptr %539, align 1
  %550 = ptrtoint ptr %540 to i32
  call void @__asan_store1_noabort(i32 %550)
  store i8 -1, ptr %540, align 1
  %551 = ptrtoint ptr %i2c_adap.i.i264 to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load ptr, ptr %i2c_adap.i.i264, align 4
  %call.i42.i = call i32 @i2c_transfer(ptr noundef %552, ptr noundef nonnull %i2cmsg.i35.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i42.i)
  %cmp.not.i43.i = icmp eq i32 %call.i42.i, 1
  br i1 %cmp.not.i43.i, label %for.end20.i.stv0900_write_reg.exit48.i_crit_edge, label %do.body.i45.i

for.end20.i.stv0900_write_reg.exit48.i_crit_edge: ; preds = %for.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit48.i

do.body.i45.i:                                    ; preds = %for.end20.i
  %553 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %553)
  %tobool.not.i44.i = icmp eq i32 %553, 0
  br i1 %tobool.not.i44.i, label %do.body.i45.i.stv0900_write_reg.exit48.i_crit_edge, label %do.end.i47.i

do.body.i45.i.stv0900_write_reg.exit48.i_crit_edge: ; preds = %do.body.i45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit48.i

do.end.i47.i:                                     ; preds = %do.body.i45.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i46.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i42.i) #11
  br label %stv0900_write_reg.exit48.i

stv0900_write_reg.exit48.i:                       ; preds = %do.end.i47.i, %do.body.i45.i.stv0900_write_reg.exit48.i_crit_edge, %for.end20.i.stv0900_write_reg.exit48.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i35.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i34.i) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i49.i) #8
  %554 = getelementptr inbounds [3 x i8], ptr %data.i49.i, i32 0, i32 1
  %555 = getelementptr inbounds [3 x i8], ptr %data.i49.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i50.i) #8
  %556 = getelementptr inbounds i8, ptr %i2cmsg.i50.i, i32 4
  %557 = ptrtoint ptr %556 to i32
  call void @__asan_store4_noabort(i32 %557)
  store i32 262143, ptr %556, align 4
  %558 = ptrtoint ptr %i2c_addr.i.i260 to i32
  call void @__asan_load1_noabort(i32 %558)
  %559 = load i8, ptr %i2c_addr.i.i260, align 4
  %conv.i52.i = zext i8 %559 to i16
  %560 = ptrtoint ptr %i2cmsg.i50.i to i32
  call void @__asan_store2_noabort(i32 %560)
  store i16 %conv.i52.i, ptr %i2cmsg.i50.i, align 4
  %flags.i53.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i50.i, i32 0, i32 1
  %561 = ptrtoint ptr %flags.i53.i to i32
  call void @__asan_store2_noabort(i32 %561)
  store i16 0, ptr %flags.i53.i, align 2
  %buf.i55.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i50.i, i32 0, i32 3
  %562 = ptrtoint ptr %buf.i55.i to i32
  call void @__asan_store4_noabort(i32 %562)
  store ptr %data.i49.i, ptr %buf.i55.i, align 4
  %563 = ptrtoint ptr %data.i49.i to i32
  call void @__asan_store1_noabort(i32 %563)
  store i8 -12, ptr %data.i49.i, align 1
  %564 = ptrtoint ptr %554 to i32
  call void @__asan_store1_noabort(i32 %564)
  store i8 -65, ptr %554, align 1
  %565 = ptrtoint ptr %555 to i32
  call void @__asan_store1_noabort(i32 %565)
  store i8 -49, ptr %555, align 1
  %566 = ptrtoint ptr %i2c_adap.i.i264 to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %i2c_adap.i.i264, align 4
  %call.i57.i = call i32 @i2c_transfer(ptr noundef %567, ptr noundef nonnull %i2cmsg.i50.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i57.i)
  %cmp.not.i58.i = icmp eq i32 %call.i57.i, 1
  br i1 %cmp.not.i58.i, label %stv0900_write_reg.exit48.i.stv0900_write_reg.exit63.i_crit_edge, label %do.body.i60.i

stv0900_write_reg.exit48.i.stv0900_write_reg.exit63.i_crit_edge: ; preds = %stv0900_write_reg.exit48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit63.i

do.body.i60.i:                                    ; preds = %stv0900_write_reg.exit48.i
  %568 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %568)
  %tobool.not.i59.i = icmp eq i32 %568, 0
  br i1 %tobool.not.i59.i, label %do.body.i60.i.stv0900_write_reg.exit63.i_crit_edge, label %do.end.i62.i

do.body.i60.i.stv0900_write_reg.exit63.i_crit_edge: ; preds = %do.body.i60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit63.i

do.end.i62.i:                                     ; preds = %do.body.i60.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i61.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i57.i) #11
  br label %stv0900_write_reg.exit63.i

stv0900_write_reg.exit63.i:                       ; preds = %do.end.i62.i, %do.body.i60.i.stv0900_write_reg.exit63.i_crit_edge, %stv0900_write_reg.exit48.i.stv0900_write_reg.exit63.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i50.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i49.i) #8
  %569 = getelementptr inbounds [3 x i8], ptr %data.i64.i, i32 0, i32 1
  %570 = getelementptr inbounds [3 x i8], ptr %data.i64.i, i32 0, i32 2
  %571 = getelementptr inbounds i8, ptr %i2cmsg.i65.i, i32 4
  %flags.i68.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i65.i, i32 0, i32 1
  %buf.i70.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i65.i, i32 0, i32 3
  br label %for.body24.i

for.cond30.preheader.i:                           ; preds = %stv0900_write_reg.exit80.i
  %572 = getelementptr inbounds [3 x i8], ptr %data.i81.i, i32 0, i32 1
  %573 = getelementptr inbounds [3 x i8], ptr %data.i81.i, i32 0, i32 2
  %574 = getelementptr inbounds i8, ptr %i2cmsg.i82.i, i32 4
  %flags.i85.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i82.i, i32 0, i32 1
  %buf.i87.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i82.i, i32 0, i32 3
  br label %for.body33.i

for.body24.i:                                     ; preds = %stv0900_write_reg.exit80.i.for.body24.i_crit_edge, %stv0900_write_reg.exit63.i
  %reg_ind.2145.i = phi i32 [ 0, %stv0900_write_reg.exit63.i ], [ %inc28.i, %stv0900_write_reg.exit80.i.for.body24.i_crit_edge ]
  %575 = trunc i32 %reg_ind.2145.i to i16
  %conv26.i = add i16 %575, -3408
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i64.i) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i65.i) #8
  %576 = ptrtoint ptr %571 to i32
  call void @__asan_store4_noabort(i32 %576)
  store i32 262143, ptr %571, align 4
  %577 = ptrtoint ptr %i2c_addr.i.i260 to i32
  call void @__asan_load1_noabort(i32 %577)
  %578 = load i8, ptr %i2c_addr.i.i260, align 4
  %conv.i67.i = zext i8 %578 to i16
  %579 = ptrtoint ptr %i2cmsg.i65.i to i32
  call void @__asan_store2_noabort(i32 %579)
  store i16 %conv.i67.i, ptr %i2cmsg.i65.i, align 4
  %580 = ptrtoint ptr %flags.i68.i to i32
  call void @__asan_store2_noabort(i32 %580)
  store i16 0, ptr %flags.i68.i, align 2
  %581 = ptrtoint ptr %buf.i70.i to i32
  call void @__asan_store4_noabort(i32 %581)
  store ptr %data.i64.i, ptr %buf.i70.i, align 4
  %582 = lshr i16 %conv26.i, 8
  %conv2.i71.i = trunc i16 %582 to i8
  %583 = ptrtoint ptr %data.i64.i to i32
  call void @__asan_store1_noabort(i32 %583)
  store i8 %conv2.i71.i, ptr %data.i64.i, align 1
  %conv5.i72.i = trunc i16 %conv26.i to i8
  %584 = ptrtoint ptr %569 to i32
  call void @__asan_store1_noabort(i32 %584)
  store i8 %conv5.i72.i, ptr %569, align 1
  %585 = ptrtoint ptr %570 to i32
  call void @__asan_store1_noabort(i32 %585)
  store i8 -1, ptr %570, align 1
  %586 = ptrtoint ptr %i2c_adap.i.i264 to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load ptr, ptr %i2c_adap.i.i264, align 4
  %call.i74.i = call i32 @i2c_transfer(ptr noundef %587, ptr noundef nonnull %i2cmsg.i65.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i74.i)
  %cmp.not.i75.i = icmp eq i32 %call.i74.i, 1
  br i1 %cmp.not.i75.i, label %for.body24.i.stv0900_write_reg.exit80.i_crit_edge, label %do.body.i77.i

for.body24.i.stv0900_write_reg.exit80.i_crit_edge: ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit80.i

do.body.i77.i:                                    ; preds = %for.body24.i
  %588 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %588)
  %tobool.not.i76.i = icmp eq i32 %588, 0
  br i1 %tobool.not.i76.i, label %do.body.i77.i.stv0900_write_reg.exit80.i_crit_edge, label %do.end.i79.i

do.body.i77.i.stv0900_write_reg.exit80.i_crit_edge: ; preds = %do.body.i77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit80.i

do.end.i79.i:                                     ; preds = %do.body.i77.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i78.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i74.i) #11
  br label %stv0900_write_reg.exit80.i

stv0900_write_reg.exit80.i:                       ; preds = %do.end.i79.i, %do.body.i77.i.stv0900_write_reg.exit80.i_crit_edge, %for.body24.i.stv0900_write_reg.exit80.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i65.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i64.i) #8
  %inc28.i = add nuw nsw i32 %reg_ind.2145.i, 1
  %exitcond148.not.i = icmp eq i32 %inc28.i, 7
  br i1 %exitcond148.not.i, label %for.cond30.preheader.i, label %stv0900_write_reg.exit80.i.for.body24.i_crit_edge

stv0900_write_reg.exit80.i.for.body24.i_crit_edge: ; preds = %stv0900_write_reg.exit80.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body24.i

for.body33.i:                                     ; preds = %stv0900_write_reg.exit97.i283.for.body33.i_crit_edge, %for.cond30.preheader.i
  %reg_ind.3146.i = phi i32 [ 0, %for.cond30.preheader.i ], [ %inc37.i, %stv0900_write_reg.exit97.i283.for.body33.i_crit_edge ]
  %589 = trunc i32 %reg_ind.3146.i to i16
  %conv35.i = add i16 %589, -3401
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i81.i) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i82.i) #8
  %590 = ptrtoint ptr %574 to i32
  call void @__asan_store4_noabort(i32 %590)
  store i32 262143, ptr %574, align 4
  %591 = ptrtoint ptr %i2c_addr.i.i260 to i32
  call void @__asan_load1_noabort(i32 %591)
  %592 = load i8, ptr %i2c_addr.i.i260, align 4
  %conv.i84.i = zext i8 %592 to i16
  %593 = ptrtoint ptr %i2cmsg.i82.i to i32
  call void @__asan_store2_noabort(i32 %593)
  store i16 %conv.i84.i, ptr %i2cmsg.i82.i, align 4
  %594 = ptrtoint ptr %flags.i85.i to i32
  call void @__asan_store2_noabort(i32 %594)
  store i16 0, ptr %flags.i85.i, align 2
  %595 = ptrtoint ptr %buf.i87.i to i32
  call void @__asan_store4_noabort(i32 %595)
  store ptr %data.i81.i, ptr %buf.i87.i, align 4
  %596 = lshr i16 %conv35.i, 8
  %conv2.i88.i = trunc i16 %596 to i8
  %597 = ptrtoint ptr %data.i81.i to i32
  call void @__asan_store1_noabort(i32 %597)
  store i8 %conv2.i88.i, ptr %data.i81.i, align 1
  %conv5.i89.i = trunc i16 %conv35.i to i8
  %598 = ptrtoint ptr %572 to i32
  call void @__asan_store1_noabort(i32 %598)
  store i8 %conv5.i89.i, ptr %572, align 1
  %599 = ptrtoint ptr %573 to i32
  call void @__asan_store1_noabort(i32 %599)
  store i8 -52, ptr %573, align 1
  %600 = ptrtoint ptr %i2c_adap.i.i264 to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %i2c_adap.i.i264, align 4
  %call.i91.i277 = call i32 @i2c_transfer(ptr noundef %601, ptr noundef nonnull %i2cmsg.i82.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i91.i277)
  %cmp.not.i92.i278 = icmp eq i32 %call.i91.i277, 1
  br i1 %cmp.not.i92.i278, label %for.body33.i.stv0900_write_reg.exit97.i283_crit_edge, label %do.body.i94.i280

for.body33.i.stv0900_write_reg.exit97.i283_crit_edge: ; preds = %for.body33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit97.i283

do.body.i94.i280:                                 ; preds = %for.body33.i
  %602 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %602)
  %tobool.not.i93.i279 = icmp eq i32 %602, 0
  br i1 %tobool.not.i93.i279, label %do.body.i94.i280.stv0900_write_reg.exit97.i283_crit_edge, label %do.end.i96.i282

do.body.i94.i280.stv0900_write_reg.exit97.i283_crit_edge: ; preds = %do.body.i94.i280
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit97.i283

do.end.i96.i282:                                  ; preds = %do.body.i94.i280
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i95.i281 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i91.i277) #11
  br label %stv0900_write_reg.exit97.i283

stv0900_write_reg.exit97.i283:                    ; preds = %do.end.i96.i282, %do.body.i94.i280.stv0900_write_reg.exit97.i283_crit_edge, %for.body33.i.stv0900_write_reg.exit97.i283_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i82.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i81.i) #8
  %inc37.i = add nuw nsw i32 %reg_ind.3146.i, 1
  %exitcond149.not.i = icmp eq i32 %inc37.i, 8
  br i1 %exitcond149.not.i, label %for.end38.i, label %stv0900_write_reg.exit97.i283.for.body33.i_crit_edge

stv0900_write_reg.exit97.i283.for.body33.i_crit_edge: ; preds = %stv0900_write_reg.exit97.i283
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body33.i

for.end38.i:                                      ; preds = %stv0900_write_reg.exit97.i283
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i98.i254) #8
  %603 = getelementptr inbounds [3 x i8], ptr %data.i98.i254, i32 0, i32 1
  %604 = getelementptr inbounds [3 x i8], ptr %data.i98.i254, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i99.i255) #8
  %605 = getelementptr inbounds i8, ptr %i2cmsg.i99.i255, i32 4
  %606 = ptrtoint ptr %605 to i32
  call void @__asan_store4_noabort(i32 %606)
  store i32 262143, ptr %605, align 4
  %607 = ptrtoint ptr %i2c_addr.i.i260 to i32
  call void @__asan_load1_noabort(i32 %607)
  %608 = load i8, ptr %i2c_addr.i.i260, align 4
  %conv.i101.i284 = zext i8 %608 to i16
  %609 = ptrtoint ptr %i2cmsg.i99.i255 to i32
  call void @__asan_store2_noabort(i32 %609)
  store i16 %conv.i101.i284, ptr %i2cmsg.i99.i255, align 4
  %flags.i102.i285 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i99.i255, i32 0, i32 1
  %610 = ptrtoint ptr %flags.i102.i285 to i32
  call void @__asan_store2_noabort(i32 %610)
  store i16 0, ptr %flags.i102.i285, align 2
  %buf.i104.i286 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i99.i255, i32 0, i32 3
  %611 = ptrtoint ptr %buf.i104.i286 to i32
  call void @__asan_store4_noabort(i32 %611)
  store ptr %data.i98.i254, ptr %buf.i104.i286, align 4
  %612 = ptrtoint ptr %data.i98.i254 to i32
  call void @__asan_store1_noabort(i32 %612)
  store i8 -14, ptr %data.i98.i254, align 1
  %613 = ptrtoint ptr %603 to i32
  call void @__asan_store1_noabort(i32 %613)
  store i8 -66, ptr %603, align 1
  %614 = ptrtoint ptr %604 to i32
  call void @__asan_store1_noabort(i32 %614)
  store i8 -1, ptr %604, align 1
  %615 = ptrtoint ptr %i2c_adap.i.i264 to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load ptr, ptr %i2c_adap.i.i264, align 4
  %call.i106.i287 = call i32 @i2c_transfer(ptr noundef %616, ptr noundef nonnull %i2cmsg.i99.i255, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i106.i287)
  %cmp.not.i107.i288 = icmp eq i32 %call.i106.i287, 1
  br i1 %cmp.not.i107.i288, label %for.end38.i.stv0900_write_reg.exit112.i298_crit_edge, label %do.body.i109.i290

for.end38.i.stv0900_write_reg.exit112.i298_crit_edge: ; preds = %for.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit112.i298

do.body.i109.i290:                                ; preds = %for.end38.i
  %617 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %617)
  %tobool.not.i108.i289 = icmp eq i32 %617, 0
  br i1 %tobool.not.i108.i289, label %do.body.i109.i290.stv0900_write_reg.exit112.i298_crit_edge, label %do.end.i111.i292

do.body.i109.i290.stv0900_write_reg.exit112.i298_crit_edge: ; preds = %do.body.i109.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit112.i298

do.end.i111.i292:                                 ; preds = %do.body.i109.i290
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i110.i291 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i106.i287) #11
  br label %stv0900_write_reg.exit112.i298

stv0900_write_reg.exit112.i298:                   ; preds = %do.end.i111.i292, %do.body.i109.i290.stv0900_write_reg.exit112.i298_crit_edge, %for.end38.i.stv0900_write_reg.exit112.i298_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i99.i255) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i98.i254) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i113.i252) #8
  %618 = getelementptr inbounds [3 x i8], ptr %data.i113.i252, i32 0, i32 1
  %619 = getelementptr inbounds [3 x i8], ptr %data.i113.i252, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i114.i253) #8
  %620 = getelementptr inbounds i8, ptr %i2cmsg.i114.i253, i32 4
  %621 = ptrtoint ptr %620 to i32
  call void @__asan_store4_noabort(i32 %621)
  store i32 262143, ptr %620, align 4
  %622 = ptrtoint ptr %i2c_addr.i.i260 to i32
  call void @__asan_load1_noabort(i32 %622)
  %623 = load i8, ptr %i2c_addr.i.i260, align 4
  %conv.i116.i293 = zext i8 %623 to i16
  %624 = ptrtoint ptr %i2cmsg.i114.i253 to i32
  call void @__asan_store2_noabort(i32 %624)
  store i16 %conv.i116.i293, ptr %i2cmsg.i114.i253, align 4
  %flags.i117.i294 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i114.i253, i32 0, i32 1
  %625 = ptrtoint ptr %flags.i117.i294 to i32
  call void @__asan_store2_noabort(i32 %625)
  store i16 0, ptr %flags.i117.i294, align 2
  %buf.i119.i295 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i114.i253, i32 0, i32 3
  %626 = ptrtoint ptr %buf.i119.i295 to i32
  call void @__asan_store4_noabort(i32 %626)
  store ptr %data.i113.i252, ptr %buf.i119.i295, align 4
  %627 = ptrtoint ptr %data.i113.i252 to i32
  call void @__asan_store1_noabort(i32 %627)
  store i8 -14, ptr %data.i113.i252, align 1
  %628 = ptrtoint ptr %618 to i32
  call void @__asan_store1_noabort(i32 %628)
  store i8 -65, ptr %618, align 1
  %629 = ptrtoint ptr %619 to i32
  call void @__asan_store1_noabort(i32 %629)
  store i8 -49, ptr %619, align 1
  %630 = ptrtoint ptr %i2c_adap.i.i264 to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %i2c_adap.i.i264, align 4
  %call.i121.i296 = call i32 @i2c_transfer(ptr noundef %631, ptr noundef nonnull %i2cmsg.i114.i253, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i121.i296)
  %cmp.not.i122.i297 = icmp eq i32 %call.i121.i296, 1
  br i1 %cmp.not.i122.i297, label %stv0900_write_reg.exit112.i298.stv0900_write_reg.exit127.i303_crit_edge, label %do.body.i124.i300

stv0900_write_reg.exit112.i298.stv0900_write_reg.exit127.i303_crit_edge: ; preds = %stv0900_write_reg.exit112.i298
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit127.i303

do.body.i124.i300:                                ; preds = %stv0900_write_reg.exit112.i298
  %632 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %632)
  %tobool.not.i123.i299 = icmp eq i32 %632, 0
  br i1 %tobool.not.i123.i299, label %do.body.i124.i300.stv0900_write_reg.exit127.i303_crit_edge, label %do.end.i126.i302

do.body.i124.i300.stv0900_write_reg.exit127.i303_crit_edge: ; preds = %do.body.i124.i300
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit127.i303

do.end.i126.i302:                                 ; preds = %do.body.i124.i300
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i125.i301 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i121.i296) #11
  br label %stv0900_write_reg.exit127.i303

stv0900_write_reg.exit127.i303:                   ; preds = %do.end.i126.i302, %do.body.i124.i300.stv0900_write_reg.exit127.i303_crit_edge, %stv0900_write_reg.exit112.i298.stv0900_write_reg.exit127.i303_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i114.i253) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i113.i252) #8
  br label %stv0900_st_dvbs2_single.exit

if.else.i:                                        ; preds = %do.end3.i
  call void @stv0900_stop_all_s2_modcod(ptr noundef %461, i32 noundef 1) #8
  call void @stv0900_activate_s2_modcod_single(ptr noundef %461, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i128.i250) #8
  %633 = getelementptr inbounds [3 x i8], ptr %data.i128.i250, i32 0, i32 1
  %634 = getelementptr inbounds [3 x i8], ptr %data.i128.i250, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i129.i251) #8
  %635 = getelementptr inbounds i8, ptr %i2cmsg.i129.i251, i32 4
  %636 = ptrtoint ptr %635 to i32
  call void @__asan_store4_noabort(i32 %636)
  store i32 262143, ptr %635, align 4
  %i2c_addr.i130.i = getelementptr inbounds %struct.stv0900_internal, ptr %461, i32 0, i32 18
  %637 = ptrtoint ptr %i2c_addr.i130.i to i32
  call void @__asan_load1_noabort(i32 %637)
  %638 = load i8, ptr %i2c_addr.i130.i, align 4
  %conv.i131.i304 = zext i8 %638 to i16
  %639 = ptrtoint ptr %i2cmsg.i129.i251 to i32
  call void @__asan_store2_noabort(i32 %639)
  store i16 %conv.i131.i304, ptr %i2cmsg.i129.i251, align 4
  %flags.i132.i305 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i129.i251, i32 0, i32 1
  %640 = ptrtoint ptr %flags.i132.i305 to i32
  call void @__asan_store2_noabort(i32 %640)
  store i16 0, ptr %flags.i132.i305, align 2
  %buf.i134.i306 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i129.i251, i32 0, i32 3
  %641 = ptrtoint ptr %buf.i134.i306 to i32
  call void @__asan_store4_noabort(i32 %641)
  store ptr %data.i128.i250, ptr %buf.i134.i306, align 4
  %642 = ptrtoint ptr %data.i128.i250 to i32
  call void @__asan_store1_noabort(i32 %642)
  store i8 -6, ptr %data.i128.i250, align 1
  %643 = ptrtoint ptr %633 to i32
  call void @__asan_store1_noabort(i32 %643)
  store i8 -122, ptr %633, align 1
  %644 = ptrtoint ptr %634 to i32
  call void @__asan_store1_noabort(i32 %644)
  store i8 4, ptr %634, align 1
  %i2c_adap.i135.i = getelementptr inbounds %struct.stv0900_internal, ptr %461, i32 0, i32 17
  %645 = ptrtoint ptr %i2c_adap.i135.i to i32
  call void @__asan_load4_noabort(i32 %645)
  %646 = load ptr, ptr %i2c_adap.i135.i, align 4
  %call.i136.i307 = call i32 @i2c_transfer(ptr noundef %646, ptr noundef nonnull %i2cmsg.i129.i251, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i136.i307)
  %cmp.not.i137.i308 = icmp eq i32 %call.i136.i307, 1
  br i1 %cmp.not.i137.i308, label %if.else.i.stv0900_write_reg.exit142.i313_crit_edge, label %do.body.i139.i310

if.else.i.stv0900_write_reg.exit142.i313_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit142.i313

do.body.i139.i310:                                ; preds = %if.else.i
  %647 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %647)
  %tobool.not.i138.i309 = icmp eq i32 %647, 0
  br i1 %tobool.not.i138.i309, label %do.body.i139.i310.stv0900_write_reg.exit142.i313_crit_edge, label %do.end.i141.i312

do.body.i139.i310.stv0900_write_reg.exit142.i313_crit_edge: ; preds = %do.body.i139.i310
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit142.i313

do.end.i141.i312:                                 ; preds = %do.body.i139.i310
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i140.i311 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i136.i307) #11
  br label %stv0900_write_reg.exit142.i313

stv0900_write_reg.exit142.i313:                   ; preds = %do.end.i141.i312, %do.body.i139.i310.stv0900_write_reg.exit142.i313_crit_edge, %if.else.i.stv0900_write_reg.exit142.i313_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i129.i251) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i128.i250) #8
  %648 = ptrtoint ptr %demod_mode73 to i32
  call void @__asan_store4_noabort(i32 %648)
  store i32 0, ptr %demod_mode73, align 4
  call void @stv0900_write_bits(ptr noundef %461, i32 noundef -15662976, i8 noundef zeroext 1) #8
  call void @stv0900_write_bits(ptr noundef %461, i32 noundef -15662976, i8 noundef zeroext 0) #8
  call void @stv0900_write_bits(ptr noundef %461, i32 noundef -179306495, i8 noundef zeroext 1) #8
  call void @stv0900_write_bits(ptr noundef %461, i32 noundef -179306495, i8 noundef zeroext 0) #8
  call void @stv0900_write_bits(ptr noundef %461, i32 noundef -212860927, i8 noundef zeroext 1) #8
  call void @stv0900_write_bits(ptr noundef %461, i32 noundef -212860927, i8 noundef zeroext 0) #8
  br label %stv0900_st_dvbs2_single.exit

stv0900_st_dvbs2_single.exit:                     ; preds = %stv0900_write_reg.exit142.i313, %stv0900_write_reg.exit127.i303, %stv0900_get_bits.exit.i.stv0900_st_dvbs2_single.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i) #8
  %649 = getelementptr inbounds [2 x i8], ptr %b0.i, i32 0, i32 1
  %650 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %650)
  store i8 -15, ptr %b0.i, align 1
  %651 = ptrtoint ptr %649 to i32
  call void @__asan_store1_noabort(i32 %651)
  store i8 0, ptr %649, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i) #8
  %652 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %652)
  store i8 0, ptr %buf.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %653 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %654 = call ptr @memset(ptr %653, i32 255, i32 16)
  %i2c_addr.i = getelementptr inbounds %struct.stv0900_internal, ptr %461, i32 0, i32 18
  %655 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %655)
  %656 = load i8, ptr %i2c_addr.i, align 4
  %conv6.i = zext i8 %656 to i16
  %657 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %657)
  store i16 %conv6.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %658 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %658)
  store i16 0, ptr %flags.i, align 2
  %659 = ptrtoint ptr %653 to i32
  call void @__asan_store2_noabort(i32 %659)
  store i16 2, ptr %653, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %660 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %660)
  store ptr %b0.i, ptr %buf7.i, align 4
  %arrayinit.element8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %661 = ptrtoint ptr %arrayinit.element8.i to i32
  call void @__asan_store2_noabort(i32 %661)
  store i16 %conv6.i, ptr %arrayinit.element8.i, align 4
  %flags12.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %662 = ptrtoint ptr %flags12.i to i32
  call void @__asan_store2_noabort(i32 %662)
  store i16 1, ptr %flags12.i, align 2
  %len13.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %663 = ptrtoint ptr %len13.i to i32
  call void @__asan_store2_noabort(i32 %663)
  store i16 1, ptr %len13.i, align 4
  %buf14.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %664 = ptrtoint ptr %buf14.i to i32
  call void @__asan_store4_noabort(i32 %664)
  store ptr %buf.i, ptr %buf14.i, align 4
  %i2c_adap.i = getelementptr inbounds %struct.stv0900_internal, ptr %461, i32 0, i32 17
  %665 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load ptr, ptr %i2c_adap.i, align 4
  %call.i315 = call i32 @i2c_transfer(ptr noundef %666, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i315)
  %cmp.not.i316 = icmp eq i32 %call.i315, 2
  br i1 %cmp.not.i316, label %stv0900_st_dvbs2_single.exit.stv0900_read_reg.exit_crit_edge, label %do.body.i

stv0900_st_dvbs2_single.exit.stv0900_read_reg.exit_crit_edge: ; preds = %stv0900_st_dvbs2_single.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_read_reg.exit

do.body.i:                                        ; preds = %stv0900_st_dvbs2_single.exit
  %667 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %667)
  %tobool.not.i317 = icmp eq i32 %667, 0
  br i1 %tobool.not.i317, label %do.body.i.stv0900_read_reg.exit_crit_edge, label %do.end.i318

do.body.i.stv0900_read_reg.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_read_reg.exit

do.end.i318:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i315, i32 noundef 61696) #11
  br label %stv0900_read_reg.exit

stv0900_read_reg.exit:                            ; preds = %do.end.i318, %do.body.i.stv0900_read_reg.exit_crit_edge, %stv0900_st_dvbs2_single.exit.stv0900_read_reg.exit_crit_edge
  %668 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %668)
  %669 = load i8, ptr %buf.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i) #8
  %chip_id = getelementptr inbounds %struct.stv0900_internal, ptr %461, i32 0, i32 20
  %670 = ptrtoint ptr %chip_id to i32
  call void @__asan_store1_noabort(i32 %670)
  store i8 %669, ptr %chip_id, align 2
  %rolloff = getelementptr inbounds %struct.stv0900_init_params, ptr %p_init, i32 0, i32 2
  %671 = ptrtoint ptr %rolloff to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load i32, ptr %rolloff, align 4
  %rolloff77 = getelementptr inbounds %struct.stv0900_internal, ptr %461, i32 0, i32 2
  %673 = ptrtoint ptr %rolloff77 to i32
  call void @__asan_store4_noabort(i32 %673)
  store i32 %672, ptr %rolloff77, align 4
  %674 = ptrtoint ptr %p_init to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load i32, ptr %p_init, align 4
  %676 = ptrtoint ptr %461 to i32
  call void @__asan_store4_noabort(i32 %676)
  store i32 %675, ptr %461, align 4
  %677 = load i32, ptr %rolloff, align 4
  %conv = trunc i32 %677 to i8
  call void @stv0900_write_bits(ptr noundef %461, i32 noundef -200278013, i8 noundef zeroext %conv)
  %678 = ptrtoint ptr %rolloff to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load i32, ptr %rolloff, align 4
  %conv80 = trunc i32 %679 to i8
  call void @stv0900_write_bits(ptr noundef %461, i32 noundef -233832445, i8 noundef zeroext %conv80)
  %ts_config = getelementptr inbounds %struct.stv0900_init_params, ptr %p_init, i32 0, i32 13
  %680 = ptrtoint ptr %ts_config to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load ptr, ptr %ts_config, align 4
  %ts_config81 = getelementptr inbounds %struct.stv0900_internal, ptr %461, i32 0, i32 21
  %682 = ptrtoint ptr %ts_config81 to i32
  call void @__asan_store4_noabort(i32 %682)
  store ptr %681, ptr %ts_config81, align 4
  %cmp83 = icmp eq ptr %681, null
  br i1 %cmp83, label %if.then85, label %for.cond.preheader

for.cond.preheader:                               ; preds = %stv0900_read_reg.exit
  %683 = ptrtoint ptr %ts_config81 to i32
  call void @__asan_load4_noabort(i32 %683)
  %684 = load ptr, ptr %ts_config81, align 4
  %685 = ptrtoint ptr %684 to i32
  call void @__asan_load2_noabort(i32 %685)
  %686 = load i16, ptr %684, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %686)
  %cmp89.not717 = icmp eq i16 %686, -1
  br i1 %cmp89.not717, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %687 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %688 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %689 = getelementptr inbounds i8, ptr %i2cmsg.i, i32 4
  %flags.i348 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i, i32 0, i32 1
  %buf.i350 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i, i32 0, i32 3
  %extract.t = trunc i16 %686 to i8
  %extract = lshr i16 %686, 8
  %extract.t720 = trunc i16 %extract to i8
  br label %for.body

if.else68:                                        ; preds = %stv0900_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then85:                                        ; preds = %stv0900_read_reg.exit
  %path1_ts_clock = getelementptr inbounds %struct.stv0900_init_params, ptr %p_init, i32 0, i32 3
  %690 = ptrtoint ptr %path1_ts_clock to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load i32, ptr %path1_ts_clock, align 4
  %path2_ts_clock = getelementptr inbounds %struct.stv0900_init_params, ptr %p_init, i32 0, i32 8
  %692 = ptrtoint ptr %path2_ts_clock to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load i32, ptr %path2_ts_clock, align 4
  %694 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %694)
  %tobool.not.i321 = icmp eq i32 %694, 0
  br i1 %tobool.not.i321, label %if.then85.do.end2.i_crit_edge, label %do.end.i323

if.then85.do.end2.i_crit_edge:                    ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end2.i

do.end.i323:                                      ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #10
  %call.i322 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.89) #11
  br label %do.end2.i

do.end2.i:                                        ; preds = %do.end.i323, %if.then85.do.end2.i_crit_edge
  %695 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %695)
  %696 = load i8, ptr %chip_id, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %696)
  %cmp.i325 = icmp ugt i8 %696, 31
  %path1_ts.off.i = add i32 %691, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %path1_ts.off.i)
  %switch.i = icmp ult i32 %path1_ts.off.i, 2
  %path2_ts.off.i = add i32 %693, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %path2_ts.off.i)
  %switch99.i = icmp ult i32 %path2_ts.off.i, 2
  br i1 %cmp.i325, label %if.then4.i, label %if.else.i340

if.then4.i:                                       ; preds = %do.end2.i
  br i1 %switch.i, label %sw.bb.i326, label %sw.default8.i

sw.bb.i326:                                       ; preds = %if.then4.i
  br i1 %switch99.i, label %sw.bb6.i, label %sw.default.i334

sw.default.i334:                                  ; preds = %sw.bb.i326
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i319) #8
  %697 = getelementptr inbounds [3 x i8], ptr %data.i.i319, i32 0, i32 1
  %698 = getelementptr inbounds [3 x i8], ptr %data.i.i319, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i.i320) #8
  %699 = getelementptr inbounds i8, ptr %i2cmsg.i.i320, i32 4
  %700 = ptrtoint ptr %699 to i32
  call void @__asan_store4_noabort(i32 %700)
  store i32 262143, ptr %699, align 4
  %701 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %701)
  %702 = load i8, ptr %i2c_addr.i, align 4
  %conv.i.i328 = zext i8 %702 to i16
  %703 = ptrtoint ptr %i2cmsg.i.i320 to i32
  call void @__asan_store2_noabort(i32 %703)
  store i16 %conv.i.i328, ptr %i2cmsg.i.i320, align 4
  %flags.i.i329 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i.i320, i32 0, i32 1
  %704 = ptrtoint ptr %flags.i.i329 to i32
  call void @__asan_store2_noabort(i32 %704)
  store i16 0, ptr %flags.i.i329, align 2
  %buf.i.i330 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i.i320, i32 0, i32 3
  %705 = ptrtoint ptr %buf.i.i330 to i32
  call void @__asan_store4_noabort(i32 %705)
  store ptr %data.i.i319, ptr %buf.i.i330, align 4
  %706 = ptrtoint ptr %data.i.i319 to i32
  call void @__asan_store1_noabort(i32 %706)
  store i8 -10, ptr %data.i.i319, align 1
  %707 = ptrtoint ptr %697 to i32
  call void @__asan_store1_noabort(i32 %707)
  store i8 48, ptr %697, align 1
  %708 = ptrtoint ptr %698 to i32
  call void @__asan_store1_noabort(i32 %708)
  store i8 0, ptr %698, align 1
  %709 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load ptr, ptr %i2c_adap.i, align 4
  %call.i.i332 = call i32 @i2c_transfer(ptr noundef %710, ptr noundef nonnull %i2cmsg.i.i320, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i332)
  %cmp.not.i.i333 = icmp eq i32 %call.i.i332, 1
  br i1 %cmp.not.i.i333, label %sw.default.i334.stv0900_write_reg.exit.i339_crit_edge, label %do.body.i.i336

sw.default.i334.stv0900_write_reg.exit.i339_crit_edge: ; preds = %sw.default.i334
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit.i339

do.body.i.i336:                                   ; preds = %sw.default.i334
  %711 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %711)
  %tobool.not.i.i335 = icmp eq i32 %711, 0
  br i1 %tobool.not.i.i335, label %do.body.i.i336.stv0900_write_reg.exit.i339_crit_edge, label %do.end.i.i338

do.body.i.i336.stv0900_write_reg.exit.i339_crit_edge: ; preds = %do.body.i.i336
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit.i339

do.end.i.i338:                                    ; preds = %do.body.i.i336
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i.i337 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i.i332) #11
  br label %stv0900_write_reg.exit.i339

stv0900_write_reg.exit.i339:                      ; preds = %do.end.i.i338, %do.body.i.i336.stv0900_write_reg.exit.i339_crit_edge, %sw.default.i334.stv0900_write_reg.exit.i339_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i.i320) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i319) #8
  br label %if.end44.i

sw.bb6.i:                                         ; preds = %sw.bb.i326
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i108.i) #8
  %712 = getelementptr inbounds [3 x i8], ptr %data.i108.i, i32 0, i32 1
  %713 = getelementptr inbounds [3 x i8], ptr %data.i108.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i109.i) #8
  %714 = getelementptr inbounds i8, ptr %i2cmsg.i109.i, i32 4
  %715 = ptrtoint ptr %714 to i32
  call void @__asan_store4_noabort(i32 %715)
  store i32 262143, ptr %714, align 4
  %716 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %716)
  %717 = load i8, ptr %i2c_addr.i, align 4
  %conv.i111.i = zext i8 %717 to i16
  %718 = ptrtoint ptr %i2cmsg.i109.i to i32
  call void @__asan_store2_noabort(i32 %718)
  store i16 %conv.i111.i, ptr %i2cmsg.i109.i, align 4
  %flags.i112.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i109.i, i32 0, i32 1
  %719 = ptrtoint ptr %flags.i112.i to i32
  call void @__asan_store2_noabort(i32 %719)
  store i16 0, ptr %flags.i112.i, align 2
  %buf.i114.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i109.i, i32 0, i32 3
  %720 = ptrtoint ptr %buf.i114.i to i32
  call void @__asan_store4_noabort(i32 %720)
  store ptr %data.i108.i, ptr %buf.i114.i, align 4
  %721 = ptrtoint ptr %data.i108.i to i32
  call void @__asan_store1_noabort(i32 %721)
  store i8 -10, ptr %data.i108.i, align 1
  %722 = ptrtoint ptr %712 to i32
  call void @__asan_store1_noabort(i32 %722)
  store i8 48, ptr %712, align 1
  %723 = ptrtoint ptr %713 to i32
  call void @__asan_store1_noabort(i32 %723)
  store i8 6, ptr %713, align 1
  %724 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %724)
  %725 = load ptr, ptr %i2c_adap.i, align 4
  %call.i116.i = call i32 @i2c_transfer(ptr noundef %725, ptr noundef nonnull %i2cmsg.i109.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i116.i)
  %cmp.not.i117.i = icmp eq i32 %call.i116.i, 1
  br i1 %cmp.not.i117.i, label %sw.bb6.i.stv0900_write_reg.exit122.i_crit_edge, label %do.body.i119.i

sw.bb6.i.stv0900_write_reg.exit122.i_crit_edge:   ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit122.i

do.body.i119.i:                                   ; preds = %sw.bb6.i
  %726 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %726)
  %tobool.not.i118.i = icmp eq i32 %726, 0
  br i1 %tobool.not.i118.i, label %do.body.i119.i.stv0900_write_reg.exit122.i_crit_edge, label %do.end.i121.i

do.body.i119.i.stv0900_write_reg.exit122.i_crit_edge: ; preds = %do.body.i119.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit122.i

do.end.i121.i:                                    ; preds = %do.body.i119.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i120.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i116.i) #11
  br label %stv0900_write_reg.exit122.i

stv0900_write_reg.exit122.i:                      ; preds = %do.end.i121.i, %do.body.i119.i.stv0900_write_reg.exit122.i_crit_edge, %sw.bb6.i.stv0900_write_reg.exit122.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i109.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i108.i) #8
  call void @stv0900_write_bits(ptr noundef %461, i32 noundef -177012544, i8 noundef zeroext 3) #8
  call void @stv0900_write_bits(ptr noundef %461, i32 noundef -210566976, i8 noundef zeroext 0) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i123.i) #8
  %727 = getelementptr inbounds [3 x i8], ptr %data.i123.i, i32 0, i32 1
  %728 = getelementptr inbounds [3 x i8], ptr %data.i123.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i124.i) #8
  %729 = getelementptr inbounds i8, ptr %i2cmsg.i124.i, i32 4
  %730 = ptrtoint ptr %729 to i32
  call void @__asan_store4_noabort(i32 %730)
  store i32 262143, ptr %729, align 4
  %731 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %731)
  %732 = load i8, ptr %i2c_addr.i, align 4
  %conv.i126.i = zext i8 %732 to i16
  %733 = ptrtoint ptr %i2cmsg.i124.i to i32
  call void @__asan_store2_noabort(i32 %733)
  store i16 %conv.i126.i, ptr %i2cmsg.i124.i, align 4
  %flags.i127.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i124.i, i32 0, i32 1
  %734 = ptrtoint ptr %flags.i127.i to i32
  call void @__asan_store2_noabort(i32 %734)
  store i16 0, ptr %flags.i127.i, align 2
  %buf.i129.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i124.i, i32 0, i32 3
  %735 = ptrtoint ptr %buf.i129.i to i32
  call void @__asan_store4_noabort(i32 %735)
  store ptr %data.i123.i, ptr %buf.i129.i, align 4
  %736 = ptrtoint ptr %data.i123.i to i32
  call void @__asan_store1_noabort(i32 %736)
  store i8 -11, ptr %data.i123.i, align 1
  %737 = ptrtoint ptr %727 to i32
  call void @__asan_store1_noabort(i32 %737)
  store i8 -128, ptr %727, align 1
  %738 = ptrtoint ptr %728 to i32
  call void @__asan_store1_noabort(i32 %738)
  store i8 20, ptr %728, align 1
  %739 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %739)
  %740 = load ptr, ptr %i2c_adap.i, align 4
  %call.i131.i = call i32 @i2c_transfer(ptr noundef %740, ptr noundef nonnull %i2cmsg.i124.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i131.i)
  %cmp.not.i132.i = icmp eq i32 %call.i131.i, 1
  br i1 %cmp.not.i132.i, label %stv0900_write_reg.exit122.i.stv0900_write_reg.exit137.i_crit_edge, label %do.body.i134.i

stv0900_write_reg.exit122.i.stv0900_write_reg.exit137.i_crit_edge: ; preds = %stv0900_write_reg.exit122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit137.i

do.body.i134.i:                                   ; preds = %stv0900_write_reg.exit122.i
  %741 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %741)
  %tobool.not.i133.i = icmp eq i32 %741, 0
  br i1 %tobool.not.i133.i, label %do.body.i134.i.stv0900_write_reg.exit137.i_crit_edge, label %do.end.i136.i

do.body.i134.i.stv0900_write_reg.exit137.i_crit_edge: ; preds = %do.body.i134.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit137.i

do.end.i136.i:                                    ; preds = %do.body.i134.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i135.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i131.i) #11
  br label %stv0900_write_reg.exit137.i

stv0900_write_reg.exit137.i:                      ; preds = %do.end.i136.i, %do.body.i134.i.stv0900_write_reg.exit137.i_crit_edge, %stv0900_write_reg.exit122.i.stv0900_write_reg.exit137.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i124.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i123.i) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i138.i) #8
  %742 = getelementptr inbounds [3 x i8], ptr %data.i138.i, i32 0, i32 1
  %743 = getelementptr inbounds [3 x i8], ptr %data.i138.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i139.i) #8
  %744 = getelementptr inbounds i8, ptr %i2cmsg.i139.i, i32 4
  %745 = ptrtoint ptr %744 to i32
  call void @__asan_store4_noabort(i32 %745)
  store i32 262143, ptr %744, align 4
  %746 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %746)
  %747 = load i8, ptr %i2c_addr.i, align 4
  %conv.i141.i = zext i8 %747 to i16
  %748 = ptrtoint ptr %i2cmsg.i139.i to i32
  call void @__asan_store2_noabort(i32 %748)
  store i16 %conv.i141.i, ptr %i2cmsg.i139.i, align 4
  %flags.i142.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i139.i, i32 0, i32 1
  %749 = ptrtoint ptr %flags.i142.i to i32
  call void @__asan_store2_noabort(i32 %749)
  store i16 0, ptr %flags.i142.i, align 2
  %buf.i144.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i139.i, i32 0, i32 3
  %750 = ptrtoint ptr %buf.i144.i to i32
  call void @__asan_store4_noabort(i32 %750)
  store ptr %data.i138.i, ptr %buf.i144.i, align 4
  %751 = ptrtoint ptr %data.i138.i to i32
  call void @__asan_store1_noabort(i32 %751)
  store i8 -13, ptr %data.i138.i, align 1
  %752 = ptrtoint ptr %742 to i32
  call void @__asan_store1_noabort(i32 %752)
  store i8 -128, ptr %742, align 1
  %753 = ptrtoint ptr %743 to i32
  call void @__asan_store1_noabort(i32 %753)
  store i8 40, ptr %743, align 1
  %754 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %754)
  %755 = load ptr, ptr %i2c_adap.i, align 4
  %call.i146.i = call i32 @i2c_transfer(ptr noundef %755, ptr noundef nonnull %i2cmsg.i139.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i146.i)
  %cmp.not.i147.i = icmp eq i32 %call.i146.i, 1
  br i1 %cmp.not.i147.i, label %stv0900_write_reg.exit137.i.stv0900_write_reg.exit152.i_crit_edge, label %do.body.i149.i

stv0900_write_reg.exit137.i.stv0900_write_reg.exit152.i_crit_edge: ; preds = %stv0900_write_reg.exit137.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit152.i

do.body.i149.i:                                   ; preds = %stv0900_write_reg.exit137.i
  %756 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %756)
  %tobool.not.i148.i = icmp eq i32 %756, 0
  br i1 %tobool.not.i148.i, label %do.body.i149.i.stv0900_write_reg.exit152.i_crit_edge, label %do.end.i151.i

do.body.i149.i.stv0900_write_reg.exit152.i_crit_edge: ; preds = %do.body.i149.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit152.i

do.end.i151.i:                                    ; preds = %do.body.i149.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i150.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i146.i) #11
  br label %stv0900_write_reg.exit152.i

stv0900_write_reg.exit152.i:                      ; preds = %do.end.i151.i, %do.body.i149.i.stv0900_write_reg.exit152.i_crit_edge, %stv0900_write_reg.exit137.i.stv0900_write_reg.exit152.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i139.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i138.i) #8
  br label %if.end44.i

sw.default8.i:                                    ; preds = %if.then4.i
  br i1 %switch99.i, label %sw.bb11.i, label %sw.default10.i

sw.default10.i:                                   ; preds = %sw.default8.i
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i153.i) #8
  %757 = getelementptr inbounds [3 x i8], ptr %data.i153.i, i32 0, i32 1
  %758 = getelementptr inbounds [3 x i8], ptr %data.i153.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i154.i) #8
  %759 = getelementptr inbounds i8, ptr %i2cmsg.i154.i, i32 4
  %760 = ptrtoint ptr %759 to i32
  call void @__asan_store4_noabort(i32 %760)
  store i32 262143, ptr %759, align 4
  %761 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %761)
  %762 = load i8, ptr %i2c_addr.i, align 4
  %conv.i156.i = zext i8 %762 to i16
  %763 = ptrtoint ptr %i2cmsg.i154.i to i32
  call void @__asan_store2_noabort(i32 %763)
  store i16 %conv.i156.i, ptr %i2cmsg.i154.i, align 4
  %flags.i157.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i154.i, i32 0, i32 1
  %764 = ptrtoint ptr %flags.i157.i to i32
  call void @__asan_store2_noabort(i32 %764)
  store i16 0, ptr %flags.i157.i, align 2
  %buf.i159.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i154.i, i32 0, i32 3
  %765 = ptrtoint ptr %buf.i159.i to i32
  call void @__asan_store4_noabort(i32 %765)
  store ptr %data.i153.i, ptr %buf.i159.i, align 4
  %766 = ptrtoint ptr %data.i153.i to i32
  call void @__asan_store1_noabort(i32 %766)
  store i8 -10, ptr %data.i153.i, align 1
  %767 = ptrtoint ptr %757 to i32
  call void @__asan_store1_noabort(i32 %767)
  store i8 48, ptr %757, align 1
  %768 = ptrtoint ptr %758 to i32
  call void @__asan_store1_noabort(i32 %768)
  store i8 12, ptr %758, align 1
  %769 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %769)
  %770 = load ptr, ptr %i2c_adap.i, align 4
  %call.i161.i = call i32 @i2c_transfer(ptr noundef %770, ptr noundef nonnull %i2cmsg.i154.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i161.i)
  %cmp.not.i162.i = icmp eq i32 %call.i161.i, 1
  br i1 %cmp.not.i162.i, label %sw.default10.i.stv0900_write_reg.exit167.i_crit_edge, label %do.body.i164.i

sw.default10.i.stv0900_write_reg.exit167.i_crit_edge: ; preds = %sw.default10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit167.i

do.body.i164.i:                                   ; preds = %sw.default10.i
  %771 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %771)
  %tobool.not.i163.i = icmp eq i32 %771, 0
  br i1 %tobool.not.i163.i, label %do.body.i164.i.stv0900_write_reg.exit167.i_crit_edge, label %do.end.i166.i

do.body.i164.i.stv0900_write_reg.exit167.i_crit_edge: ; preds = %do.body.i164.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit167.i

do.end.i166.i:                                    ; preds = %do.body.i164.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i165.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i161.i) #11
  br label %stv0900_write_reg.exit167.i

stv0900_write_reg.exit167.i:                      ; preds = %do.end.i166.i, %do.body.i164.i.stv0900_write_reg.exit167.i_crit_edge, %sw.default10.i.stv0900_write_reg.exit167.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i154.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i153.i) #8
  br label %if.end44.i

sw.bb11.i:                                        ; preds = %sw.default8.i
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i168.i) #8
  %772 = getelementptr inbounds [3 x i8], ptr %data.i168.i, i32 0, i32 1
  %773 = getelementptr inbounds [3 x i8], ptr %data.i168.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i169.i) #8
  %774 = getelementptr inbounds i8, ptr %i2cmsg.i169.i, i32 4
  %775 = ptrtoint ptr %774 to i32
  call void @__asan_store4_noabort(i32 %775)
  store i32 262143, ptr %774, align 4
  %776 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %776)
  %777 = load i8, ptr %i2c_addr.i, align 4
  %conv.i171.i = zext i8 %777 to i16
  %778 = ptrtoint ptr %i2cmsg.i169.i to i32
  call void @__asan_store2_noabort(i32 %778)
  store i16 %conv.i171.i, ptr %i2cmsg.i169.i, align 4
  %flags.i172.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i169.i, i32 0, i32 1
  %779 = ptrtoint ptr %flags.i172.i to i32
  call void @__asan_store2_noabort(i32 %779)
  store i16 0, ptr %flags.i172.i, align 2
  %buf.i174.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i169.i, i32 0, i32 3
  %780 = ptrtoint ptr %buf.i174.i to i32
  call void @__asan_store4_noabort(i32 %780)
  store ptr %data.i168.i, ptr %buf.i174.i, align 4
  %781 = ptrtoint ptr %data.i168.i to i32
  call void @__asan_store1_noabort(i32 %781)
  store i8 -10, ptr %data.i168.i, align 1
  %782 = ptrtoint ptr %772 to i32
  call void @__asan_store1_noabort(i32 %782)
  store i8 48, ptr %772, align 1
  %783 = ptrtoint ptr %773 to i32
  call void @__asan_store1_noabort(i32 %783)
  store i8 10, ptr %773, align 1
  %784 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %784)
  %785 = load ptr, ptr %i2c_adap.i, align 4
  %call.i176.i = call i32 @i2c_transfer(ptr noundef %785, ptr noundef nonnull %i2cmsg.i169.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i176.i)
  %cmp.not.i177.i = icmp eq i32 %call.i176.i, 1
  br i1 %cmp.not.i177.i, label %sw.bb11.i.stv0900_write_reg.exit182.i_crit_edge, label %do.body.i179.i

sw.bb11.i.stv0900_write_reg.exit182.i_crit_edge:  ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit182.i

do.body.i179.i:                                   ; preds = %sw.bb11.i
  %786 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %786)
  %tobool.not.i178.i = icmp eq i32 %786, 0
  br i1 %tobool.not.i178.i, label %stv0900_write_reg.exit182.thread.i, label %do.end.i181.i

stv0900_write_reg.exit182.thread.i:               ; preds = %do.body.i179.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i169.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i168.i) #8
  br label %if.end44.i

do.end.i181.i:                                    ; preds = %do.body.i179.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i180.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i176.i) #11
  br label %stv0900_write_reg.exit182.i

stv0900_write_reg.exit182.i:                      ; preds = %do.end.i181.i, %sw.bb11.i.stv0900_write_reg.exit182.i_crit_edge
  %.pr.i = load i32, ptr @stvdebug, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i169.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i168.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool13.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool13.not.i, label %stv0900_write_reg.exit182.i.if.end44.i_crit_edge, label %do.end16.i

stv0900_write_reg.exit182.i.if.end44.i_crit_edge: ; preds = %stv0900_write_reg.exit182.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i

do.end16.i:                                       ; preds = %stv0900_write_reg.exit182.i
  call void @__sanitizer_cov_trace_pc() #10
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.89) #11
  br label %if.end44.i

if.else.i340:                                     ; preds = %do.end2.i
  br i1 %switch.i, label %sw.bb23.i, label %sw.default29.i

sw.bb23.i:                                        ; preds = %if.else.i340
  br i1 %switch99.i, label %sw.bb26.i, label %sw.default25.i

sw.default25.i:                                   ; preds = %sw.bb23.i
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i183.i) #8
  %787 = getelementptr inbounds [3 x i8], ptr %data.i183.i, i32 0, i32 1
  %788 = getelementptr inbounds [3 x i8], ptr %data.i183.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i184.i) #8
  %789 = getelementptr inbounds i8, ptr %i2cmsg.i184.i, i32 4
  %790 = ptrtoint ptr %789 to i32
  call void @__asan_store4_noabort(i32 %790)
  store i32 262143, ptr %789, align 4
  %791 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %791)
  %792 = load i8, ptr %i2c_addr.i, align 4
  %conv.i186.i = zext i8 %792 to i16
  %793 = ptrtoint ptr %i2cmsg.i184.i to i32
  call void @__asan_store2_noabort(i32 %793)
  store i16 %conv.i186.i, ptr %i2cmsg.i184.i, align 4
  %flags.i187.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i184.i, i32 0, i32 1
  %794 = ptrtoint ptr %flags.i187.i to i32
  call void @__asan_store2_noabort(i32 %794)
  store i16 0, ptr %flags.i187.i, align 2
  %buf.i189.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i184.i, i32 0, i32 3
  %795 = ptrtoint ptr %buf.i189.i to i32
  call void @__asan_store4_noabort(i32 %795)
  store ptr %data.i183.i, ptr %buf.i189.i, align 4
  %796 = ptrtoint ptr %data.i183.i to i32
  call void @__asan_store1_noabort(i32 %796)
  store i8 -10, ptr %data.i183.i, align 1
  %797 = ptrtoint ptr %787 to i32
  call void @__asan_store1_noabort(i32 %797)
  store i8 112, ptr %787, align 1
  %798 = ptrtoint ptr %788 to i32
  call void @__asan_store1_noabort(i32 %798)
  store i8 16, ptr %788, align 1
  %799 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %799)
  %800 = load ptr, ptr %i2c_adap.i, align 4
  %call.i191.i = call i32 @i2c_transfer(ptr noundef %800, ptr noundef nonnull %i2cmsg.i184.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i191.i)
  %cmp.not.i192.i = icmp eq i32 %call.i191.i, 1
  br i1 %cmp.not.i192.i, label %sw.default25.i.stv0900_write_reg.exit197.i_crit_edge, label %do.body.i194.i

sw.default25.i.stv0900_write_reg.exit197.i_crit_edge: ; preds = %sw.default25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit197.i

do.body.i194.i:                                   ; preds = %sw.default25.i
  %801 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %801)
  %tobool.not.i193.i = icmp eq i32 %801, 0
  br i1 %tobool.not.i193.i, label %do.body.i194.i.stv0900_write_reg.exit197.i_crit_edge, label %do.end.i196.i

do.body.i194.i.stv0900_write_reg.exit197.i_crit_edge: ; preds = %do.body.i194.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit197.i

do.end.i196.i:                                    ; preds = %do.body.i194.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i195.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i191.i) #11
  br label %stv0900_write_reg.exit197.i

stv0900_write_reg.exit197.i:                      ; preds = %do.end.i196.i, %do.body.i194.i.stv0900_write_reg.exit197.i_crit_edge, %sw.default25.i.stv0900_write_reg.exit197.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i184.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i183.i) #8
  br label %if.end44.i

sw.bb26.i:                                        ; preds = %sw.bb23.i
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i198.i) #8
  %802 = getelementptr inbounds [3 x i8], ptr %data.i198.i, i32 0, i32 1
  %803 = getelementptr inbounds [3 x i8], ptr %data.i198.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i199.i) #8
  %804 = getelementptr inbounds i8, ptr %i2cmsg.i199.i, i32 4
  %805 = ptrtoint ptr %804 to i32
  call void @__asan_store4_noabort(i32 %805)
  store i32 262143, ptr %804, align 4
  %806 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %806)
  %807 = load i8, ptr %i2c_addr.i, align 4
  %conv.i201.i = zext i8 %807 to i16
  %808 = ptrtoint ptr %i2cmsg.i199.i to i32
  call void @__asan_store2_noabort(i32 %808)
  store i16 %conv.i201.i, ptr %i2cmsg.i199.i, align 4
  %flags.i202.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i199.i, i32 0, i32 1
  %809 = ptrtoint ptr %flags.i202.i to i32
  call void @__asan_store2_noabort(i32 %809)
  store i16 0, ptr %flags.i202.i, align 2
  %buf.i204.i341 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i199.i, i32 0, i32 3
  %810 = ptrtoint ptr %buf.i204.i341 to i32
  call void @__asan_store4_noabort(i32 %810)
  store ptr %data.i198.i, ptr %buf.i204.i341, align 4
  %811 = ptrtoint ptr %data.i198.i to i32
  call void @__asan_store1_noabort(i32 %811)
  store i8 -10, ptr %data.i198.i, align 1
  %812 = ptrtoint ptr %802 to i32
  call void @__asan_store1_noabort(i32 %812)
  store i8 112, ptr %802, align 1
  %813 = ptrtoint ptr %803 to i32
  call void @__asan_store1_noabort(i32 %813)
  store i8 22, ptr %803, align 1
  %814 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %814)
  %815 = load ptr, ptr %i2c_adap.i, align 4
  %call.i206.i = call i32 @i2c_transfer(ptr noundef %815, ptr noundef nonnull %i2cmsg.i199.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i206.i)
  %cmp.not.i207.i = icmp eq i32 %call.i206.i, 1
  br i1 %cmp.not.i207.i, label %sw.bb26.i.stv0900_write_reg.exit212.i_crit_edge, label %do.body.i209.i

sw.bb26.i.stv0900_write_reg.exit212.i_crit_edge:  ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit212.i

do.body.i209.i:                                   ; preds = %sw.bb26.i
  %816 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %816)
  %tobool.not.i208.i = icmp eq i32 %816, 0
  br i1 %tobool.not.i208.i, label %do.body.i209.i.stv0900_write_reg.exit212.i_crit_edge, label %do.end.i211.i

do.body.i209.i.stv0900_write_reg.exit212.i_crit_edge: ; preds = %do.body.i209.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit212.i

do.end.i211.i:                                    ; preds = %do.body.i209.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i210.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i206.i) #11
  br label %stv0900_write_reg.exit212.i

stv0900_write_reg.exit212.i:                      ; preds = %do.end.i211.i, %do.body.i209.i.stv0900_write_reg.exit212.i_crit_edge, %sw.bb26.i.stv0900_write_reg.exit212.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i199.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i198.i) #8
  call void @stv0900_write_bits(ptr noundef %461, i32 noundef -177012544, i8 noundef zeroext 3) #8
  call void @stv0900_write_bits(ptr noundef %461, i32 noundef -210566976, i8 noundef zeroext 0) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i213.i) #8
  %817 = getelementptr inbounds [3 x i8], ptr %data.i213.i, i32 0, i32 1
  %818 = getelementptr inbounds [3 x i8], ptr %data.i213.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i214.i) #8
  %819 = getelementptr inbounds i8, ptr %i2cmsg.i214.i, i32 4
  %820 = ptrtoint ptr %819 to i32
  call void @__asan_store4_noabort(i32 %820)
  store i32 262143, ptr %819, align 4
  %821 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %821)
  %822 = load i8, ptr %i2c_addr.i, align 4
  %conv.i216.i = zext i8 %822 to i16
  %823 = ptrtoint ptr %i2cmsg.i214.i to i32
  call void @__asan_store2_noabort(i32 %823)
  store i16 %conv.i216.i, ptr %i2cmsg.i214.i, align 4
  %flags.i217.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i214.i, i32 0, i32 1
  %824 = ptrtoint ptr %flags.i217.i to i32
  call void @__asan_store2_noabort(i32 %824)
  store i16 0, ptr %flags.i217.i, align 2
  %buf.i219.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i214.i, i32 0, i32 3
  %825 = ptrtoint ptr %buf.i219.i to i32
  call void @__asan_store4_noabort(i32 %825)
  store ptr %data.i213.i, ptr %buf.i219.i, align 4
  %826 = ptrtoint ptr %data.i213.i to i32
  call void @__asan_store1_noabort(i32 %826)
  store i8 -11, ptr %data.i213.i, align 1
  %827 = ptrtoint ptr %817 to i32
  call void @__asan_store1_noabort(i32 %827)
  store i8 -128, ptr %817, align 1
  %828 = ptrtoint ptr %818 to i32
  call void @__asan_store1_noabort(i32 %828)
  store i8 20, ptr %818, align 1
  %829 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %829)
  %830 = load ptr, ptr %i2c_adap.i, align 4
  %call.i221.i = call i32 @i2c_transfer(ptr noundef %830, ptr noundef nonnull %i2cmsg.i214.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i221.i)
  %cmp.not.i222.i = icmp eq i32 %call.i221.i, 1
  br i1 %cmp.not.i222.i, label %stv0900_write_reg.exit212.i.stv0900_write_reg.exit227.i_crit_edge, label %do.body.i224.i

stv0900_write_reg.exit212.i.stv0900_write_reg.exit227.i_crit_edge: ; preds = %stv0900_write_reg.exit212.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit227.i

do.body.i224.i:                                   ; preds = %stv0900_write_reg.exit212.i
  %831 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %831)
  %tobool.not.i223.i = icmp eq i32 %831, 0
  br i1 %tobool.not.i223.i, label %do.body.i224.i.stv0900_write_reg.exit227.i_crit_edge, label %do.end.i226.i

do.body.i224.i.stv0900_write_reg.exit227.i_crit_edge: ; preds = %do.body.i224.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit227.i

do.end.i226.i:                                    ; preds = %do.body.i224.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i225.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i221.i) #11
  br label %stv0900_write_reg.exit227.i

stv0900_write_reg.exit227.i:                      ; preds = %do.end.i226.i, %do.body.i224.i.stv0900_write_reg.exit227.i_crit_edge, %stv0900_write_reg.exit212.i.stv0900_write_reg.exit227.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i214.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i213.i) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i228.i) #8
  %832 = getelementptr inbounds [3 x i8], ptr %data.i228.i, i32 0, i32 1
  %833 = getelementptr inbounds [3 x i8], ptr %data.i228.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i229.i) #8
  %834 = getelementptr inbounds i8, ptr %i2cmsg.i229.i, i32 4
  %835 = ptrtoint ptr %834 to i32
  call void @__asan_store4_noabort(i32 %835)
  store i32 262143, ptr %834, align 4
  %836 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %836)
  %837 = load i8, ptr %i2c_addr.i, align 4
  %conv.i231.i = zext i8 %837 to i16
  %838 = ptrtoint ptr %i2cmsg.i229.i to i32
  call void @__asan_store2_noabort(i32 %838)
  store i16 %conv.i231.i, ptr %i2cmsg.i229.i, align 4
  %flags.i232.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i229.i, i32 0, i32 1
  %839 = ptrtoint ptr %flags.i232.i to i32
  call void @__asan_store2_noabort(i32 %839)
  store i16 0, ptr %flags.i232.i, align 2
  %buf.i234.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i229.i, i32 0, i32 3
  %840 = ptrtoint ptr %buf.i234.i to i32
  call void @__asan_store4_noabort(i32 %840)
  store ptr %data.i228.i, ptr %buf.i234.i, align 4
  %841 = ptrtoint ptr %data.i228.i to i32
  call void @__asan_store1_noabort(i32 %841)
  store i8 -13, ptr %data.i228.i, align 1
  %842 = ptrtoint ptr %832 to i32
  call void @__asan_store1_noabort(i32 %842)
  store i8 -128, ptr %832, align 1
  %843 = ptrtoint ptr %833 to i32
  call void @__asan_store1_noabort(i32 %843)
  store i8 40, ptr %833, align 1
  %844 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %844)
  %845 = load ptr, ptr %i2c_adap.i, align 4
  %call.i236.i = call i32 @i2c_transfer(ptr noundef %845, ptr noundef nonnull %i2cmsg.i229.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i236.i)
  %cmp.not.i237.i = icmp eq i32 %call.i236.i, 1
  br i1 %cmp.not.i237.i, label %stv0900_write_reg.exit227.i.stv0900_write_reg.exit242.i_crit_edge, label %do.body.i239.i

stv0900_write_reg.exit227.i.stv0900_write_reg.exit242.i_crit_edge: ; preds = %stv0900_write_reg.exit227.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit242.i

do.body.i239.i:                                   ; preds = %stv0900_write_reg.exit227.i
  %846 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %846)
  %tobool.not.i238.i = icmp eq i32 %846, 0
  br i1 %tobool.not.i238.i, label %do.body.i239.i.stv0900_write_reg.exit242.i_crit_edge, label %do.end.i241.i

do.body.i239.i.stv0900_write_reg.exit242.i_crit_edge: ; preds = %do.body.i239.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit242.i

do.end.i241.i:                                    ; preds = %do.body.i239.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i240.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i236.i) #11
  br label %stv0900_write_reg.exit242.i

stv0900_write_reg.exit242.i:                      ; preds = %do.end.i241.i, %do.body.i239.i.stv0900_write_reg.exit242.i_crit_edge, %stv0900_write_reg.exit227.i.stv0900_write_reg.exit242.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i229.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i228.i) #8
  br label %if.end44.i

sw.default29.i:                                   ; preds = %if.else.i340
  br i1 %switch99.i, label %sw.bb32.i, label %sw.default31.i

sw.default31.i:                                   ; preds = %sw.default29.i
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i243.i) #8
  %847 = getelementptr inbounds [3 x i8], ptr %data.i243.i, i32 0, i32 1
  %848 = getelementptr inbounds [3 x i8], ptr %data.i243.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i244.i) #8
  %849 = getelementptr inbounds i8, ptr %i2cmsg.i244.i, i32 4
  %850 = ptrtoint ptr %849 to i32
  call void @__asan_store4_noabort(i32 %850)
  store i32 262143, ptr %849, align 4
  %851 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %851)
  %852 = load i8, ptr %i2c_addr.i, align 4
  %conv.i246.i = zext i8 %852 to i16
  %853 = ptrtoint ptr %i2cmsg.i244.i to i32
  call void @__asan_store2_noabort(i32 %853)
  store i16 %conv.i246.i, ptr %i2cmsg.i244.i, align 4
  %flags.i247.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i244.i, i32 0, i32 1
  %854 = ptrtoint ptr %flags.i247.i to i32
  call void @__asan_store2_noabort(i32 %854)
  store i16 0, ptr %flags.i247.i, align 2
  %buf.i249.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i244.i, i32 0, i32 3
  %855 = ptrtoint ptr %buf.i249.i to i32
  call void @__asan_store4_noabort(i32 %855)
  store ptr %data.i243.i, ptr %buf.i249.i, align 4
  %856 = ptrtoint ptr %data.i243.i to i32
  call void @__asan_store1_noabort(i32 %856)
  store i8 -10, ptr %data.i243.i, align 1
  %857 = ptrtoint ptr %847 to i32
  call void @__asan_store1_noabort(i32 %857)
  store i8 112, ptr %847, align 1
  %858 = ptrtoint ptr %848 to i32
  call void @__asan_store1_noabort(i32 %858)
  store i8 20, ptr %848, align 1
  %859 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %859)
  %860 = load ptr, ptr %i2c_adap.i, align 4
  %call.i251.i = call i32 @i2c_transfer(ptr noundef %860, ptr noundef nonnull %i2cmsg.i244.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i251.i)
  %cmp.not.i252.i = icmp eq i32 %call.i251.i, 1
  br i1 %cmp.not.i252.i, label %sw.default31.i.stv0900_write_reg.exit257.i_crit_edge, label %do.body.i254.i

sw.default31.i.stv0900_write_reg.exit257.i_crit_edge: ; preds = %sw.default31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit257.i

do.body.i254.i:                                   ; preds = %sw.default31.i
  %861 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %861)
  %tobool.not.i253.i = icmp eq i32 %861, 0
  br i1 %tobool.not.i253.i, label %do.body.i254.i.stv0900_write_reg.exit257.i_crit_edge, label %do.end.i256.i

do.body.i254.i.stv0900_write_reg.exit257.i_crit_edge: ; preds = %do.body.i254.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit257.i

do.end.i256.i:                                    ; preds = %do.body.i254.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i255.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i251.i) #11
  br label %stv0900_write_reg.exit257.i

stv0900_write_reg.exit257.i:                      ; preds = %do.end.i256.i, %do.body.i254.i.stv0900_write_reg.exit257.i_crit_edge, %sw.default31.i.stv0900_write_reg.exit257.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i244.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i243.i) #8
  br label %if.end44.i

sw.bb32.i:                                        ; preds = %sw.default29.i
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i258.i) #8
  %862 = getelementptr inbounds [3 x i8], ptr %data.i258.i, i32 0, i32 1
  %863 = getelementptr inbounds [3 x i8], ptr %data.i258.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i259.i) #8
  %864 = getelementptr inbounds i8, ptr %i2cmsg.i259.i, i32 4
  %865 = ptrtoint ptr %864 to i32
  call void @__asan_store4_noabort(i32 %865)
  store i32 262143, ptr %864, align 4
  %866 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %866)
  %867 = load i8, ptr %i2c_addr.i, align 4
  %conv.i261.i = zext i8 %867 to i16
  %868 = ptrtoint ptr %i2cmsg.i259.i to i32
  call void @__asan_store2_noabort(i32 %868)
  store i16 %conv.i261.i, ptr %i2cmsg.i259.i, align 4
  %flags.i262.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i259.i, i32 0, i32 1
  %869 = ptrtoint ptr %flags.i262.i to i32
  call void @__asan_store2_noabort(i32 %869)
  store i16 0, ptr %flags.i262.i, align 2
  %buf.i264.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i259.i, i32 0, i32 3
  %870 = ptrtoint ptr %buf.i264.i to i32
  call void @__asan_store4_noabort(i32 %870)
  store ptr %data.i258.i, ptr %buf.i264.i, align 4
  %871 = ptrtoint ptr %data.i258.i to i32
  call void @__asan_store1_noabort(i32 %871)
  store i8 -10, ptr %data.i258.i, align 1
  %872 = ptrtoint ptr %862 to i32
  call void @__asan_store1_noabort(i32 %872)
  store i8 112, ptr %862, align 1
  %873 = ptrtoint ptr %863 to i32
  call void @__asan_store1_noabort(i32 %873)
  store i8 18, ptr %863, align 1
  %874 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %874)
  %875 = load ptr, ptr %i2c_adap.i, align 4
  %call.i266.i342 = call i32 @i2c_transfer(ptr noundef %875, ptr noundef nonnull %i2cmsg.i259.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i266.i342)
  %cmp.not.i267.i343 = icmp eq i32 %call.i266.i342, 1
  br i1 %cmp.not.i267.i343, label %sw.bb32.i.stv0900_write_reg.exit272.i_crit_edge, label %do.body.i269.i345

sw.bb32.i.stv0900_write_reg.exit272.i_crit_edge:  ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit272.i

do.body.i269.i345:                                ; preds = %sw.bb32.i
  %876 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %876)
  %tobool.not.i268.i344 = icmp eq i32 %876, 0
  br i1 %tobool.not.i268.i344, label %stv0900_write_reg.exit272.thread.i, label %do.end.i271.i346

stv0900_write_reg.exit272.thread.i:               ; preds = %do.body.i269.i345
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i259.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i258.i) #8
  br label %if.end44.i

do.end.i271.i346:                                 ; preds = %do.body.i269.i345
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i270.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i266.i342) #11
  br label %stv0900_write_reg.exit272.i

stv0900_write_reg.exit272.i:                      ; preds = %do.end.i271.i346, %sw.bb32.i.stv0900_write_reg.exit272.i_crit_edge
  %.pr274.i = load i32, ptr @stvdebug, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i259.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i258.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr274.i)
  %tobool34.not.i = icmp eq i32 %.pr274.i, 0
  br i1 %tobool34.not.i, label %stv0900_write_reg.exit272.i.if.end44.i_crit_edge, label %do.end37.i

stv0900_write_reg.exit272.i.if.end44.i_crit_edge: ; preds = %stv0900_write_reg.exit272.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i

do.end37.i:                                       ; preds = %stv0900_write_reg.exit272.i
  call void @__sanitizer_cov_trace_pc() #10
  %call39.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.89) #11
  br label %if.end44.i

if.end44.i:                                       ; preds = %do.end37.i, %stv0900_write_reg.exit272.i.if.end44.i_crit_edge, %stv0900_write_reg.exit272.thread.i, %stv0900_write_reg.exit257.i, %stv0900_write_reg.exit242.i, %stv0900_write_reg.exit197.i, %do.end16.i, %stv0900_write_reg.exit182.i.if.end44.i_crit_edge, %stv0900_write_reg.exit182.thread.i, %stv0900_write_reg.exit167.i, %stv0900_write_reg.exit152.i, %stv0900_write_reg.exit.i339
  %switch.tableidx = add i32 %691, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %877 = icmp ult i32 %switch.tableidx, 4
  br i1 %877, label %switch.lookup, label %if.end44.i.sw.epilog50.i_crit_edge

if.end44.i.sw.epilog50.i_crit_edge:               ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog50.i

switch.lookup:                                    ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.shiftamt = shl i32 %switch.tableidx, 3
  %switch.downshift = lshr i32 257, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %switch.shiftamt724 = shl i32 %switch.tableidx, 3
  %switch.downshift725 = lshr i32 16777472, %switch.shiftamt724
  %switch.masked726 = trunc i32 %switch.downshift725 to i8
  call void @stv0900_write_bits(ptr noundef %461, i32 noundef -177078208, i8 noundef zeroext %switch.masked) #8
  call void @stv0900_write_bits(ptr noundef %461, i32 noundef -177078144, i8 noundef zeroext %switch.masked726) #8
  br label %sw.epilog50.i

sw.epilog50.i:                                    ; preds = %switch.lookup, %if.end44.i.sw.epilog50.i_crit_edge
  %switch.tableidx728 = add i32 %693, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx728)
  %878 = icmp ult i32 %switch.tableidx728, 4
  br i1 %878, label %switch.lookup727, label %sw.epilog50.i.stv0900_set_ts_parallel_serial.exit_crit_edge

sw.epilog50.i.stv0900_set_ts_parallel_serial.exit_crit_edge: ; preds = %sw.epilog50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_set_ts_parallel_serial.exit

switch.lookup727:                                 ; preds = %sw.epilog50.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.shiftamt729 = shl i32 %switch.tableidx728, 3
  %switch.downshift730 = lshr i32 257, %switch.shiftamt729
  %switch.masked731 = trunc i32 %switch.downshift730 to i8
  %switch.shiftamt732 = shl i32 %switch.tableidx728, 3
  %switch.downshift733 = lshr i32 16777472, %switch.shiftamt732
  %switch.masked734 = trunc i32 %switch.downshift733 to i8
  call void @stv0900_write_bits(ptr noundef %461, i32 noundef -210632640, i8 noundef zeroext %switch.masked731) #8
  call void @stv0900_write_bits(ptr noundef %461, i32 noundef -210632576, i8 noundef zeroext %switch.masked734) #8
  br label %stv0900_set_ts_parallel_serial.exit

stv0900_set_ts_parallel_serial.exit:              ; preds = %switch.lookup727, %sw.epilog50.i.stv0900_set_ts_parallel_serial.exit_crit_edge
  call void @stv0900_write_bits(ptr noundef %461, i32 noundef -210632703, i8 noundef zeroext 1) #8
  call void @stv0900_write_bits(ptr noundef %461, i32 noundef -210632703, i8 noundef zeroext 0) #8
  call void @stv0900_write_bits(ptr noundef %461, i32 noundef -177078271, i8 noundef zeroext 1) #8
  call void @stv0900_write_bits(ptr noundef %461, i32 noundef -177078271, i8 noundef zeroext 0) #8
  br label %if.end97

for.body:                                         ; preds = %stv0900_write_reg.exit.for.body_crit_edge, %for.body.lr.ph
  %.off0 = phi i8 [ %extract.t, %for.body.lr.ph ], [ %extract.t719, %stv0900_write_reg.exit.for.body_crit_edge ]
  %.off8 = phi i8 [ %extract.t720, %for.body.lr.ph ], [ %extract.t722, %stv0900_write_reg.exit.for.body_crit_edge ]
  %879 = phi ptr [ %684, %for.body.lr.ph ], [ %895, %stv0900_write_reg.exit.for.body_crit_edge ]
  %i.0718 = phi i32 [ 0, %for.body.lr.ph ], [ %inc96, %stv0900_write_reg.exit.for.body_crit_edge ]
  %val = getelementptr %struct.stv0900_reg, ptr %879, i32 %i.0718, i32 1
  %880 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %880)
  %881 = load i8, ptr %val, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i) #8
  %882 = ptrtoint ptr %689 to i32
  call void @__asan_store4_noabort(i32 %882)
  store i32 262143, ptr %689, align 4
  %883 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %883)
  %884 = load i8, ptr %i2c_addr.i, align 4
  %conv.i = zext i8 %884 to i16
  %885 = ptrtoint ptr %i2cmsg.i to i32
  call void @__asan_store2_noabort(i32 %885)
  store i16 %conv.i, ptr %i2cmsg.i, align 4
  %886 = ptrtoint ptr %flags.i348 to i32
  call void @__asan_store2_noabort(i32 %886)
  store i16 0, ptr %flags.i348, align 2
  %887 = ptrtoint ptr %buf.i350 to i32
  call void @__asan_store4_noabort(i32 %887)
  store ptr %data.i, ptr %buf.i350, align 4
  %888 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %888)
  store i8 %.off8, ptr %data.i, align 1
  %889 = ptrtoint ptr %687 to i32
  call void @__asan_store1_noabort(i32 %889)
  store i8 %.off0, ptr %687, align 1
  %890 = ptrtoint ptr %688 to i32
  call void @__asan_store1_noabort(i32 %890)
  store i8 %881, ptr %688, align 1
  %891 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %891)
  %892 = load ptr, ptr %i2c_adap.i, align 4
  %call.i352 = call i32 @i2c_transfer(ptr noundef %892, ptr noundef nonnull %i2cmsg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i352)
  %cmp.not.i353 = icmp eq i32 %call.i352, 1
  br i1 %cmp.not.i353, label %for.body.stv0900_write_reg.exit_crit_edge, label %do.body.i355

for.body.stv0900_write_reg.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit

do.body.i355:                                     ; preds = %for.body
  %893 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %893)
  %tobool.not.i354 = icmp eq i32 %893, 0
  br i1 %tobool.not.i354, label %do.body.i355.stv0900_write_reg.exit_crit_edge, label %do.end.i356

do.body.i355.stv0900_write_reg.exit_crit_edge:    ; preds = %do.body.i355
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit

do.end.i356:                                      ; preds = %do.body.i355
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i352) #11
  br label %stv0900_write_reg.exit

stv0900_write_reg.exit:                           ; preds = %do.end.i356, %do.body.i355.stv0900_write_reg.exit_crit_edge, %for.body.stv0900_write_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  %inc96 = add i32 %i.0718, 1
  %894 = ptrtoint ptr %ts_config81 to i32
  call void @__asan_load4_noabort(i32 %894)
  %895 = load ptr, ptr %ts_config81, align 4
  %arrayidx = getelementptr %struct.stv0900_reg, ptr %895, i32 %inc96
  %896 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %896)
  %897 = load i16, ptr %arrayidx, align 2
  %cmp89.not = icmp eq i16 %897, -1
  %extract.t719 = trunc i16 %897 to i8
  %extract721 = lshr i16 %897, 8
  %extract.t722 = trunc i16 %extract721 to i8
  br i1 %cmp89.not, label %stv0900_write_reg.exit.for.end_crit_edge, label %stv0900_write_reg.exit.for.body_crit_edge

stv0900_write_reg.exit.for.body_crit_edge:        ; preds = %stv0900_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

stv0900_write_reg.exit.for.end_crit_edge:         ; preds = %stv0900_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %stv0900_write_reg.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @stv0900_write_bits(ptr noundef %461, i32 noundef -210632703, i8 noundef zeroext 1)
  call void @stv0900_write_bits(ptr noundef %461, i32 noundef -210632703, i8 noundef zeroext 0)
  call void @stv0900_write_bits(ptr noundef %461, i32 noundef -177078271, i8 noundef zeroext 1)
  call void @stv0900_write_bits(ptr noundef %461, i32 noundef -177078271, i8 noundef zeroext 0)
  br label %if.end97

if.end97:                                         ; preds = %for.end, %stv0900_set_ts_parallel_serial.exit
  %tuner1_type = getelementptr inbounds %struct.stv0900_init_params, ptr %p_init, i32 0, i32 6
  %898 = ptrtoint ptr %tuner1_type to i32
  call void @__asan_load4_noabort(i32 %898)
  %899 = load i32, ptr %tuner1_type, align 4
  %tuner_type = getelementptr inbounds %struct.stv0900_internal, ptr %461, i32 0, i32 8
  %900 = ptrtoint ptr %tuner_type to i32
  call void @__asan_store4_noabort(i32 %900)
  store i32 %899, ptr %tuner_type, align 4
  %tuner2_type = getelementptr inbounds %struct.stv0900_init_params, ptr %p_init, i32 0, i32 11
  %901 = ptrtoint ptr %tuner2_type to i32
  call void @__asan_load4_noabort(i32 %901)
  %902 = load i32, ptr %tuner2_type, align 4
  %arrayidx100 = getelementptr %struct.stv0900_internal, ptr %461, i32 0, i32 8, i32 1
  %903 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store4_noabort(i32 %903)
  store i32 %902, ptr %arrayidx100, align 4
  %904 = load i32, ptr %tuner1_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %904)
  %cond = icmp eq i32 %904, 3
  br i1 %cond, label %sw.bb, label %if.end97.sw.epilog_crit_edge

if.end97.sw.epilog_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end97
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i357) #8
  %905 = getelementptr inbounds [3 x i8], ptr %data.i357, i32 0, i32 1
  %906 = getelementptr inbounds [3 x i8], ptr %data.i357, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i358) #8
  %907 = getelementptr inbounds i8, ptr %i2cmsg.i358, i32 4
  %908 = ptrtoint ptr %907 to i32
  call void @__asan_store4_noabort(i32 %908)
  store i32 262143, ptr %907, align 4
  %909 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %909)
  %910 = load i8, ptr %i2c_addr.i, align 4
  %conv.i360 = zext i8 %910 to i16
  %911 = ptrtoint ptr %i2cmsg.i358 to i32
  call void @__asan_store2_noabort(i32 %911)
  store i16 %conv.i360, ptr %i2cmsg.i358, align 4
  %flags.i361 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i358, i32 0, i32 1
  %912 = ptrtoint ptr %flags.i361 to i32
  call void @__asan_store2_noabort(i32 %912)
  store i16 0, ptr %flags.i361, align 2
  %buf.i363 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i358, i32 0, i32 3
  %913 = ptrtoint ptr %buf.i363 to i32
  call void @__asan_store4_noabort(i32 %913)
  store ptr %data.i357, ptr %buf.i363, align 4
  %914 = ptrtoint ptr %data.i357 to i32
  call void @__asan_store1_noabort(i32 %914)
  store i8 -12, ptr %data.i357, align 1
  %915 = ptrtoint ptr %905 to i32
  call void @__asan_store1_noabort(i32 %915)
  store i8 -32, ptr %905, align 1
  %916 = ptrtoint ptr %906 to i32
  call void @__asan_store1_noabort(i32 %916)
  store i8 60, ptr %906, align 1
  %917 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %917)
  %918 = load ptr, ptr %i2c_adap.i, align 4
  %call.i365 = call i32 @i2c_transfer(ptr noundef %918, ptr noundef nonnull %i2cmsg.i358, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i365)
  %cmp.not.i366 = icmp eq i32 %call.i365, 1
  br i1 %cmp.not.i366, label %sw.bb.stv0900_write_reg.exit371_crit_edge, label %do.body.i368

sw.bb.stv0900_write_reg.exit371_crit_edge:        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit371

do.body.i368:                                     ; preds = %sw.bb
  %919 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %919)
  %tobool.not.i367 = icmp eq i32 %919, 0
  br i1 %tobool.not.i367, label %do.body.i368.stv0900_write_reg.exit371_crit_edge, label %do.end.i370

do.body.i368.stv0900_write_reg.exit371_crit_edge: ; preds = %do.body.i368
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit371

do.end.i370:                                      ; preds = %do.body.i368
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i369 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i365) #11
  br label %stv0900_write_reg.exit371

stv0900_write_reg.exit371:                        ; preds = %do.end.i370, %do.body.i368.stv0900_write_reg.exit371_crit_edge, %sw.bb.stv0900_write_reg.exit371_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i358) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i357) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i372) #8
  %920 = getelementptr inbounds [3 x i8], ptr %data.i372, i32 0, i32 1
  %921 = getelementptr inbounds [3 x i8], ptr %data.i372, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i373) #8
  %922 = getelementptr inbounds i8, ptr %i2cmsg.i373, i32 4
  %923 = ptrtoint ptr %922 to i32
  call void @__asan_store4_noabort(i32 %923)
  store i32 262143, ptr %922, align 4
  %924 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %924)
  %925 = load i8, ptr %i2c_addr.i, align 4
  %conv.i375 = zext i8 %925 to i16
  %926 = ptrtoint ptr %i2cmsg.i373 to i32
  call void @__asan_store2_noabort(i32 %926)
  store i16 %conv.i375, ptr %i2cmsg.i373, align 4
  %flags.i376 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i373, i32 0, i32 1
  %927 = ptrtoint ptr %flags.i376 to i32
  call void @__asan_store2_noabort(i32 %927)
  store i16 0, ptr %flags.i376, align 2
  %buf.i378 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i373, i32 0, i32 3
  %928 = ptrtoint ptr %buf.i378 to i32
  call void @__asan_store4_noabort(i32 %928)
  store ptr %data.i372, ptr %buf.i378, align 4
  %929 = ptrtoint ptr %data.i372 to i32
  call void @__asan_store1_noabort(i32 %929)
  store i8 -12, ptr %data.i372, align 1
  %930 = ptrtoint ptr %920 to i32
  call void @__asan_store1_noabort(i32 %930)
  store i8 -31, ptr %920, align 1
  %931 = ptrtoint ptr %921 to i32
  call void @__asan_store1_noabort(i32 %931)
  store i8 -122, ptr %921, align 1
  %932 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %932)
  %933 = load ptr, ptr %i2c_adap.i, align 4
  %call.i380 = call i32 @i2c_transfer(ptr noundef %933, ptr noundef nonnull %i2cmsg.i373, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i380)
  %cmp.not.i381 = icmp eq i32 %call.i380, 1
  br i1 %cmp.not.i381, label %stv0900_write_reg.exit371.stv0900_write_reg.exit386_crit_edge, label %do.body.i383

stv0900_write_reg.exit371.stv0900_write_reg.exit386_crit_edge: ; preds = %stv0900_write_reg.exit371
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit386

do.body.i383:                                     ; preds = %stv0900_write_reg.exit371
  %934 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %934)
  %tobool.not.i382 = icmp eq i32 %934, 0
  br i1 %tobool.not.i382, label %do.body.i383.stv0900_write_reg.exit386_crit_edge, label %do.end.i385

do.body.i383.stv0900_write_reg.exit386_crit_edge: ; preds = %do.body.i383
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit386

do.end.i385:                                      ; preds = %do.body.i383
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i384 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i380) #11
  br label %stv0900_write_reg.exit386

stv0900_write_reg.exit386:                        ; preds = %do.end.i385, %do.body.i383.stv0900_write_reg.exit386_crit_edge, %stv0900_write_reg.exit371.stv0900_write_reg.exit386_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i373) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i372) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i387) #8
  %935 = getelementptr inbounds [3 x i8], ptr %data.i387, i32 0, i32 1
  %936 = getelementptr inbounds [3 x i8], ptr %data.i387, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i388) #8
  %937 = getelementptr inbounds i8, ptr %i2cmsg.i388, i32 4
  %938 = ptrtoint ptr %937 to i32
  call void @__asan_store4_noabort(i32 %938)
  store i32 262143, ptr %937, align 4
  %939 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %939)
  %940 = load i8, ptr %i2c_addr.i, align 4
  %conv.i390 = zext i8 %940 to i16
  %941 = ptrtoint ptr %i2cmsg.i388 to i32
  call void @__asan_store2_noabort(i32 %941)
  store i16 %conv.i390, ptr %i2cmsg.i388, align 4
  %flags.i391 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i388, i32 0, i32 1
  %942 = ptrtoint ptr %flags.i391 to i32
  call void @__asan_store2_noabort(i32 %942)
  store i16 0, ptr %flags.i391, align 2
  %buf.i393 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i388, i32 0, i32 3
  %943 = ptrtoint ptr %buf.i393 to i32
  call void @__asan_store4_noabort(i32 %943)
  store ptr %data.i387, ptr %buf.i393, align 4
  %944 = ptrtoint ptr %data.i387 to i32
  call void @__asan_store1_noabort(i32 %944)
  store i8 -12, ptr %data.i387, align 1
  %945 = ptrtoint ptr %935 to i32
  call void @__asan_store1_noabort(i32 %945)
  store i8 -18, ptr %935, align 1
  %946 = ptrtoint ptr %936 to i32
  call void @__asan_store1_noabort(i32 %946)
  store i8 24, ptr %936, align 1
  %947 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %947)
  %948 = load ptr, ptr %i2c_adap.i, align 4
  %call.i395 = call i32 @i2c_transfer(ptr noundef %948, ptr noundef nonnull %i2cmsg.i388, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i395)
  %cmp.not.i396 = icmp eq i32 %call.i395, 1
  br i1 %cmp.not.i396, label %stv0900_write_reg.exit386.stv0900_write_reg.exit401_crit_edge, label %do.body.i398

stv0900_write_reg.exit386.stv0900_write_reg.exit401_crit_edge: ; preds = %stv0900_write_reg.exit386
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit401

do.body.i398:                                     ; preds = %stv0900_write_reg.exit386
  %949 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %949)
  %tobool.not.i397 = icmp eq i32 %949, 0
  br i1 %tobool.not.i397, label %do.body.i398.stv0900_write_reg.exit401_crit_edge, label %do.end.i400

do.body.i398.stv0900_write_reg.exit401_crit_edge: ; preds = %do.body.i398
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit401

do.end.i400:                                      ; preds = %do.body.i398
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i399 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i395) #11
  br label %stv0900_write_reg.exit401

stv0900_write_reg.exit401:                        ; preds = %do.end.i400, %do.body.i398.stv0900_write_reg.exit401_crit_edge, %stv0900_write_reg.exit386.stv0900_write_reg.exit401_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i388) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i387) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i402) #8
  %950 = getelementptr inbounds [3 x i8], ptr %data.i402, i32 0, i32 1
  %951 = getelementptr inbounds [3 x i8], ptr %data.i402, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i403) #8
  %952 = getelementptr inbounds i8, ptr %i2cmsg.i403, i32 4
  %953 = ptrtoint ptr %952 to i32
  call void @__asan_store4_noabort(i32 %953)
  store i32 262143, ptr %952, align 4
  %954 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %954)
  %955 = load i8, ptr %i2c_addr.i, align 4
  %conv.i405 = zext i8 %955 to i16
  %956 = ptrtoint ptr %i2cmsg.i403 to i32
  call void @__asan_store2_noabort(i32 %956)
  store i16 %conv.i405, ptr %i2cmsg.i403, align 4
  %flags.i406 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i403, i32 0, i32 1
  %957 = ptrtoint ptr %flags.i406 to i32
  call void @__asan_store2_noabort(i32 %957)
  store i16 0, ptr %flags.i406, align 2
  %buf.i408 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i403, i32 0, i32 3
  %958 = ptrtoint ptr %buf.i408 to i32
  call void @__asan_store4_noabort(i32 %958)
  store ptr %data.i402, ptr %buf.i408, align 4
  %959 = ptrtoint ptr %data.i402 to i32
  call void @__asan_store1_noabort(i32 %959)
  store i8 -12, ptr %data.i402, align 1
  %960 = ptrtoint ptr %950 to i32
  call void @__asan_store1_noabort(i32 %960)
  store i8 -28, ptr %950, align 1
  %961 = ptrtoint ptr %951 to i32
  call void @__asan_store1_noabort(i32 %961)
  store i8 27, ptr %951, align 1
  %962 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %962)
  %963 = load ptr, ptr %i2c_adap.i, align 4
  %call.i410 = call i32 @i2c_transfer(ptr noundef %963, ptr noundef nonnull %i2cmsg.i403, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i410)
  %cmp.not.i411 = icmp eq i32 %call.i410, 1
  br i1 %cmp.not.i411, label %stv0900_write_reg.exit401.stv0900_write_reg.exit416_crit_edge, label %do.body.i413

stv0900_write_reg.exit401.stv0900_write_reg.exit416_crit_edge: ; preds = %stv0900_write_reg.exit401
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit416

do.body.i413:                                     ; preds = %stv0900_write_reg.exit401
  %964 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %964)
  %tobool.not.i412 = icmp eq i32 %964, 0
  br i1 %tobool.not.i412, label %do.body.i413.stv0900_write_reg.exit416_crit_edge, label %do.end.i415

do.body.i413.stv0900_write_reg.exit416_crit_edge: ; preds = %do.body.i413
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit416

do.end.i415:                                      ; preds = %do.body.i413
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i414 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i410) #11
  br label %stv0900_write_reg.exit416

stv0900_write_reg.exit416:                        ; preds = %do.end.i415, %do.body.i413.stv0900_write_reg.exit416_crit_edge, %stv0900_write_reg.exit401.stv0900_write_reg.exit416_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i403) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i402) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i417) #8
  %965 = getelementptr inbounds [3 x i8], ptr %data.i417, i32 0, i32 1
  %966 = getelementptr inbounds [3 x i8], ptr %data.i417, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i418) #8
  %967 = getelementptr inbounds i8, ptr %i2cmsg.i418, i32 4
  %968 = ptrtoint ptr %967 to i32
  call void @__asan_store4_noabort(i32 %968)
  store i32 262143, ptr %967, align 4
  %969 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %969)
  %970 = load i8, ptr %i2c_addr.i, align 4
  %conv.i420 = zext i8 %970 to i16
  %971 = ptrtoint ptr %i2cmsg.i418 to i32
  call void @__asan_store2_noabort(i32 %971)
  store i16 %conv.i420, ptr %i2cmsg.i418, align 4
  %flags.i421 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i418, i32 0, i32 1
  %972 = ptrtoint ptr %flags.i421 to i32
  call void @__asan_store2_noabort(i32 %972)
  store i16 0, ptr %flags.i421, align 2
  %buf.i423 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i418, i32 0, i32 3
  %973 = ptrtoint ptr %buf.i423 to i32
  call void @__asan_store4_noabort(i32 %973)
  store ptr %data.i417, ptr %buf.i423, align 4
  %974 = ptrtoint ptr %data.i417 to i32
  call void @__asan_store1_noabort(i32 %974)
  store i8 -12, ptr %data.i417, align 1
  %975 = ptrtoint ptr %965 to i32
  call void @__asan_store1_noabort(i32 %975)
  store i8 -25, ptr %965, align 1
  %976 = ptrtoint ptr %966 to i32
  call void @__asan_store1_noabort(i32 %976)
  store i8 5, ptr %966, align 1
  %977 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %977)
  %978 = load ptr, ptr %i2c_adap.i, align 4
  %call.i425 = call i32 @i2c_transfer(ptr noundef %978, ptr noundef nonnull %i2cmsg.i418, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i425)
  %cmp.not.i426 = icmp eq i32 %call.i425, 1
  br i1 %cmp.not.i426, label %stv0900_write_reg.exit416.stv0900_write_reg.exit431_crit_edge, label %do.body.i428

stv0900_write_reg.exit416.stv0900_write_reg.exit431_crit_edge: ; preds = %stv0900_write_reg.exit416
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit431

do.body.i428:                                     ; preds = %stv0900_write_reg.exit416
  %979 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %979)
  %tobool.not.i427 = icmp eq i32 %979, 0
  br i1 %tobool.not.i427, label %do.body.i428.stv0900_write_reg.exit431_crit_edge, label %do.end.i430

do.body.i428.stv0900_write_reg.exit431_crit_edge: ; preds = %do.body.i428
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit431

do.end.i430:                                      ; preds = %do.body.i428
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i429 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i425) #11
  br label %stv0900_write_reg.exit431

stv0900_write_reg.exit431:                        ; preds = %do.end.i430, %do.body.i428.stv0900_write_reg.exit431_crit_edge, %stv0900_write_reg.exit416.stv0900_write_reg.exit431_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i418) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i417) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i432) #8
  %980 = getelementptr inbounds [3 x i8], ptr %data.i432, i32 0, i32 1
  %981 = getelementptr inbounds [3 x i8], ptr %data.i432, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i433) #8
  %982 = getelementptr inbounds i8, ptr %i2cmsg.i433, i32 4
  %983 = ptrtoint ptr %982 to i32
  call void @__asan_store4_noabort(i32 %983)
  store i32 262143, ptr %982, align 4
  %984 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %984)
  %985 = load i8, ptr %i2c_addr.i, align 4
  %conv.i435 = zext i8 %985 to i16
  %986 = ptrtoint ptr %i2cmsg.i433 to i32
  call void @__asan_store2_noabort(i32 %986)
  store i16 %conv.i435, ptr %i2cmsg.i433, align 4
  %flags.i436 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i433, i32 0, i32 1
  %987 = ptrtoint ptr %flags.i436 to i32
  call void @__asan_store2_noabort(i32 %987)
  store i16 0, ptr %flags.i436, align 2
  %buf.i438 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i433, i32 0, i32 3
  %988 = ptrtoint ptr %buf.i438 to i32
  call void @__asan_store4_noabort(i32 %988)
  store ptr %data.i432, ptr %buf.i438, align 4
  %989 = ptrtoint ptr %data.i432 to i32
  call void @__asan_store1_noabort(i32 %989)
  store i8 -12, ptr %data.i432, align 1
  %990 = ptrtoint ptr %980 to i32
  call void @__asan_store1_noabort(i32 %990)
  store i8 -24, ptr %980, align 1
  %991 = ptrtoint ptr %981 to i32
  call void @__asan_store1_noabort(i32 %991)
  store i8 23, ptr %981, align 1
  %992 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %992)
  %993 = load ptr, ptr %i2c_adap.i, align 4
  %call.i440 = call i32 @i2c_transfer(ptr noundef %993, ptr noundef nonnull %i2cmsg.i433, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i440)
  %cmp.not.i441 = icmp eq i32 %call.i440, 1
  br i1 %cmp.not.i441, label %stv0900_write_reg.exit431.stv0900_write_reg.exit446_crit_edge, label %do.body.i443

stv0900_write_reg.exit431.stv0900_write_reg.exit446_crit_edge: ; preds = %stv0900_write_reg.exit431
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit446

do.body.i443:                                     ; preds = %stv0900_write_reg.exit431
  %994 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %994)
  %tobool.not.i442 = icmp eq i32 %994, 0
  br i1 %tobool.not.i442, label %do.body.i443.stv0900_write_reg.exit446_crit_edge, label %do.end.i445

do.body.i443.stv0900_write_reg.exit446_crit_edge: ; preds = %do.body.i443
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit446

do.end.i445:                                      ; preds = %do.body.i443
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i444 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i440) #11
  br label %stv0900_write_reg.exit446

stv0900_write_reg.exit446:                        ; preds = %do.end.i445, %do.body.i443.stv0900_write_reg.exit446_crit_edge, %stv0900_write_reg.exit431.stv0900_write_reg.exit446_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i433) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i432) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i447) #8
  %995 = getelementptr inbounds [3 x i8], ptr %data.i447, i32 0, i32 1
  %996 = getelementptr inbounds [3 x i8], ptr %data.i447, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i448) #8
  %997 = getelementptr inbounds i8, ptr %i2cmsg.i448, i32 4
  %998 = ptrtoint ptr %997 to i32
  call void @__asan_store4_noabort(i32 %998)
  store i32 262143, ptr %997, align 4
  %999 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %999)
  %1000 = load i8, ptr %i2c_addr.i, align 4
  %conv.i450 = zext i8 %1000 to i16
  %1001 = ptrtoint ptr %i2cmsg.i448 to i32
  call void @__asan_store2_noabort(i32 %1001)
  store i16 %conv.i450, ptr %i2cmsg.i448, align 4
  %flags.i451 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i448, i32 0, i32 1
  %1002 = ptrtoint ptr %flags.i451 to i32
  call void @__asan_store2_noabort(i32 %1002)
  store i16 0, ptr %flags.i451, align 2
  %buf.i453 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i448, i32 0, i32 3
  %1003 = ptrtoint ptr %buf.i453 to i32
  call void @__asan_store4_noabort(i32 %1003)
  store ptr %data.i447, ptr %buf.i453, align 4
  %1004 = ptrtoint ptr %data.i447 to i32
  call void @__asan_store1_noabort(i32 %1004)
  store i8 -12, ptr %data.i447, align 1
  %1005 = ptrtoint ptr %995 to i32
  call void @__asan_store1_noabort(i32 %1005)
  store i8 -20, ptr %995, align 1
  %1006 = ptrtoint ptr %996 to i32
  call void @__asan_store1_noabort(i32 %1006)
  store i8 31, ptr %996, align 1
  %1007 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %1007)
  %1008 = load ptr, ptr %i2c_adap.i, align 4
  %call.i455 = call i32 @i2c_transfer(ptr noundef %1008, ptr noundef nonnull %i2cmsg.i448, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i455)
  %cmp.not.i456 = icmp eq i32 %call.i455, 1
  br i1 %cmp.not.i456, label %stv0900_write_reg.exit446.stv0900_write_reg.exit461_crit_edge, label %do.body.i458

stv0900_write_reg.exit446.stv0900_write_reg.exit461_crit_edge: ; preds = %stv0900_write_reg.exit446
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit461

do.body.i458:                                     ; preds = %stv0900_write_reg.exit446
  %1009 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1009)
  %tobool.not.i457 = icmp eq i32 %1009, 0
  br i1 %tobool.not.i457, label %do.body.i458.stv0900_write_reg.exit461_crit_edge, label %do.end.i460

do.body.i458.stv0900_write_reg.exit461_crit_edge: ; preds = %do.body.i458
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit461

do.end.i460:                                      ; preds = %do.body.i458
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i459 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i455) #11
  br label %stv0900_write_reg.exit461

stv0900_write_reg.exit461:                        ; preds = %do.end.i460, %do.body.i458.stv0900_write_reg.exit461_crit_edge, %stv0900_write_reg.exit446.stv0900_write_reg.exit461_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i448) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i447) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i462) #8
  %1010 = getelementptr inbounds [3 x i8], ptr %data.i462, i32 0, i32 1
  %1011 = getelementptr inbounds [3 x i8], ptr %data.i462, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i463) #8
  %1012 = getelementptr inbounds i8, ptr %i2cmsg.i463, i32 4
  %1013 = ptrtoint ptr %1012 to i32
  call void @__asan_store4_noabort(i32 %1013)
  store i32 262143, ptr %1012, align 4
  %1014 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %1014)
  %1015 = load i8, ptr %i2c_addr.i, align 4
  %conv.i465 = zext i8 %1015 to i16
  %1016 = ptrtoint ptr %i2cmsg.i463 to i32
  call void @__asan_store2_noabort(i32 %1016)
  store i16 %conv.i465, ptr %i2cmsg.i463, align 4
  %flags.i466 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i463, i32 0, i32 1
  %1017 = ptrtoint ptr %flags.i466 to i32
  call void @__asan_store2_noabort(i32 %1017)
  store i16 0, ptr %flags.i466, align 2
  %buf.i468 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i463, i32 0, i32 3
  %1018 = ptrtoint ptr %buf.i468 to i32
  call void @__asan_store4_noabort(i32 %1018)
  store ptr %data.i462, ptr %buf.i468, align 4
  %1019 = ptrtoint ptr %data.i462 to i32
  call void @__asan_store1_noabort(i32 %1019)
  store i8 -12, ptr %data.i462, align 1
  %1020 = ptrtoint ptr %1010 to i32
  call void @__asan_store1_noabort(i32 %1020)
  store i8 -19, ptr %1010, align 1
  %1021 = ptrtoint ptr %1011 to i32
  call void @__asan_store1_noabort(i32 %1021)
  store i8 0, ptr %1011, align 1
  %1022 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %1022)
  %1023 = load ptr, ptr %i2c_adap.i, align 4
  %call.i470 = call i32 @i2c_transfer(ptr noundef %1023, ptr noundef nonnull %i2cmsg.i463, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i470)
  %cmp.not.i471 = icmp eq i32 %call.i470, 1
  br i1 %cmp.not.i471, label %stv0900_write_reg.exit461.stv0900_write_reg.exit476_crit_edge, label %do.body.i473

stv0900_write_reg.exit461.stv0900_write_reg.exit476_crit_edge: ; preds = %stv0900_write_reg.exit461
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit476

do.body.i473:                                     ; preds = %stv0900_write_reg.exit461
  %1024 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1024)
  %tobool.not.i472 = icmp eq i32 %1024, 0
  br i1 %tobool.not.i472, label %do.body.i473.stv0900_write_reg.exit476_crit_edge, label %do.end.i475

do.body.i473.stv0900_write_reg.exit476_crit_edge: ; preds = %do.body.i473
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit476

do.end.i475:                                      ; preds = %do.body.i473
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i474 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i470) #11
  br label %stv0900_write_reg.exit476

stv0900_write_reg.exit476:                        ; preds = %do.end.i475, %do.body.i473.stv0900_write_reg.exit476_crit_edge, %stv0900_write_reg.exit461.stv0900_write_reg.exit476_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i463) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i462) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %stv0900_write_reg.exit476, %if.end97.sw.epilog_crit_edge
  %.sink = phi i8 [ 3, %stv0900_write_reg.exit476 ], [ 6, %if.end97.sw.epilog_crit_edge ]
  call void @stv0900_write_bits(ptr noundef %461, i32 noundef -186646416, i8 noundef zeroext %.sink)
  %tun1_maddress = getelementptr inbounds %struct.stv0900_init_params, ptr %p_init, i32 0, i32 4
  %1025 = ptrtoint ptr %tun1_maddress to i32
  call void @__asan_load1_noabort(i32 %1025)
  %1026 = load i8, ptr %tun1_maddress, align 4
  call void @stv0900_write_bits(ptr noundef %461, i32 noundef -186646525, i8 noundef zeroext %1026)
  %tuner1_adc = getelementptr inbounds %struct.stv0900_init_params, ptr %p_init, i32 0, i32 5
  %1027 = ptrtoint ptr %tuner1_adc to i32
  call void @__asan_load4_noabort(i32 %1027)
  %1028 = load i32, ptr %tuner1_adc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1028)
  %cond139 = icmp eq i32 %1028, 1
  br i1 %cond139, label %sw.bb102, label %sw.epilog.sw.epilog104_crit_edge

sw.epilog.sw.epilog104_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog104

sw.bb102:                                         ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i477) #8
  %1029 = getelementptr inbounds [3 x i8], ptr %data.i477, i32 0, i32 1
  %1030 = getelementptr inbounds [3 x i8], ptr %data.i477, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i478) #8
  %1031 = getelementptr inbounds i8, ptr %i2cmsg.i478, i32 4
  %1032 = ptrtoint ptr %1031 to i32
  call void @__asan_store4_noabort(i32 %1032)
  store i32 262143, ptr %1031, align 4
  %1033 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %1033)
  %1034 = load i8, ptr %i2c_addr.i, align 4
  %conv.i480 = zext i8 %1034 to i16
  %1035 = ptrtoint ptr %i2cmsg.i478 to i32
  call void @__asan_store2_noabort(i32 %1035)
  store i16 %conv.i480, ptr %i2cmsg.i478, align 4
  %flags.i481 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i478, i32 0, i32 1
  %1036 = ptrtoint ptr %flags.i481 to i32
  call void @__asan_store2_noabort(i32 %1036)
  store i16 0, ptr %flags.i481, align 2
  %buf.i483 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i478, i32 0, i32 3
  %1037 = ptrtoint ptr %buf.i483 to i32
  call void @__asan_store4_noabort(i32 %1037)
  store ptr %data.i477, ptr %buf.i483, align 4
  %1038 = ptrtoint ptr %data.i477 to i32
  call void @__asan_store1_noabort(i32 %1038)
  store i8 -15, ptr %data.i477, align 1
  %1039 = ptrtoint ptr %1029 to i32
  call void @__asan_store1_noabort(i32 %1039)
  store i8 -32, ptr %1029, align 1
  %1040 = ptrtoint ptr %1030 to i32
  call void @__asan_store1_noabort(i32 %1040)
  store i8 38, ptr %1030, align 1
  %1041 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %1041)
  %1042 = load ptr, ptr %i2c_adap.i, align 4
  %call.i485 = call i32 @i2c_transfer(ptr noundef %1042, ptr noundef nonnull %i2cmsg.i478, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i485)
  %cmp.not.i486 = icmp eq i32 %call.i485, 1
  br i1 %cmp.not.i486, label %sw.bb102.stv0900_write_reg.exit491_crit_edge, label %do.body.i488

sw.bb102.stv0900_write_reg.exit491_crit_edge:     ; preds = %sw.bb102
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit491

do.body.i488:                                     ; preds = %sw.bb102
  %1043 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1043)
  %tobool.not.i487 = icmp eq i32 %1043, 0
  br i1 %tobool.not.i487, label %do.body.i488.stv0900_write_reg.exit491_crit_edge, label %do.end.i490

do.body.i488.stv0900_write_reg.exit491_crit_edge: ; preds = %do.body.i488
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit491

do.end.i490:                                      ; preds = %do.body.i488
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i489 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i485) #11
  br label %stv0900_write_reg.exit491

stv0900_write_reg.exit491:                        ; preds = %do.end.i490, %do.body.i488.stv0900_write_reg.exit491_crit_edge, %sw.bb102.stv0900_write_reg.exit491_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i478) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i477) #8
  br label %sw.epilog104

sw.epilog104:                                     ; preds = %stv0900_write_reg.exit491, %sw.epilog.sw.epilog104_crit_edge
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i492) #8
  %1044 = getelementptr inbounds [3 x i8], ptr %data.i492, i32 0, i32 1
  %1045 = getelementptr inbounds [3 x i8], ptr %data.i492, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i493) #8
  %1046 = getelementptr inbounds i8, ptr %i2cmsg.i493, i32 4
  %1047 = ptrtoint ptr %1046 to i32
  call void @__asan_store4_noabort(i32 %1047)
  store i32 262143, ptr %1046, align 4
  %1048 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %1048)
  %1049 = load i8, ptr %i2c_addr.i, align 4
  %conv.i495 = zext i8 %1049 to i16
  %1050 = ptrtoint ptr %i2cmsg.i493 to i32
  call void @__asan_store2_noabort(i32 %1050)
  store i16 %conv.i495, ptr %i2cmsg.i493, align 4
  %flags.i496 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i493, i32 0, i32 1
  %1051 = ptrtoint ptr %flags.i496 to i32
  call void @__asan_store2_noabort(i32 %1051)
  store i16 0, ptr %flags.i496, align 2
  %buf.i498 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i493, i32 0, i32 3
  %1052 = ptrtoint ptr %buf.i498 to i32
  call void @__asan_store4_noabort(i32 %1052)
  store ptr %data.i492, ptr %buf.i498, align 4
  %1053 = ptrtoint ptr %data.i492 to i32
  call void @__asan_store1_noabort(i32 %1053)
  store i8 -12, ptr %data.i492, align 1
  %1054 = ptrtoint ptr %1044 to i32
  call void @__asan_store1_noabort(i32 %1054)
  store i8 -16, ptr %1044, align 1
  %1055 = ptrtoint ptr %1045 to i32
  call void @__asan_store1_noabort(i32 %1055)
  store i8 1, ptr %1045, align 1
  %1056 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %1056)
  %1057 = load ptr, ptr %i2c_adap.i, align 4
  %call.i500 = call i32 @i2c_transfer(ptr noundef %1057, ptr noundef nonnull %i2cmsg.i493, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i500)
  %cmp.not.i501 = icmp eq i32 %call.i500, 1
  br i1 %cmp.not.i501, label %sw.epilog104.stv0900_write_reg.exit506_crit_edge, label %do.body.i503

sw.epilog104.stv0900_write_reg.exit506_crit_edge: ; preds = %sw.epilog104
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit506

do.body.i503:                                     ; preds = %sw.epilog104
  %1058 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1058)
  %tobool.not.i502 = icmp eq i32 %1058, 0
  br i1 %tobool.not.i502, label %do.body.i503.stv0900_write_reg.exit506_crit_edge, label %do.end.i505

do.body.i503.stv0900_write_reg.exit506_crit_edge: ; preds = %do.body.i503
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit506

do.end.i505:                                      ; preds = %do.body.i503
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i504 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i500) #11
  br label %stv0900_write_reg.exit506

stv0900_write_reg.exit506:                        ; preds = %do.end.i505, %do.body.i503.stv0900_write_reg.exit506_crit_edge, %sw.epilog104.stv0900_write_reg.exit506_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i493) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i492) #8
  %1059 = ptrtoint ptr %tuner2_type to i32
  call void @__asan_load4_noabort(i32 %1059)
  %1060 = load i32, ptr %tuner2_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1060)
  %cond140 = icmp eq i32 %1060, 3
  br i1 %cond140, label %sw.bb106, label %stv0900_write_reg.exit506.sw.epilog108_crit_edge

stv0900_write_reg.exit506.sw.epilog108_crit_edge: ; preds = %stv0900_write_reg.exit506
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog108

sw.bb106:                                         ; preds = %stv0900_write_reg.exit506
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i507) #8
  %1061 = getelementptr inbounds [3 x i8], ptr %data.i507, i32 0, i32 1
  %1062 = getelementptr inbounds [3 x i8], ptr %data.i507, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i508) #8
  %1063 = getelementptr inbounds i8, ptr %i2cmsg.i508, i32 4
  %1064 = ptrtoint ptr %1063 to i32
  call void @__asan_store4_noabort(i32 %1064)
  store i32 262143, ptr %1063, align 4
  %1065 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %1065)
  %1066 = load i8, ptr %i2c_addr.i, align 4
  %conv.i510 = zext i8 %1066 to i16
  %1067 = ptrtoint ptr %i2cmsg.i508 to i32
  call void @__asan_store2_noabort(i32 %1067)
  store i16 %conv.i510, ptr %i2cmsg.i508, align 4
  %flags.i511 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i508, i32 0, i32 1
  %1068 = ptrtoint ptr %flags.i511 to i32
  call void @__asan_store2_noabort(i32 %1068)
  store i16 0, ptr %flags.i511, align 2
  %buf.i513 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i508, i32 0, i32 3
  %1069 = ptrtoint ptr %buf.i513 to i32
  call void @__asan_store4_noabort(i32 %1069)
  store ptr %data.i507, ptr %buf.i513, align 4
  %1070 = ptrtoint ptr %data.i507 to i32
  call void @__asan_store1_noabort(i32 %1070)
  store i8 -14, ptr %data.i507, align 1
  %1071 = ptrtoint ptr %1061 to i32
  call void @__asan_store1_noabort(i32 %1071)
  store i8 -32, ptr %1061, align 1
  %1072 = ptrtoint ptr %1062 to i32
  call void @__asan_store1_noabort(i32 %1072)
  store i8 60, ptr %1062, align 1
  %1073 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %1073)
  %1074 = load ptr, ptr %i2c_adap.i, align 4
  %call.i515 = call i32 @i2c_transfer(ptr noundef %1074, ptr noundef nonnull %i2cmsg.i508, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i515)
  %cmp.not.i516 = icmp eq i32 %call.i515, 1
  br i1 %cmp.not.i516, label %sw.bb106.stv0900_write_reg.exit521_crit_edge, label %do.body.i518

sw.bb106.stv0900_write_reg.exit521_crit_edge:     ; preds = %sw.bb106
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit521

do.body.i518:                                     ; preds = %sw.bb106
  %1075 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1075)
  %tobool.not.i517 = icmp eq i32 %1075, 0
  br i1 %tobool.not.i517, label %do.body.i518.stv0900_write_reg.exit521_crit_edge, label %do.end.i520

do.body.i518.stv0900_write_reg.exit521_crit_edge: ; preds = %do.body.i518
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit521

do.end.i520:                                      ; preds = %do.body.i518
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i519 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i515) #11
  br label %stv0900_write_reg.exit521

stv0900_write_reg.exit521:                        ; preds = %do.end.i520, %do.body.i518.stv0900_write_reg.exit521_crit_edge, %sw.bb106.stv0900_write_reg.exit521_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i508) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i507) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i522) #8
  %1076 = getelementptr inbounds [3 x i8], ptr %data.i522, i32 0, i32 1
  %1077 = getelementptr inbounds [3 x i8], ptr %data.i522, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i523) #8
  %1078 = getelementptr inbounds i8, ptr %i2cmsg.i523, i32 4
  %1079 = ptrtoint ptr %1078 to i32
  call void @__asan_store4_noabort(i32 %1079)
  store i32 262143, ptr %1078, align 4
  %1080 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %1080)
  %1081 = load i8, ptr %i2c_addr.i, align 4
  %conv.i525 = zext i8 %1081 to i16
  %1082 = ptrtoint ptr %i2cmsg.i523 to i32
  call void @__asan_store2_noabort(i32 %1082)
  store i16 %conv.i525, ptr %i2cmsg.i523, align 4
  %flags.i526 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i523, i32 0, i32 1
  %1083 = ptrtoint ptr %flags.i526 to i32
  call void @__asan_store2_noabort(i32 %1083)
  store i16 0, ptr %flags.i526, align 2
  %buf.i528 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i523, i32 0, i32 3
  %1084 = ptrtoint ptr %buf.i528 to i32
  call void @__asan_store4_noabort(i32 %1084)
  store ptr %data.i522, ptr %buf.i528, align 4
  %1085 = ptrtoint ptr %data.i522 to i32
  call void @__asan_store1_noabort(i32 %1085)
  store i8 -14, ptr %data.i522, align 1
  %1086 = ptrtoint ptr %1076 to i32
  call void @__asan_store1_noabort(i32 %1086)
  store i8 -31, ptr %1076, align 1
  %1087 = ptrtoint ptr %1077 to i32
  call void @__asan_store1_noabort(i32 %1087)
  store i8 -122, ptr %1077, align 1
  %1088 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %1088)
  %1089 = load ptr, ptr %i2c_adap.i, align 4
  %call.i530 = call i32 @i2c_transfer(ptr noundef %1089, ptr noundef nonnull %i2cmsg.i523, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i530)
  %cmp.not.i531 = icmp eq i32 %call.i530, 1
  br i1 %cmp.not.i531, label %stv0900_write_reg.exit521.stv0900_write_reg.exit536_crit_edge, label %do.body.i533

stv0900_write_reg.exit521.stv0900_write_reg.exit536_crit_edge: ; preds = %stv0900_write_reg.exit521
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit536

do.body.i533:                                     ; preds = %stv0900_write_reg.exit521
  %1090 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1090)
  %tobool.not.i532 = icmp eq i32 %1090, 0
  br i1 %tobool.not.i532, label %do.body.i533.stv0900_write_reg.exit536_crit_edge, label %do.end.i535

do.body.i533.stv0900_write_reg.exit536_crit_edge: ; preds = %do.body.i533
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit536

do.end.i535:                                      ; preds = %do.body.i533
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i534 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i530) #11
  br label %stv0900_write_reg.exit536

stv0900_write_reg.exit536:                        ; preds = %do.end.i535, %do.body.i533.stv0900_write_reg.exit536_crit_edge, %stv0900_write_reg.exit521.stv0900_write_reg.exit536_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i523) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i522) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i537) #8
  %1091 = getelementptr inbounds [3 x i8], ptr %data.i537, i32 0, i32 1
  %1092 = getelementptr inbounds [3 x i8], ptr %data.i537, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i538) #8
  %1093 = getelementptr inbounds i8, ptr %i2cmsg.i538, i32 4
  %1094 = ptrtoint ptr %1093 to i32
  call void @__asan_store4_noabort(i32 %1094)
  store i32 262143, ptr %1093, align 4
  %1095 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %1095)
  %1096 = load i8, ptr %i2c_addr.i, align 4
  %conv.i540 = zext i8 %1096 to i16
  %1097 = ptrtoint ptr %i2cmsg.i538 to i32
  call void @__asan_store2_noabort(i32 %1097)
  store i16 %conv.i540, ptr %i2cmsg.i538, align 4
  %flags.i541 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i538, i32 0, i32 1
  %1098 = ptrtoint ptr %flags.i541 to i32
  call void @__asan_store2_noabort(i32 %1098)
  store i16 0, ptr %flags.i541, align 2
  %buf.i543 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i538, i32 0, i32 3
  %1099 = ptrtoint ptr %buf.i543 to i32
  call void @__asan_store4_noabort(i32 %1099)
  store ptr %data.i537, ptr %buf.i543, align 4
  %1100 = ptrtoint ptr %data.i537 to i32
  call void @__asan_store1_noabort(i32 %1100)
  store i8 -14, ptr %data.i537, align 1
  %1101 = ptrtoint ptr %1091 to i32
  call void @__asan_store1_noabort(i32 %1101)
  store i8 -18, ptr %1091, align 1
  %1102 = ptrtoint ptr %1092 to i32
  call void @__asan_store1_noabort(i32 %1102)
  store i8 24, ptr %1092, align 1
  %1103 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %1103)
  %1104 = load ptr, ptr %i2c_adap.i, align 4
  %call.i545 = call i32 @i2c_transfer(ptr noundef %1104, ptr noundef nonnull %i2cmsg.i538, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i545)
  %cmp.not.i546 = icmp eq i32 %call.i545, 1
  br i1 %cmp.not.i546, label %stv0900_write_reg.exit536.stv0900_write_reg.exit551_crit_edge, label %do.body.i548

stv0900_write_reg.exit536.stv0900_write_reg.exit551_crit_edge: ; preds = %stv0900_write_reg.exit536
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit551

do.body.i548:                                     ; preds = %stv0900_write_reg.exit536
  %1105 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1105)
  %tobool.not.i547 = icmp eq i32 %1105, 0
  br i1 %tobool.not.i547, label %do.body.i548.stv0900_write_reg.exit551_crit_edge, label %do.end.i550

do.body.i548.stv0900_write_reg.exit551_crit_edge: ; preds = %do.body.i548
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit551

do.end.i550:                                      ; preds = %do.body.i548
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i549 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i545) #11
  br label %stv0900_write_reg.exit551

stv0900_write_reg.exit551:                        ; preds = %do.end.i550, %do.body.i548.stv0900_write_reg.exit551_crit_edge, %stv0900_write_reg.exit536.stv0900_write_reg.exit551_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i538) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i537) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i552) #8
  %1106 = getelementptr inbounds [3 x i8], ptr %data.i552, i32 0, i32 1
  %1107 = getelementptr inbounds [3 x i8], ptr %data.i552, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i553) #8
  %1108 = getelementptr inbounds i8, ptr %i2cmsg.i553, i32 4
  %1109 = ptrtoint ptr %1108 to i32
  call void @__asan_store4_noabort(i32 %1109)
  store i32 262143, ptr %1108, align 4
  %1110 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %1110)
  %1111 = load i8, ptr %i2c_addr.i, align 4
  %conv.i555 = zext i8 %1111 to i16
  %1112 = ptrtoint ptr %i2cmsg.i553 to i32
  call void @__asan_store2_noabort(i32 %1112)
  store i16 %conv.i555, ptr %i2cmsg.i553, align 4
  %flags.i556 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i553, i32 0, i32 1
  %1113 = ptrtoint ptr %flags.i556 to i32
  call void @__asan_store2_noabort(i32 %1113)
  store i16 0, ptr %flags.i556, align 2
  %buf.i558 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i553, i32 0, i32 3
  %1114 = ptrtoint ptr %buf.i558 to i32
  call void @__asan_store4_noabort(i32 %1114)
  store ptr %data.i552, ptr %buf.i558, align 4
  %1115 = ptrtoint ptr %data.i552 to i32
  call void @__asan_store1_noabort(i32 %1115)
  store i8 -14, ptr %data.i552, align 1
  %1116 = ptrtoint ptr %1106 to i32
  call void @__asan_store1_noabort(i32 %1116)
  store i8 -28, ptr %1106, align 1
  %1117 = ptrtoint ptr %1107 to i32
  call void @__asan_store1_noabort(i32 %1117)
  store i8 27, ptr %1107, align 1
  %1118 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %1118)
  %1119 = load ptr, ptr %i2c_adap.i, align 4
  %call.i560 = call i32 @i2c_transfer(ptr noundef %1119, ptr noundef nonnull %i2cmsg.i553, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i560)
  %cmp.not.i561 = icmp eq i32 %call.i560, 1
  br i1 %cmp.not.i561, label %stv0900_write_reg.exit551.stv0900_write_reg.exit566_crit_edge, label %do.body.i563

stv0900_write_reg.exit551.stv0900_write_reg.exit566_crit_edge: ; preds = %stv0900_write_reg.exit551
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit566

do.body.i563:                                     ; preds = %stv0900_write_reg.exit551
  %1120 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1120)
  %tobool.not.i562 = icmp eq i32 %1120, 0
  br i1 %tobool.not.i562, label %do.body.i563.stv0900_write_reg.exit566_crit_edge, label %do.end.i565

do.body.i563.stv0900_write_reg.exit566_crit_edge: ; preds = %do.body.i563
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit566

do.end.i565:                                      ; preds = %do.body.i563
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i564 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i560) #11
  br label %stv0900_write_reg.exit566

stv0900_write_reg.exit566:                        ; preds = %do.end.i565, %do.body.i563.stv0900_write_reg.exit566_crit_edge, %stv0900_write_reg.exit551.stv0900_write_reg.exit566_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i553) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i552) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i567) #8
  %1121 = getelementptr inbounds [3 x i8], ptr %data.i567, i32 0, i32 1
  %1122 = getelementptr inbounds [3 x i8], ptr %data.i567, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i568) #8
  %1123 = getelementptr inbounds i8, ptr %i2cmsg.i568, i32 4
  %1124 = ptrtoint ptr %1123 to i32
  call void @__asan_store4_noabort(i32 %1124)
  store i32 262143, ptr %1123, align 4
  %1125 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %1125)
  %1126 = load i8, ptr %i2c_addr.i, align 4
  %conv.i570 = zext i8 %1126 to i16
  %1127 = ptrtoint ptr %i2cmsg.i568 to i32
  call void @__asan_store2_noabort(i32 %1127)
  store i16 %conv.i570, ptr %i2cmsg.i568, align 4
  %flags.i571 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i568, i32 0, i32 1
  %1128 = ptrtoint ptr %flags.i571 to i32
  call void @__asan_store2_noabort(i32 %1128)
  store i16 0, ptr %flags.i571, align 2
  %buf.i573 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i568, i32 0, i32 3
  %1129 = ptrtoint ptr %buf.i573 to i32
  call void @__asan_store4_noabort(i32 %1129)
  store ptr %data.i567, ptr %buf.i573, align 4
  %1130 = ptrtoint ptr %data.i567 to i32
  call void @__asan_store1_noabort(i32 %1130)
  store i8 -14, ptr %data.i567, align 1
  %1131 = ptrtoint ptr %1121 to i32
  call void @__asan_store1_noabort(i32 %1131)
  store i8 -25, ptr %1121, align 1
  %1132 = ptrtoint ptr %1122 to i32
  call void @__asan_store1_noabort(i32 %1132)
  store i8 5, ptr %1122, align 1
  %1133 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %1133)
  %1134 = load ptr, ptr %i2c_adap.i, align 4
  %call.i575 = call i32 @i2c_transfer(ptr noundef %1134, ptr noundef nonnull %i2cmsg.i568, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i575)
  %cmp.not.i576 = icmp eq i32 %call.i575, 1
  br i1 %cmp.not.i576, label %stv0900_write_reg.exit566.stv0900_write_reg.exit581_crit_edge, label %do.body.i578

stv0900_write_reg.exit566.stv0900_write_reg.exit581_crit_edge: ; preds = %stv0900_write_reg.exit566
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit581

do.body.i578:                                     ; preds = %stv0900_write_reg.exit566
  %1135 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1135)
  %tobool.not.i577 = icmp eq i32 %1135, 0
  br i1 %tobool.not.i577, label %do.body.i578.stv0900_write_reg.exit581_crit_edge, label %do.end.i580

do.body.i578.stv0900_write_reg.exit581_crit_edge: ; preds = %do.body.i578
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit581

do.end.i580:                                      ; preds = %do.body.i578
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i579 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i575) #11
  br label %stv0900_write_reg.exit581

stv0900_write_reg.exit581:                        ; preds = %do.end.i580, %do.body.i578.stv0900_write_reg.exit581_crit_edge, %stv0900_write_reg.exit566.stv0900_write_reg.exit581_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i568) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i567) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i582) #8
  %1136 = getelementptr inbounds [3 x i8], ptr %data.i582, i32 0, i32 1
  %1137 = getelementptr inbounds [3 x i8], ptr %data.i582, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i583) #8
  %1138 = getelementptr inbounds i8, ptr %i2cmsg.i583, i32 4
  %1139 = ptrtoint ptr %1138 to i32
  call void @__asan_store4_noabort(i32 %1139)
  store i32 262143, ptr %1138, align 4
  %1140 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %1140)
  %1141 = load i8, ptr %i2c_addr.i, align 4
  %conv.i585 = zext i8 %1141 to i16
  %1142 = ptrtoint ptr %i2cmsg.i583 to i32
  call void @__asan_store2_noabort(i32 %1142)
  store i16 %conv.i585, ptr %i2cmsg.i583, align 4
  %flags.i586 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i583, i32 0, i32 1
  %1143 = ptrtoint ptr %flags.i586 to i32
  call void @__asan_store2_noabort(i32 %1143)
  store i16 0, ptr %flags.i586, align 2
  %buf.i588 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i583, i32 0, i32 3
  %1144 = ptrtoint ptr %buf.i588 to i32
  call void @__asan_store4_noabort(i32 %1144)
  store ptr %data.i582, ptr %buf.i588, align 4
  %1145 = ptrtoint ptr %data.i582 to i32
  call void @__asan_store1_noabort(i32 %1145)
  store i8 -14, ptr %data.i582, align 1
  %1146 = ptrtoint ptr %1136 to i32
  call void @__asan_store1_noabort(i32 %1146)
  store i8 -24, ptr %1136, align 1
  %1147 = ptrtoint ptr %1137 to i32
  call void @__asan_store1_noabort(i32 %1147)
  store i8 23, ptr %1137, align 1
  %1148 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %1148)
  %1149 = load ptr, ptr %i2c_adap.i, align 4
  %call.i590 = call i32 @i2c_transfer(ptr noundef %1149, ptr noundef nonnull %i2cmsg.i583, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i590)
  %cmp.not.i591 = icmp eq i32 %call.i590, 1
  br i1 %cmp.not.i591, label %stv0900_write_reg.exit581.stv0900_write_reg.exit596_crit_edge, label %do.body.i593

stv0900_write_reg.exit581.stv0900_write_reg.exit596_crit_edge: ; preds = %stv0900_write_reg.exit581
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit596

do.body.i593:                                     ; preds = %stv0900_write_reg.exit581
  %1150 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1150)
  %tobool.not.i592 = icmp eq i32 %1150, 0
  br i1 %tobool.not.i592, label %do.body.i593.stv0900_write_reg.exit596_crit_edge, label %do.end.i595

do.body.i593.stv0900_write_reg.exit596_crit_edge: ; preds = %do.body.i593
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit596

do.end.i595:                                      ; preds = %do.body.i593
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i594 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i590) #11
  br label %stv0900_write_reg.exit596

stv0900_write_reg.exit596:                        ; preds = %do.end.i595, %do.body.i593.stv0900_write_reg.exit596_crit_edge, %stv0900_write_reg.exit581.stv0900_write_reg.exit596_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i583) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i582) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i597) #8
  %1151 = getelementptr inbounds [3 x i8], ptr %data.i597, i32 0, i32 1
  %1152 = getelementptr inbounds [3 x i8], ptr %data.i597, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i598) #8
  %1153 = getelementptr inbounds i8, ptr %i2cmsg.i598, i32 4
  %1154 = ptrtoint ptr %1153 to i32
  call void @__asan_store4_noabort(i32 %1154)
  store i32 262143, ptr %1153, align 4
  %1155 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %1155)
  %1156 = load i8, ptr %i2c_addr.i, align 4
  %conv.i600 = zext i8 %1156 to i16
  %1157 = ptrtoint ptr %i2cmsg.i598 to i32
  call void @__asan_store2_noabort(i32 %1157)
  store i16 %conv.i600, ptr %i2cmsg.i598, align 4
  %flags.i601 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i598, i32 0, i32 1
  %1158 = ptrtoint ptr %flags.i601 to i32
  call void @__asan_store2_noabort(i32 %1158)
  store i16 0, ptr %flags.i601, align 2
  %buf.i603 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i598, i32 0, i32 3
  %1159 = ptrtoint ptr %buf.i603 to i32
  call void @__asan_store4_noabort(i32 %1159)
  store ptr %data.i597, ptr %buf.i603, align 4
  %1160 = ptrtoint ptr %data.i597 to i32
  call void @__asan_store1_noabort(i32 %1160)
  store i8 -14, ptr %data.i597, align 1
  %1161 = ptrtoint ptr %1151 to i32
  call void @__asan_store1_noabort(i32 %1161)
  store i8 -20, ptr %1151, align 1
  %1162 = ptrtoint ptr %1152 to i32
  call void @__asan_store1_noabort(i32 %1162)
  store i8 31, ptr %1152, align 1
  %1163 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %1163)
  %1164 = load ptr, ptr %i2c_adap.i, align 4
  %call.i605 = call i32 @i2c_transfer(ptr noundef %1164, ptr noundef nonnull %i2cmsg.i598, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i605)
  %cmp.not.i606 = icmp eq i32 %call.i605, 1
  br i1 %cmp.not.i606, label %stv0900_write_reg.exit596.stv0900_write_reg.exit611_crit_edge, label %do.body.i608

stv0900_write_reg.exit596.stv0900_write_reg.exit611_crit_edge: ; preds = %stv0900_write_reg.exit596
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit611

do.body.i608:                                     ; preds = %stv0900_write_reg.exit596
  %1165 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1165)
  %tobool.not.i607 = icmp eq i32 %1165, 0
  br i1 %tobool.not.i607, label %do.body.i608.stv0900_write_reg.exit611_crit_edge, label %do.end.i610

do.body.i608.stv0900_write_reg.exit611_crit_edge: ; preds = %do.body.i608
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit611

do.end.i610:                                      ; preds = %do.body.i608
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i609 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i605) #11
  br label %stv0900_write_reg.exit611

stv0900_write_reg.exit611:                        ; preds = %do.end.i610, %do.body.i608.stv0900_write_reg.exit611_crit_edge, %stv0900_write_reg.exit596.stv0900_write_reg.exit611_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i598) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i597) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i612) #8
  %1166 = getelementptr inbounds [3 x i8], ptr %data.i612, i32 0, i32 1
  %1167 = getelementptr inbounds [3 x i8], ptr %data.i612, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i613) #8
  %1168 = getelementptr inbounds i8, ptr %i2cmsg.i613, i32 4
  %1169 = ptrtoint ptr %1168 to i32
  call void @__asan_store4_noabort(i32 %1169)
  store i32 262143, ptr %1168, align 4
  %1170 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %1170)
  %1171 = load i8, ptr %i2c_addr.i, align 4
  %conv.i615 = zext i8 %1171 to i16
  %1172 = ptrtoint ptr %i2cmsg.i613 to i32
  call void @__asan_store2_noabort(i32 %1172)
  store i16 %conv.i615, ptr %i2cmsg.i613, align 4
  %flags.i616 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i613, i32 0, i32 1
  %1173 = ptrtoint ptr %flags.i616 to i32
  call void @__asan_store2_noabort(i32 %1173)
  store i16 0, ptr %flags.i616, align 2
  %buf.i618 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i613, i32 0, i32 3
  %1174 = ptrtoint ptr %buf.i618 to i32
  call void @__asan_store4_noabort(i32 %1174)
  store ptr %data.i612, ptr %buf.i618, align 4
  %1175 = ptrtoint ptr %data.i612 to i32
  call void @__asan_store1_noabort(i32 %1175)
  store i8 -14, ptr %data.i612, align 1
  %1176 = ptrtoint ptr %1166 to i32
  call void @__asan_store1_noabort(i32 %1176)
  store i8 -19, ptr %1166, align 1
  %1177 = ptrtoint ptr %1167 to i32
  call void @__asan_store1_noabort(i32 %1177)
  store i8 0, ptr %1167, align 1
  %1178 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %1178)
  %1179 = load ptr, ptr %i2c_adap.i, align 4
  %call.i620 = call i32 @i2c_transfer(ptr noundef %1179, ptr noundef nonnull %i2cmsg.i613, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i620)
  %cmp.not.i621 = icmp eq i32 %call.i620, 1
  br i1 %cmp.not.i621, label %stv0900_write_reg.exit611.stv0900_write_reg.exit626_crit_edge, label %do.body.i623

stv0900_write_reg.exit611.stv0900_write_reg.exit626_crit_edge: ; preds = %stv0900_write_reg.exit611
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit626

do.body.i623:                                     ; preds = %stv0900_write_reg.exit611
  %1180 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1180)
  %tobool.not.i622 = icmp eq i32 %1180, 0
  br i1 %tobool.not.i622, label %do.body.i623.stv0900_write_reg.exit626_crit_edge, label %do.end.i625

do.body.i623.stv0900_write_reg.exit626_crit_edge: ; preds = %do.body.i623
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit626

do.end.i625:                                      ; preds = %do.body.i623
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i624 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i620) #11
  br label %stv0900_write_reg.exit626

stv0900_write_reg.exit626:                        ; preds = %do.end.i625, %do.body.i623.stv0900_write_reg.exit626_crit_edge, %stv0900_write_reg.exit611.stv0900_write_reg.exit626_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i613) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i612) #8
  br label %sw.epilog108

sw.epilog108:                                     ; preds = %stv0900_write_reg.exit626, %stv0900_write_reg.exit506.sw.epilog108_crit_edge
  %.sink723 = phi i8 [ 3, %stv0900_write_reg.exit626 ], [ 6, %stv0900_write_reg.exit506.sw.epilog108_crit_edge ]
  call void @stv0900_write_bits(ptr noundef %461, i32 noundef -220200848, i8 noundef zeroext %.sink723)
  %tun2_maddress = getelementptr inbounds %struct.stv0900_init_params, ptr %p_init, i32 0, i32 9
  %1181 = ptrtoint ptr %tun2_maddress to i32
  call void @__asan_load1_noabort(i32 %1181)
  %1182 = load i8, ptr %tun2_maddress, align 4
  call void @stv0900_write_bits(ptr noundef %461, i32 noundef -220200957, i8 noundef zeroext %1182)
  %tuner2_adc = getelementptr inbounds %struct.stv0900_init_params, ptr %p_init, i32 0, i32 10
  %1183 = ptrtoint ptr %tuner2_adc to i32
  call void @__asan_load4_noabort(i32 %1183)
  %1184 = load i32, ptr %tuner2_adc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1184)
  %cond141 = icmp eq i32 %1184, 1
  br i1 %cond141, label %sw.bb109, label %sw.epilog108.sw.epilog111_crit_edge

sw.epilog108.sw.epilog111_crit_edge:              ; preds = %sw.epilog108
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog111

sw.bb109:                                         ; preds = %sw.epilog108
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i627) #8
  %1185 = getelementptr inbounds [3 x i8], ptr %data.i627, i32 0, i32 1
  %1186 = getelementptr inbounds [3 x i8], ptr %data.i627, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i628) #8
  %1187 = getelementptr inbounds i8, ptr %i2cmsg.i628, i32 4
  %1188 = ptrtoint ptr %1187 to i32
  call void @__asan_store4_noabort(i32 %1188)
  store i32 262143, ptr %1187, align 4
  %1189 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %1189)
  %1190 = load i8, ptr %i2c_addr.i, align 4
  %conv.i630 = zext i8 %1190 to i16
  %1191 = ptrtoint ptr %i2cmsg.i628 to i32
  call void @__asan_store2_noabort(i32 %1191)
  store i16 %conv.i630, ptr %i2cmsg.i628, align 4
  %flags.i631 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i628, i32 0, i32 1
  %1192 = ptrtoint ptr %flags.i631 to i32
  call void @__asan_store2_noabort(i32 %1192)
  store i16 0, ptr %flags.i631, align 2
  %buf.i633 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i628, i32 0, i32 3
  %1193 = ptrtoint ptr %buf.i633 to i32
  call void @__asan_store4_noabort(i32 %1193)
  store ptr %data.i627, ptr %buf.i633, align 4
  %1194 = ptrtoint ptr %data.i627 to i32
  call void @__asan_store1_noabort(i32 %1194)
  store i8 -15, ptr %data.i627, align 1
  %1195 = ptrtoint ptr %1185 to i32
  call void @__asan_store1_noabort(i32 %1195)
  store i8 -30, ptr %1185, align 1
  %1196 = ptrtoint ptr %1186 to i32
  call void @__asan_store1_noabort(i32 %1196)
  store i8 38, ptr %1186, align 1
  %1197 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %1197)
  %1198 = load ptr, ptr %i2c_adap.i, align 4
  %call.i635 = call i32 @i2c_transfer(ptr noundef %1198, ptr noundef nonnull %i2cmsg.i628, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i635)
  %cmp.not.i636 = icmp eq i32 %call.i635, 1
  br i1 %cmp.not.i636, label %sw.bb109.stv0900_write_reg.exit641_crit_edge, label %do.body.i638

sw.bb109.stv0900_write_reg.exit641_crit_edge:     ; preds = %sw.bb109
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit641

do.body.i638:                                     ; preds = %sw.bb109
  %1199 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1199)
  %tobool.not.i637 = icmp eq i32 %1199, 0
  br i1 %tobool.not.i637, label %do.body.i638.stv0900_write_reg.exit641_crit_edge, label %do.end.i640

do.body.i638.stv0900_write_reg.exit641_crit_edge: ; preds = %do.body.i638
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit641

do.end.i640:                                      ; preds = %do.body.i638
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i639 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i635) #11
  br label %stv0900_write_reg.exit641

stv0900_write_reg.exit641:                        ; preds = %do.end.i640, %do.body.i638.stv0900_write_reg.exit641_crit_edge, %sw.bb109.stv0900_write_reg.exit641_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i628) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i627) #8
  br label %sw.epilog111

sw.epilog111:                                     ; preds = %stv0900_write_reg.exit641, %sw.epilog108.sw.epilog111_crit_edge
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i642) #8
  %1200 = getelementptr inbounds [3 x i8], ptr %data.i642, i32 0, i32 1
  %1201 = getelementptr inbounds [3 x i8], ptr %data.i642, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i643) #8
  %1202 = getelementptr inbounds i8, ptr %i2cmsg.i643, i32 4
  %1203 = ptrtoint ptr %1202 to i32
  call void @__asan_store4_noabort(i32 %1203)
  store i32 262143, ptr %1202, align 4
  %1204 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %1204)
  %1205 = load i8, ptr %i2c_addr.i, align 4
  %conv.i645 = zext i8 %1205 to i16
  %1206 = ptrtoint ptr %i2cmsg.i643 to i32
  call void @__asan_store2_noabort(i32 %1206)
  store i16 %conv.i645, ptr %i2cmsg.i643, align 4
  %flags.i646 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i643, i32 0, i32 1
  %1207 = ptrtoint ptr %flags.i646 to i32
  call void @__asan_store2_noabort(i32 %1207)
  store i16 0, ptr %flags.i646, align 2
  %buf.i648 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i643, i32 0, i32 3
  %1208 = ptrtoint ptr %buf.i648 to i32
  call void @__asan_store4_noabort(i32 %1208)
  store ptr %data.i642, ptr %buf.i648, align 4
  %1209 = ptrtoint ptr %data.i642 to i32
  call void @__asan_store1_noabort(i32 %1209)
  store i8 -14, ptr %data.i642, align 1
  %1210 = ptrtoint ptr %1200 to i32
  call void @__asan_store1_noabort(i32 %1210)
  store i8 -16, ptr %1200, align 1
  %1211 = ptrtoint ptr %1201 to i32
  call void @__asan_store1_noabort(i32 %1211)
  store i8 1, ptr %1201, align 1
  %1212 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %1212)
  %1213 = load ptr, ptr %i2c_adap.i, align 4
  %call.i650 = call i32 @i2c_transfer(ptr noundef %1213, ptr noundef nonnull %i2cmsg.i643, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i650)
  %cmp.not.i651 = icmp eq i32 %call.i650, 1
  br i1 %cmp.not.i651, label %sw.epilog111.stv0900_write_reg.exit656_crit_edge, label %do.body.i653

sw.epilog111.stv0900_write_reg.exit656_crit_edge: ; preds = %sw.epilog111
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit656

do.body.i653:                                     ; preds = %sw.epilog111
  %1214 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1214)
  %tobool.not.i652 = icmp eq i32 %1214, 0
  br i1 %tobool.not.i652, label %do.body.i653.stv0900_write_reg.exit656_crit_edge, label %do.end.i655

do.body.i653.stv0900_write_reg.exit656_crit_edge: ; preds = %do.body.i653
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit656

do.end.i655:                                      ; preds = %do.body.i653
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i654 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i650) #11
  br label %stv0900_write_reg.exit656

stv0900_write_reg.exit656:                        ; preds = %do.end.i655, %do.body.i653.stv0900_write_reg.exit656_crit_edge, %sw.epilog111.stv0900_write_reg.exit656_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i643) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i642) #8
  %tun1_iq_inv = getelementptr inbounds %struct.stv0900_init_params, ptr %p_init, i32 0, i32 7
  %1215 = ptrtoint ptr %tun1_iq_inv to i32
  call void @__asan_load4_noabort(i32 %1215)
  %1216 = load i32, ptr %tun1_iq_inv, align 4
  %conv112 = trunc i32 %1216 to i8
  call void @stv0900_write_bits(ptr noundef %461, i32 noundef -186580864, i8 noundef zeroext %conv112)
  %tun2_iq_inv = getelementptr inbounds %struct.stv0900_init_params, ptr %p_init, i32 0, i32 12
  %1217 = ptrtoint ptr %tun2_iq_inv to i32
  call void @__asan_load4_noabort(i32 %1217)
  %1218 = load i32, ptr %tun2_iq_inv, align 4
  %conv113 = trunc i32 %1218 to i8
  call void @stv0900_write_bits(ptr noundef %461, i32 noundef -220135296, i8 noundef zeroext %conv113)
  %cmp.i664 = icmp eq ptr %461, null
  br i1 %cmp.i664, label %stv0900_write_reg.exit656.stv0900_set_mclk.exit_crit_edge, label %if.end.i667

stv0900_write_reg.exit656.stv0900_set_mclk.exit_crit_edge: ; preds = %stv0900_write_reg.exit656
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_set_mclk.exit

if.end.i667:                                      ; preds = %stv0900_write_reg.exit656
  %errs.i665 = getelementptr inbounds %struct.stv0900_internal, ptr %461, i32 0, i32 22
  %1219 = ptrtoint ptr %errs.i665 to i32
  call void @__asan_load4_noabort(i32 %1219)
  %1220 = load i32, ptr %errs.i665, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1220)
  %tobool.not.i666 = icmp eq i32 %1220, 0
  br i1 %tobool.not.i666, label %do.body.i668, label %if.end.i667.stv0900_set_mclk.exit_crit_edge

if.end.i667.stv0900_set_mclk.exit_crit_edge:      ; preds = %if.end.i667
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_set_mclk.exit

do.body.i668:                                     ; preds = %if.end.i667
  %1221 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1221)
  %tobool3.not.i = icmp eq i32 %1221, 0
  br i1 %tobool3.not.i, label %do.body.i668.do.end8.i_crit_edge, label %do.end.i670

do.body.i668.do.end8.i_crit_edge:                 ; preds = %do.body.i668
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i

do.end.i670:                                      ; preds = %do.body.i668
  call void @__sanitizer_cov_trace_pc() #10
  %1222 = ptrtoint ptr %461 to i32
  call void @__asan_load4_noabort(i32 %1222)
  %1223 = load i32, ptr %461, align 4
  %call.i669 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.97, i32 noundef 135000000, i32 noundef %1223) #11
  br label %do.end8.i

do.end8.i:                                        ; preds = %do.end.i670, %do.body.i668.do.end8.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i.i.i661) #8
  %1224 = getelementptr inbounds [2 x i8], ptr %b0.i.i.i661, i32 0, i32 1
  %1225 = ptrtoint ptr %b0.i.i.i661 to i32
  call void @__asan_store1_noabort(i32 %1225)
  store i8 -15, ptr %b0.i.i.i661, align 1
  %1226 = ptrtoint ptr %1224 to i32
  call void @__asan_store1_noabort(i32 %1226)
  store i8 -74, ptr %1224, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i.i.i662) #8
  %1227 = ptrtoint ptr %buf.i.i.i662 to i32
  call void @__asan_store1_noabort(i32 %1227)
  store i8 0, ptr %buf.i.i.i662, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i.i663) #8
  %1228 = getelementptr inbounds i8, ptr %msg.i.i.i663, i32 4
  %1229 = call ptr @memset(ptr %1228, i32 255, i32 16)
  %1230 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %1230)
  %1231 = load i8, ptr %i2c_addr.i, align 4
  %conv6.i10.i.i672 = zext i8 %1231 to i16
  %1232 = ptrtoint ptr %msg.i.i.i663 to i32
  call void @__asan_store2_noabort(i32 %1232)
  store i16 %conv6.i10.i.i672, ptr %msg.i.i.i663, align 4
  %flags.i.i.i673 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i663, i32 0, i32 1
  %1233 = ptrtoint ptr %flags.i.i.i673 to i32
  call void @__asan_store2_noabort(i32 %1233)
  store i16 0, ptr %flags.i.i.i673, align 2
  %1234 = ptrtoint ptr %1228 to i32
  call void @__asan_store2_noabort(i32 %1234)
  store i16 2, ptr %1228, align 4
  %buf7.i.i.i674 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i663, i32 0, i32 3
  %1235 = ptrtoint ptr %buf7.i.i.i674 to i32
  call void @__asan_store4_noabort(i32 %1235)
  store ptr %b0.i.i.i661, ptr %buf7.i.i.i674, align 4
  %arrayinit.element8.i.i.i675 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i663, i32 1
  %1236 = ptrtoint ptr %arrayinit.element8.i.i.i675 to i32
  call void @__asan_store2_noabort(i32 %1236)
  store i16 %conv6.i10.i.i672, ptr %arrayinit.element8.i.i.i675, align 4
  %flags12.i.i.i676 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i663, i32 1, i32 1
  %1237 = ptrtoint ptr %flags12.i.i.i676 to i32
  call void @__asan_store2_noabort(i32 %1237)
  store i16 1, ptr %flags12.i.i.i676, align 2
  %len13.i.i.i677 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i663, i32 1, i32 2
  %1238 = ptrtoint ptr %len13.i.i.i677 to i32
  call void @__asan_store2_noabort(i32 %1238)
  store i16 1, ptr %len13.i.i.i677, align 4
  %buf14.i.i.i678 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i663, i32 1, i32 3
  %1239 = ptrtoint ptr %buf14.i.i.i678 to i32
  call void @__asan_store4_noabort(i32 %1239)
  store ptr %buf.i.i.i662, ptr %buf14.i.i.i678, align 4
  %1240 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %1240)
  %1241 = load ptr, ptr %i2c_adap.i, align 4
  %call.i.i.i680 = call i32 @i2c_transfer(ptr noundef %1241, ptr noundef nonnull %msg.i.i.i663, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i680)
  %cmp.not.i.i.i681 = icmp eq i32 %call.i.i.i680, 2
  br i1 %cmp.not.i.i.i681, label %do.end8.i.stv0900_get_bits.exit.i691_crit_edge, label %do.body.i.i.i683

do.end8.i.stv0900_get_bits.exit.i691_crit_edge:   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_get_bits.exit.i691

do.body.i.i.i683:                                 ; preds = %do.end8.i
  %1242 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1242)
  %tobool.not.i.i.i682 = icmp eq i32 %1242, 0
  br i1 %tobool.not.i.i.i682, label %do.body.i.i.i683.stv0900_get_bits.exit.i691_crit_edge, label %do.end.i.i.i685

do.body.i.i.i683.stv0900_get_bits.exit.i691_crit_edge: ; preds = %do.body.i.i.i683
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_get_bits.exit.i691

do.end.i.i.i685:                                  ; preds = %do.body.i.i.i683
  call void @__sanitizer_cov_trace_pc() #10
  %call20.i.i.i684 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i.i.i680, i32 noundef 61878) #11
  br label %stv0900_get_bits.exit.i691

stv0900_get_bits.exit.i691:                       ; preds = %do.end.i.i.i685, %do.body.i.i.i683.stv0900_get_bits.exit.i691_crit_edge, %do.end8.i.stv0900_get_bits.exit.i691_crit_edge
  %1243 = ptrtoint ptr %buf.i.i.i662 to i32
  call void @__asan_load1_noabort(i32 %1243)
  %1244 = load i8, ptr %buf.i.i.i662, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i663) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i.i.i662) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i.i.i661) #8
  %1245 = and i8 %1244, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1245)
  %cmp10.not.i = icmp eq i8 %1245, 0
  %mul.i = select i1 %cmp10.not.i, i32 810000000, i32 540000000
  %1246 = ptrtoint ptr %461 to i32
  call void @__asan_load4_noabort(i32 %1246)
  %1247 = load i32, ptr %461, align 4
  %div.i = udiv i32 %mul.i, %1247
  %1248 = trunc i32 %div.i to i8
  %conv13.i = add i8 %1248, -1
  call void @stv0900_write_bits(ptr noundef nonnull %461, i32 noundef -239927041, i8 noundef zeroext %conv13.i) #8
  %1249 = ptrtoint ptr %461 to i32
  call void @__asan_load4_noabort(i32 %1249)
  %1250 = load i32, ptr %461, align 4
  %call15.i = call fastcc i32 @stv0900_get_mclk_freq(ptr noundef nonnull %461, i32 noundef %1250) #8
  %mclk16.i = getelementptr inbounds %struct.stv0900_internal, ptr %461, i32 0, i32 1
  %1251 = ptrtoint ptr %mclk16.i to i32
  call void @__asan_store4_noabort(i32 %1251)
  store i32 %call15.i, ptr %mclk16.i, align 4
  %div18.i = sdiv i32 %call15.i, 704000
  %conv19.i = trunc i32 %div18.i to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i659) #8
  %1252 = getelementptr inbounds [3 x i8], ptr %data.i.i659, i32 0, i32 1
  %1253 = getelementptr inbounds [3 x i8], ptr %data.i.i659, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i.i660) #8
  %1254 = getelementptr inbounds i8, ptr %i2cmsg.i.i660, i32 4
  %1255 = ptrtoint ptr %1254 to i32
  call void @__asan_store4_noabort(i32 %1255)
  store i32 262143, ptr %1254, align 4
  %1256 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %1256)
  %1257 = load i8, ptr %i2c_addr.i, align 4
  %conv.i.i686 = zext i8 %1257 to i16
  %1258 = ptrtoint ptr %i2cmsg.i.i660 to i32
  call void @__asan_store2_noabort(i32 %1258)
  store i16 %conv.i.i686, ptr %i2cmsg.i.i660, align 4
  %flags.i.i687 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i.i660, i32 0, i32 1
  %1259 = ptrtoint ptr %flags.i.i687 to i32
  call void @__asan_store2_noabort(i32 %1259)
  store i16 0, ptr %flags.i.i687, align 2
  %buf.i.i688 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i.i660, i32 0, i32 3
  %1260 = ptrtoint ptr %buf.i.i688 to i32
  call void @__asan_store4_noabort(i32 %1260)
  store ptr %data.i.i659, ptr %buf.i.i688, align 4
  %1261 = ptrtoint ptr %data.i.i659 to i32
  call void @__asan_store1_noabort(i32 %1261)
  store i8 -15, ptr %data.i.i659, align 1
  %1262 = ptrtoint ptr %1252 to i32
  call void @__asan_store1_noabort(i32 %1262)
  store i8 -87, ptr %1252, align 1
  %1263 = ptrtoint ptr %1253 to i32
  call void @__asan_store1_noabort(i32 %1263)
  store i8 %conv19.i, ptr %1253, align 1
  %1264 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %1264)
  %1265 = load ptr, ptr %i2c_adap.i, align 4
  %call.i.i689 = call i32 @i2c_transfer(ptr noundef %1265, ptr noundef nonnull %i2cmsg.i.i660, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i689)
  %cmp.not.i.i690 = icmp eq i32 %call.i.i689, 1
  br i1 %cmp.not.i.i690, label %stv0900_get_bits.exit.i691.stv0900_write_reg.exit.i699_crit_edge, label %do.body.i.i693

stv0900_get_bits.exit.i691.stv0900_write_reg.exit.i699_crit_edge: ; preds = %stv0900_get_bits.exit.i691
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit.i699

do.body.i.i693:                                   ; preds = %stv0900_get_bits.exit.i691
  %1266 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1266)
  %tobool.not.i.i692 = icmp eq i32 %1266, 0
  br i1 %tobool.not.i.i692, label %do.body.i.i693.stv0900_write_reg.exit.i699_crit_edge, label %do.end.i.i695

do.body.i.i693.stv0900_write_reg.exit.i699_crit_edge: ; preds = %do.body.i.i693
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit.i699

do.end.i.i695:                                    ; preds = %do.body.i.i693
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i.i694 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i.i689) #11
  br label %stv0900_write_reg.exit.i699

stv0900_write_reg.exit.i699:                      ; preds = %do.end.i.i695, %do.body.i.i693.stv0900_write_reg.exit.i699_crit_edge, %stv0900_get_bits.exit.i691.stv0900_write_reg.exit.i699_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i.i660) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i659) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i1.i657) #8
  %1267 = getelementptr inbounds [3 x i8], ptr %data.i1.i657, i32 0, i32 1
  %1268 = getelementptr inbounds [3 x i8], ptr %data.i1.i657, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i2.i658) #8
  %1269 = getelementptr inbounds i8, ptr %i2cmsg.i2.i658, i32 4
  %1270 = ptrtoint ptr %1269 to i32
  call void @__asan_store4_noabort(i32 %1270)
  store i32 262143, ptr %1269, align 4
  %1271 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %1271)
  %1272 = load i8, ptr %i2c_addr.i, align 4
  %conv.i4.i696 = zext i8 %1272 to i16
  %1273 = ptrtoint ptr %i2cmsg.i2.i658 to i32
  call void @__asan_store2_noabort(i32 %1273)
  store i16 %conv.i4.i696, ptr %i2cmsg.i2.i658, align 4
  %flags.i5.i697 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i2.i658, i32 0, i32 1
  %1274 = ptrtoint ptr %flags.i5.i697 to i32
  call void @__asan_store2_noabort(i32 %1274)
  store i16 0, ptr %flags.i5.i697, align 2
  %buf.i7.i698 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i2.i658, i32 0, i32 3
  %1275 = ptrtoint ptr %buf.i7.i698 to i32
  call void @__asan_store4_noabort(i32 %1275)
  store ptr %data.i1.i657, ptr %buf.i7.i698, align 4
  %1276 = ptrtoint ptr %data.i1.i657 to i32
  call void @__asan_store1_noabort(i32 %1276)
  store i8 -15, ptr %data.i1.i657, align 1
  %1277 = ptrtoint ptr %1267 to i32
  call void @__asan_store1_noabort(i32 %1277)
  store i8 -86, ptr %1267, align 1
  %1278 = ptrtoint ptr %1268 to i32
  call void @__asan_store1_noabort(i32 %1278)
  store i8 %conv19.i, ptr %1268, align 1
  %1279 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %1279)
  %1280 = load ptr, ptr %i2c_adap.i, align 4
  %call.i9.i = call i32 @i2c_transfer(ptr noundef %1280, ptr noundef nonnull %i2cmsg.i2.i658, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i9.i)
  %cmp.not.i10.i = icmp eq i32 %call.i9.i, 1
  br i1 %cmp.not.i10.i, label %stv0900_write_reg.exit.i699.stv0900_write_reg.exit15.i_crit_edge, label %do.body.i12.i

stv0900_write_reg.exit.i699.stv0900_write_reg.exit15.i_crit_edge: ; preds = %stv0900_write_reg.exit.i699
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit15.i

do.body.i12.i:                                    ; preds = %stv0900_write_reg.exit.i699
  %1281 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1281)
  %tobool.not.i11.i = icmp eq i32 %1281, 0
  br i1 %tobool.not.i11.i, label %do.body.i12.i.stv0900_write_reg.exit15.i_crit_edge, label %do.end.i14.i

do.body.i12.i.stv0900_write_reg.exit15.i_crit_edge: ; preds = %do.body.i12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit15.i

do.end.i14.i:                                     ; preds = %do.body.i12.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i9.i) #11
  br label %stv0900_write_reg.exit15.i

stv0900_write_reg.exit15.i:                       ; preds = %do.end.i14.i, %do.body.i12.i.stv0900_write_reg.exit15.i_crit_edge, %stv0900_write_reg.exit.i699.stv0900_write_reg.exit15.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i2.i658) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i1.i657) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i16.i) #8
  %1282 = getelementptr inbounds [3 x i8], ptr %data.i16.i, i32 0, i32 1
  %1283 = getelementptr inbounds [3 x i8], ptr %data.i16.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i17.i) #8
  %1284 = getelementptr inbounds i8, ptr %i2cmsg.i17.i, i32 4
  %1285 = ptrtoint ptr %1284 to i32
  call void @__asan_store4_noabort(i32 %1285)
  store i32 262143, ptr %1284, align 4
  %1286 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %1286)
  %1287 = load i8, ptr %i2c_addr.i, align 4
  %conv.i19.i = zext i8 %1287 to i16
  %1288 = ptrtoint ptr %i2cmsg.i17.i to i32
  call void @__asan_store2_noabort(i32 %1288)
  store i16 %conv.i19.i, ptr %i2cmsg.i17.i, align 4
  %flags.i20.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i17.i, i32 0, i32 1
  %1289 = ptrtoint ptr %flags.i20.i to i32
  call void @__asan_store2_noabort(i32 %1289)
  store i16 0, ptr %flags.i20.i, align 2
  %buf.i22.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i17.i, i32 0, i32 3
  %1290 = ptrtoint ptr %buf.i22.i to i32
  call void @__asan_store4_noabort(i32 %1290)
  store ptr %data.i16.i, ptr %buf.i22.i, align 4
  %1291 = ptrtoint ptr %data.i16.i to i32
  call void @__asan_store1_noabort(i32 %1291)
  store i8 -15, ptr %data.i16.i, align 1
  %1292 = ptrtoint ptr %1282 to i32
  call void @__asan_store1_noabort(i32 %1292)
  store i8 -103, ptr %1282, align 1
  %1293 = ptrtoint ptr %1283 to i32
  call void @__asan_store1_noabort(i32 %1293)
  store i8 %conv19.i, ptr %1283, align 1
  %1294 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %1294)
  %1295 = load ptr, ptr %i2c_adap.i, align 4
  %call.i24.i = call i32 @i2c_transfer(ptr noundef %1295, ptr noundef nonnull %i2cmsg.i17.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i24.i)
  %cmp.not.i25.i = icmp eq i32 %call.i24.i, 1
  br i1 %cmp.not.i25.i, label %stv0900_write_reg.exit15.i.stv0900_write_reg.exit30.i_crit_edge, label %do.body.i27.i

stv0900_write_reg.exit15.i.stv0900_write_reg.exit30.i_crit_edge: ; preds = %stv0900_write_reg.exit15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit30.i

do.body.i27.i:                                    ; preds = %stv0900_write_reg.exit15.i
  %1296 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1296)
  %tobool.not.i26.i = icmp eq i32 %1296, 0
  br i1 %tobool.not.i26.i, label %do.body.i27.i.stv0900_write_reg.exit30.i_crit_edge, label %do.end.i29.i

do.body.i27.i.stv0900_write_reg.exit30.i_crit_edge: ; preds = %do.body.i27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit30.i

do.end.i29.i:                                     ; preds = %do.body.i27.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i24.i) #11
  br label %stv0900_write_reg.exit30.i

stv0900_write_reg.exit30.i:                       ; preds = %do.end.i29.i, %do.body.i27.i.stv0900_write_reg.exit30.i_crit_edge, %stv0900_write_reg.exit15.i.stv0900_write_reg.exit30.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i17.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i16.i) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i31.i) #8
  %1297 = getelementptr inbounds [3 x i8], ptr %data.i31.i, i32 0, i32 1
  %1298 = getelementptr inbounds [3 x i8], ptr %data.i31.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i32.i) #8
  %1299 = getelementptr inbounds i8, ptr %i2cmsg.i32.i, i32 4
  %1300 = ptrtoint ptr %1299 to i32
  call void @__asan_store4_noabort(i32 %1300)
  store i32 262143, ptr %1299, align 4
  %1301 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %1301)
  %1302 = load i8, ptr %i2c_addr.i, align 4
  %conv.i34.i = zext i8 %1302 to i16
  %1303 = ptrtoint ptr %i2cmsg.i32.i to i32
  call void @__asan_store2_noabort(i32 %1303)
  store i16 %conv.i34.i, ptr %i2cmsg.i32.i, align 4
  %flags.i35.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i32.i, i32 0, i32 1
  %1304 = ptrtoint ptr %flags.i35.i to i32
  call void @__asan_store2_noabort(i32 %1304)
  store i16 0, ptr %flags.i35.i, align 2
  %buf.i37.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i32.i, i32 0, i32 3
  %1305 = ptrtoint ptr %buf.i37.i to i32
  call void @__asan_store4_noabort(i32 %1305)
  store ptr %data.i31.i, ptr %buf.i37.i, align 4
  %1306 = ptrtoint ptr %data.i31.i to i32
  call void @__asan_store1_noabort(i32 %1306)
  store i8 -15, ptr %data.i31.i, align 1
  %1307 = ptrtoint ptr %1297 to i32
  call void @__asan_store1_noabort(i32 %1307)
  store i8 -102, ptr %1297, align 1
  %1308 = ptrtoint ptr %1298 to i32
  call void @__asan_store1_noabort(i32 %1308)
  store i8 %conv19.i, ptr %1298, align 1
  %1309 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %1309)
  %1310 = load ptr, ptr %i2c_adap.i, align 4
  %call.i39.i = call i32 @i2c_transfer(ptr noundef %1310, ptr noundef nonnull %i2cmsg.i32.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i39.i)
  %cmp.not.i40.i = icmp eq i32 %call.i39.i, 1
  br i1 %cmp.not.i40.i, label %stv0900_write_reg.exit30.i.stv0900_write_reg.exit45.i_crit_edge, label %do.body.i42.i

stv0900_write_reg.exit30.i.stv0900_write_reg.exit45.i_crit_edge: ; preds = %stv0900_write_reg.exit30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit45.i

do.body.i42.i:                                    ; preds = %stv0900_write_reg.exit30.i
  %1311 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1311)
  %tobool.not.i41.i = icmp eq i32 %1311, 0
  br i1 %tobool.not.i41.i, label %do.body.i42.i.stv0900_write_reg.exit45.i_crit_edge, label %do.end.i44.i

do.body.i42.i.stv0900_write_reg.exit45.i_crit_edge: ; preds = %do.body.i42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit45.i

do.end.i44.i:                                     ; preds = %do.body.i42.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i43.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i39.i) #11
  br label %stv0900_write_reg.exit45.i

stv0900_write_reg.exit45.i:                       ; preds = %do.end.i44.i, %do.body.i42.i.stv0900_write_reg.exit45.i_crit_edge, %stv0900_write_reg.exit30.i.stv0900_write_reg.exit45.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i32.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i31.i) #8
  br label %stv0900_set_mclk.exit

stv0900_set_mclk.exit:                            ; preds = %stv0900_write_reg.exit45.i, %if.end.i667.stv0900_set_mclk.exit_crit_edge, %stv0900_write_reg.exit656.stv0900_set_mclk.exit_crit_edge
  call void @msleep(i32 noundef 3) #8
  %clkmode115 = getelementptr inbounds %struct.stv0900_internal, ptr %461, i32 0, i32 19
  %1312 = ptrtoint ptr %clkmode115 to i32
  call void @__asan_load1_noabort(i32 %1312)
  %1313 = load i8, ptr %clkmode115, align 1
  %1314 = zext i8 %1313 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1314, ptr @__sancov_gen_cov_switch_values.102)
  switch i8 %1313, label %sw.default121 [
    i8 0, label %stv0900_set_mclk.exit.sw.bb117_crit_edge
    i8 2, label %stv0900_set_mclk.exit.sw.bb117_crit_edge736
  ]

stv0900_set_mclk.exit.sw.bb117_crit_edge736:      ; preds = %stv0900_set_mclk.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb117

stv0900_set_mclk.exit.sw.bb117_crit_edge:         ; preds = %stv0900_set_mclk.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb117

sw.bb117:                                         ; preds = %stv0900_set_mclk.exit.sw.bb117_crit_edge, %stv0900_set_mclk.exit.sw.bb117_crit_edge736
  %1315 = or i8 %1313, 32
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i700) #8
  %1316 = getelementptr inbounds [3 x i8], ptr %data.i700, i32 0, i32 1
  %1317 = getelementptr inbounds [3 x i8], ptr %data.i700, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i701) #8
  %1318 = getelementptr inbounds i8, ptr %i2cmsg.i701, i32 4
  %1319 = ptrtoint ptr %1318 to i32
  call void @__asan_store4_noabort(i32 %1319)
  store i32 262143, ptr %1318, align 4
  %1320 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %1320)
  %1321 = load i8, ptr %i2c_addr.i, align 4
  %conv.i703 = zext i8 %1321 to i16
  %1322 = ptrtoint ptr %i2cmsg.i701 to i32
  call void @__asan_store2_noabort(i32 %1322)
  store i16 %conv.i703, ptr %i2cmsg.i701, align 4
  %flags.i704 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i701, i32 0, i32 1
  %1323 = ptrtoint ptr %flags.i704 to i32
  call void @__asan_store2_noabort(i32 %1323)
  store i16 0, ptr %flags.i704, align 2
  %buf.i706 = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i701, i32 0, i32 3
  %1324 = ptrtoint ptr %buf.i706 to i32
  call void @__asan_store4_noabort(i32 %1324)
  store ptr %data.i700, ptr %buf.i706, align 4
  %1325 = ptrtoint ptr %data.i700 to i32
  call void @__asan_store1_noabort(i32 %1325)
  store i8 -15, ptr %data.i700, align 1
  %1326 = ptrtoint ptr %1316 to i32
  call void @__asan_store1_noabort(i32 %1326)
  store i8 -74, ptr %1316, align 1
  %1327 = ptrtoint ptr %1317 to i32
  call void @__asan_store1_noabort(i32 %1327)
  store i8 %1315, ptr %1317, align 1
  %1328 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %1328)
  %1329 = load ptr, ptr %i2c_adap.i, align 4
  %call.i708 = call i32 @i2c_transfer(ptr noundef %1329, ptr noundef nonnull %i2cmsg.i701, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i708)
  %cmp.not.i709 = icmp eq i32 %call.i708, 1
  br i1 %cmp.not.i709, label %sw.bb117.stv0900_write_reg.exit714_crit_edge, label %do.body.i711

sw.bb117.stv0900_write_reg.exit714_crit_edge:     ; preds = %sw.bb117
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit714

do.body.i711:                                     ; preds = %sw.bb117
  %1330 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1330)
  %tobool.not.i710 = icmp eq i32 %1330, 0
  br i1 %tobool.not.i710, label %do.body.i711.stv0900_write_reg.exit714_crit_edge, label %do.end.i713

do.body.i711.stv0900_write_reg.exit714_crit_edge: ; preds = %do.body.i711
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit714

do.end.i713:                                      ; preds = %do.body.i711
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i712 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i708) #11
  br label %stv0900_write_reg.exit714

stv0900_write_reg.exit714:                        ; preds = %do.end.i713, %do.body.i711.stv0900_write_reg.exit714_crit_edge, %sw.bb117.stv0900_write_reg.exit714_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i701) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i700) #8
  br label %sw.epilog126

sw.default121:                                    ; preds = %stv0900_set_mclk.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call122 = call zeroext i8 @stv0900_read_reg(ptr noundef %461, i16 noundef zeroext -3658)
  %1331 = and i8 %call122, 2
  %1332 = or i8 %1331, 32
  call void @stv0900_write_reg(ptr noundef %461, i16 noundef zeroext -3658, i8 noundef zeroext %1332)
  br label %sw.epilog126

sw.epilog126:                                     ; preds = %sw.default121, %stv0900_write_reg.exit714
  call void @msleep(i32 noundef 3) #8
  %1333 = ptrtoint ptr %461 to i32
  call void @__asan_load4_noabort(i32 %1333)
  %1334 = load i32, ptr %461, align 4
  %call128 = call fastcc i32 @stv0900_get_mclk_freq(ptr noundef %461, i32 noundef %1334)
  %mclk = getelementptr inbounds %struct.stv0900_internal, ptr %461, i32 0, i32 1
  %1335 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %1335)
  store i32 %call128, ptr %mclk, align 4
  %errs129 = getelementptr inbounds %struct.stv0900_internal, ptr %461, i32 0, i32 22
  %1336 = ptrtoint ptr %errs129 to i32
  call void @__asan_load4_noabort(i32 %1336)
  %1337 = load i32, ptr %errs129, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1337)
  %tobool130.not = icmp eq i32 %1337, 0
  %spec.select = select i1 %tobool130.not, i32 0, i32 3
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog126, %if.else68, %stv0900_read_reg.exit.i.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %if.then29, %if.else.cleanup_crit_edge, %do.end14, %if.then6.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then29 ], [ %spec.select, %sw.epilog126 ], [ 0, %do.end14 ], [ 0, %if.then6.cleanup_crit_edge ], [ 1, %if.else.cleanup_crit_edge ], [ 1, %if.end56.cleanup_crit_edge ], [ 3, %if.else68 ], [ %85, %stv0900_read_reg.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stv0900_release(ptr noundef %fe) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.37) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %config = getelementptr inbounds %struct.stv0900_state, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %config, align 4
  %set_lock_led = getelementptr inbounds %struct.stv0900_config, ptr %4, i32 0, i32 15
  %5 = ptrtoint ptr %set_lock_led to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_lock_led, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %do.end3.if.end8_crit_edge, label %if.then5

do.end3.if.end8_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then5:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %6(ptr noundef %fe, i32 noundef 0) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %do.end3.if.end8_crit_edge
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %dmds_used = getelementptr inbounds %struct.stv0900_internal, ptr %8, i32 0, i32 23
  %9 = ptrtoint ptr %dmds_used to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dmds_used, align 4
  %dec = add i32 %10, -1
  store i32 %dec, ptr %dmds_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %cmp = icmp slt i32 %dec, 1
  br i1 %cmp, label %do.body10, label %if.end8.if.end23_crit_edge

if.end8.if.end23_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

do.body10:                                        ; preds = %if.end8
  %11 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool11.not = icmp eq i32 %11, 0
  br i1 %tobool11.not, label %do.body10.do.end20_crit_edge, label %do.end15

do.body10.do.end20_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end20

do.end15:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37) #11
  br label %do.end20

do.end20:                                         ; preds = %do.end15, %do.body10.do.end20_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %14 = load ptr, ptr @stv0900_first_inode, align 4
  %i2c_adap.i = getelementptr inbounds %struct.stv0900_internal, ptr %13, i32 0, i32 17
  %15 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c_adap.i, align 4
  %i2c_addr.i = getelementptr inbounds %struct.stv0900_internal, ptr %13, i32 0, i32 18
  %17 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %i2c_addr.i, align 4
  %cmp.not.i.i = icmp eq ptr %14, null
  br i1 %cmp.not.i.i, label %do.end20.remove_inode.exit_crit_edge, label %do.end20.land.rhs.i.i_crit_edge

do.end20.land.rhs.i.i_crit_edge:                  ; preds = %do.end20
  br label %land.rhs.i.i

do.end20.remove_inode.exit_crit_edge:             ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %remove_inode.exit

land.rhs.i.i:                                     ; preds = %while.body.i.i.land.rhs.i.i_crit_edge, %do.end20.land.rhs.i.i_crit_edge
  %temp_chip.015.i.i = phi ptr [ %26, %while.body.i.i.land.rhs.i.i_crit_edge ], [ %14, %do.end20.land.rhs.i.i_crit_edge ]
  %19 = ptrtoint ptr %temp_chip.015.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %temp_chip.015.i.i, align 4
  %i2c_adap2.i.i = getelementptr inbounds %struct.stv0900_internal, ptr %20, i32 0, i32 17
  %21 = ptrtoint ptr %i2c_adap2.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c_adap2.i.i, align 4
  %cmp3.not.i.i = icmp eq ptr %22, %16
  br i1 %cmp3.not.i.i, label %lor.rhs.i.i, label %land.rhs.i.i.while.body.i.i_crit_edge

land.rhs.i.i.while.body.i.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

lor.rhs.i.i:                                      ; preds = %land.rhs.i.i
  %i2c_addr5.i.i = getelementptr inbounds %struct.stv0900_internal, ptr %20, i32 0, i32 18
  %23 = ptrtoint ptr %i2c_addr5.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %i2c_addr5.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %18)
  %cmp7.not.i.i = icmp eq i8 %24, %18
  br i1 %cmp7.not.i.i, label %if.then.i, label %lor.rhs.i.i.while.body.i.i_crit_edge

lor.rhs.i.i.while.body.i.i_crit_edge:             ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %lor.rhs.i.i.while.body.i.i_crit_edge, %land.rhs.i.i.while.body.i.i_crit_edge
  %next_inode.i.i = getelementptr inbounds %struct.stv0900_inode, ptr %temp_chip.015.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %next_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %next_inode.i.i, align 4
  %cmp1.not.i.i = icmp eq ptr %26, null
  br i1 %cmp1.not.i.i, label %while.body.i.i.remove_inode.exit_crit_edge, label %while.body.i.i.land.rhs.i.i_crit_edge

while.body.i.i.land.rhs.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i.i

while.body.i.i.remove_inode.exit_crit_edge:       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %remove_inode.exit

if.then.i:                                        ; preds = %lor.rhs.i.i
  %cmp1.i = icmp eq ptr %temp_chip.015.i.i, %14
  br i1 %cmp1.i, label %if.then2.i, label %if.then.i.while.cond.i_crit_edge

if.then.i.while.cond.i_crit_edge:                 ; preds = %if.then.i
  br label %while.cond.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %next_inode.i = getelementptr inbounds %struct.stv0900_inode, ptr %14, i32 0, i32 1
  %27 = ptrtoint ptr %next_inode.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %next_inode.i, align 4
  store ptr %28, ptr @stv0900_first_inode, align 4
  br label %if.end14.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.then.i.while.cond.i_crit_edge
  %prev_node.0.i = phi ptr [ %30, %while.cond.i.while.cond.i_crit_edge ], [ %14, %if.then.i.while.cond.i_crit_edge ]
  %next_inode3.i = getelementptr inbounds %struct.stv0900_inode, ptr %prev_node.0.i, i32 0, i32 1
  %29 = ptrtoint ptr %next_inode3.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %next_inode3.i, align 4
  %cmp4.not.i = icmp eq ptr %30, %temp_chip.015.i.i
  br i1 %cmp4.not.i, label %while.end.i, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %next_inode3.i.le = getelementptr inbounds %struct.stv0900_inode, ptr %prev_node.0.i, i32 0, i32 1
  %next_inode6.i = getelementptr inbounds %struct.stv0900_inode, ptr %temp_chip.015.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %next_inode6.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %next_inode6.i, align 4
  %cmp7.i = icmp eq ptr %32, null
  br i1 %cmp7.i, label %if.then8.i, label %if.else10.i

if.then8.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %next_inode3.i.le to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %next_inode3.i.le, align 4
  br label %if.end14.i

if.else10.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %next_inode3.i.le to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %32, ptr %next_inode3.i.le, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else10.i, %if.then8.i, %if.then2.i
  tail call void @kfree(ptr noundef nonnull %temp_chip.015.i.i) #8
  br label %remove_inode.exit

remove_inode.exit:                                ; preds = %if.end14.i, %while.body.i.i.remove_inode.exit_crit_edge, %do.end20.remove_inode.exit_crit_edge
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  tail call void @kfree(ptr noundef %36) #8
  br label %if.end23

if.end23:                                         ; preds = %remove_inode.exit, %if.end8.if.end23_crit_edge
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0900_init(ptr nocapture noundef readonly %fe) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.41) #11
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %demodulator_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %1 = ptrtoint ptr %demodulator_priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %demodulator_priv.i, align 4
  %demod1.i = getelementptr inbounds %struct.stv0900_state, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %demod1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %demod1.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %call.i = tail call i32 @shiftx(i32 noundef -177078271, i32 noundef %4, i32 noundef 33554432) #8
  tail call void @stv0900_write_bits(ptr noundef %6, i32 noundef %call.i, i8 noundef zeroext 1) #8
  %7 = ptrtoint ptr %demodulator_priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %demodulator_priv.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %demod1.i7 = getelementptr inbounds %struct.stv0900_state, ptr %8, i32 0, i32 4
  %11 = ptrtoint ptr %demod1.i7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %demod1.i7, align 4
  %call.i8 = tail call i32 @shiftx(i32 noundef -241172473, i32 noundef %12, i32 noundef 1048576) #8
  %config.i = getelementptr inbounds %struct.stv0900_state, ptr %8, i32 0, i32 2
  %13 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %config.i, align 4
  %diseqc_mode.i = getelementptr inbounds %struct.stv0900_config, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %diseqc_mode.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %diseqc_mode.i, align 1
  tail call void @stv0900_write_bits(ptr noundef %10, i32 noundef %call.i8, i8 noundef zeroext %16) #8
  %call2.i = tail call i32 @shiftx(i32 noundef -241172416, i32 noundef %12, i32 noundef 1048576) #8
  tail call void @stv0900_write_bits(ptr noundef %10, i32 noundef %call2.i, i8 noundef zeroext 1) #8
  %call3.i = tail call i32 @shiftx(i32 noundef -241172416, i32 noundef %12, i32 noundef 1048576) #8
  tail call void @stv0900_write_bits(ptr noundef %10, i32 noundef %call3.i, i8 noundef zeroext 0) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0900_sleep(ptr noundef %fe) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.42) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %config = getelementptr inbounds %struct.stv0900_state, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %config, align 4
  %set_lock_led = getelementptr inbounds %struct.stv0900_config, ptr %4, i32 0, i32 15
  %5 = ptrtoint ptr %set_lock_led to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_lock_led, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %do.end3.if.end8_crit_edge, label %if.then5

do.end3.if.end8_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then5:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %6(ptr noundef %fe, i32 noundef 0) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %do.end3.if.end8_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stv0900_frontend_algo(ptr nocapture noundef readnone %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stv0900_get_frontend(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %p) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %demod1 = getelementptr inbounds %struct.stv0900_state, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %demod1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %demod1, align 4
  %arrayidx = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 15, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %p_result.sroa.0.0.copyload = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %p_result.sroa.0.0.copyload)
  %tobool.not = icmp eq i32 %p_result.sroa.0.0.copyload, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %p_result.sroa.7.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 8
  %7 = ptrtoint ptr %p_result.sroa.7.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %p_result.sroa.7.0.copyload = load i32, ptr %p_result.sroa.7.0.arrayidx.sroa_idx, align 4
  %p_result.sroa.6.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 4
  %8 = ptrtoint ptr %p_result.sroa.6.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %p_result.sroa.6.0.copyload = load i32, ptr %p_result.sroa.6.0.arrayidx.sroa_idx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %spec.select = phi i32 [ 0, %entry.cond.end_crit_edge ], [ %p_result.sroa.7.0.copyload, %cond.true ]
  %cond = phi i32 [ 0, %entry.cond.end_crit_edge ], [ %p_result.sroa.6.0.copyload, %cond.true ]
  %9 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond, ptr %p, align 4
  %symbol_rate9 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 10
  %10 = ptrtoint ptr %symbol_rate9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %spec.select, ptr %symbol_rate9, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0900_read_status(ptr noundef %fe, ptr nocapture noundef writeonly %status) #1 align 64 {
entry:
  %b0.i82.i = alloca [2 x i8], align 1
  %buf.i83.i = alloca i8, align 1
  %msg.i84.i = alloca [2 x %struct.i2c_msg], align 4
  %b0.i.i = alloca [2 x i8], align 1
  %buf.i.i = alloca i8, align 1
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %demod = getelementptr inbounds %struct.stv0900_state, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %demod, align 4
  %call.i = tail call i32 @shiftx(i32 noundef -199557024, i32 noundef %6, i32 noundef 33554432) #8
  %call1.i = tail call zeroext i8 @stv0900_get_bits(ptr noundef %4, i32 noundef %call.i) #8
  %7 = zext i8 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.103)
  switch i8 %call1.i, label %do.end3.do.body.i_crit_edge [
    i8 3, label %sw.bb14.i
    i8 2, label %sw.bb2.i
  ]

do.end3.do.body.i_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

sw.bb2.i:                                         ; preds = %do.end3
  %call3.i = tail call i32 @shiftx(i32 noundef -200146936, i32 noundef %6, i32 noundef 33554432) #8
  %call4.i = tail call zeroext i8 @stv0900_get_bits(ptr noundef %4, i32 noundef %call3.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call4.i)
  %tobool.not.i = icmp eq i8 %call4.i, 0
  br i1 %tobool.not.i, label %sw.bb2.i.do.body.i_crit_edge, label %land.lhs.true.i

sw.bb2.i.do.body.i_crit_edge:                     ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

land.lhs.true.i:                                  ; preds = %sw.bb2.i
  %call6.i = tail call i32 @shiftx(i32 noundef -177668094, i32 noundef %6, i32 noundef 33554432) #8
  %call7.i = tail call zeroext i8 @stv0900_get_bits(ptr noundef %4, i32 noundef %call6.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call7.i)
  %tobool9.not.i = icmp eq i8 %call7.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i.do.body.i_crit_edge, label %land.lhs.true.i.do.body.sink.split.i_crit_edge

land.lhs.true.i.do.body.sink.split.i_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.sink.split.i

land.lhs.true.i.do.body.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

sw.bb14.i:                                        ; preds = %do.end3
  %call15.i = tail call i32 @shiftx(i32 noundef -200146936, i32 noundef %6, i32 noundef 33554432) #8
  %call16.i = tail call zeroext i8 @stv0900_get_bits(ptr noundef %4, i32 noundef %call15.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call16.i)
  %tobool18.not.i = icmp eq i8 %call16.i, 0
  br i1 %tobool18.not.i, label %sw.bb14.i.do.body.i_crit_edge, label %land.lhs.true19.i

sw.bb14.i.do.body.i_crit_edge:                    ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

land.lhs.true19.i:                                ; preds = %sw.bb14.i
  %call20.i = tail call i32 @shiftx(i32 noundef -180486136, i32 noundef %6, i32 noundef 33554432) #8
  %call21.i = tail call zeroext i8 @stv0900_get_bits(ptr noundef %4, i32 noundef %call20.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call21.i)
  %tobool23.not.i = icmp eq i8 %call21.i, 0
  br i1 %tobool23.not.i, label %land.lhs.true19.i.do.body.i_crit_edge, label %land.lhs.true19.i.do.body.sink.split.i_crit_edge

land.lhs.true19.i.do.body.sink.split.i_crit_edge: ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.sink.split.i

land.lhs.true19.i.do.body.i_crit_edge:            ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.body.sink.split.i:                             ; preds = %land.lhs.true19.i.do.body.sink.split.i_crit_edge, %land.lhs.true.i.do.body.sink.split.i_crit_edge
  %call25.i = tail call i32 @shiftx(i32 noundef -176095104, i32 noundef %6, i32 noundef 33554432) #8
  %call26.i = tail call zeroext i8 @stv0900_get_bits(ptr noundef %4, i32 noundef %call25.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call26.i)
  %tobool28.i = icmp ne i8 %call26.i, 0
  %phi.cast.i = zext i1 %tobool28.i to i32
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.sink.split.i, %land.lhs.true19.i.do.body.i_crit_edge, %sw.bb14.i.do.body.i_crit_edge, %land.lhs.true.i.do.body.i_crit_edge, %sw.bb2.i.do.body.i_crit_edge, %do.end3.do.body.i_crit_edge
  %locked.0.shrunk.i = phi i32 [ 0, %do.end3.do.body.i_crit_edge ], [ 0, %land.lhs.true.i.do.body.i_crit_edge ], [ 0, %sw.bb2.i.do.body.i_crit_edge ], [ 0, %land.lhs.true19.i.do.body.i_crit_edge ], [ 0, %sw.bb14.i.do.body.i_crit_edge ], [ %phi.cast.i, %do.body.sink.split.i ]
  %8 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool31.not.i = icmp eq i32 %8, 0
  br i1 %tobool31.not.i, label %do.body.i.stv0900_status.exit_crit_edge, label %do.end35.i

do.body.i.stv0900_status.exit_crit_edge:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_status.exit

do.end35.i:                                       ; preds = %do.body.i
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef %locked.0.shrunk.i) #11
  %.pr.i = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool36.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool36.not.i, label %do.end35.i.stv0900_status.exit_crit_edge, label %if.then37.i

do.end35.i.stv0900_status.exit_crit_edge:         ; preds = %do.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_status.exit

if.then37.i:                                      ; preds = %do.end35.i
  %call38.i = tail call i32 @shiftx(i32 noundef 62852, i32 noundef %6, i32 noundef 512) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i.i) #8
  %9 = getelementptr inbounds [2 x i8], ptr %b0.i.i, i32 0, i32 1
  %conv.i.i = and i32 %call38.i, 65535
  %10 = lshr i32 %call38.i, 8
  %conv1.i.i = trunc i32 %10 to i8
  %11 = ptrtoint ptr %b0.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv1.i.i, ptr %b0.i.i, align 1
  %conv4.i.i = trunc i32 %call38.i to i8
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv4.i.i, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i.i) #8
  %13 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %buf.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #8
  %14 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %15 = call ptr @memset(ptr %14, i32 255, i32 16)
  %i2c_addr.i.i = getelementptr inbounds %struct.stv0900_internal, ptr %4, i32 0, i32 18
  %16 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %i2c_addr.i.i, align 4
  %conv6.i.i = zext i8 %17 to i16
  %18 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv6.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %flags.i.i, align 2
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 2, ptr %14, align 4
  %buf7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %buf7.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %b0.i.i, ptr %buf7.i.i, align 4
  %arrayinit.element8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %22 = ptrtoint ptr %arrayinit.element8.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv6.i.i, ptr %arrayinit.element8.i.i, align 4
  %flags12.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %23 = ptrtoint ptr %flags12.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %flags12.i.i, align 2
  %len13.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %24 = ptrtoint ptr %len13.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1, ptr %len13.i.i, align 4
  %buf14.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %25 = ptrtoint ptr %buf14.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %buf.i.i, ptr %buf14.i.i, align 4
  %i2c_adap.i.i = getelementptr inbounds %struct.stv0900_internal, ptr %4, i32 0, i32 17
  %26 = ptrtoint ptr %i2c_adap.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i2c_adap.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %msg.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %if.then37.i.stv0900_read_reg.exit.i_crit_edge, label %do.body.i.i

if.then37.i.stv0900_read_reg.exit.i_crit_edge:    ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_read_reg.exit.i

do.body.i.i:                                      ; preds = %if.then37.i
  %28 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.stv0900_read_reg.exit.i_crit_edge, label %do.end.i.i

do.body.i.i.stv0900_read_reg.exit.i_crit_edge:    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_read_reg.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call20.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i.i, i32 noundef %conv.i.i) #11
  br label %stv0900_read_reg.exit.i

stv0900_read_reg.exit.i:                          ; preds = %do.end.i.i, %do.body.i.i.stv0900_read_reg.exit.i_crit_edge, %if.then37.i.stv0900_read_reg.exit.i_crit_edge
  %29 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %buf.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i.i) #8
  %call41.i = call i32 @shiftx(i32 noundef 62851, i32 noundef %6, i32 noundef 512) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i82.i) #8
  %31 = getelementptr inbounds [2 x i8], ptr %b0.i82.i, i32 0, i32 1
  %conv.i85.i = and i32 %call41.i, 65535
  %32 = lshr i32 %call41.i, 8
  %conv1.i86.i = trunc i32 %32 to i8
  %33 = ptrtoint ptr %b0.i82.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv1.i86.i, ptr %b0.i82.i, align 1
  %conv4.i87.i = trunc i32 %call41.i to i8
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv4.i87.i, ptr %31, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i83.i) #8
  %35 = ptrtoint ptr %buf.i83.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %buf.i83.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i84.i) #8
  %36 = getelementptr inbounds i8, ptr %msg.i84.i, i32 4
  %37 = call ptr @memset(ptr %36, i32 255, i32 16)
  %38 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %i2c_addr.i.i, align 4
  %conv6.i89.i = zext i8 %39 to i16
  %40 = ptrtoint ptr %msg.i84.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv6.i89.i, ptr %msg.i84.i, align 4
  %flags.i90.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i84.i, i32 0, i32 1
  %41 = ptrtoint ptr %flags.i90.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %flags.i90.i, align 2
  %42 = ptrtoint ptr %36 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 2, ptr %36, align 4
  %buf7.i92.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i84.i, i32 0, i32 3
  %43 = ptrtoint ptr %buf7.i92.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %b0.i82.i, ptr %buf7.i92.i, align 4
  %arrayinit.element8.i93.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i84.i, i32 1
  %44 = ptrtoint ptr %arrayinit.element8.i93.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv6.i89.i, ptr %arrayinit.element8.i93.i, align 4
  %flags12.i94.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i84.i, i32 1, i32 1
  %45 = ptrtoint ptr %flags12.i94.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 1, ptr %flags12.i94.i, align 2
  %len13.i95.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i84.i, i32 1, i32 2
  %46 = ptrtoint ptr %len13.i95.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 1, ptr %len13.i95.i, align 4
  %buf14.i96.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i84.i, i32 1, i32 3
  %47 = ptrtoint ptr %buf14.i96.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %buf.i83.i, ptr %buf14.i96.i, align 4
  %48 = ptrtoint ptr %i2c_adap.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i2c_adap.i.i, align 4
  %call.i98.i = call i32 @i2c_transfer(ptr noundef %49, ptr noundef nonnull %msg.i84.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i98.i)
  %cmp.not.i99.i = icmp eq i32 %call.i98.i, 2
  br i1 %cmp.not.i99.i, label %stv0900_read_reg.exit.i.stv0900_read_reg.exit104.i_crit_edge, label %do.body.i101.i

stv0900_read_reg.exit.i.stv0900_read_reg.exit104.i_crit_edge: ; preds = %stv0900_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_read_reg.exit104.i

do.body.i101.i:                                   ; preds = %stv0900_read_reg.exit.i
  %50 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i100.i = icmp eq i32 %50, 0
  br i1 %tobool.not.i100.i, label %do.body.i101.i.stv0900_read_reg.exit104.i_crit_edge, label %do.end.i103.i

do.body.i101.i.stv0900_read_reg.exit104.i_crit_edge: ; preds = %do.body.i101.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_read_reg.exit104.i

do.end.i103.i:                                    ; preds = %do.body.i101.i
  call void @__sanitizer_cov_trace_pc() #10
  %call20.i102.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i98.i, i32 noundef %conv.i85.i) #11
  br label %stv0900_read_reg.exit104.i

stv0900_read_reg.exit104.i:                       ; preds = %do.end.i103.i, %do.body.i101.i.stv0900_read_reg.exit104.i_crit_edge, %stv0900_read_reg.exit.i.stv0900_read_reg.exit104.i_crit_edge
  %51 = ptrtoint ptr %buf.i83.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %buf.i83.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i84.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i83.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i82.i) #8
  %53 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %4, align 4
  %call44.i = call fastcc i32 @stv0900_get_mclk_freq(ptr noundef %4, i32 noundef %54) #8
  %55 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool49.not.i = icmp eq i32 %55, 0
  br i1 %tobool49.not.i, label %stv0900_read_reg.exit104.i.stv0900_status.exit_crit_edge, label %do.end53.i

stv0900_read_reg.exit104.i.stv0900_status.exit_crit_edge: ; preds = %stv0900_read_reg.exit104.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_status.exit

do.end53.i:                                       ; preds = %stv0900_read_reg.exit104.i
  call void @__sanitizer_cov_trace_pc() #10
  %div.i = udiv i32 %call44.i, 1000000
  %conv45.i = zext i8 %52 to i32
  %shl.i = shl nuw nsw i32 %conv45.i, 8
  %conv46.i = zext i8 %30 to i32
  %or.i = or i32 %shl.i, %conv46.i
  %mul.i = mul nuw nsw i32 %div.i, %or.i
  %div4780.i = lshr i32 %mul.i, 14
  %call55.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %div4780.i) #11
  br label %stv0900_status.exit

stv0900_status.exit:                              ; preds = %do.end53.i, %stv0900_read_reg.exit104.i.stv0900_status.exit_crit_edge, %do.end35.i.stv0900_status.exit_crit_edge, %do.body.i.stv0900_status.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %locked.0.shrunk.i)
  %cmp = icmp eq i32 %locked.0.shrunk.i, 1
  br i1 %cmp, label %do.body6, label %if.else

do.body6:                                         ; preds = %stv0900_status.exit
  %56 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool7.not = icmp eq i32 %56, 0
  br i1 %tobool7.not, label %do.body6.do.end16_crit_edge, label %do.end11

do.body6.do.end16_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16

do.end11:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #11
  br label %do.end16

do.end16:                                         ; preds = %do.end11, %do.body6.do.end16_crit_edge
  %57 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 30, ptr %status, align 4
  %config = getelementptr inbounds %struct.stv0900_state, ptr %1, i32 0, i32 2
  %58 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %config, align 4
  %set_lock_led = getelementptr inbounds %struct.stv0900_config, ptr %59, i32 0, i32 15
  %60 = ptrtoint ptr %set_lock_led to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %set_lock_led, align 4
  %tobool17.not = icmp eq ptr %61, null
  br i1 %tobool17.not, label %do.end16.if.end40_crit_edge, label %if.then18

do.end16.if.end40_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then18:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #10
  call void %61(ptr noundef %fe, i32 noundef 1) #8
  br label %if.end40

if.else:                                          ; preds = %stv0900_status.exit
  %62 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %status, align 4
  %config22 = getelementptr inbounds %struct.stv0900_state, ptr %1, i32 0, i32 2
  %63 = ptrtoint ptr %config22 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %config22, align 4
  %set_lock_led23 = getelementptr inbounds %struct.stv0900_config, ptr %64, i32 0, i32 15
  %65 = ptrtoint ptr %set_lock_led23 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %set_lock_led23, align 4
  %tobool24.not = icmp eq ptr %66, null
  br i1 %tobool24.not, label %if.else.do.body29_crit_edge, label %if.then25

if.else.do.body29_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body29

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void %66(ptr noundef %fe, i32 noundef 0) #8
  br label %do.body29

do.body29:                                        ; preds = %if.then25, %if.else.do.body29_crit_edge
  %67 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool30.not = icmp eq i32 %67, 0
  br i1 %tobool30.not, label %do.body29.if.end40_crit_edge, label %do.end34

do.body29.if.end40_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

do.end34:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #11
  br label %if.end40

if.end40:                                         ; preds = %do.end34, %do.body29.if.end40_crit_edge, %if.then18, %do.end16.if.end40_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0900_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %demod = getelementptr inbounds %struct.stv0900_state, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %demod, align 4
  %call.i = tail call i32 @shiftx(i32 noundef -199557024, i32 noundef %5, i32 noundef 33554432) #8
  %call1.i = tail call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %call.i) #8
  %6 = zext i8 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.104)
  switch i8 %call1.i, label %entry.stv0900_get_ber.exit_crit_edge [
    i8 2, label %entry.for.body11.i_crit_edge
    i8 3, label %entry.for.body.i_crit_edge
  ]

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for.body11.i_crit_edge:                     ; preds = %entry
  br label %for.body11.i

entry.stv0900_get_ber.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_get_ber.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %ber.058.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %i.057.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  tail call void @msleep(i32 noundef 5) #8
  %call.i.i = tail call i32 @shiftx(i32 noundef -174522241, i32 noundef %5, i32 noundef 33554432) #8
  %call1.i.i = tail call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %call.i.i) #8
  %call2.i.i = tail call i32 @shiftx(i32 noundef -174456577, i32 noundef %5, i32 noundef 33554432) #8
  %call3.i.i = tail call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %call2.i.i) #8
  %call5.i.i = tail call i32 @shiftx(i32 noundef -174391041, i32 noundef %5, i32 noundef 33554432) #8
  %call6.i.i = tail call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %call5.i.i) #8
  %conv7.i.i = zext i8 %call6.i.i to i32
  %conv4.i.i = zext i8 %call3.i.i to i32
  %conv.i.i = zext i8 %call1.i.i to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 16
  %shl18.i.i = shl nuw nsw i32 %conv4.i.i, 8
  %add19.i.i = add i32 %shl.i.i, %ber.058.i
  %add.i.i = add i32 %add19.i.i, %shl18.i.i
  %add.i = add i32 %add.i.i, %conv7.i.i
  %inc.i = add nuw nsw i32 %i.057.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 5
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %div.i = udiv i32 %add.i, 5
  %call5.i = tail call i32 @shiftx(i32 noundef -180486128, i32 noundef %5, i32 noundef 33554432) #8
  %call6.i = tail call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %call5.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call6.i)
  %tobool.not.i = icmp eq i8 %call6.i, 0
  br i1 %tobool.not.i, label %for.end.i.stv0900_get_ber.exit_crit_edge, label %if.then.i

for.end.i.stv0900_get_ber.exit_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_get_ber.exit

if.then.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i = mul i32 %div.i, 9766
  %shr.i = lshr i32 %mul.i, 13
  br label %stv0900_get_ber.exit

for.body11.i:                                     ; preds = %for.body11.i.for.body11.i_crit_edge, %entry.for.body11.i_crit_edge
  %ber.160.i = phi i32 [ %add13.i, %for.body11.i.for.body11.i_crit_edge ], [ 0, %entry.for.body11.i_crit_edge ]
  %i.159.i = phi i32 [ %inc15.i, %for.body11.i.for.body11.i_crit_edge ], [ 0, %entry.for.body11.i_crit_edge ]
  tail call void @msleep(i32 noundef 5) #8
  %call.i44.i = tail call i32 @shiftx(i32 noundef -174522241, i32 noundef %5, i32 noundef 33554432) #8
  %call1.i45.i = tail call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %call.i44.i) #8
  %call2.i46.i = tail call i32 @shiftx(i32 noundef -174456577, i32 noundef %5, i32 noundef 33554432) #8
  %call3.i47.i = tail call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %call2.i46.i) #8
  %call5.i48.i = tail call i32 @shiftx(i32 noundef -174391041, i32 noundef %5, i32 noundef 33554432) #8
  %call6.i49.i = tail call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %call5.i48.i) #8
  %conv7.i50.i = zext i8 %call6.i49.i to i32
  %conv4.i51.i = zext i8 %call3.i47.i to i32
  %conv.i52.i = zext i8 %call1.i45.i to i32
  %shl.i53.i = shl nuw nsw i32 %conv.i52.i, 16
  %shl18.i54.i = shl nuw nsw i32 %conv4.i51.i, 8
  %add19.i56.i = add i32 %shl.i53.i, %ber.160.i
  %add.i55.i = add i32 %add19.i56.i, %shl18.i54.i
  %add13.i = add i32 %add.i55.i, %conv7.i50.i
  %inc15.i = add nuw nsw i32 %i.159.i, 1
  %exitcond61.not.i = icmp eq i32 %inc15.i, 5
  br i1 %exitcond61.not.i, label %for.end16.i, label %for.body11.i.for.body11.i_crit_edge

for.body11.i.for.body11.i_crit_edge:              ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body11.i

for.end16.i:                                      ; preds = %for.body11.i
  %div17.i = udiv i32 %add13.i, 5
  %call18.i = tail call i32 @shiftx(i32 noundef -177668094, i32 noundef %5, i32 noundef 33554432) #8
  %call19.i = tail call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %call18.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call19.i)
  %tobool20.not.i = icmp eq i8 %call19.i, 0
  br i1 %tobool20.not.i, label %for.end16.i.stv0900_get_ber.exit_crit_edge, label %if.then21.i

for.end16.i.stv0900_get_ber.exit_crit_edge:       ; preds = %for.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_get_ber.exit

if.then21.i:                                      ; preds = %for.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul22.i = mul i32 %div17.i, 9766
  %shr23.i = lshr i32 %mul22.i, 13
  br label %stv0900_get_ber.exit

stv0900_get_ber.exit:                             ; preds = %if.then21.i, %for.end16.i.stv0900_get_ber.exit_crit_edge, %if.then.i, %for.end.i.stv0900_get_ber.exit_crit_edge, %entry.stv0900_get_ber.exit_crit_edge
  %ber.2.i = phi i32 [ %shr.i, %if.then.i ], [ %div.i, %for.end.i.stv0900_get_ber.exit_crit_edge ], [ %shr23.i, %if.then21.i ], [ %div17.i, %for.end16.i.stv0900_get_ber.exit_crit_edge ], [ 10000000, %entry.stv0900_get_ber.exit_crit_edge ]
  %7 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %ber.2.i, ptr %ber, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0900_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %strength) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %demod = getelementptr inbounds %struct.stv0900_state, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %demod, align 4
  %6 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %entry.if.end6.i_crit_edge, label %do.end.i

entry.if.end6.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.56) #11
  br label %if.end6.i

if.end6.i:                                        ; preds = %do.end.i, %entry.if.end6.i_crit_edge
  %call7.i = tail call i32 @shiftx(i32 noundef -200408833, i32 noundef %5, i32 noundef 33554432) #8
  %call8.i = tail call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %call7.i) #8
  %conv.i = zext i8 %call8.i to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %call9.i = tail call i32 @shiftx(i32 noundef -200343297, i32 noundef %5, i32 noundef 33554432) #8
  %call10.i = tail call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %call9.i) #8
  %conv11.i = zext i8 %call10.i to i32
  %add.i = or i32 %shl.i, %conv11.i
  %7 = add nsw i32 %add.i, -1962
  call void @__sanitizer_cov_trace_const_cmp4(i32 49912, i32 %7)
  %8 = icmp ult i32 %7, 49912
  br i1 %8, label %if.end6.i.while.body.i_crit_edge, label %if.else85.i

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  br label %while.body.i

while.body.i:                                     ; preds = %if.end63.i.while.body.i_crit_edge, %if.end6.i.while.body.i_crit_edge
  %imax.07.i = phi i32 [ %imax.1.i, %if.end63.i.while.body.i_crit_edge ], [ 13, %if.end6.i.while.body.i_crit_edge ]
  %imin.05.i = phi i32 [ %imin.1.i, %if.end63.i.while.body.i_crit_edge ], [ 0, %if.end6.i.while.body.i_crit_edge ]
  %add36.i = add i32 %imin.05.i, %imax.07.i
  %shr.i = ashr i32 %add36.i, 1
  %regval39.i = getelementptr [500 x %struct.stv000_lookpoint], ptr getelementptr inbounds ({ i32, <{ [14 x %struct.stv000_lookpoint], [486 x %struct.stv000_lookpoint] }> }, ptr @stv0900_rf, i32 0, i32 1, i32 0, i32 0, i32 0), i32 0, i32 %imin.05.i, i32 1
  %9 = ptrtoint ptr %regval39.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %regval39.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add.i)
  %cmp40.not.i = icmp sgt i32 %10, %add.i
  br i1 %cmp40.not.i, label %while.body.i.lor.lhs.false48.i_crit_edge, label %land.lhs.true42.i

while.body.i.lor.lhs.false48.i_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false48.i

land.lhs.true42.i:                                ; preds = %while.body.i
  %regval45.i = getelementptr [500 x %struct.stv000_lookpoint], ptr getelementptr inbounds ({ i32, <{ [14 x %struct.stv000_lookpoint], [486 x %struct.stv000_lookpoint] }> }, ptr @stv0900_rf, i32 0, i32 1, i32 0, i32 0, i32 0), i32 0, i32 %shr.i, i32 1
  %11 = ptrtoint ptr %regval45.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %regval45.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %12)
  %cmp46.not.i = icmp sgt i32 %add.i, %12
  br i1 %cmp46.not.i, label %land.lhs.true42.i.lor.lhs.false48.i_crit_edge, label %land.lhs.true42.i.if.end63.i_crit_edge

land.lhs.true42.i.if.end63.i_crit_edge:           ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63.i

land.lhs.true42.i.lor.lhs.false48.i_crit_edge:    ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false48.i

lor.lhs.false48.i:                                ; preds = %land.lhs.true42.i.lor.lhs.false48.i_crit_edge, %while.body.i.lor.lhs.false48.i_crit_edge
  %regval51.i = getelementptr [500 x %struct.stv000_lookpoint], ptr getelementptr inbounds ({ i32, <{ [14 x %struct.stv000_lookpoint], [486 x %struct.stv000_lookpoint] }> }, ptr @stv0900_rf, i32 0, i32 1, i32 0, i32 0, i32 0), i32 0, i32 %shr.i, i32 1
  %13 = ptrtoint ptr %regval51.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %regval51.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %add.i)
  %cmp52.not.i = icmp sgt i32 %14, %add.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %10)
  %cmp58.not.i = icmp sgt i32 %add.i, %10
  %or.cond1.i = select i1 %cmp52.not.i, i1 true, i1 %cmp58.not.i
  %spec.select3.i = select i1 %or.cond1.i, i32 %shr.i, i32 %imin.05.i
  %spec.select4.i = select i1 %or.cond1.i, i32 %imax.07.i, i32 %shr.i
  br label %if.end63.i

if.end63.i:                                       ; preds = %lor.lhs.false48.i, %land.lhs.true42.i.if.end63.i_crit_edge
  %imin.1.i = phi i32 [ %imin.05.i, %land.lhs.true42.i.if.end63.i_crit_edge ], [ %spec.select3.i, %lor.lhs.false48.i ]
  %imax.1.i = phi i32 [ %shr.i, %land.lhs.true42.i.if.end63.i_crit_edge ], [ %spec.select4.i, %lor.lhs.false48.i ]
  %sub33.i = sub i32 %imax.1.i, %imin.1.i
  %cmp34.i = icmp sgt i32 %sub33.i, 1
  br i1 %cmp34.i, label %if.end63.i.while.body.i_crit_edge, label %while.end.i

if.end63.i.while.body.i_crit_edge:                ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx65.i = getelementptr [500 x %struct.stv000_lookpoint], ptr getelementptr inbounds ({ i32, <{ [14 x %struct.stv000_lookpoint], [486 x %struct.stv000_lookpoint] }> }, ptr @stv0900_rf, i32 0, i32 1, i32 0, i32 0, i32 0), i32 0, i32 %imin.1.i
  %regval66.i = getelementptr [500 x %struct.stv000_lookpoint], ptr getelementptr inbounds ({ i32, <{ [14 x %struct.stv000_lookpoint], [486 x %struct.stv000_lookpoint] }> }, ptr @stv0900_rf, i32 0, i32 1, i32 0, i32 0, i32 0), i32 0, i32 %imin.1.i, i32 1
  %15 = ptrtoint ptr %regval66.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %regval66.i, align 4
  %sub67.i = sub i32 %add.i, %16
  %arrayidx69.i = getelementptr [500 x %struct.stv000_lookpoint], ptr getelementptr inbounds ({ i32, <{ [14 x %struct.stv000_lookpoint], [486 x %struct.stv000_lookpoint] }> }, ptr @stv0900_rf, i32 0, i32 1, i32 0, i32 0, i32 0), i32 0, i32 %imax.1.i
  %17 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx69.i, align 4
  %19 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx65.i, align 4
  %sub73.i = sub i32 %18, %20
  %mul.i = mul i32 %sub73.i, %sub67.i
  %regval76.i = getelementptr [500 x %struct.stv000_lookpoint], ptr getelementptr inbounds ({ i32, <{ [14 x %struct.stv000_lookpoint], [486 x %struct.stv000_lookpoint] }> }, ptr @stv0900_rf, i32 0, i32 1, i32 0, i32 0, i32 0), i32 0, i32 %imax.1.i, i32 1
  %21 = ptrtoint ptr %regval76.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %regval76.i, align 4
  %sub80.i = sub i32 %22, %16
  %div.i = sdiv i32 %mul.i, %sub80.i
  %add84.i = add i32 %div.i, %20
  br label %do.body104.i

if.else85.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 51873, i32 %add.i)
  %cmp89.i = icmp ugt i32 %add.i, 51873
  %spec.select2.i = select i1 %cmp89.i, i32 5, i32 -100
  br label %do.body104.i

do.body104.i:                                     ; preds = %if.else85.i, %while.end.i
  %rf_lvl.0.i = phi i32 [ %add84.i, %while.end.i ], [ %spec.select2.i, %if.else85.i ]
  %23 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool105.not.i = icmp eq i32 %23, 0
  br i1 %tobool105.not.i, label %do.body104.i.stv0900_get_rf_level.exit_crit_edge, label %do.end109.i

do.body104.i.stv0900_get_rf_level.exit_crit_edge: ; preds = %do.body104.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_get_rf_level.exit

do.end109.i:                                      ; preds = %do.body104.i
  call void @__sanitizer_cov_trace_pc() #10
  %call111.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.56, i32 noundef %rf_lvl.0.i) #11
  br label %stv0900_get_rf_level.exit

stv0900_get_rf_level.exit:                        ; preds = %do.end109.i, %do.body104.i.stv0900_get_rf_level.exit_crit_edge
  %24 = mul i32 %rf_lvl.0.i, 936
  %mul = add i32 %24, 93600
  %25 = tail call i32 @llvm.smax.i32(i32 %mul, i32 0)
  %26 = tail call i32 @llvm.umin.i32(i32 %25, i32 65535)
  %conv = trunc i32 %26 to i16
  %27 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv, ptr %strength, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0900_read_snr(ptr noundef %fe, ptr nocapture noundef writeonly %snr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %demod1.i = getelementptr inbounds %struct.stv0900_state, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %demod1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %demod1.i, align 4
  %6 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %entry.do.end4.i_crit_edge, label %do.end.i

entry.do.end4.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.61) #11
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %entry.do.end4.i_crit_edge
  %call5.i = tail call i32 @stv0900_get_standard(ptr noundef %fe, i32 noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i)
  %cmp.i = icmp eq i32 %call5.i, 1
  %..i = select i1 %cmp.i, i32 -192675585, i32 -192937729
  %.10.i = select i1 %cmp.i, i32 -192610049, i32 -192872193
  %call9.i = tail call i32 @shiftx(i32 noundef %..i, i32 noundef %5, i32 noundef 33554432) #8
  %call10.i = tail call i32 @shiftx(i32 noundef %.10.i, i32 noundef %5, i32 noundef 33554432) #8
  %call12.i = tail call i32 @shiftx(i32 noundef -200146936, i32 noundef %5, i32 noundef 33554432) #8
  %call13.i = tail call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %call12.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call13.i)
  %tobool14.not.i = icmp eq i8 %call13.i, 0
  br i1 %tobool14.not.i, label %do.end4.i.stv0900_carr_get_quality.exit_crit_edge, label %if.then18.i

do.end4.i.stv0900_carr_get_quality.exit_crit_edge: ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_carr_get_quality.exit

if.then18.i:                                      ; preds = %do.end4.i
  tail call void @msleep(i32 noundef 5) #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then18.i
  %i.05.i = phi i32 [ 0, %if.then18.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %regval.04.i = phi i32 [ 0, %if.then18.i ], [ %add23.i, %for.body.i.for.body.i_crit_edge ]
  %call20.i = tail call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %call9.i) #8
  %conv.i = zext i8 %call20.i to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %call21.i = tail call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %call10.i) #8
  %conv22.i = zext i8 %call21.i to i32
  %add.i = add i32 %regval.04.i, %conv22.i
  %add23.i = add i32 %add.i, %shl.i
  tail call void @msleep(i32 noundef 1) #8
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %div.i = sdiv i32 %add23.i, 16
  %7 = add i32 %add23.i, -7696
  call void @__sanitizer_cov_trace_const_cmp4(i32 205888, i32 %7)
  %8 = icmp ult i32 %7, 205888
  br i1 %8, label %for.end.i.while.body.i_crit_edge, label %if.else100.i

for.end.i.while.body.i_crit_edge:                 ; preds = %for.end.i
  br label %while.body.i

while.body.i:                                     ; preds = %if.end77.i.while.body.i_crit_edge, %for.end.i.while.body.i_crit_edge
  %imax.08.i = phi i32 [ %imax.1.i, %if.end77.i.while.body.i_crit_edge ], [ 54, %for.end.i.while.body.i_crit_edge ]
  %imin.06.i = phi i32 [ %imin.1.i, %if.end77.i.while.body.i_crit_edge ], [ 0, %for.end.i.while.body.i_crit_edge ]
  %add49.i = add i32 %imin.06.i, %imax.08.i
  %shr.i = ashr i32 %add49.i, 1
  %regval52.i = getelementptr [500 x %struct.stv000_lookpoint], ptr getelementptr inbounds ({ i32, <{ [55 x %struct.stv000_lookpoint], [445 x %struct.stv000_lookpoint] }> }, ptr @stv0900_s2_cn, i32 0, i32 1, i32 0, i32 0, i32 0), i32 0, i32 %imin.06.i, i32 1
  %9 = ptrtoint ptr %regval52.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %regval52.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %div.i)
  %cmp53.not.i = icmp sgt i32 %10, %div.i
  br i1 %cmp53.not.i, label %while.body.i.lor.lhs.false61.i_crit_edge, label %land.lhs.true55.i

while.body.i.lor.lhs.false61.i_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false61.i

land.lhs.true55.i:                                ; preds = %while.body.i
  %regval58.i = getelementptr [500 x %struct.stv000_lookpoint], ptr getelementptr inbounds ({ i32, <{ [55 x %struct.stv000_lookpoint], [445 x %struct.stv000_lookpoint] }> }, ptr @stv0900_s2_cn, i32 0, i32 1, i32 0, i32 0, i32 0), i32 0, i32 %shr.i, i32 1
  %11 = ptrtoint ptr %regval58.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %regval58.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %12)
  %cmp59.not.i = icmp sgt i32 %div.i, %12
  br i1 %cmp59.not.i, label %land.lhs.true55.i.lor.lhs.false61.i_crit_edge, label %land.lhs.true55.i.if.end77.i_crit_edge

land.lhs.true55.i.if.end77.i_crit_edge:           ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77.i

land.lhs.true55.i.lor.lhs.false61.i_crit_edge:    ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false61.i

lor.lhs.false61.i:                                ; preds = %land.lhs.true55.i.lor.lhs.false61.i_crit_edge, %while.body.i.lor.lhs.false61.i_crit_edge
  %regval64.i = getelementptr [500 x %struct.stv000_lookpoint], ptr getelementptr inbounds ({ i32, <{ [55 x %struct.stv000_lookpoint], [445 x %struct.stv000_lookpoint] }> }, ptr @stv0900_s2_cn, i32 0, i32 1, i32 0, i32 0, i32 0), i32 0, i32 %shr.i, i32 1
  %13 = ptrtoint ptr %regval64.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %regval64.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %div.i)
  %cmp65.not.i = icmp sgt i32 %14, %div.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %10)
  %cmp71.not.i = icmp sgt i32 %div.i, %10
  %or.cond1.i = select i1 %cmp65.not.i, i1 true, i1 %cmp71.not.i
  %spec.select2.i = select i1 %or.cond1.i, i32 %shr.i, i32 %imin.06.i
  %spec.select3.i = select i1 %or.cond1.i, i32 %imax.08.i, i32 %shr.i
  br label %if.end77.i

if.end77.i:                                       ; preds = %lor.lhs.false61.i, %land.lhs.true55.i.if.end77.i_crit_edge
  %imin.1.i = phi i32 [ %imin.06.i, %land.lhs.true55.i.if.end77.i_crit_edge ], [ %spec.select2.i, %lor.lhs.false61.i ]
  %imax.1.i = phi i32 [ %shr.i, %land.lhs.true55.i.if.end77.i_crit_edge ], [ %spec.select3.i, %lor.lhs.false61.i ]
  %sub46.i = sub i32 %imax.1.i, %imin.1.i
  %cmp47.i = icmp sgt i32 %sub46.i, 1
  br i1 %cmp47.i, label %if.end77.i.while.body.i_crit_edge, label %while.end.i

if.end77.i.while.body.i_crit_edge:                ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end.i:                                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx79.i = getelementptr [500 x %struct.stv000_lookpoint], ptr getelementptr inbounds ({ i32, <{ [55 x %struct.stv000_lookpoint], [445 x %struct.stv000_lookpoint] }> }, ptr @stv0900_s2_cn, i32 0, i32 1, i32 0, i32 0, i32 0), i32 0, i32 %imin.1.i
  %regval80.i = getelementptr [500 x %struct.stv000_lookpoint], ptr getelementptr inbounds ({ i32, <{ [55 x %struct.stv000_lookpoint], [445 x %struct.stv000_lookpoint] }> }, ptr @stv0900_s2_cn, i32 0, i32 1, i32 0, i32 0, i32 0), i32 0, i32 %imin.1.i, i32 1
  %15 = ptrtoint ptr %regval80.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %regval80.i, align 4
  %sub81.i = sub i32 %div.i, %16
  %arrayidx83.i = getelementptr [500 x %struct.stv000_lookpoint], ptr getelementptr inbounds ({ i32, <{ [55 x %struct.stv000_lookpoint], [445 x %struct.stv000_lookpoint] }> }, ptr @stv0900_s2_cn, i32 0, i32 1, i32 0, i32 0, i32 0), i32 0, i32 %imax.1.i
  %17 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx83.i, align 4
  %19 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx79.i, align 4
  %sub87.i = sub i32 %18, %20
  %mul.i = mul i32 %sub87.i, %sub81.i
  %regval90.i = getelementptr [500 x %struct.stv000_lookpoint], ptr getelementptr inbounds ({ i32, <{ [55 x %struct.stv000_lookpoint], [445 x %struct.stv000_lookpoint] }> }, ptr @stv0900_s2_cn, i32 0, i32 1, i32 0, i32 0, i32 0), i32 0, i32 %imax.1.i, i32 1
  %21 = ptrtoint ptr %regval90.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %regval90.i, align 4
  %sub94.i = sub i32 %22, %16
  %div95.i = sdiv i32 %mul.i, %sub94.i
  %add99.i = add i32 %div95.i, %20
  br label %stv0900_carr_get_quality.exit

if.else100.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 213568, i32 %add23.i)
  %cmp104.i = icmp slt i32 %add23.i, 213568
  %spec.select.i = select i1 %cmp104.i, i32 1000, i32 -100
  br label %stv0900_carr_get_quality.exit

stv0900_carr_get_quality.exit:                    ; preds = %if.else100.i, %while.end.i, %do.end4.i.stv0900_carr_get_quality.exit_crit_edge
  %c_n.0.i = phi i32 [ %add99.i, %while.end.i ], [ -100, %do.end4.i.stv0900_carr_get_quality.exit_crit_edge ], [ %spec.select.i, %if.else100.i ]
  %23 = mul i32 %c_n.0.i, 384
  %mul = add i32 %23, 11520
  %24 = tail call i32 @llvm.smax.i32(i32 %mul, i32 0)
  %25 = tail call i32 @llvm.umin.i32(i32 %24, i32 65535)
  %conv = trunc i32 %25 to i16
  %26 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv, ptr %snr, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0900_read_ucblocks(ptr noundef %fe, ptr nocapture noundef writeonly %ucblocks) #1 align 64 {
entry:
  %b0.i78 = alloca [2 x i8], align 1
  %buf.i79 = alloca i8, align 1
  %msg.i80 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i55 = alloca [2 x i8], align 1
  %buf.i56 = alloca i8, align 1
  %msg.i57 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i32 = alloca [2 x i8], align 1
  %buf.i33 = alloca i8, align 1
  %msg.i34 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [2 x i8], align 1
  %buf.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %demod1 = getelementptr inbounds %struct.stv0900_state, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %demod1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %demod1, align 4
  %6 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %ucblocks, align 4
  %call = tail call i32 @stv0900_get_standard(ptr noundef %fe, i32 noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @shiftx(i32 noundef 62827, i32 noundef %5, i32 noundef 512) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i) #8
  %7 = getelementptr inbounds [2 x i8], ptr %b0.i, i32 0, i32 1
  %conv.i = and i32 %call2, 65535
  %8 = lshr i32 %call2, 8
  %conv1.i = trunc i32 %8 to i8
  %9 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv1.i, ptr %b0.i, align 1
  %conv4.i = trunc i32 %call2 to i8
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv4.i, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i) #8
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %buf.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %12 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %13 = call ptr @memset(ptr %12, i32 255, i32 16)
  %i2c_addr.i = getelementptr inbounds %struct.stv0900_internal, ptr %3, i32 0, i32 18
  %14 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %i2c_addr.i, align 4
  %conv6.i = zext i8 %15 to i16
  %16 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv6.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %flags.i, align 2
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 2, ptr %12, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %19 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %b0.i, ptr %buf7.i, align 4
  %arrayinit.element8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %20 = ptrtoint ptr %arrayinit.element8.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv6.i, ptr %arrayinit.element8.i, align 4
  %flags12.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %21 = ptrtoint ptr %flags12.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1, ptr %flags12.i, align 2
  %len13.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %22 = ptrtoint ptr %len13.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %len13.i, align 4
  %buf14.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %23 = ptrtoint ptr %buf14.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %buf.i, ptr %buf14.i, align 4
  %i2c_adap.i = getelementptr inbounds %struct.stv0900_internal, ptr %3, i32 0, i32 17
  %24 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i2c_adap.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.then.stv0900_read_reg.exit_crit_edge, label %do.body.i

if.then.stv0900_read_reg.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_read_reg.exit

do.body.i:                                        ; preds = %if.then
  %26 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %do.body.i.stv0900_read_reg.exit_crit_edge, label %do.end.i

do.body.i.stv0900_read_reg.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_read_reg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i, i32 noundef %conv.i) #11
  br label %stv0900_read_reg.exit

stv0900_read_reg.exit:                            ; preds = %do.end.i, %do.body.i.stv0900_read_reg.exit_crit_edge, %if.then.stv0900_read_reg.exit_crit_edge
  %27 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %buf.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i) #8
  %call4 = call i32 @shiftx(i32 noundef 62828, i32 noundef %5, i32 noundef 512) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i32) #8
  %29 = getelementptr inbounds [2 x i8], ptr %b0.i32, i32 0, i32 1
  %conv.i35 = and i32 %call4, 65535
  %30 = lshr i32 %call4, 8
  %conv1.i36 = trunc i32 %30 to i8
  %31 = ptrtoint ptr %b0.i32 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv1.i36, ptr %b0.i32, align 1
  %conv4.i37 = trunc i32 %call4 to i8
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv4.i37, ptr %29, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i33) #8
  %33 = ptrtoint ptr %buf.i33 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %buf.i33, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i34) #8
  %34 = getelementptr inbounds i8, ptr %msg.i34, i32 4
  %35 = call ptr @memset(ptr %34, i32 255, i32 16)
  %36 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %i2c_addr.i, align 4
  %conv6.i39 = zext i8 %37 to i16
  %38 = ptrtoint ptr %msg.i34 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv6.i39, ptr %msg.i34, align 4
  %flags.i40 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i34, i32 0, i32 1
  %39 = ptrtoint ptr %flags.i40 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %flags.i40, align 2
  %40 = ptrtoint ptr %34 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 2, ptr %34, align 4
  %buf7.i42 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i34, i32 0, i32 3
  %41 = ptrtoint ptr %buf7.i42 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %b0.i32, ptr %buf7.i42, align 4
  %arrayinit.element8.i43 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i34, i32 1
  %42 = ptrtoint ptr %arrayinit.element8.i43 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv6.i39, ptr %arrayinit.element8.i43, align 4
  %flags12.i44 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i34, i32 1, i32 1
  %43 = ptrtoint ptr %flags12.i44 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 1, ptr %flags12.i44, align 2
  %len13.i45 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i34, i32 1, i32 2
  %44 = ptrtoint ptr %len13.i45 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 1, ptr %len13.i45, align 4
  %buf14.i46 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i34, i32 1, i32 3
  %45 = ptrtoint ptr %buf14.i46 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %buf.i33, ptr %buf14.i46, align 4
  %46 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %i2c_adap.i, align 4
  %call.i48 = call i32 @i2c_transfer(ptr noundef %47, ptr noundef nonnull %msg.i34, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i48)
  %cmp.not.i49 = icmp eq i32 %call.i48, 2
  br i1 %cmp.not.i49, label %stv0900_read_reg.exit.stv0900_read_reg.exit54_crit_edge, label %do.body.i51

stv0900_read_reg.exit.stv0900_read_reg.exit54_crit_edge: ; preds = %stv0900_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_read_reg.exit54

do.body.i51:                                      ; preds = %stv0900_read_reg.exit
  %48 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i50 = icmp eq i32 %48, 0
  br i1 %tobool.not.i50, label %do.body.i51.stv0900_read_reg.exit54_crit_edge, label %do.end.i53

do.body.i51.stv0900_read_reg.exit54_crit_edge:    ; preds = %do.body.i51
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_read_reg.exit54

do.end.i53:                                       ; preds = %do.body.i51
  call void @__sanitizer_cov_trace_pc() #10
  %call20.i52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i48, i32 noundef %conv.i35) #11
  br label %stv0900_read_reg.exit54

stv0900_read_reg.exit54:                          ; preds = %do.end.i53, %do.body.i51.stv0900_read_reg.exit54_crit_edge, %stv0900_read_reg.exit.stv0900_read_reg.exit54_crit_edge
  %49 = ptrtoint ptr %buf.i33 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %buf.i33, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i34) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i33) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i32) #8
  %conv7 = zext i8 %28 to i32
  %shl = shl nuw nsw i32 %conv7, 8
  %conv8 = zext i8 %50 to i32
  %or = or i32 %shl, %conv8
  %call9 = call i32 @shiftx(i32 noundef 62829, i32 noundef %5, i32 noundef 512) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i55) #8
  %51 = getelementptr inbounds [2 x i8], ptr %b0.i55, i32 0, i32 1
  %conv.i58 = and i32 %call9, 65535
  %52 = lshr i32 %call9, 8
  %conv1.i59 = trunc i32 %52 to i8
  %53 = ptrtoint ptr %b0.i55 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv1.i59, ptr %b0.i55, align 1
  %conv4.i60 = trunc i32 %call9 to i8
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv4.i60, ptr %51, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i56) #8
  %55 = ptrtoint ptr %buf.i56 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %buf.i56, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i57) #8
  %56 = getelementptr inbounds i8, ptr %msg.i57, i32 4
  %57 = call ptr @memset(ptr %56, i32 255, i32 16)
  %58 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %i2c_addr.i, align 4
  %conv6.i62 = zext i8 %59 to i16
  %60 = ptrtoint ptr %msg.i57 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv6.i62, ptr %msg.i57, align 4
  %flags.i63 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i57, i32 0, i32 1
  %61 = ptrtoint ptr %flags.i63 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 0, ptr %flags.i63, align 2
  %62 = ptrtoint ptr %56 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 2, ptr %56, align 4
  %buf7.i65 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i57, i32 0, i32 3
  %63 = ptrtoint ptr %buf7.i65 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %b0.i55, ptr %buf7.i65, align 4
  %arrayinit.element8.i66 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i57, i32 1
  %64 = ptrtoint ptr %arrayinit.element8.i66 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv6.i62, ptr %arrayinit.element8.i66, align 4
  %flags12.i67 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i57, i32 1, i32 1
  %65 = ptrtoint ptr %flags12.i67 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 1, ptr %flags12.i67, align 2
  %len13.i68 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i57, i32 1, i32 2
  %66 = ptrtoint ptr %len13.i68 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 1, ptr %len13.i68, align 4
  %buf14.i69 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i57, i32 1, i32 3
  %67 = ptrtoint ptr %buf14.i69 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %buf.i56, ptr %buf14.i69, align 4
  %68 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %i2c_adap.i, align 4
  %call.i71 = call i32 @i2c_transfer(ptr noundef %69, ptr noundef nonnull %msg.i57, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i71)
  %cmp.not.i72 = icmp eq i32 %call.i71, 2
  br i1 %cmp.not.i72, label %stv0900_read_reg.exit54.stv0900_read_reg.exit77_crit_edge, label %do.body.i74

stv0900_read_reg.exit54.stv0900_read_reg.exit77_crit_edge: ; preds = %stv0900_read_reg.exit54
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_read_reg.exit77

do.body.i74:                                      ; preds = %stv0900_read_reg.exit54
  %70 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i73 = icmp eq i32 %70, 0
  br i1 %tobool.not.i73, label %do.body.i74.stv0900_read_reg.exit77_crit_edge, label %do.end.i76

do.body.i74.stv0900_read_reg.exit77_crit_edge:    ; preds = %do.body.i74
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_read_reg.exit77

do.end.i76:                                       ; preds = %do.body.i74
  call void @__sanitizer_cov_trace_pc() #10
  %call20.i75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i71, i32 noundef %conv.i58) #11
  br label %stv0900_read_reg.exit77

stv0900_read_reg.exit77:                          ; preds = %do.end.i76, %do.body.i74.stv0900_read_reg.exit77_crit_edge, %stv0900_read_reg.exit54.stv0900_read_reg.exit77_crit_edge
  %71 = ptrtoint ptr %buf.i56 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %buf.i56, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i57) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i56) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i55) #8
  %call12 = call i32 @shiftx(i32 noundef 62830, i32 noundef %5, i32 noundef 512) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i78) #8
  %73 = getelementptr inbounds [2 x i8], ptr %b0.i78, i32 0, i32 1
  %conv.i81 = and i32 %call12, 65535
  %74 = lshr i32 %call12, 8
  %conv1.i82 = trunc i32 %74 to i8
  %75 = ptrtoint ptr %b0.i78 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv1.i82, ptr %b0.i78, align 1
  %conv4.i83 = trunc i32 %call12 to i8
  %76 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv4.i83, ptr %73, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i79) #8
  %77 = ptrtoint ptr %buf.i79 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %buf.i79, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i80) #8
  %78 = getelementptr inbounds i8, ptr %msg.i80, i32 4
  %79 = call ptr @memset(ptr %78, i32 255, i32 16)
  %80 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %i2c_addr.i, align 4
  %conv6.i85 = zext i8 %81 to i16
  %82 = ptrtoint ptr %msg.i80 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv6.i85, ptr %msg.i80, align 4
  %flags.i86 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i80, i32 0, i32 1
  %83 = ptrtoint ptr %flags.i86 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 0, ptr %flags.i86, align 2
  %84 = ptrtoint ptr %78 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 2, ptr %78, align 4
  %buf7.i88 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i80, i32 0, i32 3
  %85 = ptrtoint ptr %buf7.i88 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %b0.i78, ptr %buf7.i88, align 4
  %arrayinit.element8.i89 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i80, i32 1
  %86 = ptrtoint ptr %arrayinit.element8.i89 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv6.i85, ptr %arrayinit.element8.i89, align 4
  %flags12.i90 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i80, i32 1, i32 1
  %87 = ptrtoint ptr %flags12.i90 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 1, ptr %flags12.i90, align 2
  %len13.i91 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i80, i32 1, i32 2
  %88 = ptrtoint ptr %len13.i91 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 1, ptr %len13.i91, align 4
  %buf14.i92 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i80, i32 1, i32 3
  %89 = ptrtoint ptr %buf14.i92 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %buf.i79, ptr %buf14.i92, align 4
  %90 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %i2c_adap.i, align 4
  %call.i94 = call i32 @i2c_transfer(ptr noundef %91, ptr noundef nonnull %msg.i80, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i94)
  %cmp.not.i95 = icmp eq i32 %call.i94, 2
  br i1 %cmp.not.i95, label %stv0900_read_reg.exit77.stv0900_read_reg.exit100_crit_edge, label %do.body.i97

stv0900_read_reg.exit77.stv0900_read_reg.exit100_crit_edge: ; preds = %stv0900_read_reg.exit77
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_read_reg.exit100

do.body.i97:                                      ; preds = %stv0900_read_reg.exit77
  %92 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool.not.i96 = icmp eq i32 %92, 0
  br i1 %tobool.not.i96, label %do.body.i97.stv0900_read_reg.exit100_crit_edge, label %do.end.i99

do.body.i97.stv0900_read_reg.exit100_crit_edge:   ; preds = %do.body.i97
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_read_reg.exit100

do.end.i99:                                       ; preds = %do.body.i97
  call void @__sanitizer_cov_trace_pc() #10
  %call20.i98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i94, i32 noundef %conv.i81) #11
  br label %stv0900_read_reg.exit100

stv0900_read_reg.exit100:                         ; preds = %do.end.i99, %do.body.i97.stv0900_read_reg.exit100_crit_edge, %stv0900_read_reg.exit77.stv0900_read_reg.exit100_crit_edge
  %93 = ptrtoint ptr %buf.i79 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %buf.i79, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i80) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i79) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i78) #8
  %conv15 = zext i8 %72 to i32
  %shl16 = shl nuw nsw i32 %conv15, 8
  %conv17 = zext i8 %94 to i32
  %or18 = or i32 %shl16, %conv17
  %add = add nuw nsw i32 %or18, %or
  %95 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %add, ptr %ucblocks, align 4
  br label %if.end

if.end:                                           ; preds = %stv0900_read_reg.exit100, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0900_send_master_cmd(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %cmd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %msg_len = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %cmd, i32 0, i32 1
  %4 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %msg_len, align 1
  %conv = zext i8 %5 to i32
  %demod = getelementptr inbounds %struct.stv0900_state, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %demod, align 4
  tail call fastcc void @stv0900_diseqc_send(ptr noundef %3, ptr noundef %cmd, i32 noundef %conv, i32 noundef %7)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0900_recv_slave_reply(ptr nocapture noundef readonly %fe, ptr nocapture noundef %reply) #1 align 64 {
entry:
  %b0.i = alloca [2 x i8], align 1
  %buf.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %demod1 = getelementptr inbounds %struct.stv0900_state, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %demod1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %demod1, align 4
  %msg_len = getelementptr inbounds %struct.dvb_diseqc_slave_reply, ptr %reply, i32 0, i32 1
  %6 = ptrtoint ptr %msg_len to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %msg_len, align 4
  %call33 = tail call i32 @shiftx(i32 noundef -240910208, i32 noundef %5, i32 noundef 1048576) #8
  %call234 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %call33)
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call234)
  %cmp.not35.not = icmp eq i8 %call234, 1
  br i1 %cmp.not35.not, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %i.036 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  tail call void @msleep(i32 noundef 10) #8
  %inc = add nuw nsw i32 %i.036, 1
  %call = tail call i32 @shiftx(i32 noundef -240910208, i32 noundef %5, i32 noundef 1048576) #8
  %call2 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %call)
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call2)
  %cmp.not = icmp ne i8 %call2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.036)
  %cmp4 = icmp ult i32 %i.036, 9
  %or.cond = select i1 %cmp.not, i1 %cmp4, i1 false
  br i1 %or.cond, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %call6 = tail call i32 @shiftx(i32 noundef -240910208, i32 noundef %5, i32 noundef 1048576) #8
  %call7 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %call6)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call7)
  %tobool.not = icmp eq i8 %call7, 0
  br i1 %tobool.not, label %while.end.if.end_crit_edge, label %if.then

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %while.end
  %call8 = tail call i32 @shiftx(i32 noundef -240844785, i32 noundef %5, i32 noundef 1048576) #8
  %call9 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %call8)
  %7 = ptrtoint ptr %msg_len to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %call9, ptr %msg_len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call9)
  %cmp1338.not = icmp eq i8 %call9, 0
  br i1 %cmp1338.not, label %if.then.if.end_crit_edge, label %for.body.lr.ph

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.lr.ph:                                   ; preds = %if.then
  %8 = getelementptr inbounds [2 x i8], ptr %b0.i, i32 0, i32 1
  %9 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %i2c_addr.i = getelementptr inbounds %struct.stv0900_internal, ptr %3, i32 0, i32 18
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %arrayinit.element8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %flags12.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %len13.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %buf14.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %i2c_adap.i = getelementptr inbounds %struct.stv0900_internal, ptr %3, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %stv0900_read_reg.exit.for.body_crit_edge, %for.body.lr.ph
  %i.139 = phi i32 [ 0, %for.body.lr.ph ], [ %inc18, %stv0900_read_reg.exit.for.body_crit_edge ]
  %call15 = call i32 @shiftx(i32 noundef 61862, i32 noundef %5, i32 noundef 16) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i) #8
  %conv.i = and i32 %call15, 65535
  %10 = lshr i32 %call15, 8
  %conv1.i = trunc i32 %10 to i8
  %11 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv1.i, ptr %b0.i, align 1
  %conv4.i = trunc i32 %call15 to i8
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv4.i, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i) #8
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %buf.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %14 = call ptr @memset(ptr %9, i32 255, i32 16)
  %15 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %i2c_addr.i, align 4
  %conv6.i = zext i8 %16 to i16
  %17 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv6.i, ptr %msg.i, align 4
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %flags.i, align 2
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 2, ptr %9, align 4
  %20 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %b0.i, ptr %buf7.i, align 4
  %21 = ptrtoint ptr %arrayinit.element8.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv6.i, ptr %arrayinit.element8.i, align 4
  %22 = ptrtoint ptr %flags12.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %flags12.i, align 2
  %23 = ptrtoint ptr %len13.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %len13.i, align 4
  %24 = ptrtoint ptr %buf14.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %buf.i, ptr %buf14.i, align 4
  %25 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c_adap.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %for.body.stv0900_read_reg.exit_crit_edge, label %do.body.i

for.body.stv0900_read_reg.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_read_reg.exit

do.body.i:                                        ; preds = %for.body
  %27 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i, label %do.body.i.stv0900_read_reg.exit_crit_edge, label %do.end.i

do.body.i.stv0900_read_reg.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_read_reg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i, i32 noundef %conv.i) #11
  br label %stv0900_read_reg.exit

stv0900_read_reg.exit:                            ; preds = %do.end.i, %do.body.i.stv0900_read_reg.exit_crit_edge, %for.body.stv0900_read_reg.exit_crit_edge
  %28 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %buf.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i) #8
  %arrayidx = getelementptr [4 x i8], ptr %reply, i32 0, i32 %i.139
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx, align 1
  %inc18 = add nuw nsw i32 %i.139, 1
  %31 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %msg_len, align 4
  %conv12 = zext i8 %32 to i32
  %cmp13 = icmp ult i32 %inc18, %conv12
  br i1 %cmp13, label %stv0900_read_reg.exit.for.body_crit_edge, label %stv0900_read_reg.exit.if.end_crit_edge

stv0900_read_reg.exit.if.end_crit_edge:           ; preds = %stv0900_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

stv0900_read_reg.exit.for.body_crit_edge:         ; preds = %stv0900_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end:                                           ; preds = %stv0900_read_reg.exit.if.end_crit_edge, %if.then.if.end_crit_edge, %while.end.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0900_send_burst(ptr nocapture noundef readonly %fe, i32 noundef %burst) #1 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %demod1 = getelementptr inbounds %struct.stv0900_state, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %demod1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %demod1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #8
  %6 = zext i32 %burst to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %burst, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.sw.epilog.sink.split_crit_edge
    i32 1, label %sw.bb4
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb4, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i8 [ 2, %sw.bb4 ], [ 3, %entry.sw.epilog.sink.split_crit_edge ]
  %storemerge = phi i8 [ -1, %sw.bb4 ], [ 0, %entry.sw.epilog.sink.split_crit_edge ]
  %call = tail call i32 @shiftx(i32 noundef -241172473, i32 noundef %5, i32 noundef 1048576) #8
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %call, i8 noundef zeroext %.sink)
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %storemerge, ptr %data, align 1
  %8 = ptrtoint ptr %demod1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %demod1, align 4
  call fastcc void @stv0900_diseqc_send(ptr noundef %3, ptr noundef nonnull %data, i32 noundef 1, i32 noundef %9)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0900_set_tone(ptr nocapture noundef readonly %fe, i32 noundef %toneoff) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %demod1 = getelementptr inbounds %struct.stv0900_state, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %demod1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %demod1, align 4
  %6 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %toneoff)
  %cmp = icmp eq i32 %toneoff, 0
  %cond = select i1 %cmp, ptr @.str.65, ptr @.str.66
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, ptr noundef nonnull %cond) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %7 = zext i32 %toneoff to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %toneoff, label %do.end4.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
  ]

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 @shiftx(i32 noundef -241172473, i32 noundef %5, i32 noundef 1048576) #8
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %call5, i8 noundef zeroext 0)
  br label %cleanup.sink.split

sw.bb8:                                           ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 @shiftx(i32 noundef -241172473, i32 noundef %5, i32 noundef 1048576) #8
  %config = getelementptr inbounds %struct.stv0900_state, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %config, align 4
  %diseqc_mode = getelementptr inbounds %struct.stv0900_config, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %diseqc_mode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %diseqc_mode, align 1
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %call9, i8 noundef zeroext %11)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb8, %sw.bb
  %call6 = tail call i32 @shiftx(i32 noundef -241172416, i32 noundef %5, i32 noundef 1048576) #8
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %call6, i8 noundef zeroext 1)
  %call7 = tail call i32 @shiftx(i32 noundef -241172416, i32 noundef %5, i32 noundef 1048576) #8
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %call7, i8 noundef zeroext 0)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end4.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0900_i2c_gate_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %enable) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %demod1 = getelementptr inbounds %struct.stv0900_state, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %demod1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %demod1, align 4
  %call = tail call i32 @shiftx(i32 noundef -248905600, i32 noundef %5, i32 noundef -65536) #8
  %conv = trunc i32 %enable to i8
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %call, i8 noundef zeroext %conv)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0900_search(ptr noundef %fe) #1 align 64 {
entry:
  %data.i1.i = alloca [3 x i8], align 1
  %i2cmsg.i2.i = alloca %struct.i2c_msg, align 4
  %data.i.i = alloca [3 x i8], align 1
  %i2cmsg.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %demod1 = getelementptr inbounds %struct.stv0900_state, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %demod1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %demod1, align 4
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %arrayidx = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 15, i32 %5
  %6 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.67) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %7 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %symbol_rate, align 4
  %9 = add i32 %8, -100000
  call void @__sanitizer_cov_trace_const_cmp4(i32 69900001, i32 %9)
  %10 = icmp ult i32 %9, 69900001
  br i1 %10, label %if.end13, label %do.end4.cleanup_crit_edge

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %do.end4
  %config = getelementptr inbounds %struct.stv0900_state, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %config, align 4
  %set_ts_params = getelementptr inbounds %struct.stv0900_config, ptr %12, i32 0, i32 14
  %13 = ptrtoint ptr %set_ts_params to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_ts_params, align 4
  %tobool14.not = icmp eq ptr %14, null
  br i1 %tobool14.not, label %if.end13.if.end19_crit_edge, label %if.then15

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = tail call i32 %14(ptr noundef %fe, i32 noundef 0) #8
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end13.if.end19_crit_edge
  %stream_id = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 24
  %15 = ptrtoint ptr %stream_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %stream_id, align 4
  %17 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %do.end2.i.thread, label %do.end2.i

do.end2.i:                                        ; preds = %if.end19
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.74) #11
  %.pr = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %phi.cmp189 = icmp eq i32 %.pr, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %16)
  %18 = icmp ugt i32 %16, 255
  br i1 %18, label %do.body5.i, label %do.body15.i

do.end2.i.thread:                                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %16)
  %19 = icmp ugt i32 %16, 255
  br i1 %19, label %do.end2.i.thread.do.end13.i_crit_edge, label %do.end2.i.thread.do.end23.i_crit_edge

do.end2.i.thread.do.end23.i_crit_edge:            ; preds = %do.end2.i.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23.i

do.end2.i.thread.do.end13.i_crit_edge:            ; preds = %do.end2.i.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13.i

do.body5.i:                                       ; preds = %do.end2.i
  br i1 %phi.cmp189, label %do.body5.i.do.end13.i_crit_edge, label %do.end9.i

do.body5.i.do.end13.i_crit_edge:                  ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13.i

do.end9.i:                                        ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76) #11
  br label %do.end13.i

do.end13.i:                                       ; preds = %do.end9.i, %do.body5.i.do.end13.i_crit_edge, %do.end2.i.thread.do.end13.i_crit_edge
  %call14.i = tail call i32 @shiftx(i32 noundef -179306464, i32 noundef %5, i32 noundef 33554432) #8
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %call14.i, i8 noundef zeroext 0) #8
  br label %stv0900_set_mis.exit

do.body15.i:                                      ; preds = %do.end2.i
  br i1 %phi.cmp189, label %do.body15.i.do.end23.i_crit_edge, label %do.end19.i

do.body15.i.do.end23.i_crit_edge:                 ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23.i

do.end19.i:                                       ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #10
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, i32 noundef %16) #11
  br label %do.end23.i

do.end23.i:                                       ; preds = %do.end19.i, %do.body15.i.do.end23.i_crit_edge, %do.end2.i.thread.do.end23.i_crit_edge
  %call24.i = tail call i32 @shiftx(i32 noundef -179306464, i32 noundef %5, i32 noundef 33554432) #8
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %call24.i, i8 noundef zeroext 1) #8
  %call25.i = tail call i32 @shiftx(i32 noundef 62814, i32 noundef %5, i32 noundef 512) #8
  %conv26.i = trunc i32 %16 to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i) #8
  %20 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 1
  %21 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i.i) #8
  %22 = getelementptr inbounds i8, ptr %i2cmsg.i.i, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 262143, ptr %22, align 4
  %i2c_addr.i.i = getelementptr inbounds %struct.stv0900_internal, ptr %3, i32 0, i32 18
  %24 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %i2c_addr.i.i, align 4
  %conv.i.i = zext i8 %25 to i16
  %26 = ptrtoint ptr %i2cmsg.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i.i, ptr %i2cmsg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %data.i.i, ptr %buf.i.i, align 4
  %29 = lshr i32 %call25.i, 8
  %conv2.i.i = trunc i32 %29 to i8
  %30 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv2.i.i, ptr %data.i.i, align 1
  %conv5.i.i = trunc i32 %call25.i to i8
  %31 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv5.i.i, ptr %20, align 1
  %32 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv26.i, ptr %21, align 1
  %i2c_adap.i.i = getelementptr inbounds %struct.stv0900_internal, ptr %3, i32 0, i32 17
  %33 = ptrtoint ptr %i2c_adap.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i2c_adap.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %i2cmsg.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %do.end23.i.stv0900_write_reg.exit.i_crit_edge, label %do.body.i.i

do.end23.i.stv0900_write_reg.exit.i_crit_edge:    ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit.i

do.body.i.i:                                      ; preds = %do.end23.i
  %35 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.stv0900_write_reg.exit.i_crit_edge, label %do.end.i.i

do.body.i.i.stv0900_write_reg.exit.i_crit_edge:   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i.i) #11
  br label %stv0900_write_reg.exit.i

stv0900_write_reg.exit.i:                         ; preds = %do.end.i.i, %do.body.i.i.stv0900_write_reg.exit.i_crit_edge, %do.end23.i.stv0900_write_reg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  %call27.i = call i32 @shiftx(i32 noundef 62815, i32 noundef %5, i32 noundef 512) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i1.i) #8
  %36 = getelementptr inbounds [3 x i8], ptr %data.i1.i, i32 0, i32 1
  %37 = getelementptr inbounds [3 x i8], ptr %data.i1.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i2.i) #8
  %38 = getelementptr inbounds i8, ptr %i2cmsg.i2.i, i32 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 262143, ptr %38, align 4
  %40 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %i2c_addr.i.i, align 4
  %conv.i4.i = zext i8 %41 to i16
  %42 = ptrtoint ptr %i2cmsg.i2.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv.i4.i, ptr %i2cmsg.i2.i, align 4
  %flags.i5.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i2.i, i32 0, i32 1
  %43 = ptrtoint ptr %flags.i5.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %flags.i5.i, align 2
  %buf.i7.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i2.i, i32 0, i32 3
  %44 = ptrtoint ptr %buf.i7.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %data.i1.i, ptr %buf.i7.i, align 4
  %45 = lshr i32 %call27.i, 8
  %conv2.i8.i = trunc i32 %45 to i8
  %46 = ptrtoint ptr %data.i1.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv2.i8.i, ptr %data.i1.i, align 1
  %conv5.i9.i = trunc i32 %call27.i to i8
  %47 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv5.i9.i, ptr %36, align 1
  %48 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -1, ptr %37, align 1
  %49 = ptrtoint ptr %i2c_adap.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i2c_adap.i.i, align 4
  %call.i11.i = call i32 @i2c_transfer(ptr noundef %50, ptr noundef nonnull %i2cmsg.i2.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i11.i)
  %cmp.not.i12.i = icmp eq i32 %call.i11.i, 1
  br i1 %cmp.not.i12.i, label %stv0900_write_reg.exit.i.stv0900_write_reg.exit17.i_crit_edge, label %do.body.i14.i

stv0900_write_reg.exit.i.stv0900_write_reg.exit17.i_crit_edge: ; preds = %stv0900_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit17.i

do.body.i14.i:                                    ; preds = %stv0900_write_reg.exit.i
  %51 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i13.i = icmp eq i32 %51, 0
  br i1 %tobool.not.i13.i, label %do.body.i14.i.stv0900_write_reg.exit17.i_crit_edge, label %do.end.i16.i

do.body.i14.i.stv0900_write_reg.exit17.i_crit_edge: ; preds = %do.body.i14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit17.i

do.end.i16.i:                                     ; preds = %do.body.i14.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i11.i) #11
  br label %stv0900_write_reg.exit17.i

stv0900_write_reg.exit17.i:                       ; preds = %do.end.i16.i, %do.body.i14.i.stv0900_write_reg.exit17.i_crit_edge, %stv0900_write_reg.exit.i.stv0900_write_reg.exit17.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i2.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i1.i) #8
  br label %stv0900_set_mis.exit

stv0900_set_mis.exit:                             ; preds = %stv0900_write_reg.exit17.i, %do.end13.i
  %52 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dtv_property_cache, align 4
  %54 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %symbol_rate, align 4
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %56 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %delivery_system, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %57)
  %cmp24 = icmp eq i32 %57, 5
  %spec.select = zext i1 %cmp24 to i32
  %arrayidx29 = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 10, i32 %5
  %58 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %spec.select, ptr %arrayidx29, align 4
  %arrayidx32 = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 6, i32 %5
  %59 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %55, ptr %arrayidx32, align 4
  %arrayidx34 = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 7, i32 %5
  %60 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 10000000, ptr %arrayidx34, align 4
  %arrayidx36 = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 4, i32 %5
  %61 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %53, ptr %arrayidx36, align 4
  %arrayidx38 = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 9, i32 %5
  %62 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %arrayidx38, align 4
  %arrayidx40 = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 11, i32 %5
  %63 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %arrayidx40, align 4
  %arrayidx43 = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 14, i32 %5
  %64 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 8, ptr %arrayidx43, align 4
  %call44 = call i32 @stv0900_algo(ptr noundef %fe) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call44)
  %cmp45 = icmp eq i32 %call44, 12
  br i1 %cmp45, label %land.lhs.true46, label %stv0900_set_mis.exit.do.body108_crit_edge

stv0900_set_mis.exit.do.body108_crit_edge:        ; preds = %stv0900_set_mis.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body108

land.lhs.true46:                                  ; preds = %stv0900_set_mis.exit
  %errs = getelementptr inbounds %struct.stv0900_internal, ptr %3, i32 0, i32 22
  %65 = ptrtoint ptr %errs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %errs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp47 = icmp eq i32 %66, 0
  br i1 %cmp47, label %if.end90, label %land.lhs.true46.do.body108_crit_edge

land.lhs.true46.do.body108_crit_edge:             ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body108

if.end90:                                         ; preds = %land.lhs.true46
  %67 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %68)
  %phi.cmp.not = icmp eq i32 %68, 1
  br i1 %phi.cmp.not, label %do.body96, label %if.end90.do.body108_crit_edge

if.end90.do.body108_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body108

do.body96:                                        ; preds = %if.end90
  %69 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool97.not = icmp eq i32 %69, 0
  br i1 %tobool97.not, label %do.body96.cleanup_crit_edge, label %do.body96.cleanup.sink.split_crit_edge

do.body96.cleanup.sink.split_crit_edge:           ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.body96.cleanup_crit_edge:                      ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body108:                                       ; preds = %if.end90.do.body108_crit_edge, %land.lhs.true46.do.body108_crit_edge, %stv0900_set_mis.exit.do.body108_crit_edge
  %70 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool109.not = icmp eq i32 %70, 0
  br i1 %tobool109.not, label %do.body108.cleanup_crit_edge, label %do.body108.cleanup.sink.split_crit_edge

do.body108.cleanup.sink.split_crit_edge:          ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.body108.cleanup_crit_edge:                     ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body108.cleanup.sink.split_crit_edge, %do.body96.cleanup.sink.split_crit_edge
  %.str.72.sink = phi ptr [ @.str.69, %do.body96.cleanup.sink.split_crit_edge ], [ @.str.72, %do.body108.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 1, %do.body96.cleanup.sink.split_crit_edge ], [ 4, %do.body108.cleanup.sink.split_crit_edge ]
  %call115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.72.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body108.cleanup_crit_edge, %do.body96.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body96.cleanup_crit_edge ], [ 4, %do.body108.cleanup_crit_edge ], [ 4, %do.end4.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stv0900_get_mclk_freq(ptr nocapture noundef readonly %intp, i32 noundef %ext_clk) unnamed_addr #1 align 64 {
entry:
  %b0.i.i11 = alloca [2 x i8], align 1
  %buf.i.i12 = alloca i8, align 1
  %msg.i.i13 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i.i = alloca [2 x i8], align 1
  %buf.i.i = alloca i8, align 1
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i.i) #8
  %0 = getelementptr inbounds [2 x i8], ptr %b0.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %b0.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -15, ptr %b0.i.i, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -77, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i.i) #8
  %3 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %buf.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #8
  %4 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %i2c_addr.i.i = getelementptr inbounds %struct.stv0900_internal, ptr %intp, i32 0, i32 18
  %6 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %i2c_addr.i.i, align 4
  %conv6.i10.i = zext i8 %7 to i16
  %8 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv6.i10.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags.i.i, align 2
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 2, ptr %4, align 4
  %buf7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %b0.i.i, ptr %buf7.i.i, align 4
  %arrayinit.element8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %12 = ptrtoint ptr %arrayinit.element8.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv6.i10.i, ptr %arrayinit.element8.i.i, align 4
  %flags12.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %13 = ptrtoint ptr %flags12.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %flags12.i.i, align 2
  %len13.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %14 = ptrtoint ptr %len13.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %len13.i.i, align 4
  %buf14.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %15 = ptrtoint ptr %buf14.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf.i.i, ptr %buf14.i.i, align 4
  %i2c_adap.i.i = getelementptr inbounds %struct.stv0900_internal, ptr %intp, i32 0, i32 17
  %16 = ptrtoint ptr %i2c_adap.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c_adap.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %entry.stv0900_get_bits.exit_crit_edge, label %do.body.i.i

entry.stv0900_get_bits.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_get_bits.exit

do.body.i.i:                                      ; preds = %entry
  %18 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.stv0900_get_bits.exit_crit_edge, label %do.end.i.i

do.body.i.i.stv0900_get_bits.exit_crit_edge:      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_get_bits.exit

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call20.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i.i, i32 noundef 61875) #11
  br label %stv0900_get_bits.exit

stv0900_get_bits.exit:                            ; preds = %do.end.i.i, %do.body.i.i.stv0900_get_bits.exit_crit_edge, %entry.stv0900_get_bits.exit_crit_edge
  %19 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %buf.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i.i) #8
  %and.i = zext i8 %20 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i.i11) #8
  %21 = getelementptr inbounds [2 x i8], ptr %b0.i.i11, i32 0, i32 1
  %22 = ptrtoint ptr %b0.i.i11 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -15, ptr %b0.i.i11, align 1
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -74, ptr %21, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i.i12) #8
  %24 = ptrtoint ptr %buf.i.i12 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %buf.i.i12, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i13) #8
  %25 = getelementptr inbounds i8, ptr %msg.i.i13, i32 4
  %26 = call ptr @memset(ptr %25, i32 255, i32 16)
  %27 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %i2c_addr.i.i, align 4
  %conv6.i10.i21 = zext i8 %28 to i16
  %29 = ptrtoint ptr %msg.i.i13 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv6.i10.i21, ptr %msg.i.i13, align 4
  %flags.i.i22 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i13, i32 0, i32 1
  %30 = ptrtoint ptr %flags.i.i22 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %flags.i.i22, align 2
  %31 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 2, ptr %25, align 4
  %buf7.i.i23 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i13, i32 0, i32 3
  %32 = ptrtoint ptr %buf7.i.i23 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %b0.i.i11, ptr %buf7.i.i23, align 4
  %arrayinit.element8.i.i24 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i13, i32 1
  %33 = ptrtoint ptr %arrayinit.element8.i.i24 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv6.i10.i21, ptr %arrayinit.element8.i.i24, align 4
  %flags12.i.i25 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i13, i32 1, i32 1
  %34 = ptrtoint ptr %flags12.i.i25 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1, ptr %flags12.i.i25, align 2
  %len13.i.i26 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i13, i32 1, i32 2
  %35 = ptrtoint ptr %len13.i.i26 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 1, ptr %len13.i.i26, align 4
  %buf14.i.i27 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i13, i32 1, i32 3
  %36 = ptrtoint ptr %buf14.i.i27 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %buf.i.i12, ptr %buf14.i.i27, align 4
  %37 = ptrtoint ptr %i2c_adap.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i2c_adap.i.i, align 4
  %call.i.i29 = call i32 @i2c_transfer(ptr noundef %38, ptr noundef nonnull %msg.i.i13, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i29)
  %cmp.not.i.i30 = icmp eq i32 %call.i.i29, 2
  br i1 %cmp.not.i.i30, label %stv0900_get_bits.exit.stv0900_get_bits.exit39_crit_edge, label %do.body.i.i33

stv0900_get_bits.exit.stv0900_get_bits.exit39_crit_edge: ; preds = %stv0900_get_bits.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_get_bits.exit39

do.body.i.i33:                                    ; preds = %stv0900_get_bits.exit
  %39 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i.i32 = icmp eq i32 %39, 0
  br i1 %tobool.not.i.i32, label %do.body.i.i33.stv0900_get_bits.exit39_crit_edge, label %do.end.i.i35

do.body.i.i33.stv0900_get_bits.exit39_crit_edge:  ; preds = %do.body.i.i33
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_get_bits.exit39

do.end.i.i35:                                     ; preds = %do.body.i.i33
  call void @__sanitizer_cov_trace_pc() #10
  %call20.i.i34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i.i29, i32 noundef 61878) #11
  br label %stv0900_get_bits.exit39

stv0900_get_bits.exit39:                          ; preds = %do.end.i.i35, %do.body.i.i33.stv0900_get_bits.exit39_crit_edge, %stv0900_get_bits.exit.stv0900_get_bits.exit39_crit_edge
  %40 = ptrtoint ptr %buf.i.i12 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %buf.i.i12, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i13) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i.i12) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i.i11) #8
  %42 = and i8 %41, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp.not = icmp eq i8 %42, 0
  %cond = select i1 %cmp.not, i32 6, i32 4
  %add = add nuw nsw i32 %and.i, 1
  %mul = mul i32 %add, %ext_clk
  %div4 = udiv i32 %mul, %cond
  %43 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not = icmp eq i32 %43, 0
  br i1 %tobool.not, label %stv0900_get_bits.exit39.do.end8_crit_edge, label %do.end

stv0900_get_bits.exit39.do.end8_crit_edge:        ; preds = %stv0900_get_bits.exit39
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

do.end:                                           ; preds = %stv0900_get_bits.exit39
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, i32 noundef %div4) #11
  br label %do.end8

do.end8:                                          ; preds = %do.end, %stv0900_get_bits.exit39.do.end8_crit_edge
  ret i32 %div4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stv0900_get_standard(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stv0900_diseqc_send(ptr nocapture noundef readonly %intp, ptr nocapture noundef readonly %data, i32 noundef %NbData, i32 noundef %demod) unnamed_addr #1 align 64 {
entry:
  %data.i = alloca [3 x i8], align 1
  %i2cmsg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @shiftx(i32 noundef -241172472, i32 noundef %demod, i32 noundef 1048576) #8
  tail call void @stv0900_write_bits(ptr noundef %intp, i32 noundef %call, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %NbData)
  %cmp1.not = icmp eq i32 %NbData, 0
  br i1 %cmp1.not, label %entry.while.end6_crit_edge, label %while.cond1.preheader.lr.ph

entry.while.end6_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end6

while.cond1.preheader.lr.ph:                      ; preds = %entry
  %0 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %2 = getelementptr inbounds i8, ptr %i2cmsg.i, i32 4
  %i2c_addr.i = getelementptr inbounds %struct.stv0900_internal, ptr %intp, i32 0, i32 18
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i, i32 0, i32 1
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %i2cmsg.i, i32 0, i32 3
  %i2c_adap.i = getelementptr inbounds %struct.stv0900_internal, ptr %intp, i32 0, i32 17
  br label %while.cond1.preheader

while.cond1.preheader:                            ; preds = %stv0900_write_reg.exit.while.cond1.preheader_crit_edge, %while.cond1.preheader.lr.ph
  %i.02 = phi i32 [ 0, %while.cond1.preheader.lr.ph ], [ %inc, %stv0900_write_reg.exit.while.cond1.preheader_crit_edge ]
  br label %while.cond1

while.cond1:                                      ; preds = %while.cond1.while.cond1_crit_edge, %while.cond1.preheader
  %call2 = call i32 @shiftx(i32 noundef -240648128, i32 noundef %demod, i32 noundef 1048576) #8
  %call3 = call zeroext i8 @stv0900_get_bits(ptr noundef %intp, i32 noundef %call2)
  %tobool.not = icmp eq i8 %call3, 0
  br i1 %tobool.not, label %while.end, label %while.cond1.while.cond1_crit_edge

while.cond1.while.cond1_crit_edge:                ; preds = %while.cond1
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond1

while.end:                                        ; preds = %while.cond1
  %call5 = call i32 @shiftx(i32 noundef 61863, i32 noundef %demod, i32 noundef 16) #8
  %arrayidx = getelementptr i8, ptr %data, i32 %i.02
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cmsg.i) #8
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 262143, ptr %2, align 4
  %6 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %i2c_addr.i, align 4
  %conv.i = zext i8 %7 to i16
  %8 = ptrtoint ptr %i2cmsg.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i, ptr %i2cmsg.i, align 4
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags.i, align 2
  %10 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %data.i, ptr %buf.i, align 4
  %11 = lshr i32 %call5, 8
  %conv2.i = trunc i32 %11 to i8
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv2.i, ptr %data.i, align 1
  %conv5.i = trunc i32 %call5 to i8
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv5.i, ptr %0, align 1
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %4, ptr %1, align 1
  %15 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c_adap.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %i2cmsg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %while.end.stv0900_write_reg.exit_crit_edge, label %do.body.i

while.end.stv0900_write_reg.exit_crit_edge:       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit

do.body.i:                                        ; preds = %while.end
  %17 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %do.body.i.stv0900_write_reg.exit_crit_edge, label %do.end.i

do.body.i.stv0900_write_reg.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stv0900_write_reg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i) #11
  br label %stv0900_write_reg.exit

stv0900_write_reg.exit:                           ; preds = %do.end.i, %do.body.i.stv0900_write_reg.exit_crit_edge, %while.end.stv0900_write_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cmsg.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  %inc = add nuw i32 %i.02, 1
  %exitcond.not = icmp eq i32 %inc, %NbData
  br i1 %exitcond.not, label %stv0900_write_reg.exit.while.end6_crit_edge, label %stv0900_write_reg.exit.while.cond1.preheader_crit_edge

stv0900_write_reg.exit.while.cond1.preheader_crit_edge: ; preds = %stv0900_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond1.preheader

stv0900_write_reg.exit.while.end6_crit_edge:      ; preds = %stv0900_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end6

while.end6:                                       ; preds = %stv0900_write_reg.exit.while.end6_crit_edge, %entry.while.end6_crit_edge
  %call7 = call i32 @shiftx(i32 noundef -241172472, i32 noundef %demod, i32 noundef 1048576) #8
  call void @stv0900_write_bits(ptr noundef %intp, i32 noundef %call7, i8 noundef zeroext 0)
  %call93 = call i32 @shiftx(i32 noundef -240648160, i32 noundef %demod, i32 noundef 1048576) #8
  %call104 = call zeroext i8 @stv0900_get_bits(ptr noundef %intp, i32 noundef %call93)
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call104)
  %cmp12.not5.not = icmp eq i8 %call104, 1
  br i1 %cmp12.not5.not, label %while.end6.while.end18_crit_edge, label %while.end6.while.body16_crit_edge

while.end6.while.body16_crit_edge:                ; preds = %while.end6
  br label %while.body16

while.end6.while.end18_crit_edge:                 ; preds = %while.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end18

while.body16:                                     ; preds = %while.body16.while.body16_crit_edge, %while.end6.while.body16_crit_edge
  %i.16 = phi i32 [ %inc17, %while.body16.while.body16_crit_edge ], [ 0, %while.end6.while.body16_crit_edge ]
  call void @msleep(i32 noundef 10) #8
  %inc17 = add nuw nsw i32 %i.16, 1
  %call9 = call i32 @shiftx(i32 noundef -240648160, i32 noundef %demod, i32 noundef 1048576) #8
  %call10 = call zeroext i8 @stv0900_get_bits(ptr noundef %intp, i32 noundef %call9)
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call10)
  %cmp12.not = icmp ne i8 %call10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.16)
  %cmp14 = icmp ult i32 %i.16, 9
  %or.cond = select i1 %cmp12.not, i1 %cmp14, i1 false
  br i1 %or.cond, label %while.body16.while.body16_crit_edge, label %while.body16.while.end18_crit_edge

while.body16.while.end18_crit_edge:               ; preds = %while.body16
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end18

while.body16.while.body16_crit_edge:              ; preds = %while.body16
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body16

while.end18:                                      ; preds = %while.body16.while.end18_crit_edge, %while.end6.while.end18_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stv0900_algo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 118)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 118)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !86, !88, !90, !92, !93, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !117, !118, !120, !121, !122, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !137, !139, !140, !142, !143, !145, !146, !147, !148, !150, !151, !152, !154, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !169, !170, !171, !173, !175, !176, !177, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !220, !222, !223, !224, !226, !227, !228, !230, !231, !232, !234, !235, !236, !238, !239, !240}
!llvm.module.flags = !{!241, !242, !243, !244, !245, !246, !247, !248}
!llvm.ident = !{!249}

!0 = !{ptr @stvdebug, !1, !"stvdebug", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 23, i32 5}
!2 = !{ptr @__param_debug, !3, !"__param_debug", i1 false, i1 false}
!3 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 24, i32 1}
!4 = !{ptr @__UNIQUE_ID_debugtype290, !3, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 136, i32 3}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @stv0900_write_reg._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @stv0900_write_reg._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 160, i32 3}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @stv0900_read_reg._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @stv0900_read_reg._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 518, i32 4}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @stv0900_set_tuner._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @stv0900_set_tuner._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 520, i32 4}
!23 = !{ptr @stv0900_set_tuner._entry.7, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @stv0900_set_tuner._entry_ptr.9, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @stv0900_set_tuner._entry.10, !26, !"_entry", i1 false, i1 false}
!26 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 526, i32 4}
!27 = !{ptr @stv0900_set_tuner._entry_ptr.11, !26, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 528, i32 4}
!30 = !{ptr @stv0900_set_tuner._entry.12, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @stv0900_set_tuner._entry_ptr.14, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 543, i32 4}
!34 = !{ptr @stv0900_set_bandwidth._entry, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @stv0900_set_bandwidth._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @stv0900_set_bandwidth._entry.16, !37, !"_entry", i1 false, i1 false}
!37 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 545, i32 4}
!38 = !{ptr @stv0900_set_bandwidth._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 835, i32 3}
!41 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @stv0900_get_demod_lock._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @stv0900_get_demod_lock._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 855, i32 3}
!46 = !{ptr @stv0900_get_demod_lock._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @stv0900_get_demod_lock._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 857, i32 3}
!50 = !{ptr @stv0900_get_demod_lock._entry.23, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @stv0900_get_demod_lock._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 868, i32 2}
!54 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @stv0900_stop_all_s2_modcod._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @stv0900_stop_all_s2_modcod._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 885, i32 2}
!59 = !{ptr @stv0900_activate_s2_modcod._entry, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @stv0900_activate_s2_modcod._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 941, i32 2}
!63 = !{ptr @stv0900_activate_s2_modcod_single._entry, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @stv0900_activate_s2_modcod_single._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 1079, i32 2}
!67 = !{ptr @stv0900_get_optim_carr_loop._entry, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @stv0900_get_optim_carr_loop._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 1195, i32 2}
!71 = !{ptr @stv0900_get_optim_short_carr_loop._entry, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @stv0900_get_optim_short_carr_loop._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 1951, i32 2}
!75 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @stv0900_attach._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @stv0900_attach._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 1955, i32 2}
!80 = !{ptr @stv0900_attach._entry.34, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @stv0900_attach._entry_ptr.36, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @__ksymtab_stv0900_attach, !83, !"__ksymtab_stv0900_attach", i1 false, i1 false}
!83 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 1960, i32 1}
!84 = !{ptr @__UNIQUE_ID_debug291, !85, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!85 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 1962, i32 1}
!86 = !{ptr @__UNIQUE_ID_author292, !87, !"__UNIQUE_ID_author292", i1 false, i1 false}
!87 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 1964, i32 1}
!88 = !{ptr @__UNIQUE_ID_description293, !89, !"__UNIQUE_ID_description293", i1 false, i1 false}
!89 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 1965, i32 1}
!90 = !{ptr @__UNIQUE_ID_file294, !91, !"__UNIQUE_ID_file294", i1 false, i1 false}
!91 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 1966, i32 1}
!92 = !{ptr @__UNIQUE_ID_license295, !91, !"__UNIQUE_ID_license295", i1 false, i1 false}
!93 = !{ptr @__param_str_debug, !3, !"__param_str_debug", i1 false, i1 false}
!94 = !{ptr @FE_STV0900_S2CarLoop, !95, !"FE_STV0900_S2CarLoop", i1 false, i1 false}
!95 = !{!"../drivers/media/dvb-frontends/stv0900_init.h", i32 140, i32 44}
!96 = !{ptr @FE_STV0900_S2LowQPCarLoopCut30, !97, !"FE_STV0900_S2LowQPCarLoopCut30", i1 false, i1 false}
!97 = !{!"../drivers/media/dvb-frontends/stv0900_init.h", i32 329, i32 31}
!98 = !{ptr @FE_STV0900_S2APSKCarLoopCut30, !99, !"FE_STV0900_S2APSKCarLoopCut30", i1 false, i1 false}
!99 = !{!"../drivers/media/dvb-frontends/stv0900_init.h", i32 301, i32 31}
!100 = !{ptr @FE_STV0900_S2CarLoopCut20, !101, !"FE_STV0900_S2CarLoopCut20", i1 false, i1 false}
!101 = !{!"../drivers/media/dvb-frontends/stv0900_init.h", i32 175, i32 44}
!102 = !{ptr @FE_STV0900_S2LowQPCarLoopCut20, !103, !"FE_STV0900_S2LowQPCarLoopCut20", i1 false, i1 false}
!103 = !{!"../drivers/media/dvb-frontends/stv0900_init.h", i32 240, i32 44}
!104 = !{ptr @FE_STV0900_S2APSKCarLoopCut20, !105, !"FE_STV0900_S2APSKCarLoopCut20", i1 false, i1 false}
!105 = !{!"../drivers/media/dvb-frontends/stv0900_init.h", i32 211, i32 44}
!106 = !{ptr @FE_STV0900_S2CarLoopCut30, !107, !"FE_STV0900_S2CarLoopCut30", i1 false, i1 false}
!107 = !{!"../drivers/media/dvb-frontends/stv0900_init.h", i32 267, i32 44}
!108 = !{ptr @FE_STV0900_S2ShortCarLoop, !109, !"FE_STV0900_S2ShortCarLoop", i1 false, i1 false}
!109 = !{!"../drivers/media/dvb-frontends/stv0900_init.h", i32 254, i32 44}
!110 = !{ptr @FE_STV0900_S2ShortCarLoopCut30, !111, !"FE_STV0900_S2ShortCarLoopCut30", i1 false, i1 false}
!111 = !{!"../drivers/media/dvb-frontends/stv0900_init.h", i32 341, i32 1}
!112 = !{ptr @stv0900_ops, !113, !"stv0900_ops", i1 false, i1 false}
!113 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 1864, i32 38}
!114 = !{ptr @.str.37, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 1823, i32 2}
!116 = !{ptr @stv0900_release._entry, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @stv0900_release._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.39, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 1830, i32 3}
!120 = !{ptr @stv0900_release._entry.38, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @stv0900_release._entry_ptr.40, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @stv0900_first_inode, !123, !"stv0900_first_inode", i1 false, i1 false}
!123 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 34, i32 30}
!124 = !{ptr @.str.41, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 1694, i32 2}
!126 = !{ptr @stv0900_init._entry, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @stv0900_init._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.42, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 1843, i32 2}
!130 = !{ptr @stv0900_sleep._entry, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @stv0900_sleep._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.43, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 1644, i32 2}
!134 = !{ptr @.str.44, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @stv0900_read_status._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @stv0900_read_status._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @stv0900_read_status._entry.45, !138, !"_entry", i1 false, i1 false}
!138 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 1647, i32 3}
!139 = !{ptr @stv0900_read_status._entry_ptr.46, !138, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @stv0900_read_status._entry.47, !141, !"_entry", i1 false, i1 false}
!141 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 1658, i32 3}
!142 = !{ptr @stv0900_read_status._entry_ptr.48, !141, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.49, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 1527, i32 2}
!145 = !{ptr @.str.50, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @stv0900_status._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @stv0900_status._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.52, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 1537, i32 3}
!150 = !{ptr @stv0900_status._entry.51, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @stv0900_status._entry_ptr.53, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.54, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 280, i32 2}
!154 = !{ptr @.str.55, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @stv0900_get_mclk_freq._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @stv0900_get_mclk_freq._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.56, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 600, i32 2}
!159 = !{ptr @stv0900_get_rf_level._entry, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @stv0900_get_rf_level._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.58, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 634, i32 2}
!163 = !{ptr @stv0900_get_rf_level._entry.57, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @stv0900_get_rf_level._entry_ptr.59, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @stv0900_rf, !166, !"stv0900_rf", i1 false, i1 false}
!166 = !{!"../drivers/media/dvb-frontends/stv0900_init.h", i32 80, i32 35}
!167 = !{ptr @.str.61, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 673, i32 2}
!169 = !{ptr @stv0900_carr_get_quality._entry, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @stv0900_carr_get_quality._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @stv0900_s2_cn, !172, !"stv0900_s2_cn", i1 false, i1 false}
!172 = !{!"../drivers/media/dvb-frontends/stv0900_init.h", i32 18, i32 35}
!173 = !{ptr @.str.63, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 1793, i32 2}
!175 = !{ptr @.str.64, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @stv0900_set_tone._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @stv0900_set_tone._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.65, !174, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.66, !174, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.67, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 1574, i32 2}
!182 = !{ptr @stv0900_search._entry, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @stv0900_search._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.69, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 1631, i32 3}
!186 = !{ptr @stv0900_search._entry.68, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @stv0900_search._entry_ptr.70, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.72, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 1634, i32 3}
!190 = !{ptr @stv0900_search._entry.71, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @stv0900_search._entry_ptr.73, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.74, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 1546, i32 2}
!194 = !{ptr @stv0900_set_mis._entry, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @stv0900_set_mis._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.76, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 1549, i32 3}
!198 = !{ptr @stv0900_set_mis._entry.75, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @stv0900_set_mis._entry_ptr.77, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.79, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 1552, i32 3}
!202 = !{ptr @stv0900_set_mis._entry.78, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @stv0900_set_mis._entry_ptr.80, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.81, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 1343, i32 2}
!206 = !{ptr @stv0900_init_internal._entry, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @stv0900_init_internal._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.83, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 1348, i32 3}
!210 = !{ptr @stv0900_init_internal._entry.82, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @stv0900_init_internal._entry_ptr.84, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.86, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 1366, i32 3}
!214 = !{ptr @stv0900_init_internal._entry.85, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @stv0900_init_internal._entry_ptr.87, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @STV0900_InitVal, !217, !"STV0900_InitVal", i1 false, i1 false}
!217 = !{!"../drivers/media/dvb-frontends/stv0900_init.h", i32 350, i32 18}
!218 = !{ptr @STV0900_Cut20_AddOnVal, !219, !"STV0900_Cut20_AddOnVal", i1 false, i1 false}
!219 = !{!"../drivers/media/dvb-frontends/stv0900_init.h", i32 534, i32 18}
!220 = !{ptr @.str.88, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 1264, i32 2}
!222 = !{ptr @stv0900_st_dvbs2_single._entry, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @stv0900_st_dvbs2_single._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.89, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 363, i32 2}
!226 = !{ptr @stv0900_set_ts_parallel_serial._entry, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @stv0900_set_ts_parallel_serial._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.91, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 405, i32 5}
!230 = !{ptr @stv0900_set_ts_parallel_serial._entry.90, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @stv0900_set_ts_parallel_serial._entry_ptr.92, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.94, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 451, i32 5}
!234 = !{ptr @stv0900_set_ts_parallel_serial._entry.93, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @stv0900_set_ts_parallel_serial._entry_ptr.95, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.96, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/media/dvb-frontends/stv0900_core.c", i32 295, i32 2}
!238 = !{ptr @.str.97, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @stv0900_set_mclk._entry, !237, !"_entry", i1 false, i1 false}
!240 = !{ptr @stv0900_set_mclk._entry_ptr, !237, !"_entry_ptr", i1 false, i1 false}
!241 = !{i32 1, !"wchar_size", i32 2}
!242 = !{i32 1, !"min_enum_size", i32 4}
!243 = !{i32 8, !"branch-target-enforcement", i32 0}
!244 = !{i32 8, !"sign-return-address", i32 0}
!245 = !{i32 8, !"sign-return-address-all", i32 0}
!246 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!247 = !{i32 7, !"uwtable", i32 1}
!248 = !{i32 7, !"frame-pointer", i32 2}
!249 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}

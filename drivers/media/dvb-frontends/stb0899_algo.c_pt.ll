; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/stb0899_algo.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/stb0899_algo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.stb0899_state = type { ptr, ptr, %struct.dvb_frontend, ptr, %struct.stb0899_internal, i32, %struct.stb0899_params, i32, %struct.mutex }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.78], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.78 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.79 }>
%union.anon.79 = type { i64 }
%struct.stb0899_internal = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i8, i32, i8, i8 }
%struct.stb0899_params = type { i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.stb0899_config = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__const.stb0899_dvbs_algo.betaTab = private unnamed_addr constant [5 x [4 x i32]] [[4 x i32] [i32 37, i32 34, i32 32, i32 31], [4 x i32] [i32 37, i32 35, i32 33, i32 31], [4 x i32] [i32 37, i32 35, i32 33, i32 31], [4 x i32] [i32 37, i32 36, i32 33, i32 32], [4 x i32] [i32 37, i32 36, i32 33, i32 32]], align 4
@stb0899_dvbs_algo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: Set the timing loop to acquisition\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stb0899_dvbs_algo\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/media/dvb-frontends/stb0899_algo.c\00", [53 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr = internal global ptr @stb0899_dvbs_algo._entry, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015%s: Set the timing loop to acquisition\0A\00", [54 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.5 = internal global ptr @stb0899_dvbs_algo._entry.3, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s: Set the timing loop to acquisition\0A\00", [54 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.8 = internal global ptr @stb0899_dvbs_algo._entry.6, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s: Set the timing loop to acquisition\0A\00", [54 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.11 = internal global ptr @stb0899_dvbs_algo._entry.9, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: Derot Percent=%d Srate=%d mclk=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.14 = internal global ptr @stb0899_dvbs_algo._entry.12, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015%s: Derot Percent=%d Srate=%d mclk=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.17 = internal global ptr @stb0899_dvbs_algo._entry.15, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s: Derot Percent=%d Srate=%d mclk=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.20 = internal global ptr @stb0899_dvbs_algo._entry.18, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: Derot Percent=%d Srate=%d mclk=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.23 = internal global ptr @stb0899_dvbs_algo._entry.21, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 560, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: RESET stream merger\0A\00", [37 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.26 = internal global ptr @stb0899_dvbs_algo._entry.24, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.1, ptr @.str.2, i32 560, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\015%s: RESET stream merger\0A\00", [37 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.29 = internal global ptr @stb0899_dvbs_algo._entry.27, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.1, ptr @.str.2, i32 560, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: RESET stream merger\0A\00", [37 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.32 = internal global ptr @stb0899_dvbs_algo._entry.30, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.1, ptr @.str.2, i32 560, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: RESET stream merger\0A\00", [37 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.35 = internal global ptr @stb0899_dvbs_algo._entry.33, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.1, ptr @.str.2, i32 595, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: Tuner set frequency\0A\00", [37 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.38 = internal global ptr @stb0899_dvbs_algo._entry.36, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.1, ptr @.str.2, i32 595, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\015%s: Tuner set frequency\0A\00", [37 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.41 = internal global ptr @stb0899_dvbs_algo._entry.39, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.1, ptr @.str.2, i32 595, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: Tuner set frequency\0A\00", [37 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.44 = internal global ptr @stb0899_dvbs_algo._entry.42, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.1, ptr @.str.2, i32 595, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: Tuner set frequency\0A\00", [37 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.47 = internal global ptr @stb0899_dvbs_algo._entry.45, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.1, ptr @.str.2, i32 603, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: current derot freq=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.50 = internal global ptr @stb0899_dvbs_algo._entry.48, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.1, ptr @.str.2, i32 603, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\015%s: current derot freq=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.53 = internal global ptr @stb0899_dvbs_algo._entry.51, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.1, ptr @.str.2, i32 603, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: current derot freq=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.56 = internal global ptr @stb0899_dvbs_algo._entry.54, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.1, ptr @.str.2, i32 603, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: current derot freq=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.59 = internal global ptr @stb0899_dvbs_algo._entry.57, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.1, ptr @.str.2, i32 621, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: TIMING OK ! Derot freq=%d, mclk=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.62 = internal global ptr @stb0899_dvbs_algo._entry.60, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.1, ptr @.str.2, i32 621, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015%s: TIMING OK ! Derot freq=%d, mclk=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.65 = internal global ptr @stb0899_dvbs_algo._entry.63, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.1, ptr @.str.2, i32 621, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s: TIMING OK ! Derot freq=%d, mclk=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.68 = internal global ptr @stb0899_dvbs_algo._entry.66, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.1, ptr @.str.2, i32 621, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s: TIMING OK ! Derot freq=%d, mclk=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.71 = internal global ptr @stb0899_dvbs_algo._entry.69, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.1, ptr @.str.2, i32 626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: CARRIER OK ! Derot freq=%d, mclk=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.74 = internal global ptr @stb0899_dvbs_algo._entry.72, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.1, ptr @.str.2, i32 626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015%s: CARRIER OK ! Derot freq=%d, mclk=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.77 = internal global ptr @stb0899_dvbs_algo._entry.75, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.1, ptr @.str.2, i32 626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s: CARRIER OK ! Derot freq=%d, mclk=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.80 = internal global ptr @stb0899_dvbs_algo._entry.78, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.1, ptr @.str.2, i32 626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s: CARRIER OK ! Derot freq=%d, mclk=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.83 = internal global ptr @stb0899_dvbs_algo._entry.81, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.1, ptr @.str.2, i32 631, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: DATA OK ! Derot freq=%d, mclk=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.86 = internal global ptr @stb0899_dvbs_algo._entry.84, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.1, ptr @.str.2, i32 631, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015%s: DATA OK ! Derot freq=%d, mclk=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.89 = internal global ptr @stb0899_dvbs_algo._entry.87, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.1, ptr @.str.2, i32 631, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s: DATA OK ! Derot freq=%d, mclk=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.92 = internal global ptr @stb0899_dvbs_algo._entry.90, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.1, ptr @.str.2, i32 631, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: DATA OK ! Derot freq=%d, mclk=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.95 = internal global ptr @stb0899_dvbs_algo._entry.93, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.1, ptr @.str.2, i32 636, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: RANGE OK ! derot freq=%d, mclk=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.98 = internal global ptr @stb0899_dvbs_algo._entry.96, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.1, ptr @.str.2, i32 636, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015%s: RANGE OK ! derot freq=%d, mclk=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.101 = internal global ptr @stb0899_dvbs_algo._entry.99, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.1, ptr @.str.2, i32 636, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s: RANGE OK ! derot freq=%d, mclk=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.104 = internal global ptr @stb0899_dvbs_algo._entry.102, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.1, ptr @.str.2, i32 636, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: RANGE OK ! derot freq=%d, mclk=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.107 = internal global ptr @stb0899_dvbs_algo._entry.105, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.1, ptr @.str.2, i32 643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: freq=%d, internal resultant freq=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.110 = internal global ptr @stb0899_dvbs_algo._entry.108, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.1, ptr @.str.2, i32 643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015%s: freq=%d, internal resultant freq=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.113 = internal global ptr @stb0899_dvbs_algo._entry.111, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.1, ptr @.str.2, i32 643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s: freq=%d, internal resultant freq=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.116 = internal global ptr @stb0899_dvbs_algo._entry.114, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.1, ptr @.str.2, i32 643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s: freq=%d, internal resultant freq=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.119 = internal global ptr @stb0899_dvbs_algo._entry.117, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.1, ptr @.str.2, i32 647, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: internal puncture rate=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.122 = internal global ptr @stb0899_dvbs_algo._entry.120, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.1, ptr @.str.2, i32 647, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015%s: internal puncture rate=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.125 = internal global ptr @stb0899_dvbs_algo._entry.123, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.1, ptr @.str.2, i32 647, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: internal puncture rate=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.128 = internal global ptr @stb0899_dvbs_algo._entry.126, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.1, ptr @.str.2, i32 647, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: internal puncture rate=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.131 = internal global ptr @stb0899_dvbs_algo._entry.129, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.1, ptr @.str.2, i32 662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: Locked & Range OK !\0A\00", [37 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.134 = internal global ptr @stb0899_dvbs_algo._entry.132, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.1, ptr @.str.2, i32 662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\015%s: Locked & Range OK !\0A\00", [37 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.137 = internal global ptr @stb0899_dvbs_algo._entry.135, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.1, ptr @.str.2, i32 662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: Locked & Range OK !\0A\00", [37 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.140 = internal global ptr @stb0899_dvbs_algo._entry.138, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.1, ptr @.str.2, i32 662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: Locked & Range OK !\0A\00", [37 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.143 = internal global ptr @stb0899_dvbs_algo._entry.141, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.1, ptr @.str.2, i32 703, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: Unsupported Puncture Rate\0A\00", [63 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.146 = internal global ptr @stb0899_dvbs_algo._entry.144, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.1, ptr @.str.2, i32 703, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015%s: Unsupported Puncture Rate\0A\00", [63 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.149 = internal global ptr @stb0899_dvbs_algo._entry.147, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.1, ptr @.str.2, i32 703, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: Unsupported Puncture Rate\0A\00", [63 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.152 = internal global ptr @stb0899_dvbs_algo._entry.150, section ".printk_index", align 4
@stb0899_dvbs_algo._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.1, ptr @.str.2, i32 703, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: Unsupported Puncture Rate\0A\00", [63 x i8] zeroinitializer }, align 32
@stb0899_dvbs_algo._entry_ptr.155 = internal global ptr @stb0899_dvbs_algo._entry.153, section ".printk_index", align 4
@stb0899_dvbs2_algo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.157, ptr @.str.2, i32 1380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: ------------> DVB-S2 DEMOD LOCK !\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stb0899_dvbs2_algo\00", [45 x i8] zeroinitializer }, align 32
@stb0899_dvbs2_algo._entry_ptr = internal global ptr @stb0899_dvbs2_algo._entry, section ".printk_index", align 4
@stb0899_dvbs2_algo._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.157, ptr @.str.2, i32 1380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015%s: ------------> DVB-S2 DEMOD LOCK !\0A\00", [55 x i8] zeroinitializer }, align 32
@stb0899_dvbs2_algo._entry_ptr.160 = internal global ptr @stb0899_dvbs2_algo._entry.158, section ".printk_index", align 4
@stb0899_dvbs2_algo._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.157, ptr @.str.2, i32 1380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s: ------------> DVB-S2 DEMOD LOCK !\0A\00", [55 x i8] zeroinitializer }, align 32
@stb0899_dvbs2_algo._entry_ptr.163 = internal global ptr @stb0899_dvbs2_algo._entry.161, section ".printk_index", align 4
@stb0899_dvbs2_algo._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.157, ptr @.str.2, i32 1380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: ------------> DVB-S2 DEMOD LOCK !\0A\00", [55 x i8] zeroinitializer }, align 32
@stb0899_dvbs2_algo._entry_ptr.166 = internal global ptr @stb0899_dvbs2_algo._entry.164, section ".printk_index", align 4
@stb0899_dvbs2_algo._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.157, ptr @.str.2, i32 1436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: ----------------> DVB-S2 FEC Lock !\0A\00", [53 x i8] zeroinitializer }, align 32
@stb0899_dvbs2_algo._entry_ptr.169 = internal global ptr @stb0899_dvbs2_algo._entry.167, section ".printk_index", align 4
@stb0899_dvbs2_algo._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.157, ptr @.str.2, i32 1436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015%s: ----------------> DVB-S2 FEC Lock !\0A\00", [53 x i8] zeroinitializer }, align 32
@stb0899_dvbs2_algo._entry_ptr.172 = internal global ptr @stb0899_dvbs2_algo._entry.170, section ".printk_index", align 4
@stb0899_dvbs2_algo._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.157, ptr @.str.2, i32 1436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s: ----------------> DVB-S2 FEC Lock !\0A\00", [53 x i8] zeroinitializer }, align 32
@stb0899_dvbs2_algo._entry_ptr.175 = internal global ptr @stb0899_dvbs2_algo._entry.173, section ".printk_index", align 4
@stb0899_dvbs2_algo._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.157, ptr @.str.2, i32 1436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s: ----------------> DVB-S2 FEC Lock !\0A\00", [53 x i8] zeroinitializer }, align 32
@stb0899_dvbs2_algo._entry_ptr.178 = internal global ptr @stb0899_dvbs2_algo._entry.176, section ".printk_index", align 4
@stb0899_set_srate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.180, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\013%s: -->\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stb0899_set_srate\00", [46 x i8] zeroinitializer }, align 32
@stb0899_set_srate._entry_ptr = internal global ptr @stb0899_set_srate._entry, section ".printk_index", align 4
@stb0899_set_srate._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.180, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\015%s: -->\0A\00", [21 x i8] zeroinitializer }, align 32
@stb0899_set_srate._entry_ptr.183 = internal global ptr @stb0899_set_srate._entry.181, section ".printk_index", align 4
@stb0899_set_srate._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.180, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\016%s: -->\0A\00", [21 x i8] zeroinitializer }, align 32
@stb0899_set_srate._entry_ptr.186 = internal global ptr @stb0899_set_srate._entry.184, section ".printk_index", align 4
@stb0899_set_srate._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.180, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\017%s: -->\0A\00", [21 x i8] zeroinitializer }, align 32
@stb0899_set_srate._entry_ptr.189 = internal global ptr @stb0899_set_srate._entry.187, section ".printk_index", align 4
@stb0899_search_tmg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.191, ptr @.str.2, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: ------->TIMING OK ! Derot Freq = %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stb0899_search_tmg\00", [45 x i8] zeroinitializer }, align 32
@stb0899_search_tmg._entry_ptr = internal global ptr @stb0899_search_tmg._entry, section ".printk_index", align 4
@stb0899_search_tmg._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.191, ptr @.str.2, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015%s: ------->TIMING OK ! Derot Freq = %d\0A\00", [53 x i8] zeroinitializer }, align 32
@stb0899_search_tmg._entry_ptr.194 = internal global ptr @stb0899_search_tmg._entry.192, section ".printk_index", align 4
@stb0899_search_tmg._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.191, ptr @.str.2, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s: ------->TIMING OK ! Derot Freq = %d\0A\00", [53 x i8] zeroinitializer }, align 32
@stb0899_search_tmg._entry_ptr.197 = internal global ptr @stb0899_search_tmg._entry.195, section ".printk_index", align 4
@stb0899_search_tmg._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.191, ptr @.str.2, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s: ------->TIMING OK ! Derot Freq = %d\0A\00", [53 x i8] zeroinitializer }, align 32
@stb0899_search_tmg._entry_ptr.200 = internal global ptr @stb0899_search_tmg._entry.198, section ".printk_index", align 4
@stb0899_check_tmg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.202, ptr @.str.2, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: -->ANALOG Carrier !\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stb0899_check_tmg\00", [46 x i8] zeroinitializer }, align 32
@stb0899_check_tmg._entry_ptr = internal global ptr @stb0899_check_tmg._entry, section ".printk_index", align 4
@stb0899_check_tmg._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.202, ptr @.str.2, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\015%s: -->ANALOG Carrier !\0A\00", [37 x i8] zeroinitializer }, align 32
@stb0899_check_tmg._entry_ptr.205 = internal global ptr @stb0899_check_tmg._entry.203, section ".printk_index", align 4
@stb0899_check_tmg._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.202, ptr @.str.2, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: -->ANALOG Carrier !\0A\00", [37 x i8] zeroinitializer }, align 32
@stb0899_check_tmg._entry_ptr.208 = internal global ptr @stb0899_check_tmg._entry.206, section ".printk_index", align 4
@stb0899_check_tmg._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.202, ptr @.str.2, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: -->ANALOG Carrier !\0A\00", [37 x i8] zeroinitializer }, align 32
@stb0899_check_tmg._entry_ptr.211 = internal global ptr @stb0899_check_tmg._entry.209, section ".printk_index", align 4
@stb0899_check_tmg._entry.212 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.202, ptr @.str.2, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: ------->TIMING OK !\0A\00", [37 x i8] zeroinitializer }, align 32
@stb0899_check_tmg._entry_ptr.214 = internal global ptr @stb0899_check_tmg._entry.212, section ".printk_index", align 4
@stb0899_check_tmg._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.202, ptr @.str.2, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\015%s: ------->TIMING OK !\0A\00", [37 x i8] zeroinitializer }, align 32
@stb0899_check_tmg._entry_ptr.217 = internal global ptr @stb0899_check_tmg._entry.215, section ".printk_index", align 4
@stb0899_check_tmg._entry.218 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.202, ptr @.str.2, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: ------->TIMING OK !\0A\00", [37 x i8] zeroinitializer }, align 32
@stb0899_check_tmg._entry_ptr.220 = internal global ptr @stb0899_check_tmg._entry.218, section ".printk_index", align 4
@stb0899_check_tmg._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.202, ptr @.str.2, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: ------->TIMING OK !\0A\00", [37 x i8] zeroinitializer }, align 32
@stb0899_check_tmg._entry_ptr.223 = internal global ptr @stb0899_check_tmg._entry.221, section ".printk_index", align 4
@stb0899_check_tmg._entry.224 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.202, ptr @.str.2, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013%s: -->NO TIMING !\0A\00", [42 x i8] zeroinitializer }, align 32
@stb0899_check_tmg._entry_ptr.226 = internal global ptr @stb0899_check_tmg._entry.224, section ".printk_index", align 4
@stb0899_check_tmg._entry.227 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.202, ptr @.str.2, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\015%s: -->NO TIMING !\0A\00", [42 x i8] zeroinitializer }, align 32
@stb0899_check_tmg._entry_ptr.229 = internal global ptr @stb0899_check_tmg._entry.227, section ".printk_index", align 4
@stb0899_check_tmg._entry.230 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.231, ptr @.str.202, ptr @.str.2, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016%s: -->NO TIMING !\0A\00", [42 x i8] zeroinitializer }, align 32
@stb0899_check_tmg._entry_ptr.232 = internal global ptr @stb0899_check_tmg._entry.230, section ".printk_index", align 4
@stb0899_check_tmg._entry.233 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.234, ptr @.str.202, ptr @.str.2, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: -->NO TIMING !\0A\00", [42 x i8] zeroinitializer }, align 32
@stb0899_check_tmg._entry_ptr.235 = internal global ptr @stb0899_check_tmg._entry.233, section ".printk_index", align 4
@stb0899_search_carrier._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.237, ptr @.str.2, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: Derot Freq=%d, mclk=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stb0899_search_carrier\00", [41 x i8] zeroinitializer }, align 32
@stb0899_search_carrier._entry_ptr = internal global ptr @stb0899_search_carrier._entry, section ".printk_index", align 4
@stb0899_search_carrier._entry.238 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.239, ptr @.str.237, ptr @.str.2, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015%s: Derot Freq=%d, mclk=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@stb0899_search_carrier._entry_ptr.240 = internal global ptr @stb0899_search_carrier._entry.238, section ".printk_index", align 4
@stb0899_search_carrier._entry.241 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.242, ptr @.str.237, ptr @.str.2, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s: Derot Freq=%d, mclk=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@stb0899_search_carrier._entry_ptr.243 = internal global ptr @stb0899_search_carrier._entry.241, section ".printk_index", align 4
@stb0899_search_carrier._entry.244 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.245, ptr @.str.237, ptr @.str.2, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: Derot Freq=%d, mclk=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@stb0899_search_carrier._entry_ptr.246 = internal global ptr @stb0899_search_carrier._entry.244, section ".printk_index", align 4
@stb0899_search_carrier._entry.247 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.248, ptr @.str.237, ptr @.str.2, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: ----> CARRIER OK !, Derot Freq=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@stb0899_search_carrier._entry_ptr.249 = internal global ptr @stb0899_search_carrier._entry.247, section ".printk_index", align 4
@stb0899_search_carrier._entry.250 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.251, ptr @.str.237, ptr @.str.2, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015%s: ----> CARRIER OK !, Derot Freq=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@stb0899_search_carrier._entry_ptr.252 = internal global ptr @stb0899_search_carrier._entry.250, section ".printk_index", align 4
@stb0899_search_carrier._entry.253 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.254, ptr @.str.237, ptr @.str.2, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s: ----> CARRIER OK !, Derot Freq=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@stb0899_search_carrier._entry_ptr.255 = internal global ptr @stb0899_search_carrier._entry.253, section ".printk_index", align 4
@stb0899_search_carrier._entry.256 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.257, ptr @.str.237, ptr @.str.2, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: ----> CARRIER OK !, Derot Freq=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@stb0899_search_carrier._entry_ptr.258 = internal global ptr @stb0899_search_carrier._entry.256, section ".printk_index", align 4
@stb0899_check_carrier._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.259, ptr @.str.260, ptr @.str.2, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013%s: --------------------> STB0899_DSTATUS=[0x%02x]\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stb0899_check_carrier\00", [42 x i8] zeroinitializer }, align 32
@stb0899_check_carrier._entry_ptr = internal global ptr @stb0899_check_carrier._entry, section ".printk_index", align 4
@stb0899_check_carrier._entry.261 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.262, ptr @.str.260, ptr @.str.2, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\015%s: --------------------> STB0899_DSTATUS=[0x%02x]\0A\00", [42 x i8] zeroinitializer }, align 32
@stb0899_check_carrier._entry_ptr.263 = internal global ptr @stb0899_check_carrier._entry.261, section ".printk_index", align 4
@stb0899_check_carrier._entry.264 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.265, ptr @.str.260, ptr @.str.2, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016%s: --------------------> STB0899_DSTATUS=[0x%02x]\0A\00", [42 x i8] zeroinitializer }, align 32
@stb0899_check_carrier._entry_ptr.266 = internal global ptr @stb0899_check_carrier._entry.264, section ".printk_index", align 4
@stb0899_check_carrier._entry.267 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.268, ptr @.str.260, ptr @.str.2, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017%s: --------------------> STB0899_DSTATUS=[0x%02x]\0A\00", [42 x i8] zeroinitializer }, align 32
@stb0899_check_carrier._entry_ptr.269 = internal global ptr @stb0899_check_carrier._entry.267, section ".printk_index", align 4
@stb0899_check_carrier._entry.270 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.271, ptr @.str.260, ptr @.str.2, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: -------------> CARRIEROK !\0A\00", [62 x i8] zeroinitializer }, align 32
@stb0899_check_carrier._entry_ptr.272 = internal global ptr @stb0899_check_carrier._entry.270, section ".printk_index", align 4
@stb0899_check_carrier._entry.273 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.274, ptr @.str.260, ptr @.str.2, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015%s: -------------> CARRIEROK !\0A\00", [62 x i8] zeroinitializer }, align 32
@stb0899_check_carrier._entry_ptr.275 = internal global ptr @stb0899_check_carrier._entry.273, section ".printk_index", align 4
@stb0899_check_carrier._entry.276 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.277, ptr @.str.260, ptr @.str.2, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: -------------> CARRIEROK !\0A\00", [62 x i8] zeroinitializer }, align 32
@stb0899_check_carrier._entry_ptr.278 = internal global ptr @stb0899_check_carrier._entry.276, section ".printk_index", align 4
@stb0899_check_carrier._entry.279 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.280, ptr @.str.260, ptr @.str.2, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: -------------> CARRIEROK !\0A\00", [62 x i8] zeroinitializer }, align 32
@stb0899_check_carrier._entry_ptr.281 = internal global ptr @stb0899_check_carrier._entry.279, section ".printk_index", align 4
@stb0899_check_carrier._entry.282 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.283, ptr @.str.260, ptr @.str.2, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: -------------> NOCARRIER !\0A\00", [62 x i8] zeroinitializer }, align 32
@stb0899_check_carrier._entry_ptr.284 = internal global ptr @stb0899_check_carrier._entry.282, section ".printk_index", align 4
@stb0899_check_carrier._entry.285 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.286, ptr @.str.260, ptr @.str.2, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015%s: -------------> NOCARRIER !\0A\00", [62 x i8] zeroinitializer }, align 32
@stb0899_check_carrier._entry_ptr.287 = internal global ptr @stb0899_check_carrier._entry.285, section ".printk_index", align 4
@stb0899_check_carrier._entry.288 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.289, ptr @.str.260, ptr @.str.2, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: -------------> NOCARRIER !\0A\00", [62 x i8] zeroinitializer }, align 32
@stb0899_check_carrier._entry_ptr.290 = internal global ptr @stb0899_check_carrier._entry.288, section ".printk_index", align 4
@stb0899_check_carrier._entry.291 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.292, ptr @.str.260, ptr @.str.2, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: -------------> NOCARRIER !\0A\00", [62 x i8] zeroinitializer }, align 32
@stb0899_check_carrier._entry_ptr.293 = internal global ptr @stb0899_check_carrier._entry.291, section ".printk_index", align 4
@stb0899_search_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.294, ptr @.str.295, ptr @.str.2, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: Derot freq=%d, mclk=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stb0899_search_data\00", [44 x i8] zeroinitializer }, align 32
@stb0899_search_data._entry_ptr = internal global ptr @stb0899_search_data._entry, section ".printk_index", align 4
@stb0899_search_data._entry.296 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.297, ptr @.str.295, ptr @.str.2, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015%s: Derot freq=%d, mclk=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@stb0899_search_data._entry_ptr.298 = internal global ptr @stb0899_search_data._entry.296, section ".printk_index", align 4
@stb0899_search_data._entry.299 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.300, ptr @.str.295, ptr @.str.2, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s: Derot freq=%d, mclk=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@stb0899_search_data._entry_ptr.301 = internal global ptr @stb0899_search_data._entry.299, section ".printk_index", align 4
@stb0899_search_data._entry.302 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.303, ptr @.str.295, ptr @.str.2, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: Derot freq=%d, mclk=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@stb0899_search_data._entry_ptr.304 = internal global ptr @stb0899_search_data._entry.302, section ".printk_index", align 4
@stb0899_search_data._entry.305 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.306, ptr @.str.295, ptr @.str.2, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: ------> DATAOK ! Derot Freq=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@stb0899_search_data._entry_ptr.307 = internal global ptr @stb0899_search_data._entry.305, section ".printk_index", align 4
@stb0899_search_data._entry.308 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.309, ptr @.str.295, ptr @.str.2, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015%s: ------> DATAOK ! Derot Freq=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@stb0899_search_data._entry_ptr.310 = internal global ptr @stb0899_search_data._entry.308, section ".printk_index", align 4
@stb0899_search_data._entry.311 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.312, ptr @.str.295, ptr @.str.2, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s: ------> DATAOK ! Derot Freq=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@stb0899_search_data._entry_ptr.313 = internal global ptr @stb0899_search_data._entry.311, section ".printk_index", align 4
@stb0899_search_data._entry.314 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.315, ptr @.str.295, ptr @.str.2, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: ------> DATAOK ! Derot Freq=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@stb0899_search_data._entry_ptr.316 = internal global ptr @stb0899_search_data._entry.314, section ".printk_index", align 4
@stb0899_check_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.317, ptr @.str.318, ptr @.str.2, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: -----------------> DATA OK !\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stb0899_check_data\00", [45 x i8] zeroinitializer }, align 32
@stb0899_check_data._entry_ptr = internal global ptr @stb0899_check_data._entry, section ".printk_index", align 4
@stb0899_check_data._entry.319 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.320, ptr @.str.318, ptr @.str.2, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015%s: -----------------> DATA OK !\0A\00", [60 x i8] zeroinitializer }, align 32
@stb0899_check_data._entry_ptr.321 = internal global ptr @stb0899_check_data._entry.319, section ".printk_index", align 4
@stb0899_check_data._entry.322 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.323, ptr @.str.318, ptr @.str.2, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s: -----------------> DATA OK !\0A\00", [60 x i8] zeroinitializer }, align 32
@stb0899_check_data._entry_ptr.324 = internal global ptr @stb0899_check_data._entry.322, section ".printk_index", align 4
@stb0899_check_data._entry.325 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.326, ptr @.str.318, ptr @.str.2, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: -----------------> DATA OK !\0A\00", [60 x i8] zeroinitializer }, align 32
@stb0899_check_data._entry_ptr.327 = internal global ptr @stb0899_check_data._entry.325, section ".printk_index", align 4
@stb0899_check_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.328, ptr @.str.329, ptr @.str.2, i32 448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s: ----> RANGEOK !\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stb0899_check_range\00", [44 x i8] zeroinitializer }, align 32
@stb0899_check_range._entry_ptr = internal global ptr @stb0899_check_range._entry, section ".printk_index", align 4
@stb0899_check_range._entry.330 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.331, ptr @.str.329, ptr @.str.2, i32 448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\015%s: ----> RANGEOK !\0A\00", [41 x i8] zeroinitializer }, align 32
@stb0899_check_range._entry_ptr.332 = internal global ptr @stb0899_check_range._entry.330, section ".printk_index", align 4
@stb0899_check_range._entry.333 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.334, ptr @.str.329, ptr @.str.2, i32 448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016%s: ----> RANGEOK !\0A\00", [41 x i8] zeroinitializer }, align 32
@stb0899_check_range._entry_ptr.335 = internal global ptr @stb0899_check_range._entry.333, section ".printk_index", align 4
@stb0899_check_range._entry.336 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.337, ptr @.str.329, ptr @.str.2, i32 448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.337 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: ----> RANGEOK !\0A\00", [41 x i8] zeroinitializer }, align 32
@stb0899_check_range._entry_ptr.338 = internal global ptr @stb0899_check_range._entry.336, section ".printk_index", align 4
@stb0899_check_range._entry.339 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.340, ptr @.str.329, ptr @.str.2, i32 451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.340 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: ----> OUT OF RANGE !\0A\00", [36 x i8] zeroinitializer }, align 32
@stb0899_check_range._entry_ptr.341 = internal global ptr @stb0899_check_range._entry.339, section ".printk_index", align 4
@stb0899_check_range._entry.342 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.343, ptr @.str.329, ptr @.str.2, i32 451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.343 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\015%s: ----> OUT OF RANGE !\0A\00", [36 x i8] zeroinitializer }, align 32
@stb0899_check_range._entry_ptr.344 = internal global ptr @stb0899_check_range._entry.342, section ".printk_index", align 4
@stb0899_check_range._entry.345 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.346, ptr @.str.329, ptr @.str.2, i32 451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.346 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s: ----> OUT OF RANGE !\0A\00", [36 x i8] zeroinitializer }, align 32
@stb0899_check_range._entry_ptr.347 = internal global ptr @stb0899_check_range._entry.345, section ".printk_index", align 4
@stb0899_check_range._entry.348 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.349, ptr @.str.329, ptr @.str.2, i32 451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.349 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: ----> OUT OF RANGE !\0A\00", [36 x i8] zeroinitializer }, align 32
@stb0899_check_range._entry_ptr.350 = internal global ptr @stb0899_check_range._entry.348, section ".printk_index", align 4
@stb0899_dvbs2_get_dmd_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.351, ptr @.str.352, ptr @.str.2, i32 1091, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.351 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: DMD_STATUS=[0x%02x]\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.352 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"stb0899_dvbs2_get_dmd_status\00", [35 x i8] zeroinitializer }, align 32
@stb0899_dvbs2_get_dmd_status._entry_ptr = internal global ptr @stb0899_dvbs2_get_dmd_status._entry, section ".printk_index", align 4
@stb0899_dvbs2_get_dmd_status._entry.353 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.354, ptr @.str.352, ptr @.str.2, i32 1091, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.354 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\015%s: DMD_STATUS=[0x%02x]\0A\00", [37 x i8] zeroinitializer }, align 32
@stb0899_dvbs2_get_dmd_status._entry_ptr.355 = internal global ptr @stb0899_dvbs2_get_dmd_status._entry.353, section ".printk_index", align 4
@stb0899_dvbs2_get_dmd_status._entry.356 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.357, ptr @.str.352, ptr @.str.2, i32 1091, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.357 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: DMD_STATUS=[0x%02x]\0A\00", [37 x i8] zeroinitializer }, align 32
@stb0899_dvbs2_get_dmd_status._entry_ptr.358 = internal global ptr @stb0899_dvbs2_get_dmd_status._entry.356, section ".printk_index", align 4
@stb0899_dvbs2_get_dmd_status._entry.359 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.360, ptr @.str.352, ptr @.str.2, i32 1091, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.360 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: DMD_STATUS=[0x%02x]\0A\00", [37 x i8] zeroinitializer }, align 32
@stb0899_dvbs2_get_dmd_status._entry_ptr.361 = internal global ptr @stb0899_dvbs2_get_dmd_status._entry.359, section ".printk_index", align 4
@stb0899_dvbs2_get_dmd_status._entry.362 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.363, ptr @.str.352, ptr @.str.2, i32 1093, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.363 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: ------------->IF AGC LOCKED !\0A\00", [59 x i8] zeroinitializer }, align 32
@stb0899_dvbs2_get_dmd_status._entry_ptr.364 = internal global ptr @stb0899_dvbs2_get_dmd_status._entry.362, section ".printk_index", align 4
@stb0899_dvbs2_get_dmd_status._entry.365 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.366, ptr @.str.352, ptr @.str.2, i32 1093, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.366 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015%s: ------------->IF AGC LOCKED !\0A\00", [59 x i8] zeroinitializer }, align 32
@stb0899_dvbs2_get_dmd_status._entry_ptr.367 = internal global ptr @stb0899_dvbs2_get_dmd_status._entry.365, section ".printk_index", align 4
@stb0899_dvbs2_get_dmd_status._entry.368 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.369, ptr @.str.352, ptr @.str.2, i32 1093, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.369 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: ------------->IF AGC LOCKED !\0A\00", [59 x i8] zeroinitializer }, align 32
@stb0899_dvbs2_get_dmd_status._entry_ptr.370 = internal global ptr @stb0899_dvbs2_get_dmd_status._entry.368, section ".printk_index", align 4
@stb0899_dvbs2_get_dmd_status._entry.371 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.372, ptr @.str.352, ptr @.str.2, i32 1093, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.372 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: ------------->IF AGC LOCKED !\0A\00", [59 x i8] zeroinitializer }, align 32
@stb0899_dvbs2_get_dmd_status._entry_ptr.373 = internal global ptr @stb0899_dvbs2_get_dmd_status._entry.371, section ".printk_index", align 4
@stb0899_dvbs2_get_dmd_status._entry.374 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.375, ptr @.str.352, ptr @.str.2, i32 1095, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.375 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: ----------->DMD STAT2=[0x%02x]\0A\00", [58 x i8] zeroinitializer }, align 32
@stb0899_dvbs2_get_dmd_status._entry_ptr.376 = internal global ptr @stb0899_dvbs2_get_dmd_status._entry.374, section ".printk_index", align 4
@stb0899_dvbs2_get_dmd_status._entry.377 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.378, ptr @.str.352, ptr @.str.2, i32 1095, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.378 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015%s: ----------->DMD STAT2=[0x%02x]\0A\00", [58 x i8] zeroinitializer }, align 32
@stb0899_dvbs2_get_dmd_status._entry_ptr.379 = internal global ptr @stb0899_dvbs2_get_dmd_status._entry.377, section ".printk_index", align 4
@stb0899_dvbs2_get_dmd_status._entry.380 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.381, ptr @.str.352, ptr @.str.2, i32 1095, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.381 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s: ----------->DMD STAT2=[0x%02x]\0A\00", [58 x i8] zeroinitializer }, align 32
@stb0899_dvbs2_get_dmd_status._entry_ptr.382 = internal global ptr @stb0899_dvbs2_get_dmd_status._entry.380, section ".printk_index", align 4
@stb0899_dvbs2_get_dmd_status._entry.383 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.384, ptr @.str.352, ptr @.str.2, i32 1095, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.384 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: ----------->DMD STAT2=[0x%02x]\0A\00", [58 x i8] zeroinitializer }, align 32
@stb0899_dvbs2_get_dmd_status._entry_ptr.385 = internal global ptr @stb0899_dvbs2_get_dmd_status._entry.383, section ".printk_index", align 4
@stb0899_dvbs2_get_dmd_status._entry.386 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.387, ptr @.str.352, ptr @.str.2, i32 1107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.387 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: ----------------> DVB-S2 LOCK !\0A\00", [57 x i8] zeroinitializer }, align 32
@stb0899_dvbs2_get_dmd_status._entry_ptr.388 = internal global ptr @stb0899_dvbs2_get_dmd_status._entry.386, section ".printk_index", align 4
@stb0899_dvbs2_get_dmd_status._entry.389 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.390, ptr @.str.352, ptr @.str.2, i32 1107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.390 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015%s: ----------------> DVB-S2 LOCK !\0A\00", [57 x i8] zeroinitializer }, align 32
@stb0899_dvbs2_get_dmd_status._entry_ptr.391 = internal global ptr @stb0899_dvbs2_get_dmd_status._entry.389, section ".printk_index", align 4
@stb0899_dvbs2_get_dmd_status._entry.392 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.393, ptr @.str.352, ptr @.str.2, i32 1107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.393 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s: ----------------> DVB-S2 LOCK !\0A\00", [57 x i8] zeroinitializer }, align 32
@stb0899_dvbs2_get_dmd_status._entry_ptr.394 = internal global ptr @stb0899_dvbs2_get_dmd_status._entry.392, section ".printk_index", align 4
@stb0899_dvbs2_get_dmd_status._entry.395 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.396, ptr @.str.352, ptr @.str.2, i32 1107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.396 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: ----------------> DVB-S2 LOCK !\0A\00", [57 x i8] zeroinitializer }, align 32
@stb0899_dvbs2_get_dmd_status._entry_ptr.397 = internal global ptr @stb0899_dvbs2_get_dmd_status._entry.395, section ".printk_index", align 4
@stb0899_dvbs2_get_fec_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.398, ptr @.str.399, ptr @.str.2, i32 1149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.398 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: ---------->DVB-S2 FEC LOCK !\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.399 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"stb0899_dvbs2_get_fec_status\00", [35 x i8] zeroinitializer }, align 32
@stb0899_dvbs2_get_fec_status._entry_ptr = internal global ptr @stb0899_dvbs2_get_fec_status._entry, section ".printk_index", align 4
@stb0899_dvbs2_get_fec_status._entry.400 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.401, ptr @.str.399, ptr @.str.2, i32 1149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.401 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015%s: ---------->DVB-S2 FEC LOCK !\0A\00", [60 x i8] zeroinitializer }, align 32
@stb0899_dvbs2_get_fec_status._entry_ptr.402 = internal global ptr @stb0899_dvbs2_get_fec_status._entry.400, section ".printk_index", align 4
@stb0899_dvbs2_get_fec_status._entry.403 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.404, ptr @.str.399, ptr @.str.2, i32 1149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.404 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s: ---------->DVB-S2 FEC LOCK !\0A\00", [60 x i8] zeroinitializer }, align 32
@stb0899_dvbs2_get_fec_status._entry_ptr.405 = internal global ptr @stb0899_dvbs2_get_fec_status._entry.403, section ".printk_index", align 4
@stb0899_dvbs2_get_fec_status._entry.406 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.407, ptr @.str.399, ptr @.str.2, i32 1149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.407 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: ---------->DVB-S2 FEC LOCK !\0A\00", [60 x i8] zeroinitializer }, align 32
@stb0899_dvbs2_get_fec_status._entry_ptr.408 = internal global ptr @stb0899_dvbs2_get_fec_status._entry.406, section ".printk_index", align 4
@stb0899_dvbs2_get_data_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.409, ptr @.str.410, ptr @.str.2, i32 1125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.409 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: ---------> CFGPDELSTATUS=[0x%02x]\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.410 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"stb0899_dvbs2_get_data_lock\00", [36 x i8] zeroinitializer }, align 32
@stb0899_dvbs2_get_data_lock._entry_ptr = internal global ptr @stb0899_dvbs2_get_data_lock._entry, section ".printk_index", align 4
@stb0899_dvbs2_get_data_lock._entry.411 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.412, ptr @.str.410, ptr @.str.2, i32 1125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.412 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015%s: ---------> CFGPDELSTATUS=[0x%02x]\0A\00", [55 x i8] zeroinitializer }, align 32
@stb0899_dvbs2_get_data_lock._entry_ptr.413 = internal global ptr @stb0899_dvbs2_get_data_lock._entry.411, section ".printk_index", align 4
@stb0899_dvbs2_get_data_lock._entry.414 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.415, ptr @.str.410, ptr @.str.2, i32 1125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.415 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s: ---------> CFGPDELSTATUS=[0x%02x]\0A\00", [55 x i8] zeroinitializer }, align 32
@stb0899_dvbs2_get_data_lock._entry_ptr.416 = internal global ptr @stb0899_dvbs2_get_data_lock._entry.414, section ".printk_index", align 4
@stb0899_dvbs2_get_data_lock._entry.417 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.418, ptr @.str.410, ptr @.str.2, i32 1125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.418 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: ---------> CFGPDELSTATUS=[0x%02x]\0A\00", [55 x i8] zeroinitializer }, align 32
@stb0899_dvbs2_get_data_lock._entry_ptr.419 = internal global ptr @stb0899_dvbs2_get_data_lock._entry.417, section ".printk_index", align 4
@switch.table.stb0899_dvbs2_algo = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 25, i32 38, i32 42], [20 x i8] zeroinitializer }, align 32
@switch.table.stb0899_dvbs2_algo.420 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1382400, i32 3677184, i32 4816896], [20 x i8] zeroinitializer }, align 32
@switch.table.stb0899_dvbs2_algo.421 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 12, i32 14, i32 17], [20 x i8] zeroinitializer }, align 32
@switch.table.stb0899_dvbs2_algo.422 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 92160, i32 157696, i32 243712], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 13, i64 18, i64 21, i64 24, i64 25, i64 26]
@__sancov_gen_cov_switch_values.423 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967295]
@__sancov_gen_cov_switch_values.424 = internal global [4 x i64] [i64 2, i64 32, i64 14, i64 16]
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1329, i32 541, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1329, i32 552, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1329, i32 560, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1329, i32 595, i32 3 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1329, i32 603, i32 3 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1329, i32 619, i32 4 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1329, i32 624, i32 5 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1329, i32 629, i32 6 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1329, i32 634, i32 7 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1329, i32 641, i32 7 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1329, i32 645, i32 7 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1329, i32 662, i32 3 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1329, i32 703, i32 4 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1329, i32 1380, i32 3 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1329, i32 1436, i32 3 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1329, i32 71, i32 2 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1329, i32 228, i32 3 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1329, i32 179, i32 4 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1329, i32 182, i32 4 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1329, i32 186, i32 3 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1329, i32 284, i32 3 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1329, i32 310, i32 3 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1329, i32 250, i32 2 }
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1329, i32 253, i32 3 }
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1329, i32 256, i32 3 }
@___asan_gen_.1075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1329, i32 399, i32 5 }
@___asan_gen_.1099 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1329, i32 426, i32 3 }
@___asan_gen_.1126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1329, i32 367, i32 3 }
@___asan_gen_.1153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1329, i32 448, i32 3 }
@___asan_gen_.1177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1329, i32 451, i32 3 }
@___asan_gen_.1204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1329, i32 1091, i32 3 }
@___asan_gen_.1228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1329, i32 1093, i32 4 }
@___asan_gen_.1252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1329, i32 1095, i32 3 }
@___asan_gen_.1276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1329, i32 1107, i32 3 }
@___asan_gen_.1303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1329, i32 1149, i32 3 }
@___asan_gen_.1325 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1328 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1329 = private constant [46 x i8] c"../drivers/media/dvb-frontends/stb0899_algo.c\00", align 1
@___asan_gen_.1330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1329, i32 1125, i32 3 }
@___asan_gen_.1331 = private unnamed_addr constant [32 x i8] c"switch.table.stb0899_dvbs2_algo\00", align 1
@___asan_gen_.1332 = private unnamed_addr constant [36 x i8] c"switch.table.stb0899_dvbs2_algo.420\00", align 1
@___asan_gen_.1333 = private unnamed_addr constant [36 x i8] c"switch.table.stb0899_dvbs2_algo.421\00", align 1
@___asan_gen_.1334 = private unnamed_addr constant [36 x i8] c"switch.table.stb0899_dvbs2_algo.422\00", align 1
@llvm.compiler.used = appending global [450 x ptr] [ptr @stb0899_check_carrier._entry, ptr @stb0899_check_carrier._entry.261, ptr @stb0899_check_carrier._entry.264, ptr @stb0899_check_carrier._entry.267, ptr @stb0899_check_carrier._entry.270, ptr @stb0899_check_carrier._entry.273, ptr @stb0899_check_carrier._entry.276, ptr @stb0899_check_carrier._entry.279, ptr @stb0899_check_carrier._entry.282, ptr @stb0899_check_carrier._entry.285, ptr @stb0899_check_carrier._entry.288, ptr @stb0899_check_carrier._entry.291, ptr @stb0899_check_carrier._entry_ptr, ptr @stb0899_check_carrier._entry_ptr.263, ptr @stb0899_check_carrier._entry_ptr.266, ptr @stb0899_check_carrier._entry_ptr.269, ptr @stb0899_check_carrier._entry_ptr.272, ptr @stb0899_check_carrier._entry_ptr.275, ptr @stb0899_check_carrier._entry_ptr.278, ptr @stb0899_check_carrier._entry_ptr.281, ptr @stb0899_check_carrier._entry_ptr.284, ptr @stb0899_check_carrier._entry_ptr.287, ptr @stb0899_check_carrier._entry_ptr.290, ptr @stb0899_check_carrier._entry_ptr.293, ptr @stb0899_check_data._entry, ptr @stb0899_check_data._entry.319, ptr @stb0899_check_data._entry.322, ptr @stb0899_check_data._entry.325, ptr @stb0899_check_data._entry_ptr, ptr @stb0899_check_data._entry_ptr.321, ptr @stb0899_check_data._entry_ptr.324, ptr @stb0899_check_data._entry_ptr.327, ptr @stb0899_check_range._entry, ptr @stb0899_check_range._entry.330, ptr @stb0899_check_range._entry.333, ptr @stb0899_check_range._entry.336, ptr @stb0899_check_range._entry.339, ptr @stb0899_check_range._entry.342, ptr @stb0899_check_range._entry.345, ptr @stb0899_check_range._entry.348, ptr @stb0899_check_range._entry_ptr, ptr @stb0899_check_range._entry_ptr.332, ptr @stb0899_check_range._entry_ptr.335, ptr @stb0899_check_range._entry_ptr.338, ptr @stb0899_check_range._entry_ptr.341, ptr @stb0899_check_range._entry_ptr.344, ptr @stb0899_check_range._entry_ptr.347, ptr @stb0899_check_range._entry_ptr.350, ptr @stb0899_check_tmg._entry, ptr @stb0899_check_tmg._entry.203, ptr @stb0899_check_tmg._entry.206, ptr @stb0899_check_tmg._entry.209, ptr @stb0899_check_tmg._entry.212, ptr @stb0899_check_tmg._entry.215, ptr @stb0899_check_tmg._entry.218, ptr @stb0899_check_tmg._entry.221, ptr @stb0899_check_tmg._entry.224, ptr @stb0899_check_tmg._entry.227, ptr @stb0899_check_tmg._entry.230, ptr @stb0899_check_tmg._entry.233, ptr @stb0899_check_tmg._entry_ptr, ptr @stb0899_check_tmg._entry_ptr.205, ptr @stb0899_check_tmg._entry_ptr.208, ptr @stb0899_check_tmg._entry_ptr.211, ptr @stb0899_check_tmg._entry_ptr.214, ptr @stb0899_check_tmg._entry_ptr.217, ptr @stb0899_check_tmg._entry_ptr.220, ptr @stb0899_check_tmg._entry_ptr.223, ptr @stb0899_check_tmg._entry_ptr.226, ptr @stb0899_check_tmg._entry_ptr.229, ptr @stb0899_check_tmg._entry_ptr.232, ptr @stb0899_check_tmg._entry_ptr.235, ptr @stb0899_dvbs2_algo._entry, ptr @stb0899_dvbs2_algo._entry.158, ptr @stb0899_dvbs2_algo._entry.161, ptr @stb0899_dvbs2_algo._entry.164, ptr @stb0899_dvbs2_algo._entry.167, ptr @stb0899_dvbs2_algo._entry.170, ptr @stb0899_dvbs2_algo._entry.173, ptr @stb0899_dvbs2_algo._entry.176, ptr @stb0899_dvbs2_algo._entry_ptr, ptr @stb0899_dvbs2_algo._entry_ptr.160, ptr @stb0899_dvbs2_algo._entry_ptr.163, ptr @stb0899_dvbs2_algo._entry_ptr.166, ptr @stb0899_dvbs2_algo._entry_ptr.169, ptr @stb0899_dvbs2_algo._entry_ptr.172, ptr @stb0899_dvbs2_algo._entry_ptr.175, ptr @stb0899_dvbs2_algo._entry_ptr.178, ptr @stb0899_dvbs2_get_data_lock._entry, ptr @stb0899_dvbs2_get_data_lock._entry.411, ptr @stb0899_dvbs2_get_data_lock._entry.414, ptr @stb0899_dvbs2_get_data_lock._entry.417, ptr @stb0899_dvbs2_get_data_lock._entry_ptr, ptr @stb0899_dvbs2_get_data_lock._entry_ptr.413, ptr @stb0899_dvbs2_get_data_lock._entry_ptr.416, ptr @stb0899_dvbs2_get_data_lock._entry_ptr.419, ptr @stb0899_dvbs2_get_dmd_status._entry, ptr @stb0899_dvbs2_get_dmd_status._entry.353, ptr @stb0899_dvbs2_get_dmd_status._entry.356, ptr @stb0899_dvbs2_get_dmd_status._entry.359, ptr @stb0899_dvbs2_get_dmd_status._entry.362, ptr @stb0899_dvbs2_get_dmd_status._entry.365, ptr @stb0899_dvbs2_get_dmd_status._entry.368, ptr @stb0899_dvbs2_get_dmd_status._entry.371, ptr @stb0899_dvbs2_get_dmd_status._entry.374, ptr @stb0899_dvbs2_get_dmd_status._entry.377, ptr @stb0899_dvbs2_get_dmd_status._entry.380, ptr @stb0899_dvbs2_get_dmd_status._entry.383, ptr @stb0899_dvbs2_get_dmd_status._entry.386, ptr @stb0899_dvbs2_get_dmd_status._entry.389, ptr @stb0899_dvbs2_get_dmd_status._entry.392, ptr @stb0899_dvbs2_get_dmd_status._entry.395, ptr @stb0899_dvbs2_get_dmd_status._entry_ptr, ptr @stb0899_dvbs2_get_dmd_status._entry_ptr.355, ptr @stb0899_dvbs2_get_dmd_status._entry_ptr.358, ptr @stb0899_dvbs2_get_dmd_status._entry_ptr.361, ptr @stb0899_dvbs2_get_dmd_status._entry_ptr.364, ptr @stb0899_dvbs2_get_dmd_status._entry_ptr.367, ptr @stb0899_dvbs2_get_dmd_status._entry_ptr.370, ptr @stb0899_dvbs2_get_dmd_status._entry_ptr.373, ptr @stb0899_dvbs2_get_dmd_status._entry_ptr.376, ptr @stb0899_dvbs2_get_dmd_status._entry_ptr.379, ptr @stb0899_dvbs2_get_dmd_status._entry_ptr.382, ptr @stb0899_dvbs2_get_dmd_status._entry_ptr.385, ptr @stb0899_dvbs2_get_dmd_status._entry_ptr.388, ptr @stb0899_dvbs2_get_dmd_status._entry_ptr.391, ptr @stb0899_dvbs2_get_dmd_status._entry_ptr.394, ptr @stb0899_dvbs2_get_dmd_status._entry_ptr.397, ptr @stb0899_dvbs2_get_fec_status._entry, ptr @stb0899_dvbs2_get_fec_status._entry.400, ptr @stb0899_dvbs2_get_fec_status._entry.403, ptr @stb0899_dvbs2_get_fec_status._entry.406, ptr @stb0899_dvbs2_get_fec_status._entry_ptr, ptr @stb0899_dvbs2_get_fec_status._entry_ptr.402, ptr @stb0899_dvbs2_get_fec_status._entry_ptr.405, ptr @stb0899_dvbs2_get_fec_status._entry_ptr.408, ptr @stb0899_dvbs_algo._entry, ptr @stb0899_dvbs_algo._entry.102, ptr @stb0899_dvbs_algo._entry.105, ptr @stb0899_dvbs_algo._entry.108, ptr @stb0899_dvbs_algo._entry.111, ptr @stb0899_dvbs_algo._entry.114, ptr @stb0899_dvbs_algo._entry.117, ptr @stb0899_dvbs_algo._entry.12, ptr @stb0899_dvbs_algo._entry.120, ptr @stb0899_dvbs_algo._entry.123, ptr @stb0899_dvbs_algo._entry.126, ptr @stb0899_dvbs_algo._entry.129, ptr @stb0899_dvbs_algo._entry.132, ptr @stb0899_dvbs_algo._entry.135, ptr @stb0899_dvbs_algo._entry.138, ptr @stb0899_dvbs_algo._entry.141, ptr @stb0899_dvbs_algo._entry.144, ptr @stb0899_dvbs_algo._entry.147, ptr @stb0899_dvbs_algo._entry.15, ptr @stb0899_dvbs_algo._entry.150, ptr @stb0899_dvbs_algo._entry.153, ptr @stb0899_dvbs_algo._entry.18, ptr @stb0899_dvbs_algo._entry.21, ptr @stb0899_dvbs_algo._entry.24, ptr @stb0899_dvbs_algo._entry.27, ptr @stb0899_dvbs_algo._entry.3, ptr @stb0899_dvbs_algo._entry.30, ptr @stb0899_dvbs_algo._entry.33, ptr @stb0899_dvbs_algo._entry.36, ptr @stb0899_dvbs_algo._entry.39, ptr @stb0899_dvbs_algo._entry.42, ptr @stb0899_dvbs_algo._entry.45, ptr @stb0899_dvbs_algo._entry.48, ptr @stb0899_dvbs_algo._entry.51, ptr @stb0899_dvbs_algo._entry.54, ptr @stb0899_dvbs_algo._entry.57, ptr @stb0899_dvbs_algo._entry.6, ptr @stb0899_dvbs_algo._entry.60, ptr @stb0899_dvbs_algo._entry.63, ptr @stb0899_dvbs_algo._entry.66, ptr @stb0899_dvbs_algo._entry.69, ptr @stb0899_dvbs_algo._entry.72, ptr @stb0899_dvbs_algo._entry.75, ptr @stb0899_dvbs_algo._entry.78, ptr @stb0899_dvbs_algo._entry.81, ptr @stb0899_dvbs_algo._entry.84, ptr @stb0899_dvbs_algo._entry.87, ptr @stb0899_dvbs_algo._entry.9, ptr @stb0899_dvbs_algo._entry.90, ptr @stb0899_dvbs_algo._entry.93, ptr @stb0899_dvbs_algo._entry.96, ptr @stb0899_dvbs_algo._entry.99, ptr @stb0899_dvbs_algo._entry_ptr, ptr @stb0899_dvbs_algo._entry_ptr.101, ptr @stb0899_dvbs_algo._entry_ptr.104, ptr @stb0899_dvbs_algo._entry_ptr.107, ptr @stb0899_dvbs_algo._entry_ptr.11, ptr @stb0899_dvbs_algo._entry_ptr.110, ptr @stb0899_dvbs_algo._entry_ptr.113, ptr @stb0899_dvbs_algo._entry_ptr.116, ptr @stb0899_dvbs_algo._entry_ptr.119, ptr @stb0899_dvbs_algo._entry_ptr.122, ptr @stb0899_dvbs_algo._entry_ptr.125, ptr @stb0899_dvbs_algo._entry_ptr.128, ptr @stb0899_dvbs_algo._entry_ptr.131, ptr @stb0899_dvbs_algo._entry_ptr.134, ptr @stb0899_dvbs_algo._entry_ptr.137, ptr @stb0899_dvbs_algo._entry_ptr.14, ptr @stb0899_dvbs_algo._entry_ptr.140, ptr @stb0899_dvbs_algo._entry_ptr.143, ptr @stb0899_dvbs_algo._entry_ptr.146, ptr @stb0899_dvbs_algo._entry_ptr.149, ptr @stb0899_dvbs_algo._entry_ptr.152, ptr @stb0899_dvbs_algo._entry_ptr.155, ptr @stb0899_dvbs_algo._entry_ptr.17, ptr @stb0899_dvbs_algo._entry_ptr.20, ptr @stb0899_dvbs_algo._entry_ptr.23, ptr @stb0899_dvbs_algo._entry_ptr.26, ptr @stb0899_dvbs_algo._entry_ptr.29, ptr @stb0899_dvbs_algo._entry_ptr.32, ptr @stb0899_dvbs_algo._entry_ptr.35, ptr @stb0899_dvbs_algo._entry_ptr.38, ptr @stb0899_dvbs_algo._entry_ptr.41, ptr @stb0899_dvbs_algo._entry_ptr.44, ptr @stb0899_dvbs_algo._entry_ptr.47, ptr @stb0899_dvbs_algo._entry_ptr.5, ptr @stb0899_dvbs_algo._entry_ptr.50, ptr @stb0899_dvbs_algo._entry_ptr.53, ptr @stb0899_dvbs_algo._entry_ptr.56, ptr @stb0899_dvbs_algo._entry_ptr.59, ptr @stb0899_dvbs_algo._entry_ptr.62, ptr @stb0899_dvbs_algo._entry_ptr.65, ptr @stb0899_dvbs_algo._entry_ptr.68, ptr @stb0899_dvbs_algo._entry_ptr.71, ptr @stb0899_dvbs_algo._entry_ptr.74, ptr @stb0899_dvbs_algo._entry_ptr.77, ptr @stb0899_dvbs_algo._entry_ptr.8, ptr @stb0899_dvbs_algo._entry_ptr.80, ptr @stb0899_dvbs_algo._entry_ptr.83, ptr @stb0899_dvbs_algo._entry_ptr.86, ptr @stb0899_dvbs_algo._entry_ptr.89, ptr @stb0899_dvbs_algo._entry_ptr.92, ptr @stb0899_dvbs_algo._entry_ptr.95, ptr @stb0899_dvbs_algo._entry_ptr.98, ptr @stb0899_search_carrier._entry, ptr @stb0899_search_carrier._entry.238, ptr @stb0899_search_carrier._entry.241, ptr @stb0899_search_carrier._entry.244, ptr @stb0899_search_carrier._entry.247, ptr @stb0899_search_carrier._entry.250, ptr @stb0899_search_carrier._entry.253, ptr @stb0899_search_carrier._entry.256, ptr @stb0899_search_carrier._entry_ptr, ptr @stb0899_search_carrier._entry_ptr.240, ptr @stb0899_search_carrier._entry_ptr.243, ptr @stb0899_search_carrier._entry_ptr.246, ptr @stb0899_search_carrier._entry_ptr.249, ptr @stb0899_search_carrier._entry_ptr.252, ptr @stb0899_search_carrier._entry_ptr.255, ptr @stb0899_search_carrier._entry_ptr.258, ptr @stb0899_search_data._entry, ptr @stb0899_search_data._entry.296, ptr @stb0899_search_data._entry.299, ptr @stb0899_search_data._entry.302, ptr @stb0899_search_data._entry.305, ptr @stb0899_search_data._entry.308, ptr @stb0899_search_data._entry.311, ptr @stb0899_search_data._entry.314, ptr @stb0899_search_data._entry_ptr, ptr @stb0899_search_data._entry_ptr.298, ptr @stb0899_search_data._entry_ptr.301, ptr @stb0899_search_data._entry_ptr.304, ptr @stb0899_search_data._entry_ptr.307, ptr @stb0899_search_data._entry_ptr.310, ptr @stb0899_search_data._entry_ptr.313, ptr @stb0899_search_data._entry_ptr.316, ptr @stb0899_search_tmg._entry, ptr @stb0899_search_tmg._entry.192, ptr @stb0899_search_tmg._entry.195, ptr @stb0899_search_tmg._entry.198, ptr @stb0899_search_tmg._entry_ptr, ptr @stb0899_search_tmg._entry_ptr.194, ptr @stb0899_search_tmg._entry_ptr.197, ptr @stb0899_search_tmg._entry_ptr.200, ptr @stb0899_set_srate._entry, ptr @stb0899_set_srate._entry.181, ptr @stb0899_set_srate._entry.184, ptr @stb0899_set_srate._entry.187, ptr @stb0899_set_srate._entry_ptr, ptr @stb0899_set_srate._entry_ptr.183, ptr @stb0899_set_srate._entry_ptr.186, ptr @stb0899_set_srate._entry_ptr.189, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.130, ptr @.str.133, ptr @.str.136, ptr @.str.139, ptr @.str.142, ptr @.str.145, ptr @.str.148, ptr @.str.151, ptr @.str.154, ptr @.str.156, ptr @.str.157, ptr @.str.159, ptr @.str.162, ptr @.str.165, ptr @.str.168, ptr @.str.171, ptr @.str.174, ptr @.str.177, ptr @.str.179, ptr @.str.180, ptr @.str.182, ptr @.str.185, ptr @.str.188, ptr @.str.190, ptr @.str.191, ptr @.str.193, ptr @.str.196, ptr @.str.199, ptr @.str.201, ptr @.str.202, ptr @.str.204, ptr @.str.207, ptr @.str.210, ptr @.str.213, ptr @.str.216, ptr @.str.219, ptr @.str.222, ptr @.str.225, ptr @.str.228, ptr @.str.231, ptr @.str.234, ptr @.str.236, ptr @.str.237, ptr @.str.239, ptr @.str.242, ptr @.str.245, ptr @.str.248, ptr @.str.251, ptr @.str.254, ptr @.str.257, ptr @.str.259, ptr @.str.260, ptr @.str.262, ptr @.str.265, ptr @.str.268, ptr @.str.271, ptr @.str.274, ptr @.str.277, ptr @.str.280, ptr @.str.283, ptr @.str.286, ptr @.str.289, ptr @.str.292, ptr @.str.294, ptr @.str.295, ptr @.str.297, ptr @.str.300, ptr @.str.303, ptr @.str.306, ptr @.str.309, ptr @.str.312, ptr @.str.315, ptr @.str.317, ptr @.str.318, ptr @.str.320, ptr @.str.323, ptr @.str.326, ptr @.str.328, ptr @.str.329, ptr @.str.331, ptr @.str.334, ptr @.str.337, ptr @.str.340, ptr @.str.343, ptr @.str.346, ptr @.str.349, ptr @.str.351, ptr @.str.352, ptr @.str.354, ptr @.str.357, ptr @.str.360, ptr @.str.363, ptr @.str.366, ptr @.str.369, ptr @.str.372, ptr @.str.375, ptr @.str.378, ptr @.str.381, ptr @.str.384, ptr @.str.387, ptr @.str.390, ptr @.str.393, ptr @.str.396, ptr @.str.398, ptr @.str.399, ptr @.str.401, ptr @.str.404, ptr @.str.407, ptr @.str.409, ptr @.str.410, ptr @.str.412, ptr @.str.415, ptr @.str.418, ptr @switch.table.stb0899_dvbs2_algo, ptr @switch.table.stb0899_dvbs2_algo.420, ptr @switch.table.stb0899_dvbs2_algo.421, ptr @switch.table.stb0899_dvbs2_algo.422], section "llvm.metadata"
@0 = internal global [306 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs_algo._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs2_algo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs2_algo._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs2_algo._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs2_algo._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs2_algo._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs2_algo._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs2_algo._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs2_algo._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_set_srate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_set_srate._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_set_srate._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_set_srate._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search_tmg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search_tmg._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search_tmg._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search_tmg._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_check_tmg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_check_tmg._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_check_tmg._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_check_tmg._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_check_tmg._entry.212 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_check_tmg._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_check_tmg._entry.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_check_tmg._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_check_tmg._entry.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_check_tmg._entry.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_check_tmg._entry.230 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_check_tmg._entry.233 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search_carrier._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search_carrier._entry.238 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search_carrier._entry.241 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search_carrier._entry.244 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search_carrier._entry.247 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search_carrier._entry.250 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search_carrier._entry.253 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search_carrier._entry.256 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_check_carrier._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_check_carrier._entry.261 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_check_carrier._entry.264 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_check_carrier._entry.267 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_check_carrier._entry.270 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_check_carrier._entry.273 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_check_carrier._entry.276 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_check_carrier._entry.279 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_check_carrier._entry.282 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_check_carrier._entry.285 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_check_carrier._entry.288 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_check_carrier._entry.291 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search_data._entry.296 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search_data._entry.299 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search_data._entry.302 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search_data._entry.305 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search_data._entry.308 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search_data._entry.311 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_search_data._entry.314 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_check_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_check_data._entry.319 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_check_data._entry.322 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_check_data._entry.325 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_check_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_check_range._entry.330 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_check_range._entry.333 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_check_range._entry.336 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.337 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_check_range._entry.339 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_check_range._entry.342 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.343 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_check_range._entry.345 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.346 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_check_range._entry.348 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.349 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs2_get_dmd_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.351 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.352 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs2_get_dmd_status._entry.353 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.354 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs2_get_dmd_status._entry.356 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.357 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs2_get_dmd_status._entry.359 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.360 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs2_get_dmd_status._entry.362 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.363 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs2_get_dmd_status._entry.365 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.366 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs2_get_dmd_status._entry.368 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.369 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs2_get_dmd_status._entry.371 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.372 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs2_get_dmd_status._entry.374 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.375 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs2_get_dmd_status._entry.377 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.378 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs2_get_dmd_status._entry.380 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.381 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs2_get_dmd_status._entry.383 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.384 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs2_get_dmd_status._entry.386 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.387 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs2_get_dmd_status._entry.389 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.390 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs2_get_dmd_status._entry.392 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.393 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs2_get_dmd_status._entry.395 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.396 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs2_get_fec_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.398 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.399 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs2_get_fec_status._entry.400 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.401 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs2_get_fec_status._entry.403 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.404 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs2_get_fec_status._entry.406 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.407 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs2_get_data_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.409 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.410 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs2_get_data_lock._entry.411 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.412 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs2_get_data_lock._entry.414 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.415 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_dvbs2_get_data_lock._entry.417 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.418 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.stb0899_dvbs2_algo to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.stb0899_dvbs2_algo.420 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.stb0899_dvbs2_algo.421 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.stb0899_dvbs2_algo.422 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @stb0899_carr_width(ptr nocapture noundef readonly %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %srate = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %srate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %srate, align 4
  %rolloff = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 10
  %2 = ptrtoint ptr %rolloff to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rolloff, align 4
  %mul = mul i32 %3, %1
  %div = udiv i32 %mul, 100
  %add = add i32 %div, %1
  ret i32 %add
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stb0899_dvbs_algo(ptr noundef %state) local_unnamed_addr #2 align 64 {
entry:
  %cfr.i1573 = alloca [2 x i8], align 1
  %cfr.i1557 = alloca [2 x i8], align 1
  %cfr.i = alloca [2 x i8], align 1
  %bandwidth.i = alloca i32, align 4
  %sfr.i = alloca [3 x i8], align 1
  %cfr = alloca [2 x i8], align 1
  %eq_const = alloca [10 x i8], align 1
  %bandwidth = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %params1 = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 6
  %internal2 = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4
  %config3 = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %config3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config3, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cfr) #6
  %2 = ptrtoint ptr %cfr to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %cfr, align 1, !annotation !491
  %3 = getelementptr inbounds [2 x i8], ptr %cfr, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !491
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %eq_const) #6
  %5 = call ptr @memset(ptr %eq_const, i32 255, i32 10)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bandwidth) #6
  %6 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %bandwidth, align 4
  %direction = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 13
  %7 = ptrtoint ptr %direction to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %direction, align 4
  %8 = ptrtoint ptr %internal2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %internal2, align 4
  %srate = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %srate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %srate, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %sfr.i) #6
  %verbose.i = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 3
  %12 = ptrtoint ptr %verbose.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %verbose.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %switch.i = icmp ult i32 %15, 4
  br i1 %switch.i, label %entry.do.end44.i_crit_edge, label %do.end.i

entry.do.end44.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end44.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.180) #9
  br label %do.end44.i

do.end44.i:                                       ; preds = %do.end.i, %entry.do.end44.i_crit_edge
  %conv.i = zext i32 %11 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 21
  %conv45.i = zext i32 %9 to i64
  %add.i = add nuw nsw i64 %shl.i, %conv45.i
  %mul.i = shl i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i)
  %cmp164.i.i = icmp ult i64 %add.i, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !492

if.then168.i.i:                                   ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i.i = trunc i64 %add.i to i32
  %div172.i.i = udiv i32 %conv169.i.i, %mul.i
  br label %stb0899_set_srate.exit

if.else174.i.i:                                   ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  %16 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul.i, i64 %add.i) #10, !srcloc !493
  %asmresult1.i.i.i = extractvalue { i64, i64 } %16, 1
  %extract.t285.i.i = trunc i64 %asmresult1.i.i.i to i32
  br label %stb0899_set_srate.exit

stb0899_set_srate.exit:                           ; preds = %if.else174.i.i, %if.then168.i.i
  %n.addr.0.off0.i.i = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t285.i.i, %if.else174.i.i ]
  %17 = getelementptr inbounds [3 x i8], ptr %sfr.i, i32 0, i32 2
  %18 = getelementptr inbounds [3 x i8], ptr %sfr.i, i32 0, i32 1
  %shl47.i = shl i32 %n.addr.0.off0.i.i, 4
  %shr.i = lshr i32 %shl47.i, 16
  %conv48.i = trunc i32 %shr.i to i8
  %19 = ptrtoint ptr %sfr.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv48.i, ptr %sfr.i, align 1
  %shr49.i = lshr i32 %shl47.i, 8
  %conv50.i = trunc i32 %shr49.i to i8
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv50.i, ptr %18, align 1
  %conv52.i = trunc i32 %shl47.i to i8
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv52.i, ptr %17, align 1
  %call54.i = call i32 @stb0899_write_regs(ptr noundef %state, i32 noundef 62534, ptr noundef nonnull %sfr.i, i32 noundef 3) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %sfr.i) #6
  %22 = ptrtoint ptr %srate to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %srate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000001, i32 %23)
  %cmp = icmp ult i32 %23, 5000001
  br i1 %cmp, label %stb0899_set_srate.exit.do.body_crit_edge, label %if.else

stb0899_set_srate.exit.do.body_crit_edge:         ; preds = %stb0899_set_srate.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.else:                                          ; preds = %stb0899_set_srate.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 15000001, i32 %23)
  %cmp11 = icmp ult i32 %23, 15000001
  br i1 %cmp11, label %if.else.do.body_crit_edge, label %if.else22

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.else22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25000001, i32 %23)
  %cmp24 = icmp ult i32 %23, 25000001
  %. = select i1 %cmp24, i8 -119, i8 -56
  %.1647 = select i1 %cmp24, i8 39, i8 41
  %.1648 = select i1 %cmp24, i32 2, i32 3
  br label %do.body

do.body:                                          ; preds = %if.else22, %if.else.do.body_crit_edge, %stb0899_set_srate.exit.do.body_crit_edge
  %.sink = phi i8 [ -119, %stb0899_set_srate.exit.do.body_crit_edge ], [ -55, %if.else.do.body_crit_edge ], [ %., %if.else22 ]
  %.sink1645 = phi i8 [ 28, %stb0899_set_srate.exit.do.body_crit_edge ], [ 34, %if.else.do.body_crit_edge ], [ %.1647, %if.else22 ]
  %clnI.0 = phi i32 [ 0, %stb0899_set_srate.exit.do.body_crit_edge ], [ 1, %if.else.do.body_crit_edge ], [ %.1648, %if.else22 ]
  %call5 = call i32 @stb0899_write_reg(ptr noundef %state, i32 noundef 62492, i8 noundef zeroext %.sink) #6
  %call6 = call i32 @stb0899_read_reg(ptr noundef %state, i32 noundef 62493) #6
  %24 = trunc i32 %call6 to i8
  %25 = and i8 %24, -64
  %conv8 = or i8 %25, %.sink1645
  %call9 = call i32 @stb0899_write_reg(ptr noundef %state, i32 noundef 62493, i8 noundef zeroext %conv8) #6
  %26 = ptrtoint ptr %verbose.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %verbose.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %29)
  %switch = icmp ult i32 %29, 4
  br i1 %switch, label %do.body.do.end101_crit_edge, label %do.end

do.body.do.end101_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end101

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  br label %do.end101

do.end101:                                        ; preds = %do.end, %do.body.do.end101_crit_edge
  %call102 = call i32 @stb0899_write_reg(ptr noundef %state, i32 noundef 62487, i8 noundef zeroext 70) #6
  %call103 = call i32 @stb0899_write_reg(ptr noundef %state, i32 noundef 62491, i8 noundef zeroext -18) #6
  %30 = ptrtoint ptr %verbose.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %verbose.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %33)
  %switch1507 = icmp ult i32 %33, 4
  br i1 %switch1507, label %do.end101.do.end179_crit_edge, label %do.end115

do.end101.do.end179_crit_edge:                    ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end179

do.end115:                                        ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #8
  %derot_percent = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 12
  %34 = ptrtoint ptr %derot_percent to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %derot_percent, align 2
  %conv117 = sext i16 %35 to i32
  %36 = ptrtoint ptr %srate to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %srate, align 4
  %mclk = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 9
  %38 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mclk, align 4
  %call119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef %conv117, i32 noundef %37, i32 noundef %39) #9
  br label %do.end179

do.end179:                                        ; preds = %do.end115, %do.end101.do.end179_crit_edge
  %derot_percent180 = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 12
  %40 = ptrtoint ptr %derot_percent180 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %derot_percent180, align 2
  %conv181 = sext i16 %41 to i32
  %42 = ptrtoint ptr %srate to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %srate, align 4
  %div = udiv i32 %43, 1000
  %mul = mul i32 %div, %conv181
  %mclk183 = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 9
  %44 = ptrtoint ptr %mclk183 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mclk183, align 4
  %div184 = udiv i32 %mul, %45
  %conv185 = trunc i32 %div184 to i16
  %derot_step = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 14
  %46 = ptrtoint ptr %derot_step to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv185, ptr %derot_step, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp.i = icmp sgt i32 %43, 0
  br i1 %cmp.i, label %if.then.i, label %do.end179.stb0899_calc_derot_time.exit_crit_edge

do.end179.stb0899_calc_derot_time.exit_crit_edge: ; preds = %do.end179
  call void @__sanitizer_cov_trace_pc() #8
  br label %stb0899_calc_derot_time.exit

if.then.i:                                        ; preds = %do.end179
  call void @__sanitizer_cov_trace_pc() #8
  %div14.i = udiv i32 100000, %div
  %phi.cast = trunc i32 %div14.i to i16
  br label %stb0899_calc_derot_time.exit

stb0899_calc_derot_time.exit:                     ; preds = %if.then.i, %do.end179.stb0899_calc_derot_time.exit_crit_edge
  %retval.0.i = phi i16 [ %phi.cast, %if.then.i ], [ 0, %do.end179.stb0899_calc_derot_time.exit_crit_edge ]
  %t_derot = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 15
  %47 = ptrtoint ptr %t_derot to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %retval.0.i, ptr %t_derot, align 4
  %t_data = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 16
  %48 = ptrtoint ptr %t_data to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 500, ptr %t_data, align 2
  %49 = ptrtoint ptr %verbose.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %verbose.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %52)
  %switch1510 = icmp ult i32 %52, 4
  br i1 %switch1510, label %stb0899_calc_derot_time.exit.do.end250_crit_edge, label %do.end200

stb0899_calc_derot_time.exit.do.end250_crit_edge: ; preds = %stb0899_calc_derot_time.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end250

do.end200:                                        ; preds = %stb0899_calc_derot_time.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call202 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1) #9
  br label %do.end250

do.end250:                                        ; preds = %do.end200, %stb0899_calc_derot_time.exit.do.end250_crit_edge
  %call251 = call i32 @stb0899_read_reg(ptr noundef %state, i32 noundef 65297) #6
  %53 = trunc i32 %call251 to i8
  %conv256 = or i8 %53, 64
  %call257 = call i32 @stb0899_write_reg(ptr noundef %state, i32 noundef 65297, i8 noundef zeroext %conv256) #6
  %call258 = call i32 @stb0899_read_reg(ptr noundef %state, i32 noundef 62851) #6
  %54 = trunc i32 %call258 to i8
  %55 = and i8 %54, -128
  %conv263 = or i8 %55, 60
  %call264 = call i32 @stb0899_write_reg(ptr noundef %state, i32 noundef 62851, i8 noundef zeroext %conv263) #6
  %call265 = call i32 @stb0899_write_reg(ptr noundef %state, i32 noundef 62494, i8 noundef zeroext 1) #6
  %call266 = call i32 @stb0899_write_reg(ptr noundef %state, i32 noundef 62781, i8 noundef zeroext 25) #6
  %56 = ptrtoint ptr %config3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %config3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bandwidth.i) #6
  %58 = ptrtoint ptr %bandwidth.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %bandwidth.i, align 4
  %tuner_get_bandwidth.i = getelementptr inbounds %struct.stb0899_config, ptr %57, i32 0, i32 37
  %59 = ptrtoint ptr %tuner_get_bandwidth.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tuner_get_bandwidth.i, align 4
  %tobool.not.i = icmp eq ptr %60, null
  br i1 %tobool.not.i, label %do.end250.stb0899_first_subrange.exit_crit_edge, label %if.end.i

do.end250.stb0899_first_subrange.exit_crit_edge:  ; preds = %do.end250
  call void @__sanitizer_cov_trace_pc() #8
  br label %stb0899_first_subrange.exit

if.end.i:                                         ; preds = %do.end250
  %frontend.i = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 2
  %call.i1543 = call i32 @stb0899_i2c_gate_ctrl(ptr noundef %frontend.i, i32 noundef 1) #6
  %61 = ptrtoint ptr %tuner_get_bandwidth.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tuner_get_bandwidth.i, align 4
  %call6.i = call i32 %62(ptr noundef %frontend.i, ptr noundef nonnull %bandwidth.i) #6
  %call8.i = call i32 @stb0899_i2c_gate_ctrl(ptr noundef %frontend.i, i32 noundef 0) #6
  %63 = ptrtoint ptr %bandwidth.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bandwidth.i, align 4
  %srate.i.i = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 2
  %65 = ptrtoint ptr %srate.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %srate.i.i, align 4
  %rolloff.i.i = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 10
  %67 = ptrtoint ptr %rolloff.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rolloff.i.i, align 4
  %mul.i.i1544 = mul i32 %68, %66
  %div.i.i1545 = udiv i32 %mul.i.i1544, 100
  %add.i.i1546 = add i32 %div.i.i1545, %66
  %div.neg.i = sdiv i32 %add.i.i1546, -2
  %sub.i = add i32 %div.neg.i, %64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i1547 = icmp sgt i32 %sub.i, 0
  br i1 %cmp.i1547, label %if.then10.i, label %if.end.i.stb0899_first_subrange.exit_crit_edge

if.end.i.stb0899_first_subrange.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stb0899_first_subrange.exit

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %srch_range.i = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 4
  %69 = ptrtoint ptr %srch_range.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %srch_range.i, align 4
  %71 = call i32 @llvm.smin.i32(i32 %70, i32 %sub.i) #6
  br label %stb0899_first_subrange.exit

stb0899_first_subrange.exit:                      ; preds = %if.then10.i, %if.end.i.stb0899_first_subrange.exit_crit_edge, %do.end250.stb0899_first_subrange.exit_crit_edge
  %.sink.i = phi i32 [ %71, %if.then10.i ], [ 0, %do.end250.stb0899_first_subrange.exit_crit_edge ], [ 0, %if.end.i.stb0899_first_subrange.exit_crit_edge ]
  %sub_range12.i = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 5
  %72 = ptrtoint ptr %sub_range12.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %.sink.i, ptr %sub_range12.i, align 4
  %73 = ptrtoint ptr %params1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %params1, align 4
  %freq14.i = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 1
  %75 = ptrtoint ptr %freq14.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %freq14.i, align 4
  %tuner_offst.i = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 7
  %76 = ptrtoint ptr %tuner_offst.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %tuner_offst.i, align 4
  %sub_dir.i = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 17
  %77 = ptrtoint ptr %sub_dir.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 1, ptr %sub_dir.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bandwidth.i) #6
  %derot_freq = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 11
  %status = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 21
  %frontend = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 2
  %t_agc1 = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 18
  %t_agc2 = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 19
  %tuner_get_bandwidth = getelementptr inbounds %struct.stb0899_config, ptr %1, i32 0, i32 37
  %78 = getelementptr inbounds [2 x i8], ptr %cfr.i, i32 0, i32 1
  %inversion.i = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 28
  %79 = getelementptr inbounds [2 x i8], ptr %cfr.i1557, i32 0, i32 1
  %80 = getelementptr inbounds [2 x i8], ptr %cfr.i1573, i32 0, i32 1
  %srch_range.i1604 = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 4
  %fecrate = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 3
  br label %do.body267

do.body267:                                       ; preds = %do.cond918.do.body267_crit_edge, %stb0899_first_subrange.exit
  %81 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %3, align 1
  %82 = ptrtoint ptr %cfr to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %cfr, align 1
  %call269 = call i32 @stb0899_write_regs(ptr noundef %state, i32 noundef 62526, ptr noundef nonnull %cfr, i32 noundef 2) #6
  %call270 = call i32 @stb0899_write_reg(ptr noundef %state, i32 noundef 62521, i8 noundef zeroext 0) #6
  %call271 = call i32 @stb0899_read_reg(ptr noundef %state, i32 noundef 62491) #6
  %83 = trunc i32 %call271 to i8
  %conv276 = or i8 %83, -128
  %call277 = call i32 @stb0899_write_reg(ptr noundef %state, i32 noundef 62491, i8 noundef zeroext %conv276) #6
  %84 = ptrtoint ptr %derot_freq to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 0, ptr %derot_freq, align 4
  %85 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %status, align 4
  %call278 = call i32 @stb0899_i2c_gate_ctrl(ptr noundef %frontend, i32 noundef 1) #6
  %86 = ptrtoint ptr %verbose.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %verbose.i, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %89)
  %switch1513 = icmp ult i32 %89, 4
  br i1 %switch1513, label %do.body267.do.end340_crit_edge, label %do.end290

do.body267.do.end340_crit_edge:                   ; preds = %do.body267
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end340

do.end290:                                        ; preds = %do.body267
  call void @__sanitizer_cov_trace_pc() #8
  %call292 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1) #9
  br label %do.end340

do.end340:                                        ; preds = %do.end290, %do.body267.do.end340_crit_edge
  %90 = ptrtoint ptr %config3 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %config3, align 4
  %tuner_set_frequency = getelementptr inbounds %struct.stb0899_config, ptr %91, i32 0, i32 34
  %92 = ptrtoint ptr %tuner_set_frequency to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %tuner_set_frequency, align 4
  %tobool.not = icmp eq ptr %93, null
  br i1 %tobool.not, label %do.end340.if.end347_crit_edge, label %if.then342

do.end340.if.end347_crit_edge:                    ; preds = %do.end340
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end347

if.then342:                                       ; preds = %do.end340
  call void @__sanitizer_cov_trace_pc() #8
  %94 = ptrtoint ptr %freq14.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %freq14.i, align 4
  %call346 = call i32 %93(ptr noundef %frontend, i32 noundef %95) #6
  br label %if.end347

if.end347:                                        ; preds = %if.then342, %do.end340.if.end347_crit_edge
  %96 = ptrtoint ptr %config3 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %config3, align 4
  %tuner_get_frequency = getelementptr inbounds %struct.stb0899_config, ptr %97, i32 0, i32 35
  %98 = ptrtoint ptr %tuner_get_frequency to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %tuner_get_frequency, align 4
  %tobool349.not = icmp eq ptr %99, null
  br i1 %tobool349.not, label %if.end347.if.end356_crit_edge, label %if.then350

if.end347.if.end356_crit_edge:                    ; preds = %if.end347
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end356

if.then350:                                       ; preds = %if.end347
  call void @__sanitizer_cov_trace_pc() #8
  %call355 = call i32 %99(ptr noundef %frontend, ptr noundef %freq14.i) #6
  br label %if.end356

if.end356:                                        ; preds = %if.then350, %if.end347.if.end356_crit_edge
  %100 = ptrtoint ptr %t_agc1 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %t_agc1, align 2
  %conv357 = sext i16 %101 to i32
  %102 = ptrtoint ptr %t_agc2 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %t_agc2, align 4
  %conv358 = sext i16 %103 to i32
  %add = add nsw i32 %conv358, %conv357
  %104 = ptrtoint ptr %t_derot to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %t_derot, align 4
  %conv360 = sext i16 %105 to i32
  %add361 = add nsw i32 %add, %conv360
  call void @msleep(i32 noundef %add361) #6
  %106 = ptrtoint ptr %verbose.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %verbose.i, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %109)
  %switch1516 = icmp ult i32 %109, 4
  br i1 %switch1516, label %if.end356.do.end431_crit_edge, label %do.end373

if.end356.do.end431_crit_edge:                    ; preds = %if.end356
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end431

do.end373:                                        ; preds = %if.end356
  call void @__sanitizer_cov_trace_pc() #8
  %110 = ptrtoint ptr %derot_freq to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %derot_freq, align 4
  %conv376 = sext i16 %111 to i32
  %call377 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.1, i32 noundef %conv376) #9
  br label %do.end431

do.end431:                                        ; preds = %do.end373, %if.end356.do.end431_crit_edge
  %112 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 1, ptr %status, align 4
  %113 = ptrtoint ptr %tuner_get_bandwidth to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %tuner_get_bandwidth, align 4
  %tobool433.not = icmp eq ptr %114, null
  br i1 %tobool433.not, label %do.end431.if.end438_crit_edge, label %if.then434

do.end431.if.end438_crit_edge:                    ; preds = %do.end431
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end438

if.then434:                                       ; preds = %do.end431
  call void @__sanitizer_cov_trace_pc() #8
  %call437 = call i32 %114(ptr noundef %frontend, ptr noundef nonnull %bandwidth) #6
  br label %if.end438

if.end438:                                        ; preds = %if.then434, %do.end431.if.end438_crit_edge
  %call440 = call i32 @stb0899_i2c_gate_ctrl(ptr noundef %frontend, i32 noundef 0) #6
  %115 = ptrtoint ptr %srate to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %srate, align 4
  %117 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %bandwidth, align 4
  %div4421466 = lshr i32 %118, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %116, i32 %div4421466)
  %cmp443.not = icmp ugt i32 %116, %div4421466
  br i1 %cmp443.not, label %if.else447, label %if.then445

if.then445:                                       ; preds = %if.end438
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cfr.i) #6
  %119 = ptrtoint ptr %cfr.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 -1, ptr %cfr.i, align 1, !annotation !491
  %120 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 -1, ptr %78, align 1, !annotation !491
  %121 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 2, ptr %status, align 4
  %122 = ptrtoint ptr %sub_range12.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %sub_range12.i, align 4
  %124 = ptrtoint ptr %mclk183 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %mclk183, align 4
  %call11.i = call fastcc i32 @stb0899_check_tmg(ptr noundef %state) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call11.i)
  %cmp.not12.i = icmp eq i32 %call11.i, 4
  br i1 %cmp.not12.i, label %if.then445.while.end.i_crit_edge, label %while.body.lr.ph.i

if.then445.while.end.i_crit_edge:                 ; preds = %if.then445
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.then445
  %div41.i = lshr i32 %116, 1
  %div6.i = udiv i32 %div41.i, %125
  %div.i = sdiv i32 %123, 2
  %div3.i1548 = sdiv i32 %div.i, %125
  %sext2.i = shl i32 %div6.i, 16
  %conv11.i = ashr exact i32 %sext2.i, 16
  %sext5.i = shl i32 %div3.i1548, 16
  %conv20.i = ashr exact i32 %sext5.i, 16
  br label %while.body.i

while.body.i:                                     ; preds = %if.end43.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %derot_freq.015.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add.i1550, %if.end43.i.while.body.i_crit_edge ]
  %next_loop.014.i = phi i16 [ 3, %while.body.lr.ph.i ], [ %next_loop.1.i, %if.end43.i.while.body.i_crit_edge ]
  %index.013.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc.i, %if.end43.i.while.body.i_crit_edge ]
  %inc.i = add i32 %index.013.i, 1
  %126 = ptrtoint ptr %direction to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %direction, align 4
  %conv1016.i = zext i16 %127 to i32
  %mul.i1549 = mul i32 %inc.i, %conv11.i
  %mul12.i = mul i32 %mul.i1549, %conv1016.i
  %sext3.i = shl i32 %derot_freq.015.i, 16
  %conv13.i = ashr exact i32 %sext3.i, 16
  %add.i1550 = add i32 %mul12.i, %conv13.i
  %sext4.i = shl i32 %add.i1550, 16
  %conv15.i = ashr exact i32 %sext4.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext4.i)
  %cmp16.i = icmp slt i32 %sext4.i, 0
  %sub.i1551 = sub nsw i32 0, %conv15.i
  %cond.i = select i1 %cmp16.i, i32 %sub.i1551, i32 %conv15.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %conv20.i)
  %cmp21.i = icmp sgt i32 %cond.i, %conv20.i
  %dec.i = sext i1 %cmp21.i to i16
  %next_loop.1.i = add i16 %next_loop.014.i, %dec.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %next_loop.1.i)
  %tobool23.not.i = icmp eq i16 %next_loop.1.i, 0
  br i1 %tobool23.not.i, label %while.body.i.if.end43.i_crit_edge, label %if.then24.i

while.body.i.if.end43.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.i

if.then24.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %128 = ptrtoint ptr %inversion.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %inversion.i, align 4
  %mul27.i = mul i32 %129, %add.i1550
  %130 = lshr i32 %mul27.i, 8
  %conv29.i = trunc i32 %130 to i8
  %131 = ptrtoint ptr %cfr.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %conv29.i, ptr %cfr.i, align 1
  %conv40.i = trunc i32 %mul27.i to i8
  %132 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %conv40.i, ptr %78, align 1
  %call42.i = call i32 @stb0899_write_regs(ptr noundef %state, i32 noundef 62526, ptr noundef nonnull %cfr.i, i32 noundef 2) #6
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then24.i, %while.body.i.if.end43.i_crit_edge
  %133 = ptrtoint ptr %direction to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %direction, align 4
  %sub46.i = sub i16 0, %134
  store i16 %sub46.i, ptr %direction, align 4
  %call.i1552 = call fastcc i32 @stb0899_check_tmg(ptr noundef %state) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i1552)
  %cmp.not.i = icmp eq i32 %call.i1552, 4
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %tobool23.not.i
  br i1 %or.cond.i, label %if.end43.i.while.end.i_crit_edge, label %if.end43.i.while.body.i_crit_edge

if.end43.i.while.body.i_crit_edge:                ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end43.i.while.end.i_crit_edge:                 ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.end.i:                                      ; preds = %if.end43.i.while.end.i_crit_edge, %if.then445.while.end.i_crit_edge
  %135 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %136)
  %cmp50.i = icmp eq i32 %136, 4
  br i1 %cmp50.i, label %if.then52.i, label %while.end.i.stb0899_search_tmg.exit_crit_edge

while.end.i.stb0899_search_tmg.exit_crit_edge:    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stb0899_search_tmg.exit

if.then52.i:                                      ; preds = %while.end.i
  %call54.i1553 = call i32 @stb0899_read_regs(ptr noundef %state, i32 noundef 62526, ptr noundef nonnull %cfr.i, i32 noundef 2) #6
  %137 = ptrtoint ptr %inversion.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %inversion.i, align 4
  %139 = ptrtoint ptr %cfr.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %cfr.i, align 1
  %conv57.i = zext i8 %140 to i32
  %shl58.i = shl nuw nsw i32 %conv57.i, 8
  %141 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %78, align 1
  %conv60.i = zext i8 %142 to i32
  %or61.i = or i32 %shl58.i, %conv60.i
  %mul62.i = mul i32 %or61.i, %138
  %conv63.i = trunc i32 %mul62.i to i16
  %143 = ptrtoint ptr %derot_freq to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %conv63.i, ptr %derot_freq, align 4
  %144 = ptrtoint ptr %verbose.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %verbose.i, align 4
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %145, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %147)
  %switch.i1555 = icmp ult i32 %147, 4
  br i1 %switch.i1555, label %if.then52.i.stb0899_search_tmg.exit_crit_edge, label %do.end.i1556

if.then52.i.stb0899_search_tmg.exit_crit_edge:    ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stb0899_search_tmg.exit

do.end.i1556:                                     ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #8
  %sext.i = shl i32 %mul62.i, 16
  %conv74.i = ashr exact i32 %sext.i, 16
  %call75.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.191, i32 noundef %conv74.i) #9
  br label %stb0899_search_tmg.exit

stb0899_search_tmg.exit:                          ; preds = %do.end.i1556, %if.then52.i.stb0899_search_tmg.exit_crit_edge, %while.end.i.stb0899_search_tmg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cfr.i) #6
  br label %if.end449

if.else447:                                       ; preds = %if.end438
  call void @__sanitizer_cov_trace_pc() #8
  %call448 = call fastcc i32 @stb0899_check_tmg(ptr noundef %state)
  br label %if.end449

if.end449:                                        ; preds = %if.else447, %stb0899_search_tmg.exit
  %148 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %149)
  %cmp451 = icmp eq i32 %149, 4
  br i1 %cmp451, label %do.body454, label %if.end449.if.end912_crit_edge

if.end449.if.end912_crit_edge:                    ; preds = %if.end449
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end912

do.body454:                                       ; preds = %if.end449
  %150 = ptrtoint ptr %verbose.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %verbose.i, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %151, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %153)
  %switch1519 = icmp ult i32 %153, 4
  br i1 %switch1519, label %do.body454.do.end527_crit_edge, label %do.end465

do.body454.do.end527_crit_edge:                   ; preds = %do.body454
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end527

do.end465:                                        ; preds = %do.body454
  call void @__sanitizer_cov_trace_pc() #8
  %154 = ptrtoint ptr %derot_freq to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %derot_freq, align 4
  %conv468 = sext i16 %155 to i32
  %156 = ptrtoint ptr %mclk183 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %mclk183, align 4
  %call470 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.1, i32 noundef %conv468, i32 noundef %157) #9
  br label %do.end527

do.end527:                                        ; preds = %do.end465, %do.body454.do.end527_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cfr.i1557) #6
  %158 = ptrtoint ptr %cfr.i1557 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 -1, ptr %cfr.i1557, align 1, !annotation !491
  %159 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 -1, ptr %79, align 1, !annotation !491
  %160 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 7, ptr %status, align 4
  %161 = ptrtoint ptr %sub_range12.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %sub_range12.i, align 4
  %div.i1560 = sdiv i32 %162, 2
  %163 = ptrtoint ptr %mclk183 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %mclk183, align 4
  %div2.i = sdiv i32 %div.i1560, %164
  %165 = ptrtoint ptr %derot_freq to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %derot_freq, align 4
  %call.i1562 = call i32 @stb0899_read_reg(ptr noundef %state, i32 noundef 62491) #6
  %167 = trunc i32 %call.i1562 to i8
  %conv6.i = or i8 %167, -128
  %call7.i = call i32 @stb0899_write_reg(ptr noundef %state, i32 noundef 62491, i8 noundef zeroext %conv6.i) #6
  %sext291.i = shl i32 %div2.i, 16
  %conv84.i = ashr exact i32 %sext291.i, 16
  br label %do.body.i

do.body.i:                                        ; preds = %if.end118.i.do.body.i_crit_edge, %do.end527
  %index.0.i = phi i32 [ 0, %do.end527 ], [ %index.1.i, %if.end118.i.do.body.i_crit_edge ]
  %next_loop.0.i = phi i16 [ 3, %do.end527 ], [ %next_loop.2.i, %if.end118.i.do.body.i_crit_edge ]
  %last_derot_freq.0.i = phi i16 [ 0, %do.end527 ], [ %last_derot_freq.1.i, %if.end118.i.do.body.i_crit_edge ]
  %derot_freq.0.i = phi i16 [ %166, %do.end527 ], [ %derot_freq.1.i, %if.end118.i.do.body.i_crit_edge ]
  %168 = ptrtoint ptr %verbose.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %verbose.i, align 4
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %169, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %171)
  %switch.i1566 = icmp ult i32 %171, 4
  br i1 %switch.i1566, label %do.body.i.do.end68.i_crit_edge, label %do.end.i1567

do.body.i.do.end68.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end68.i

do.end.i1567:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv14.i = sext i16 %derot_freq.0.i to i32
  %172 = ptrtoint ptr %mclk183 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %mclk183, align 4
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.237, i32 noundef %conv14.i, i32 noundef %173) #9
  br label %do.end68.i

do.end68.i:                                       ; preds = %do.end.i1567, %do.body.i.do.end68.i_crit_edge
  %call69.i = call fastcc i32 @stb0899_check_carrier(ptr noundef %state) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call69.i)
  %cmp70.i = icmp eq i32 %call69.i, 7
  br i1 %cmp70.i, label %if.then72.i, label %do.end68.i.if.end118.i_crit_edge

do.end68.i.if.end118.i_crit_edge:                 ; preds = %do.end68.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end118.i

if.then72.i:                                      ; preds = %do.end68.i
  %inc.i1568 = add i32 %index.0.i, 1
  %174 = ptrtoint ptr %direction to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %direction, align 4
  %176 = ptrtoint ptr %derot_step to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %derot_step, align 2
  %178 = trunc i32 %inc.i1568 to i16
  %179 = mul i16 %175, %178
  %180 = mul i16 %179, %177
  %conv77.i = add i16 %180, %derot_freq.0.i
  %conv79.i = sext i16 %conv77.i to i32
  %181 = call i32 @llvm.abs.i32(i32 %conv79.i, i1 true) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %181, i32 %conv84.i)
  %cmp85.i = icmp sgt i32 %181, %conv84.i
  %dec.i1569 = sext i1 %cmp85.i to i16
  %next_loop.1.i1570 = add i16 %next_loop.0.i, %dec.i1569
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %next_loop.1.i1570)
  %tobool.not.i1571 = icmp eq i16 %next_loop.1.i1570, 0
  br i1 %tobool.not.i1571, label %if.then72.i.if.end118.i_crit_edge, label %if.then89.i

if.then72.i.if.end118.i_crit_edge:                ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end118.i

if.then89.i:                                      ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #8
  %call90.i = call i32 @stb0899_read_reg(ptr noundef %state, i32 noundef 62491) #6
  %182 = trunc i32 %call90.i to i8
  %conv95.i = or i8 %182, -128
  %call96.i = call i32 @stb0899_write_reg(ptr noundef %state, i32 noundef 62491, i8 noundef zeroext %conv95.i) #6
  %183 = ptrtoint ptr %inversion.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %inversion.i, align 4
  %mul100.i = mul i32 %184, %conv79.i
  %185 = lshr i32 %mul100.i, 8
  %conv103.i = trunc i32 %185 to i8
  %186 = ptrtoint ptr %cfr.i1557 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %conv103.i, ptr %cfr.i1557, align 1
  %conv114.i = trunc i32 %mul100.i to i8
  %187 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %conv114.i, ptr %79, align 1
  %call116.i = call i32 @stb0899_write_regs(ptr noundef %state, i32 noundef 62526, ptr noundef nonnull %cfr.i1557, i32 noundef 2) #6
  br label %if.end118.i

if.end118.i:                                      ; preds = %if.then89.i, %if.then72.i.if.end118.i_crit_edge, %do.end68.i.if.end118.i_crit_edge
  %index.1.i = phi i32 [ %inc.i1568, %if.then89.i ], [ %inc.i1568, %if.then72.i.if.end118.i_crit_edge ], [ %index.0.i, %do.end68.i.if.end118.i_crit_edge ]
  %next_loop.2.i = phi i16 [ %next_loop.1.i1570, %if.then89.i ], [ 0, %if.then72.i.if.end118.i_crit_edge ], [ %next_loop.0.i, %do.end68.i.if.end118.i_crit_edge ]
  %last_derot_freq.1.i = phi i16 [ %derot_freq.0.i, %if.then89.i ], [ %derot_freq.0.i, %if.then72.i.if.end118.i_crit_edge ], [ %last_derot_freq.0.i, %do.end68.i.if.end118.i_crit_edge ]
  %derot_freq.1.i = phi i16 [ %conv77.i, %if.then89.i ], [ %conv77.i, %if.then72.i.if.end118.i_crit_edge ], [ %derot_freq.0.i, %do.end68.i.if.end118.i_crit_edge ]
  %188 = ptrtoint ptr %direction to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %direction, align 4
  %sub121.i = sub i16 0, %189
  store i16 %sub121.i, ptr %direction, align 4
  %190 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %191)
  %cmp126.not.i = icmp eq i32 %191, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %next_loop.2.i)
  %tobool129.not.i = icmp eq i16 %next_loop.2.i, 0
  %or.cond294.i = select i1 %cmp126.not.i, i1 true, i1 %tobool129.not.i
  br i1 %or.cond294.i, label %do.end130.i, label %if.end118.i.do.body.i_crit_edge

if.end118.i.do.body.i_crit_edge:                  ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.end130.i:                                      ; preds = %if.end118.i
  br i1 %cmp126.not.i, label %if.then134.i, label %if.else217.i

if.then134.i:                                     ; preds = %do.end130.i
  %call136.i = call i32 @stb0899_read_regs(ptr noundef %state, i32 noundef 62526, ptr noundef nonnull %cfr.i1557, i32 noundef 2) #6
  %192 = ptrtoint ptr %inversion.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %inversion.i, align 4
  %194 = ptrtoint ptr %cfr.i1557 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %cfr.i1557, align 1
  %conv139.i = zext i8 %195 to i32
  %shl140.i = shl nuw nsw i32 %conv139.i, 8
  %196 = ptrtoint ptr %79 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %79, align 1
  %conv142.i = zext i8 %197 to i32
  %or143.i = or i32 %shl140.i, %conv142.i
  %mul144.i = mul i32 %or143.i, %193
  %conv145.i = trunc i32 %mul144.i to i16
  %198 = ptrtoint ptr %derot_freq to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 %conv145.i, ptr %derot_freq, align 4
  %199 = ptrtoint ptr %verbose.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %verbose.i, align 4
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %200, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %202)
  %switch300.i = icmp ult i32 %202, 4
  br i1 %switch300.i, label %if.then134.i.stb0899_search_carrier.exit_crit_edge, label %do.end158.i

if.then134.i.stb0899_search_carrier.exit_crit_edge: ; preds = %if.then134.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stb0899_search_carrier.exit

do.end158.i:                                      ; preds = %if.then134.i
  call void @__sanitizer_cov_trace_pc() #8
  %sext.i1572 = shl i32 %mul144.i, 16
  %conv161.i = ashr exact i32 %sext.i1572, 16
  %call162.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.237, i32 noundef %conv161.i) #9
  br label %stb0899_search_carrier.exit

if.else217.i:                                     ; preds = %do.end130.i
  call void @__sanitizer_cov_trace_pc() #8
  %203 = ptrtoint ptr %derot_freq to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 %last_derot_freq.1.i, ptr %derot_freq, align 4
  br label %stb0899_search_carrier.exit

stb0899_search_carrier.exit:                      ; preds = %if.else217.i, %do.end158.i, %if.then134.i.stb0899_search_carrier.exit_crit_edge
  %204 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %status, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cfr.i1557) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %205)
  %cmp529 = icmp eq i32 %205, 8
  br i1 %cmp529, label %do.body532, label %stb0899_search_carrier.exit.if.end912_crit_edge

stb0899_search_carrier.exit.if.end912_crit_edge:  ; preds = %stb0899_search_carrier.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end912

do.body532:                                       ; preds = %stb0899_search_carrier.exit
  %206 = ptrtoint ptr %verbose.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %verbose.i, align 4
  %208 = ptrtoint ptr %207 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %207, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %209)
  %switch1522 = icmp ult i32 %209, 4
  br i1 %switch1522, label %do.body532.do.end605_crit_edge, label %do.end543

do.body532.do.end605_crit_edge:                   ; preds = %do.body532
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end605

do.end543:                                        ; preds = %do.body532
  call void @__sanitizer_cov_trace_pc() #8
  %210 = ptrtoint ptr %derot_freq to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %derot_freq, align 4
  %conv546 = sext i16 %211 to i32
  %212 = ptrtoint ptr %mclk183 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %mclk183, align 4
  %call548 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef %conv546, i32 noundef %213) #9
  br label %do.end605

do.end605:                                        ; preds = %do.end543, %do.body532.do.end605_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cfr.i1573) #6
  %214 = ptrtoint ptr %cfr.i1573 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 -1, ptr %cfr.i1573, align 1, !annotation !491
  %215 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 -1, ptr %80, align 1, !annotation !491
  %216 = ptrtoint ptr %srate to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %srate, align 4
  %div298.i = lshr i32 %217, 2
  %218 = ptrtoint ptr %mclk183 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %mclk183, align 4
  %div3.i1576 = udiv i32 %div298.i, %219
  %220 = ptrtoint ptr %sub_range12.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %sub_range12.i, align 4
  %div4.i = sdiv i32 %221, 2
  %div6.i1578 = sdiv i32 %div4.i, %219
  %222 = ptrtoint ptr %derot_freq to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %derot_freq, align 4
  %sext302.i = shl i32 %div6.i1578, 16
  %conv22.i = ashr exact i32 %sext302.i, 16
  %224 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %224)
  %.pr315.i = load i32, ptr %status, align 4
  br label %do.body.i1586

do.body.i1586:                                    ; preds = %if.end119.i.do.body.i1586_crit_edge, %do.end605
  %225 = phi i32 [ %.pr316.i, %if.end119.i.do.body.i1586_crit_edge ], [ %.pr315.i, %do.end605 ]
  %index.0.i1582 = phi i32 [ %inc.i1601, %if.end119.i.do.body.i1586_crit_edge ], [ 1, %do.end605 ]
  %next_loop.0.i1583 = phi i16 [ %next_loop.1.i1590, %if.end119.i.do.body.i1586_crit_edge ], [ 3, %do.end605 ]
  %derot_freq.0.i1584 = phi i16 [ %conv16.i, %if.end119.i.do.body.i1586_crit_edge ], [ %223, %do.end605 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %225)
  %cmp.not.i1585 = icmp eq i32 %225, 8
  br i1 %cmp.not.i1585, label %lor.lhs.false.i, label %do.body.i1586.if.then.i1592_crit_edge

do.body.i1586.if.then.i1592_crit_edge:            ; preds = %do.body.i1586
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i1592

lor.lhs.false.i:                                  ; preds = %do.body.i1586
  %226 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 9, ptr %status, align 4
  %call.i.i = call i32 @stb0899_read_reg(ptr noundef %state, i32 noundef 65297) #6
  %227 = trunc i32 %call.i.i to i8
  %conv4.i.i = or i8 %227, 8
  %call5.i.i = call i32 @stb0899_write_reg(ptr noundef %state, i32 noundef 65297, i8 noundef zeroext %conv4.i.i) #6
  call void @msleep(i32 noundef 1) #6
  %call6.i.i = call i32 @stb0899_read_reg(ptr noundef %state, i32 noundef 65297) #6
  %228 = trunc i32 %call6.i.i to i8
  %conv11.i.i = and i8 %228, -9
  %call12.i.i = call i32 @stb0899_write_reg(ptr noundef %state, i32 noundef 65297, i8 noundef zeroext %conv11.i.i) #6
  %229 = ptrtoint ptr %srate to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %srate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000001, i32 %230)
  %cmp.i.i = icmp ult i32 %230, 2000001
  br i1 %cmp.i.i, label %lor.lhs.false.i.if.end25.i.i_crit_edge, label %if.else.i.i

lor.lhs.false.i.if.end25.i.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.i.i

if.else.i.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000001, i32 %230)
  %cmp15.i.i = icmp ult i32 %230, 5000001
  br i1 %cmp15.i.i, label %if.else.i.i.if.end25.i.i_crit_edge, label %if.else18.i.i

if.else.i.i.if.end25.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.i.i

if.else18.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15000001, i32 %230)
  %cmp20.i.i = icmp ult i32 %230, 15000001
  %..i.i = select i1 %cmp20.i.i, i32 1000, i32 500
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %if.else18.i.i, %if.else.i.i.if.end25.i.i_crit_edge, %lor.lhs.false.i.if.end25.i.i_crit_edge
  %dataTime.0.i.i = phi i32 [ 2000, %lor.lhs.false.i.if.end25.i.i_crit_edge ], [ 1500, %if.else.i.i.if.end25.i.i_crit_edge ], [ %..i.i, %if.else18.i.i ]
  %call26.i.i = call i32 @stb0899_read_reg(ptr noundef %state, i32 noundef 62733) #6
  %call27.i.i = call i32 @stb0899_write_reg(ptr noundef %state, i32 noundef 62732, i8 noundef zeroext 0) #6
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %if.end25.i.i
  %index.0.i.i = phi i32 [ 0, %if.end25.i.i ], [ %inc.i.i, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %call28.i.i = call i32 @stb0899_read_reg(ptr noundef %state, i32 noundef 62733) #6
  %231 = and i32 %call28.i.i, 72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %231)
  %232 = icmp ne i32 %231, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %index.0.i.i, i32 %dataTime.0.i.i)
  %cmp37.i.i = icmp ugt i32 %index.0.i.i, %dataTime.0.i.i
  %or.cond132.i.i = select i1 %232, i1 true, i1 %cmp37.i.i
  %inc.i.i = add nuw nsw i32 %index.0.i.i, 1
  br i1 %or.cond132.i.i, label %while.end.i.i, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %233 = and i32 %call28.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %233)
  %tobool.not.i.i1587 = icmp eq i32 %233, 0
  br i1 %tobool.not.i.i1587, label %while.end.i.i.stb0899_check_data.exit.i_crit_edge, label %if.then42.i.i

while.end.i.i.stb0899_check_data.exit.i_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stb0899_check_data.exit.i

if.then42.i.i:                                    ; preds = %while.end.i.i
  %234 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 11, ptr %status, align 4
  %235 = ptrtoint ptr %verbose.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %verbose.i, align 4
  %237 = ptrtoint ptr %236 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %236, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %238)
  %switch.i.i = icmp ult i32 %238, 4
  br i1 %switch.i.i, label %if.then42.i.i.if.end119.thread.i_crit_edge, label %do.end.i.i

if.then42.i.i.if.end119.thread.i_crit_edge:       ; preds = %if.then42.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end119.thread.i

do.end.i.i:                                       ; preds = %if.then42.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call51.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.317, ptr noundef nonnull @.str.318) #9
  br label %stb0899_check_data.exit.i

stb0899_check_data.exit.i:                        ; preds = %do.end.i.i, %while.end.i.i.stb0899_check_data.exit.i_crit_edge
  %239 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %239)
  %.pr.i = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %.pr.i)
  %cmp10.not.i = icmp eq i32 %.pr.i, 11
  br i1 %cmp10.not.i, label %stb0899_check_data.exit.i.if.end119.thread.i_crit_edge, label %stb0899_check_data.exit.i.if.then.i1592_crit_edge

stb0899_check_data.exit.i.if.then.i1592_crit_edge: ; preds = %stb0899_check_data.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i1592

stb0899_check_data.exit.i.if.end119.thread.i_crit_edge: ; preds = %stb0899_check_data.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end119.thread.i

if.then.i1592:                                    ; preds = %stb0899_check_data.exit.i.if.then.i1592_crit_edge, %do.body.i1586.if.then.i1592_crit_edge
  %240 = ptrtoint ptr %direction to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %direction, align 4
  %mul.i1588 = mul i32 %index.0.i1582, %div3.i1576
  %242 = trunc i32 %mul.i1588 to i16
  %243 = mul i16 %241, %242
  %conv16.i = add i16 %243, %derot_freq.0.i1584
  %conv17.i = sext i16 %conv16.i to i32
  %244 = call i32 @llvm.abs.i32(i32 %conv17.i, i1 true) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %244, i32 %conv22.i)
  %cmp23.i = icmp sgt i32 %244, %conv22.i
  %dec.i1589 = sext i1 %cmp23.i to i16
  %next_loop.1.i1590 = add i16 %next_loop.0.i1583, %dec.i1589
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %next_loop.1.i1590)
  %tobool.not.i1591 = icmp eq i16 %next_loop.1.i1590, 0
  br i1 %tobool.not.i1591, label %if.end119.i.thread, label %do.body27.i

if.end119.i.thread:                               ; preds = %if.then.i1592
  %245 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %245)
  %.pr316.i1628 = load i32, ptr %status, align 4
  %246 = ptrtoint ptr %direction to i32
  call void @__asan_load2_noabort(i32 %246)
  %247 = load i16, ptr %direction, align 4
  %sub122.i1629 = sub i16 0, %247
  store i16 %sub122.i1629, ptr %direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %.pr316.i1628)
  %cmp127.not.i1630 = icmp eq i32 %.pr316.i1628, 11
  br i1 %cmp127.not.i1630, label %if.end119.i.thread.if.then135.i_crit_edge, label %stb0899_search_data.exit.thread

if.end119.i.thread.if.then135.i_crit_edge:        ; preds = %if.end119.i.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then135.i

stb0899_search_data.exit.thread:                  ; preds = %if.end119.i.thread
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cfr.i1573) #6
  br label %if.end912thread-pre-split

do.body27.i:                                      ; preds = %if.then.i1592
  %248 = ptrtoint ptr %verbose.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %verbose.i, align 4
  %250 = ptrtoint ptr %249 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %249, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %251)
  %switch.i1593 = icmp ult i32 %251, 4
  br i1 %switch.i1593, label %do.body27.i.if.end119.i_crit_edge, label %do.end.i1594

do.body27.i.if.end119.i_crit_edge:                ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end119.i

do.end.i1594:                                     ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #8
  %252 = ptrtoint ptr %mclk183 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %mclk183, align 4
  %call38.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.294, ptr noundef nonnull @.str.295, i32 noundef %conv17.i, i32 noundef %253) #9
  br label %if.end119.i

if.end119.thread.i:                               ; preds = %stb0899_check_data.exit.i.if.end119.thread.i_crit_edge, %if.then42.i.i.if.end119.thread.i_crit_edge
  %254 = ptrtoint ptr %direction to i32
  call void @__asan_load2_noabort(i32 %254)
  %255 = load i16, ptr %direction, align 4
  %sub122320.i = sub i16 0, %255
  store i16 %sub122320.i, ptr %direction, align 4
  br label %if.then135.i

if.end119.i:                                      ; preds = %do.end.i1594, %do.body27.i.if.end119.i_crit_edge
  %call92.i = call i32 @stb0899_read_reg(ptr noundef %state, i32 noundef 62491) #6
  %256 = trunc i32 %call92.i to i8
  %conv95.i1595 = or i8 %256, -128
  %call96.i1596 = call i32 @stb0899_write_reg(ptr noundef %state, i32 noundef 62491, i8 noundef zeroext %conv95.i1595) #6
  %257 = ptrtoint ptr %inversion.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %inversion.i, align 4
  %mul100.i1597 = mul i32 %258, %conv17.i
  %259 = lshr i32 %mul100.i1597, 8
  %conv103.i1598 = trunc i32 %259 to i8
  %260 = ptrtoint ptr %cfr.i1573 to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 %conv103.i1598, ptr %cfr.i1573, align 1
  %conv114.i1599 = trunc i32 %mul100.i1597 to i8
  %261 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 %conv114.i1599, ptr %80, align 1
  %call116.i1600 = call i32 @stb0899_write_regs(ptr noundef %state, i32 noundef 62526, ptr noundef nonnull %cfr.i1573, i32 noundef 2) #6
  %call117.i = call fastcc i32 @stb0899_check_carrier(ptr noundef %state) #6
  %inc.i1601 = add i32 %index.0.i1582, 1
  %262 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %262)
  %.pr316.i = load i32, ptr %status, align 4
  %263 = ptrtoint ptr %direction to i32
  call void @__asan_load2_noabort(i32 %263)
  %264 = load i16, ptr %direction, align 4
  %sub122.i = sub i16 0, %264
  store i16 %sub122.i, ptr %direction, align 4
  %cmp127.not.i = icmp eq i32 %.pr316.i, 11
  br i1 %cmp127.not.i, label %if.end119.i.if.then135.i_crit_edge, label %if.end119.i.do.body.i1586_crit_edge

if.end119.i.do.body.i1586_crit_edge:              ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i1586

if.end119.i.if.then135.i_crit_edge:               ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then135.i

if.then135.i:                                     ; preds = %if.end119.i.if.then135.i_crit_edge, %if.end119.thread.i, %if.end119.i.thread.if.then135.i_crit_edge
  %call137.i = call i32 @stb0899_read_regs(ptr noundef %state, i32 noundef 62526, ptr noundef nonnull %cfr.i1573, i32 noundef 2) #6
  %call138.i = call i32 @stb0899_read_reg(ptr noundef %state, i32 noundef 62755) #6
  %265 = and i32 %call138.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %265)
  %tobool143.not.i = icmp eq i32 %265, 0
  %spec.select.i = select i1 %tobool143.not.i, i32 1, i32 -1
  %266 = ptrtoint ptr %inversion.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %spec.select.i, ptr %inversion.i, align 4
  %267 = ptrtoint ptr %cfr.i1573 to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %cfr.i1573, align 1
  %conv151.i = zext i8 %268 to i32
  %shl152.i = shl nuw nsw i32 %conv151.i, 8
  %269 = ptrtoint ptr %80 to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %80, align 1
  %conv154.i = zext i8 %270 to i32
  %or155.i = or i32 %shl152.i, %conv154.i
  %mul156.i = mul nsw i32 %or155.i, %spec.select.i
  %conv157.i = trunc i32 %mul156.i to i16
  %271 = ptrtoint ptr %derot_freq to i32
  call void @__asan_store2_noabort(i32 %271)
  store i16 %conv157.i, ptr %derot_freq, align 4
  %272 = ptrtoint ptr %verbose.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %verbose.i, align 4
  %274 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %273, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %275)
  %switch311.i = icmp ult i32 %275, 4
  br i1 %switch311.i, label %if.then135.i.stb0899_search_data.exit_crit_edge, label %do.end170.i

if.then135.i.stb0899_search_data.exit_crit_edge:  ; preds = %if.then135.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stb0899_search_data.exit

do.end170.i:                                      ; preds = %if.then135.i
  call void @__sanitizer_cov_trace_pc() #8
  %sext.i1602 = shl i32 %mul156.i, 16
  %conv173.i = ashr exact i32 %sext.i1602, 16
  %call174.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.306, ptr noundef nonnull @.str.295, i32 noundef %conv173.i) #9
  br label %stb0899_search_data.exit

stb0899_search_data.exit:                         ; preds = %do.end170.i, %if.then135.i.stb0899_search_data.exit_crit_edge
  %276 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %276)
  %.pr = load i32, ptr %status, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cfr.i1573) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %.pr)
  %cmp607 = icmp eq i32 %.pr, 11
  br i1 %cmp607, label %do.body610, label %stb0899_search_data.exit.if.end912_crit_edge

stb0899_search_data.exit.if.end912_crit_edge:     ; preds = %stb0899_search_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end912

do.body610:                                       ; preds = %stb0899_search_data.exit
  %277 = ptrtoint ptr %verbose.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %verbose.i, align 4
  %279 = ptrtoint ptr %278 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %278, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %280)
  %switch1525 = icmp ult i32 %280, 4
  br i1 %switch1525, label %do.body610.do.end683_crit_edge, label %do.end621

do.body610.do.end683_crit_edge:                   ; preds = %do.body610
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end683

do.end621:                                        ; preds = %do.body610
  call void @__sanitizer_cov_trace_pc() #8
  %281 = ptrtoint ptr %derot_freq to i32
  call void @__asan_load2_noabort(i32 %281)
  %282 = load i16, ptr %derot_freq, align 4
  %conv624 = sext i16 %282 to i32
  %283 = ptrtoint ptr %mclk183 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %mclk183, align 4
  %call626 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.1, i32 noundef %conv624, i32 noundef %284) #9
  br label %do.end683

do.end683:                                        ; preds = %do.end621, %do.body610.do.end683_crit_edge
  %285 = ptrtoint ptr %srch_range.i1604 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %srch_range.i1604, align 4
  %div.i1605 = sdiv i32 %286, 2000
  %287 = ptrtoint ptr %freq14.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %freq14.i, align 4
  %289 = ptrtoint ptr %derot_freq to i32
  call void @__asan_load2_noabort(i32 %289)
  %290 = load i16, ptr %derot_freq, align 4
  %conv.i1606 = sext i16 %290 to i32
  %291 = ptrtoint ptr %mclk183 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %mclk183, align 4
  %mul.i1608 = mul i32 %292, %conv.i1606
  %div3.neg.i = sdiv i32 %mul.i1608, -1000
  %sub.i1609 = add i32 %div3.neg.i, %288
  %293 = ptrtoint ptr %params1 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %params1, align 4
  %sub5.i = sub i32 %294, %div.i1605
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i1609, i32 %sub5.i)
  %cmp.not.i1610 = icmp ult i32 %sub.i1609, %sub5.i
  %add.i1611 = add i32 %294, %div.i1605
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i1609, i32 %add.i1611)
  %cmp8.not.i = icmp ugt i32 %sub.i1609, %add.i1611
  %or.cond.i1612 = or i1 %cmp.not.i1610, %cmp8.not.i
  br i1 %or.cond.i1612, label %if.else64.i, label %if.then.i1615

if.then.i1615:                                    ; preds = %do.end683
  %295 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 13, ptr %status, align 4
  %296 = ptrtoint ptr %verbose.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %verbose.i, align 4
  %298 = ptrtoint ptr %297 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %297, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %299)
  %switch.i1614 = icmp ult i32 %299, 4
  br i1 %switch.i1614, label %if.then.i1615.do.body688_crit_edge, label %if.then.i1615.stb0899_check_range.exit_crit_edge

if.then.i1615.stb0899_check_range.exit_crit_edge: ; preds = %if.then.i1615
  call void @__sanitizer_cov_trace_pc() #8
  br label %stb0899_check_range.exit

if.then.i1615.do.body688_crit_edge:               ; preds = %if.then.i1615
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body688

if.else64.i:                                      ; preds = %do.end683
  %300 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 12, ptr %status, align 4
  %301 = ptrtoint ptr %verbose.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %verbose.i, align 4
  %303 = ptrtoint ptr %302 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %302, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %304)
  %switch169.i = icmp ult i32 %304, 4
  br i1 %switch169.i, label %if.else64.i.if.then916_crit_edge, label %if.else64.i.stb0899_check_range.exit_crit_edge

if.else64.i.stb0899_check_range.exit_crit_edge:   ; preds = %if.else64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stb0899_check_range.exit

if.else64.i.if.then916_crit_edge:                 ; preds = %if.else64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then916

stb0899_check_range.exit:                         ; preds = %if.else64.i.stb0899_check_range.exit_crit_edge, %if.then.i1615.stb0899_check_range.exit_crit_edge
  %.str.340.sink.i = phi ptr [ @.str.328, %if.then.i1615.stb0899_check_range.exit_crit_edge ], [ @.str.340, %if.else64.i.stb0899_check_range.exit_crit_edge ]
  %call79.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.340.sink.i, ptr noundef nonnull @.str.329) #9
  %305 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %305)
  %.pr1634 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %.pr1634)
  %cmp685 = icmp eq i32 %.pr1634, 13
  br i1 %cmp685, label %stb0899_check_range.exit.do.body688_crit_edge, label %stb0899_check_range.exit.if.then916_crit_edge

stb0899_check_range.exit.if.then916_crit_edge:    ; preds = %stb0899_check_range.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then916

stb0899_check_range.exit.do.body688_crit_edge:    ; preds = %stb0899_check_range.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body688

do.body688:                                       ; preds = %stb0899_check_range.exit.do.body688_crit_edge, %if.then.i1615.do.body688_crit_edge
  %306 = ptrtoint ptr %verbose.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %verbose.i, align 4
  %308 = ptrtoint ptr %307 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %307, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %309)
  %switch1528 = icmp ult i32 %309, 4
  br i1 %switch1528, label %do.body688.do.end761_crit_edge, label %do.end699

do.body688.do.end761_crit_edge:                   ; preds = %do.body688
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end761

do.end699:                                        ; preds = %do.body688
  call void @__sanitizer_cov_trace_pc() #8
  %310 = ptrtoint ptr %derot_freq to i32
  call void @__asan_load2_noabort(i32 %310)
  %311 = load i16, ptr %derot_freq, align 4
  %conv702 = sext i16 %311 to i32
  %312 = ptrtoint ptr %mclk183 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %mclk183, align 4
  %call704 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.1, i32 noundef %conv702, i32 noundef %313) #9
  br label %do.end761

do.end761:                                        ; preds = %do.end699, %do.body688.do.end761_crit_edge
  %314 = ptrtoint ptr %params1 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %params1, align 4
  %316 = ptrtoint ptr %derot_freq to i32
  call void @__asan_load2_noabort(i32 %316)
  %317 = load i16, ptr %derot_freq, align 4
  %conv764 = sext i16 %317 to i32
  %318 = ptrtoint ptr %mclk183 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %mclk183, align 4
  %mul766 = mul i32 %319, %conv764
  %div767.neg = sdiv i32 %mul766, -1000
  %sub = add i32 %div767.neg, %315
  %320 = ptrtoint ptr %freq14.i to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 %sub, ptr %freq14.i, align 4
  %call769 = call i32 @stb0899_read_reg(ptr noundef %state, i32 noundef 62860) #6
  %and772 = and i32 %call769, 31
  %321 = ptrtoint ptr %fecrate to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 %and772, ptr %fecrate, align 4
  %322 = ptrtoint ptr %verbose.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %verbose.i, align 4
  %324 = ptrtoint ptr %323 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %323, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %325)
  %switch1531 = icmp ult i32 %325, 4
  br i1 %switch1531, label %do.end761.do.body843_crit_edge, label %do.end784

do.end761.do.body843_crit_edge:                   ; preds = %do.end761
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body843

do.end784:                                        ; preds = %do.end761
  call void @__sanitizer_cov_trace_pc() #8
  %326 = ptrtoint ptr %params1 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %params1, align 4
  %328 = ptrtoint ptr %freq14.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %freq14.i, align 4
  %call788 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.1, i32 noundef %327, i32 noundef %329) #9
  br label %do.body843

do.body843:                                       ; preds = %do.end784, %do.end761.do.body843_crit_edge
  %330 = ptrtoint ptr %verbose.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %verbose.i, align 4
  %332 = ptrtoint ptr %331 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %331, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %333)
  %switch1534 = icmp ult i32 %333, 4
  br i1 %switch1534, label %do.body843.if.end912thread-pre-split_crit_edge, label %do.end854

do.body843.if.end912thread-pre-split_crit_edge:   ; preds = %do.body843
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end912thread-pre-split

do.end854:                                        ; preds = %do.body843
  call void @__sanitizer_cov_trace_pc() #8
  %334 = ptrtoint ptr %fecrate to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %fecrate, align 4
  %call857 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.1, i32 noundef %335) #9
  br label %if.end912thread-pre-split

if.end912thread-pre-split:                        ; preds = %do.end854, %do.body843.if.end912thread-pre-split_crit_edge, %stb0899_search_data.exit.thread
  %336 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %336)
  %.pr1638 = load i32, ptr %status, align 4
  br label %if.end912

if.end912:                                        ; preds = %if.end912thread-pre-split, %stb0899_search_data.exit.if.end912_crit_edge, %stb0899_search_carrier.exit.if.end912_crit_edge, %if.end449.if.end912_crit_edge
  %337 = phi i32 [ %.pr1638, %if.end912thread-pre-split ], [ %205, %stb0899_search_carrier.exit.if.end912_crit_edge ], [ %.pr, %stb0899_search_data.exit.if.end912_crit_edge ], [ %149, %if.end449.if.end912_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %337)
  %cmp914.not = icmp eq i32 %337, 13
  br i1 %cmp914.not, label %if.end912.do.end923_crit_edge, label %if.end912.if.then916_crit_edge

if.end912.if.then916_crit_edge:                   ; preds = %if.end912
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then916

if.end912.do.end923_crit_edge:                    ; preds = %if.end912
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end923

if.then916:                                       ; preds = %if.end912.if.then916_crit_edge, %stb0899_check_range.exit.if.then916_crit_edge, %if.else64.i.if.then916_crit_edge
  %338 = ptrtoint ptr %sub_dir.i to i32
  call void @__asan_load2_noabort(i32 %338)
  %339 = load i16, ptr %sub_dir.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %339)
  %cmp.i1617 = icmp sgt i16 %339, 0
  br i1 %cmp.i1617, label %if.then.i1623, label %if.then916.do.cond918_crit_edge

if.then916.do.cond918_crit_edge:                  ; preds = %if.then916
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond918

if.then.i1623:                                    ; preds = %if.then916
  call void @__sanitizer_cov_trace_pc() #8
  %340 = ptrtoint ptr %sub_range12.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %sub_range12.i, align 4
  %342 = ptrtoint ptr %srch_range.i1604 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %srch_range.i1604, align 4
  %div.i1620 = sdiv i32 %343, 2
  %344 = ptrtoint ptr %tuner_offst.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %tuner_offst.i, align 4
  %div5.neg50.i = sdiv i32 %341, -2
  %add.neg.i = sub i32 %div5.neg50.i, %345
  %sub.i1622 = add i32 %add.neg.i, %div.i1620
  %346 = call i32 @llvm.smin.i32(i32 %sub.i1622, i32 %341) #6
  %347 = call i32 @llvm.smax.i32(i32 %346, i32 0) #6
  %348 = ptrtoint ptr %sub_range12.i to i32
  call void @__asan_store4_noabort(i32 %348)
  store i32 %347, ptr %sub_range12.i, align 4
  %add16.i = add i32 %347, %341
  %div17.i = sdiv i32 %add16.i, 2
  %add19.i = add i32 %div17.i, %345
  %349 = ptrtoint ptr %tuner_offst.i to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 %add19.i, ptr %tuner_offst.i, align 4
  br label %do.cond918

do.cond918:                                       ; preds = %if.then.i1623, %if.then916.do.cond918_crit_edge
  %350 = ptrtoint ptr %params1 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %params1, align 4
  %conv22.i1625 = sext i16 %339 to i32
  %352 = ptrtoint ptr %tuner_offst.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %tuner_offst.i, align 4
  %mul.i1626 = mul i32 %353, %conv22.i1625
  %div24.i = sdiv i32 %mul.i1626, 1000
  %add25.i = add i32 %div24.i, %351
  %354 = ptrtoint ptr %freq14.i to i32
  call void @__asan_store4_noabort(i32 %354)
  store i32 %add25.i, ptr %freq14.i, align 4
  %sub29.i = sub i16 0, %339
  %355 = ptrtoint ptr %sub_dir.i to i32
  call void @__asan_store2_noabort(i32 %355)
  store i16 %sub29.i, ptr %sub_dir.i, align 4
  %356 = ptrtoint ptr %sub_range12.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %sub_range12.i, align 4
  %tobool919.not = icmp eq i32 %357, 0
  br i1 %tobool919.not, label %do.cond918.do.end923_crit_edge, label %do.cond918.do.body267_crit_edge

do.cond918.do.body267_crit_edge:                  ; preds = %do.cond918
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body267

do.cond918.do.end923_crit_edge:                   ; preds = %do.cond918
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end923

do.end923:                                        ; preds = %do.cond918.do.end923_crit_edge, %if.end912.do.end923_crit_edge
  %call924 = call i32 @stb0899_write_reg(ptr noundef %state, i32 noundef 62487, i8 noundef zeroext 51) #6
  %call925 = call i32 @stb0899_write_reg(ptr noundef %state, i32 noundef 62491, i8 noundef zeroext -9) #6
  %358 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %359)
  %cmp927 = icmp eq i32 %359, 13
  br i1 %cmp927, label %do.body930, label %do.end923.if.end1127_crit_edge

do.end923.if.end1127_crit_edge:                   ; preds = %do.end923
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1127

do.body930:                                       ; preds = %do.end923
  %360 = ptrtoint ptr %verbose.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %verbose.i, align 4
  %362 = ptrtoint ptr %361 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %361, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %363)
  %switch1537 = icmp ult i32 %363, 4
  br i1 %switch1537, label %do.body930.do.end991_crit_edge, label %do.end941

do.body930.do.end991_crit_edge:                   ; preds = %do.body930
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end991

do.end941:                                        ; preds = %do.body930
  call void @__sanitizer_cov_trace_pc() #8
  %call943 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.1) #9
  br label %do.end991

do.end991:                                        ; preds = %do.end941, %do.body930.do.end991_crit_edge
  %call992 = call i32 @stb0899_write_reg(ptr noundef %state, i32 noundef 62494, i8 noundef zeroext 65) #6
  %call993 = call i32 @stb0899_write_reg(ptr noundef %state, i32 noundef 62781, i8 noundef zeroext 57) #6
  %call994 = call i32 @stb0899_read_reg(ptr noundef %state, i32 noundef 62493) #6
  %364 = ptrtoint ptr %fecrate to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %fecrate, align 4
  %366 = zext i32 %365 to i64
  call void @__sanitizer_cov_trace_switch(i64 %366, ptr @__sancov_gen_cov_switch_values)
  switch i32 %365, label %do.body1049 [
    i32 13, label %sw.bb
    i32 18, label %sw.bb1005
    i32 21, label %sw.bb1015
    i32 24, label %sw.bb1025
    i32 25, label %sw.bb1035
    i32 26, label %sw.bb1039
  ]

sw.bb:                                            ; preds = %do.end991
  call void @__sanitizer_cov_trace_pc() #8
  %call997 = call i32 @stb0899_write_reg(ptr noundef %state, i32 noundef 62851, i8 noundef zeroext 26) #6
  %and999 = and i32 %call994, 192
  %arrayidx1001 = getelementptr [4 x i32], ptr @__const.stb0899_dvbs_algo.betaTab, i32 0, i32 %clnI.0
  %367 = ptrtoint ptr %arrayidx1001 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %arrayidx1001, align 4
  %or1002 = or i32 %368, %and999
  %conv1003 = trunc i32 %or1002 to i8
  %call1004 = call i32 @stb0899_write_reg(ptr noundef %state, i32 noundef 62493, i8 noundef zeroext %conv1003) #6
  br label %sw.epilog

sw.bb1005:                                        ; preds = %do.end991
  call void @__sanitizer_cov_trace_pc() #8
  %call1006 = call i32 @stb0899_write_reg(ptr noundef %state, i32 noundef 62851, i8 noundef zeroext 44) #6
  %and1008 = and i32 %call994, 192
  %arrayidx1010 = getelementptr [5 x [4 x i32]], ptr @__const.stb0899_dvbs_algo.betaTab, i32 0, i32 1, i32 %clnI.0
  %369 = ptrtoint ptr %arrayidx1010 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %arrayidx1010, align 4
  %or1012 = or i32 %370, %and1008
  %conv1013 = trunc i32 %or1012 to i8
  %call1014 = call i32 @stb0899_write_reg(ptr noundef %state, i32 noundef 62493, i8 noundef zeroext %conv1013) #6
  br label %sw.epilog

sw.bb1015:                                        ; preds = %do.end991
  call void @__sanitizer_cov_trace_pc() #8
  %call1016 = call i32 @stb0899_write_reg(ptr noundef %state, i32 noundef 62851, i8 noundef zeroext 60) #6
  %and1018 = and i32 %call994, 192
  %arrayidx1020 = getelementptr [5 x [4 x i32]], ptr @__const.stb0899_dvbs_algo.betaTab, i32 0, i32 2, i32 %clnI.0
  %371 = ptrtoint ptr %arrayidx1020 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %arrayidx1020, align 4
  %or1022 = or i32 %372, %and1018
  %conv1023 = trunc i32 %or1022 to i8
  %call1024 = call i32 @stb0899_write_reg(ptr noundef %state, i32 noundef 62493, i8 noundef zeroext %conv1023) #6
  br label %sw.epilog

sw.bb1025:                                        ; preds = %do.end991
  call void @__sanitizer_cov_trace_pc() #8
  %call1026 = call i32 @stb0899_write_reg(ptr noundef %state, i32 noundef 62851, i8 noundef zeroext 75) #6
  %and1028 = and i32 %call994, 192
  %arrayidx1030 = getelementptr [5 x [4 x i32]], ptr @__const.stb0899_dvbs_algo.betaTab, i32 0, i32 3, i32 %clnI.0
  %373 = ptrtoint ptr %arrayidx1030 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %arrayidx1030, align 4
  %or1032 = or i32 %374, %and1028
  %conv1033 = trunc i32 %or1032 to i8
  %call1034 = call i32 @stb0899_write_reg(ptr noundef %state, i32 noundef 62493, i8 noundef zeroext %conv1033) #6
  br label %sw.epilog

sw.bb1035:                                        ; preds = %do.end991
  call void @__sanitizer_cov_trace_pc() #8
  %call1036 = call i32 @stb0899_write_reg(ptr noundef %state, i32 noundef 62851, i8 noundef zeroext 88) #6
  %call1037 = call i32 @stb0899_write_reg(ptr noundef %state, i32 noundef 62492, i8 noundef zeroext -120) #6
  %call1038 = call i32 @stb0899_write_reg(ptr noundef %state, i32 noundef 62493, i8 noundef zeroext -102) #6
  br label %sw.epilog

sw.bb1039:                                        ; preds = %do.end991
  call void @__sanitizer_cov_trace_pc() #8
  %call1040 = call i32 @stb0899_write_reg(ptr noundef %state, i32 noundef 62851, i8 noundef zeroext 94) #6
  %and1042 = and i32 %call994, 192
  %arrayidx1044 = getelementptr [5 x [4 x i32]], ptr @__const.stb0899_dvbs_algo.betaTab, i32 0, i32 4, i32 %clnI.0
  %375 = ptrtoint ptr %arrayidx1044 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %arrayidx1044, align 4
  %or1046 = or i32 %376, %and1042
  %conv1047 = trunc i32 %or1046 to i8
  %call1048 = call i32 @stb0899_write_reg(ptr noundef %state, i32 noundef 62493, i8 noundef zeroext %conv1047) #6
  br label %sw.epilog

do.body1049:                                      ; preds = %do.end991
  %377 = ptrtoint ptr %verbose.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %verbose.i, align 4
  %379 = ptrtoint ptr %378 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %378, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %380)
  %switch1540 = icmp ult i32 %380, 4
  br i1 %switch1540, label %do.body1049.sw.epilog_crit_edge, label %do.end1060

do.body1049.sw.epilog_crit_edge:                  ; preds = %do.body1049
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end1060:                                       ; preds = %do.body1049
  call void @__sanitizer_cov_trace_pc() #8
  %call1062 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.1) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end1060, %do.body1049.sw.epilog_crit_edge, %sw.bb1039, %sw.bb1035, %sw.bb1025, %sw.bb1015, %sw.bb1005, %sw.bb
  %call1111 = call i32 @stb0899_read_reg(ptr noundef %state, i32 noundef 65297) #6
  %381 = trunc i32 %call1111 to i8
  %conv1116 = and i8 %381, -65
  %call1117 = call i32 @stb0899_write_reg(ptr noundef %state, i32 noundef 65297, i8 noundef zeroext %conv1116) #6
  %call1118 = call i32 @stb0899_read_reg(ptr noundef %state, i32 noundef 62491) #6
  %382 = trunc i32 %call1118 to i8
  %conv1123 = and i8 %382, 127
  %call1124 = call i32 @stb0899_write_reg(ptr noundef %state, i32 noundef 62491, i8 noundef zeroext %conv1123) #6
  %call1126 = call i32 @stb0899_read_regs(ptr noundef %state, i32 noundef 62688, ptr noundef nonnull %eq_const, i32 noundef 10) #6
  br label %if.end1127

if.end1127:                                       ; preds = %sw.epilog, %do.end923.if.end1127_crit_edge
  %383 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %status, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bandwidth) #6
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %eq_const) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cfr) #6
  ret i32 %384
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stb0899_write_reg(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stb0899_read_reg(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stb0899_write_regs(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stb0899_i2c_gate_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stb0899_check_tmg(ptr noundef %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %t_derot = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 15
  %0 = ptrtoint ptr %t_derot to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %t_derot, align 4
  %conv = sext i16 %1 to i32
  tail call void @msleep(i32 noundef %conv) #6
  %call = tail call i32 @stb0899_write_reg(ptr noundef %state, i32 noundef 62521, i8 noundef zeroext -14) #6
  %call2 = tail call i32 @stb0899_read_reg(ptr noundef %state, i32 noundef 62520) #6
  %conv4 = and i32 %call2, 255
  %call5 = tail call i32 @stb0899_read_reg(ptr noundef %state, i32 noundef 62521) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %conv4)
  %cmp = icmp ugt i32 %conv4, 41
  br i1 %cmp, label %if.then, label %if.else139

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %conv4)
  %cmp8 = icmp ugt i32 %conv4, 48
  br i1 %cmp8, label %land.lhs.true, label %if.then.if.else74_crit_edge

if.then.if.else74_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else74

land.lhs.true:                                    ; preds = %if.then
  %sext = shl i32 %call5, 24
  %conv10 = ashr exact i32 %sext, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext)
  %cmp11 = icmp slt i32 %sext, 0
  %sub = sub nsw i32 0, %conv10
  %cond = select i1 %cmp11, i32 %sub, i32 %conv10
  call void @__sanitizer_cov_trace_const_cmp4(i32 109, i32 %cond)
  %cmp15 = icmp sgt i32 %cond, 109
  br i1 %cmp15, label %if.then17, label %land.lhs.true.if.else74_crit_edge

land.lhs.true.if.else74_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else74

if.then17:                                        ; preds = %land.lhs.true
  %status = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 21
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %status, align 4
  %verbose = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 3
  %3 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %verbose, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %switch = icmp ult i32 %6, 4
  br i1 %switch, label %if.then17.if.end203_crit_edge, label %if.then17.if.end203.sink.split_crit_edge

if.then17.if.end203.sink.split_crit_edge:         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end203.sink.split

if.then17.if.end203_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end203

if.else74:                                        ; preds = %land.lhs.true.if.else74_crit_edge, %if.then.if.else74_crit_edge
  %status75 = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 21
  %7 = ptrtoint ptr %status75 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %status75, align 4
  %verbose77 = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 3
  %8 = ptrtoint ptr %verbose77 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %verbose77, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %switch257 = icmp ult i32 %11, 4
  br i1 %switch257, label %if.else74.if.end203_crit_edge, label %if.else74.if.end203.sink.split_crit_edge

if.else74.if.end203.sink.split_crit_edge:         ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end203.sink.split

if.else74.if.end203_crit_edge:                    ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end203

if.else139:                                       ; preds = %entry
  %status140 = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 21
  %12 = ptrtoint ptr %status140 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %status140, align 4
  %verbose142 = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 3
  %13 = ptrtoint ptr %verbose142 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %verbose142, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %switch260 = icmp ult i32 %16, 4
  br i1 %switch260, label %if.else139.if.end203_crit_edge, label %if.else139.if.end203.sink.split_crit_edge

if.else139.if.end203.sink.split_crit_edge:        ; preds = %if.else139
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end203.sink.split

if.else139.if.end203_crit_edge:                   ; preds = %if.else139
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end203

if.end203.sink.split:                             ; preds = %if.else139.if.end203.sink.split_crit_edge, %if.else74.if.end203.sink.split_crit_edge, %if.then17.if.end203.sink.split_crit_edge
  %.str.225.sink = phi ptr [ @.str.201, %if.then17.if.end203.sink.split_crit_edge ], [ @.str.213, %if.else74.if.end203.sink.split_crit_edge ], [ @.str.225, %if.else139.if.end203.sink.split_crit_edge ]
  %call154 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.225.sink, ptr noundef nonnull @.str.202) #9
  br label %if.end203

if.end203:                                        ; preds = %if.end203.sink.split, %if.else139.if.end203_crit_edge, %if.else74.if.end203_crit_edge, %if.then17.if.end203_crit_edge
  %status204 = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 21
  %17 = ptrtoint ptr %status204 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status204, align 4
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stb0899_read_regs(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stb0899_dvbs2_algo(ptr noundef %state) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %internal1 = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4
  %srate = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %srate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %srate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000001, i32 %1)
  %cmp = icmp ult i32 %1, 2000001
  br i1 %cmp, label %entry.if.end26_crit_edge, label %if.else

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000001, i32 %1)
  %cmp3 = icmp ult i32 %1, 5000001
  br i1 %cmp3, label %if.else.if.end26_crit_edge, label %if.else5

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000001, i32 %1)
  %cmp7 = icmp ult i32 %1, 10000001
  br i1 %cmp7, label %if.else5.if.end26_crit_edge, label %if.else9

if.else5.if.end26_crit_edge:                      ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.else9:                                         ; preds = %if.else5
  call void @__sanitizer_cov_trace_const_cmp4(i32 15000001, i32 %1)
  %cmp11 = icmp ult i32 %1, 15000001
  br i1 %cmp11, label %if.else9.if.end26_crit_edge, label %if.else13

if.else9.if.end26_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.else13:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000001, i32 %1)
  %cmp15 = icmp ult i32 %1, 20000001
  br i1 %cmp15, label %if.else13.if.end26_crit_edge, label %if.else17

if.else13.if.end26_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.else17:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25000001, i32 %1)
  %cmp19 = icmp ult i32 %1, 25000001
  %. = select i1 %cmp19, i32 25, i32 20
  %.544 = select i1 %cmp19, i32 250, i32 150
  br label %if.end26

if.end26:                                         ; preds = %if.else17, %if.else13.if.end26_crit_edge, %if.else9.if.end26_crit_edge, %if.else5.if.end26_crit_edge, %if.else.if.end26_crit_edge, %entry.if.end26_crit_edge
  %FecLockTime.0 = phi i32 [ 350, %entry.if.end26_crit_edge ], [ 170, %if.else.if.end26_crit_edge ], [ 80, %if.else5.if.end26_crit_edge ], [ 50, %if.else9.if.end26_crit_edge ], [ 30, %if.else13.if.end26_crit_edge ], [ %., %if.else17 ]
  %searchTime.0 = phi i32 [ 5000, %entry.if.end26_crit_edge ], [ 2500, %if.else.if.end26_crit_edge ], [ 1500, %if.else5.if.end26_crit_edge ], [ 500, %if.else9.if.end26_crit_edge ], [ 300, %if.else13.if.end26_crit_edge ], [ %.544, %if.else17 ]
  %call = tail call i32 @stb0899_read_reg(ptr noundef %state, i32 noundef 65297) #6
  %2 = trunc i32 %call to i8
  %conv = or i8 %2, 64
  %call27 = tail call i32 @stb0899_write_reg(ptr noundef %state, i32 noundef 65297, i8 noundef zeroext %conv) #6
  %frontend = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 2
  %call28 = tail call i32 @stb0899_i2c_gate_ctrl(ptr noundef %frontend, i32 noundef 1) #6
  %config = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 1
  %3 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %config, align 4
  %tuner_set_frequency = getelementptr inbounds %struct.stb0899_config, ptr %4, i32 0, i32 34
  %5 = ptrtoint ptr %tuner_set_frequency to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tuner_set_frequency, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end26.if.end34_crit_edge, label %if.then29

if.end26.if.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %freq = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %freq, align 4
  %call33 = tail call i32 %6(ptr noundef %frontend, i32 noundef %8) #6
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %if.end26.if.end34_crit_edge
  %9 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %config, align 4
  %tuner_get_frequency = getelementptr inbounds %struct.stb0899_config, ptr %10, i32 0, i32 35
  %11 = ptrtoint ptr %tuner_get_frequency to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tuner_get_frequency, align 4
  %tobool36.not = icmp eq ptr %12, null
  br i1 %tobool36.not, label %if.end34.if.end43_crit_edge, label %if.then37

if.end34.if.end43_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %freq41 = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 1
  %call42 = tail call i32 %12(ptr noundef %frontend, ptr noundef %freq41) #6
  br label %if.end43

if.end43:                                         ; preds = %if.then37, %if.end34.if.end43_crit_edge
  %call45 = tail call i32 @stb0899_i2c_gate_ctrl(ptr noundef %frontend, i32 noundef 0) #6
  %call46 = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3296) #6
  %and47 = and i32 %call46, -3968
  %or50 = or i32 %and47, 1056
  %call51 = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3296, i32 noundef %or50) #6
  %call52 = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 32, i16 noundef zeroext -3212) #6
  %and53 = and i32 %call52, -8
  %call55 = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 32, i16 noundef zeroext -3212, i32 noundef %and53) #6
  %13 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %config, align 4
  %call.i.i = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3296) #6
  %call3.i.i = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3292) #6
  %call4.i.i = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3252) #6
  %and.i.i = and i32 %call.i.i, -67108863
  %esno_ave.i.i = getelementptr inbounds %struct.stb0899_config, ptr %14, i32 0, i32 21
  %15 = ptrtoint ptr %esno_ave.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %esno_ave.i.i, align 4
  %shl.i.i = shl i32 %16, 1
  %shl.masked.i.i = and i32 %shl.i.i, -67108858
  %and5.i.i = or i32 %shl.masked.i.i, %and.i.i
  %esno_quant.i.i = getelementptr inbounds %struct.stb0899_config, ptr %14, i32 0, i32 22
  %17 = ptrtoint ptr %esno_quant.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %esno_quant.i.i, align 4
  %shl6.i.i = shl i32 %18, 3
  %shl6.masked.i.i = and i32 %shl6.i.i, -67106824
  %and8.i.i = or i32 %and5.i.i, %shl6.masked.i.i
  %uwp_threshold_sof.i.i = getelementptr inbounds %struct.stb0899_config, ptr %14, i32 0, i32 28
  %19 = ptrtoint ptr %uwp_threshold_sof.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %uwp_threshold_sof.i.i, align 4
  %shl9.i.i = shl i32 %20, 11
  %or10.i.i = or i32 %and8.i.i, %shl9.i.i
  %and11.i.i = and i32 %call3.i.i, -16777216
  %av_frame_coarse.i.i = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 24
  %21 = ptrtoint ptr %av_frame_coarse.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %av_frame_coarse.i.i, align 4
  %.masked.i.i = and i32 %22, -16776961
  %and14.i.i = or i32 %.masked.i.i, %and11.i.i
  %av_frame_fine.i.i = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 25
  %23 = ptrtoint ptr %av_frame_fine.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %av_frame_fine.i.i, align 4
  %shl15.i.i = shl i32 %24, 8
  %shl15.masked.i.i = and i32 %shl15.i.i, -16711936
  %and17.i.i = or i32 %and14.i.i, %shl15.masked.i.i
  %miss_threshold.i.i = getelementptr inbounds %struct.stb0899_config, ptr %14, i32 0, i32 25
  %25 = ptrtoint ptr %miss_threshold.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %miss_threshold.i.i, align 4
  %shl18.i.i = shl i32 %26, 16
  %or19.i.i = or i32 %and17.i.i, %shl18.i.i
  %and20.i.i = and i32 %call4.i.i, -1073741824
  %uwp_threshold_acq.i.i = getelementptr inbounds %struct.stb0899_config, ptr %14, i32 0, i32 26
  %27 = ptrtoint ptr %uwp_threshold_acq.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %uwp_threshold_acq.i.i, align 4
  %.masked59.i.i = and i32 %28, -1073709057
  %and23.i.i = or i32 %.masked59.i.i, %and20.i.i
  %uwp_threshold_track.i.i = getelementptr inbounds %struct.stb0899_config, ptr %14, i32 0, i32 27
  %29 = ptrtoint ptr %uwp_threshold_track.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %uwp_threshold_track.i.i, align 4
  %shl24.i.i = shl i32 %30, 15
  %or25.i.i = or i32 %and23.i.i, %shl24.i.i
  %call26.i.i = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3296, i32 noundef %or10.i.i) #6
  %call27.i.i = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3292, i32 noundef %or19.i.i) #6
  %call28.i.i = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3252, i32 noundef %or25.i.i) #6
  %call29.i.i = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3244) #6
  %and30.i.i = and i32 %call29.i.i, -4194304
  %sof_search_timeout.i.i = getelementptr inbounds %struct.stb0899_config, ptr %14, i32 0, i32 29
  %31 = ptrtoint ptr %sof_search_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sof_search_timeout.i.i, align 4
  %or32.i.i = or i32 %and30.i.i, %32
  %call33.i.i = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3244, i32 noundef %or32.i.i) #6
  %call.i66.i = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3312) #6
  %or.i.i = or i32 %call.i66.i, 131072
  %call1.i.i = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3312, i32 noundef %or.i.i) #6
  %33 = ptrtoint ptr %internal1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %internal1, align 4
  %mul.i.i = shl i32 %34, 1
  %35 = ptrtoint ptr %srate to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %srate, align 4
  %mul2.i.i = mul i32 %36, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul2.i.i, i32 %mul.i.i)
  %cmp.i.i = icmp ugt i32 %mul2.i.i, %mul.i.i
  br i1 %cmp.i.i, label %if.end43.cond.end.i.i_crit_edge, label %cond.false.i.i

if.end43.cond.end.i.i_crit_edge:                  ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %div.i.i = udiv i32 %mul.i.i, %mul2.i.i
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %if.end43.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %div.i.i, %cond.false.i.i ], [ 1, %if.end43.cond.end.i.i_crit_edge ]
  %37 = tail call i32 @llvm.abs.i32(i32 %cond.i.i, i1 false) #6
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.cond.i.i.i.while.cond.i.i.i_crit_edge, %cond.end.i.i
  %i.0.i.i.i = phi i32 [ 0, %cond.end.i.i ], [ %inc.i.i.i, %while.cond.i.i.i.while.cond.i.i.i_crit_edge ]
  %shl.i.i.i = shl nuw i32 1, %i.0.i.i.i
  %cmp1.not.i.i.i = icmp sgt i32 %shl.i.i.i, %37
  %inc.i.i.i = add i32 %i.0.i.i.i, 1
  br i1 %cmp1.not.i.i.i, label %Log2Int.exit.i.i, label %while.cond.i.i.i.while.cond.i.i.i_crit_edge

while.cond.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i.i

Log2Int.exit.i.i:                                 ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i.i)
  %cmp2.i.i.i = icmp eq i32 %cond.i.i, 0
  %i.0.op.i.i.i = add i32 %i.0.i.i.i, -1
  %sub3.i.i.i = select i1 %cmp2.i.i.i, i32 0, i32 %i.0.op.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub3.i.i.i)
  %cmp3.i.i = icmp ugt i32 %sub3.i.i.i, 4
  %phi.bo.i.i = shl i32 %sub3.i.i.i, 3
  %phi.bo60.i.i = and i32 %phi.bo.i.i, 24
  %win_sel.0.i.i = select i1 %cmp3.i.i, i32 %phi.bo60.i.i, i32 0
  %mul6.i.i = shl i32 %36, %sub3.i.i.i
  %div7.i.i = udiv i32 %mul6.i.i, 1000
  %div8.i.i = udiv i32 %34, %div7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2251, i32 %div8.i.i)
  %cmp9.i.i = icmp ult i32 %div8.i.i, 2251
  %band_lim.0.i.i = select i1 %cmp9.i.i, i32 32, i32 0
  %and15.i.i = and i32 %sub3.i.i.i, 7
  %add.i.i = or i32 %win_sel.0.i.i, %and15.i.i
  %add16.i.i = or i32 %add.i.i, %band_lim.0.i.i
  %call17.i.i = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3256, i32 noundef %add16.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3451, i32 %div8.i.i)
  %cmp18.i.i = icmp ult i32 %div8.i.i, 3451
  call void @__sanitizer_cov_trace_const_cmp4(i32 4251, i32 %div8.i.i)
  %cmp21.i.i = icmp ult i32 %div8.i.i, 4251
  %..i.i = select i1 %cmp21.i.i, i32 1, i32 2
  %anti_alias.0.i.i = select i1 %cmp18.i.i, i32 0, i32 %..i.i
  %call26.i67.i = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 32, i16 noundef zeroext -3240, i32 noundef %anti_alias.0.i.i) #6
  %38 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %config, align 4
  %40 = ptrtoint ptr %internal1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %internal1, align 4
  %mul.i.i.i = shl i32 %41, 1
  %42 = ptrtoint ptr %srate to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %srate, align 4
  %mul5.i.i.i = mul i32 %43, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul5.i.i.i, i32 %mul.i.i.i)
  %cmp.i.i.i = icmp ugt i32 %mul5.i.i.i, %mul.i.i.i
  br i1 %cmp.i.i.i, label %Log2Int.exit.i.i.cond.end.i.i.i_crit_edge, label %cond.false.i.i.i

Log2Int.exit.i.i.cond.end.i.i.i_crit_edge:        ; preds = %Log2Int.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i.i.i

cond.false.i.i.i:                                 ; preds = %Log2Int.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %div.i.i.i = udiv i32 %mul.i.i.i, %mul5.i.i.i
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.false.i.i.i, %Log2Int.exit.i.i.cond.end.i.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %div.i.i.i, %cond.false.i.i.i ], [ 1, %Log2Int.exit.i.i.cond.end.i.i.i_crit_edge ]
  %44 = tail call i32 @llvm.abs.i32(i32 %cond.i.i.i, i1 false) #6
  br label %while.cond.i.i.i.i

while.cond.i.i.i.i:                               ; preds = %while.cond.i.i.i.i.while.cond.i.i.i.i_crit_edge, %cond.end.i.i.i
  %i.0.i.i.i.i = phi i32 [ 0, %cond.end.i.i.i ], [ %inc.i.i.i.i, %while.cond.i.i.i.i.while.cond.i.i.i.i_crit_edge ]
  %shl.i.i.i.i = shl nuw i32 1, %i.0.i.i.i.i
  %cmp1.not.i.i.i.i = icmp sgt i32 %shl.i.i.i.i, %44
  %inc.i.i.i.i = add i32 %i.0.i.i.i.i, 1
  br i1 %cmp1.not.i.i.i.i, label %Log2Int.exit.i.i.i, label %while.cond.i.i.i.i.while.cond.i.i.i.i_crit_edge

while.cond.i.i.i.i.while.cond.i.i.i.i_crit_edge:  ; preds = %while.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i.i.i

Log2Int.exit.i.i.i:                               ; preds = %while.cond.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i.i.i)
  %cmp2.i.i.i.i = icmp eq i32 %cond.i.i.i, 0
  %i.0.op.i.i.i.i = add i32 %i.0.i.i.i.i, -1
  %sub3.i.i.i.i = select i1 %cmp2.i.i.i.i, i32 0, i32 %i.0.op.i.i.i.i
  %div7.i.i.i = udiv i32 %41, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub3.i.i.i.i)
  %cmp10.i.i.i = icmp ult i32 %sub3.i.i.i.i, 3
  %btr_nco_bits.i.i.i = getelementptr inbounds %struct.stb0899_config, ptr %39, i32 0, i32 30
  %45 = ptrtoint ptr %btr_nco_bits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %btr_nco_bits.i.i.i, align 4
  %sub.i.i.i = add i32 %46, -1
  %shl11.i.i.i = shl nuw i32 1, %sub.i.i.i
  br i1 %cmp10.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %Log2Int.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul12.i.i.i = shl i32 %shl11.i.i.i, %sub3.i.i.i.i
  %div13.i.i.i = udiv i32 %mul12.i.i.i, %div7.i.i.i
  br label %stb0899_dvbs2_calc_srate.exit.i.i

if.else.i.i.i:                                    ; preds = %Log2Int.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %div21.i.i.i = udiv i32 %41, 100000
  %div22.i.i.i = udiv i32 %shl11.i.i.i, %div21.i.i.i
  %mul23.i.i.i = shl i32 %div22.i.i.i, %sub3.i.i.i.i
  %div24.i.i.i = udiv i32 %mul23.i.i.i, 100
  %mul28.i.i.i = shl i32 %shl11.i.i.i, %sub3.i.i.i.i
  br label %stb0899_dvbs2_calc_srate.exit.i.i

stb0899_dvbs2_calc_srate.exit.i.i:                ; preds = %if.else.i.i.i, %if.then.i.i.i
  %mul12.pn.i.i.i = phi i32 [ %mul12.i.i.i, %if.then.i.i.i ], [ %mul28.i.i.i, %if.else.i.i.i ]
  %intval.0.i.i.i = phi i32 [ %div13.i.i.i, %if.then.i.i.i ], [ %div24.i.i.i, %if.else.i.i.i ]
  %remain.0.i.i.i = urem i32 %mul12.pn.i.i.i, %div7.i.i.i
  %div9.i.i.i = udiv i32 %43, 1000
  %mul30.i.i.i = mul i32 %intval.0.i.i.i, %div9.i.i.i
  %mul31.i.i.i = mul i32 %remain.0.i.i.i, %div9.i.i.i
  %div32.i.i.i = udiv i32 %mul31.i.i.i, %div7.i.i.i
  %add.i.i.i = add i32 %div32.i.i.i, %mul30.i.i.i
  %call28.i68.i = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3236, i32 noundef %add.i.i.i) #6
  %47 = ptrtoint ptr %internal1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %internal1, align 4
  %mul.i63.i.i = shl i32 %48, 1
  %49 = ptrtoint ptr %srate to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %srate, align 4
  %mul4.i.i.i = mul i32 %50, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul4.i.i.i, i32 %mul.i63.i.i)
  %cmp.i64.i.i = icmp ugt i32 %mul4.i.i.i, %mul.i63.i.i
  br i1 %cmp.i64.i.i, label %stb0899_dvbs2_calc_srate.exit.i.i.stb0899_dvbs2_set_srate.exit.i_crit_edge, label %cond.false.i66.i.i

stb0899_dvbs2_calc_srate.exit.i.i.stb0899_dvbs2_set_srate.exit.i_crit_edge: ; preds = %stb0899_dvbs2_calc_srate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stb0899_dvbs2_set_srate.exit.i

cond.false.i66.i.i:                               ; preds = %stb0899_dvbs2_calc_srate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %div.i65.i.i = udiv i32 %mul.i63.i.i, %mul4.i.i.i
  %phi.bo.i.i.i = shl i32 %div.i65.i.i, 1
  br label %stb0899_dvbs2_set_srate.exit.i

stb0899_dvbs2_set_srate.exit.i:                   ; preds = %cond.false.i66.i.i, %stb0899_dvbs2_calc_srate.exit.i.i.stb0899_dvbs2_set_srate.exit.i_crit_edge
  %cond.i67.i.i = phi i32 [ %phi.bo.i.i.i, %cond.false.i66.i.i ], [ 2, %stb0899_dvbs2_calc_srate.exit.i.i.stb0899_dvbs2_set_srate.exit.i_crit_edge ]
  %div6.i.i.i = udiv i32 %48, 1000
  %div8.i.i.i = udiv i32 %50, 1000
  %mul9.i.i.i = shl nuw i32 %div6.i.i.i, 9
  %mul11.i.i.i = mul i32 %cond.i67.i.i, %div8.i.i.i
  %div12.i.i.i = udiv i32 %mul9.i.i.i, %mul11.i.i.i
  %call30.i.i = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3252) #6
  %and31.i.i = and i32 %call30.i.i, -32753
  %shl32.i.i = shl i32 %div12.i.i.i, 4
  %or.i69.i = or i32 %and31.i.i, %shl32.i.i
  %call33.i70.i = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3252, i32 noundef %or.i69.i) #6
  %51 = ptrtoint ptr %srate to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %srate, align 4
  %53 = ptrtoint ptr %internal1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %internal1, align 4
  %div3661.i.i = lshr i32 %54, 12
  %div37.i.i = udiv i32 %52, %div3661.i.i
  %call38.i.i = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3260, i32 noundef %div37.i.i) #6
  %55 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %config, align 4
  %57 = ptrtoint ptr %internal1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %internal1, align 4
  %mul.i73.i = shl i32 %58, 1
  %59 = ptrtoint ptr %srate to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %srate, align 4
  %mul3.i.i = mul i32 %60, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul3.i.i, i32 %mul.i73.i)
  %cmp.i75.i = icmp ugt i32 %mul3.i.i, %mul.i73.i
  br i1 %cmp.i75.i, label %stb0899_dvbs2_set_srate.exit.i.cond.end.i79.i_crit_edge, label %cond.false.i77.i

stb0899_dvbs2_set_srate.exit.i.cond.end.i79.i_crit_edge: ; preds = %stb0899_dvbs2_set_srate.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i79.i

cond.false.i77.i:                                 ; preds = %stb0899_dvbs2_set_srate.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %div.i76.i = udiv i32 %mul.i73.i, %mul3.i.i
  br label %cond.end.i79.i

cond.end.i79.i:                                   ; preds = %cond.false.i77.i, %stb0899_dvbs2_set_srate.exit.i.cond.end.i79.i_crit_edge
  %cond.i78.i = phi i32 [ %div.i76.i, %cond.false.i77.i ], [ 1, %stb0899_dvbs2_set_srate.exit.i.cond.end.i79.i_crit_edge ]
  %61 = tail call i32 @llvm.abs.i32(i32 %cond.i78.i, i1 false) #6
  br label %while.cond.i.i84.i

while.cond.i.i84.i:                               ; preds = %while.cond.i.i84.i.while.cond.i.i84.i_crit_edge, %cond.end.i79.i
  %i.0.i.i80.i = phi i32 [ 0, %cond.end.i79.i ], [ %inc.i.i83.i, %while.cond.i.i84.i.while.cond.i.i84.i_crit_edge ]
  %shl.i.i81.i = shl nuw i32 1, %i.0.i.i80.i
  %cmp1.not.i.i82.i = icmp sgt i32 %shl.i.i81.i, %61
  %inc.i.i83.i = add i32 %i.0.i.i80.i, 1
  br i1 %cmp1.not.i.i82.i, label %Log2Int.exit.i90.i, label %while.cond.i.i84.i.while.cond.i.i84.i_crit_edge

while.cond.i.i84.i.while.cond.i.i84.i_crit_edge:  ; preds = %while.cond.i.i84.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i84.i

Log2Int.exit.i90.i:                               ; preds = %while.cond.i.i84.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i78.i)
  %cmp2.i.i85.i = icmp eq i32 %cond.i78.i, 0
  %i.0.op.i.i86.i = add i32 %i.0.i.i80.i, -1
  %sub3.i.i87.i = select i1 %cmp2.i.i85.i, i32 0, i32 %i.0.op.i.i86.i
  %btr_nco_bits.i.i = getelementptr inbounds %struct.stb0899_config, ptr %56, i32 0, i32 30
  %62 = ptrtoint ptr %btr_nco_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %btr_nco_bits.i.i, align 4
  %shl5.i.i = shl nuw i32 1, %63
  %div7.i88.i = udiv i32 %58, 1000
  %div8.i89.i = udiv i32 %shl5.i.i, %div7.i88.i
  %div10.i.i = udiv i32 %60, 1000000
  %mul11.i.i = shl i32 %div10.i.i, %sub3.i.i87.i
  %mul12.i.i = mul i32 %div8.i89.i, %mul11.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul12.i.i)
  %cmp13.not.i.i = icmp eq i32 %mul12.i.i, 0
  br i1 %cmp13.not.i.i, label %Log2Int.exit.i90.i.stb0899_dvbs2_set_btr_loopbw.exit.i_crit_edge, label %if.then.i.i

Log2Int.exit.i90.i.stb0899_dvbs2_set_btr_loopbw.exit.i_crit_edge: ; preds = %Log2Int.exit.i90.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stb0899_dvbs2_set_btr_loopbw.exit.i

if.then.i.i:                                      ; preds = %Log2Int.exit.i90.i
  %div14.i.i = udiv i32 13248000, %mul12.i.i
  %div26.i.i = udiv i32 1599234, %div14.i.i
  %mul27.i.i = mul nuw nsw i32 %div26.i.i, 100
  br label %while.cond.i107.i.i

while.cond.i107.i.i:                              ; preds = %while.cond.i107.i.i.while.cond.i107.i.i_crit_edge, %if.then.i.i
  %i.0.i103.i.i = phi i32 [ 0, %if.then.i.i ], [ %inc.i106.i.i, %while.cond.i107.i.i.while.cond.i107.i.i_crit_edge ]
  %shl.i104.i.i = shl nuw i32 1, %i.0.i103.i.i
  %cmp1.not.i105.i.i = icmp sgt i32 %shl.i104.i.i, %mul27.i.i
  %inc.i106.i.i = add i32 %i.0.i103.i.i, 1
  br i1 %cmp1.not.i105.i.i, label %Log2Int.exit111.i.i, label %while.cond.i107.i.i.while.cond.i107.i.i_crit_edge

while.cond.i107.i.i.while.cond.i107.i.i_crit_edge: ; preds = %while.cond.i107.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i107.i.i

Log2Int.exit111.i.i:                              ; preds = %while.cond.i107.i.i
  %div23.i.i = udiv i32 1279161, %div14.i.i
  %i.0.i103.op.i.i = add i32 %i.0.i103.i.i, -14
  %btr_gain_shift_offset.i.i = getelementptr inbounds %struct.stb0899_config, ptr %56, i32 0, i32 31
  %64 = ptrtoint ptr %btr_gain_shift_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %btr_gain_shift_offset.i.i, align 4
  %add36.i.i = add nuw nsw i32 %div23.i.i, 15
  br label %while.cond.i123.i.i

while.cond.i123.i.i:                              ; preds = %while.cond.i123.i.i.while.cond.i123.i.i_crit_edge, %Log2Int.exit111.i.i
  %i.0.i119.i.i = phi i32 [ 0, %Log2Int.exit111.i.i ], [ %inc.i122.i.i, %while.cond.i123.i.i.while.cond.i123.i.i_crit_edge ]
  %shl.i120.i.i = shl nuw i32 1, %i.0.i119.i.i
  %cmp1.not.i121.i.i = icmp sgt i32 %shl.i120.i.i, %add36.i.i
  %inc.i122.i.i = add i32 %i.0.i119.i.i, 1
  br i1 %cmp1.not.i121.i.i, label %Log2Int.exit125.i.i, label %while.cond.i123.i.i.while.cond.i123.i.i_crit_edge

while.cond.i123.i.i.while.cond.i123.i.i_crit_edge: ; preds = %while.cond.i123.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i123.i.i

Log2Int.exit125.i.i:                              ; preds = %while.cond.i123.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %mul12.i.i)
  %cmp2.i108.i.i = icmp ult i32 %mul12.i.i, 9
  %sub.i.i = select i1 %cmp2.i108.i.i, i32 -13, i32 %i.0.i103.op.i.i
  %sub30.i.i = add i32 %sub.i.i, -2
  %div34102.i.i = lshr i32 %mul27.i.i, %sub30.i.i
  %mul31.i.i = sub i32 2, %sub.i.i
  %add32.i.i = add i32 %mul31.i.i, %65
  %div35.i.i = sdiv i32 %div34102.i.i, 10000
  %mul39.i.i = sub i32 21, %i.0.i119.i.i
  %add41.i.i = add i32 %mul39.i.i, %65
  %mul44.i.i = shl i32 %div23.i.i, %mul39.i.i
  %div45.i.i = sdiv i32 %mul44.i.i, 1000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %add41.i.i)
  %cmp46.i.i = icmp sgt i32 %add41.i.i, 15
  %sub48.i.i = shl i32 %add41.i.i, 16
  %phi.bo.i91.i = add i32 %sub48.i.i, -983040
  %66 = tail call i32 @llvm.smin.i32(i32 %add41.i.i, i32 15) #6
  %k_btr2_rshft.0.i.i = select i1 %cmp46.i.i, i32 %phi.bo.i91.i, i32 0
  %call49.i.i = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3248) #6
  %and.i92.i = and i32 %call49.i.i, -1048576
  %k_btr0_rshft.0.masked.i.i = and i32 %66, -1048561
  %shl52.i.i = shl nsw i32 %div45.i.i, 4
  %shl52.masked.i.i = and i32 %shl52.i.i, -1048336
  %shl55.i.i = shl i32 %add32.i.i, 8
  %shl55.masked.i.i = and i32 %shl55.i.i, -1044736
  %shl58.i.i = shl nsw i32 %div35.i.i, 12
  %shl58.masked.i.i = and i32 %shl58.i.i, -987136
  %and51.i.i = or i32 %shl55.masked.i.i, %shl58.masked.i.i
  %and54.i.i = or i32 %and51.i.i, %k_btr0_rshft.0.masked.i.i
  %and57.i.i = or i32 %and54.i.i, %shl52.masked.i.i
  %and60.i.i = or i32 %and57.i.i, %k_btr2_rshft.0.i.i
  %or62.i.i = or i32 %and60.i.i, %and.i92.i
  br label %stb0899_dvbs2_set_btr_loopbw.exit.i

stb0899_dvbs2_set_btr_loopbw.exit.i:              ; preds = %Log2Int.exit125.i.i, %Log2Int.exit.i90.i.stb0899_dvbs2_set_btr_loopbw.exit.i_crit_edge
  %.sink.i.i = phi i32 [ %or62.i.i, %Log2Int.exit125.i.i ], [ 805967, %Log2Int.exit.i90.i.stb0899_dvbs2_set_btr_loopbw.exit.i_crit_edge ]
  %call64.i.i = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3248, i32 noundef %.sink.i.i) #6
  %67 = ptrtoint ptr %srate to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %srate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14999999, i32 %68)
  %cmp.i = icmp ugt i32 %68, 14999999
  br i1 %cmp.i, label %stb0899_dvbs2_set_btr_loopbw.exit.i.if.end13.i_crit_edge, label %if.else.i

stb0899_dvbs2_set_btr_loopbw.exit.i.if.end13.i_crit_edge: ; preds = %stb0899_dvbs2_set_btr_loopbw.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.else.i:                                        ; preds = %stb0899_dvbs2_set_btr_loopbw.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999999, i32 %68)
  %cmp4.i = icmp ugt i32 %68, 9999999
  br i1 %cmp4.i, label %if.else.i.if.end13.i_crit_edge, label %if.else6.i

if.else.i.if.end13.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.else6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4999999, i32 %68)
  %cmp9.i = icmp ugt i32 %68, 4999999
  %..i = select i1 %cmp9.i, i32 13107, i32 32768
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else6.i, %if.else.i.if.end13.i_crit_edge, %stb0899_dvbs2_set_btr_loopbw.exit.i.if.end13.i_crit_edge
  %step_size.0.i = phi i32 [ 26214, %stb0899_dvbs2_set_btr_loopbw.exit.i.if.end13.i_crit_edge ], [ 18724, %if.else.i.if.end13.i_crit_edge ], [ %..i, %if.else6.i ]
  %srch_range.i = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 4
  %69 = ptrtoint ptr %srch_range.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %srch_range.i, align 4
  %div14.i = sdiv i32 %70, 1000000
  %mul15.i = mul i32 %div14.i, 1310720
  %div17.i = udiv i32 %68, 1000000
  %mul18.i = mul nuw nsw i32 %step_size.0.i, %div17.i
  %div19.i = udiv i32 %mul15.i, %mul18.i
  %add.off.i = add i32 %div19.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %add.off.i)
  %71 = icmp ult i32 %add.off.i, 19
  %add.i = add i32 %div19.i, 6
  %div20.i = sdiv i32 %add.i, 10
  %cond.i = select i1 %71, i32 1, i32 %div20.i
  %72 = and i32 %cond.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp22.i = icmp eq i32 %72, 0
  %center_freq.i = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 23
  %73 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %center_freq.i, align 4
  br i1 %cmp22.i, label %if.then23.i, label %if.end13.i.stb0899_dvbs2_init_calc.exit_crit_edge

if.end13.i.stb0899_dvbs2_init_calc.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stb0899_dvbs2_init_calc.exit

if.then23.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %step_size24.i = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 26
  %75 = ptrtoint ptr %step_size24.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %step_size24.i, align 4
  %conv.i = sext i16 %76 to i32
  %div26.i = udiv i32 %68, 20000000
  %mul27.i = mul nsw i32 %div26.i, %conv.i
  %sub.i = sub i32 %74, %mul27.i
  br label %stb0899_dvbs2_init_calc.exit

stb0899_dvbs2_init_calc.exit:                     ; preds = %if.then23.i, %if.end13.i.stb0899_dvbs2_init_calc.exit_crit_edge
  %.sink.i = phi i32 [ %sub.i, %if.then23.i ], [ %74, %if.end13.i.stb0899_dvbs2_init_calc.exit_crit_edge ]
  %77 = ptrtoint ptr %internal1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %internal1, align 4
  %div32.i = udiv i32 %78, 1000000
  %79 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %config, align 4
  %crl_nco_bits.i101.i = getelementptr inbounds %struct.stb0899_config, ptr %80, i32 0, i32 32
  %81 = ptrtoint ptr %crl_nco_bits.i101.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %crl_nco_bits.i101.i, align 4
  %shl.i102.i = shl nuw i32 1, %82
  %div.i103.i = udiv i32 %shl.i102.i, %div32.i
  %mul.i104.i = mul i32 %div.i103.i, %.sink.i
  %call.i105.i = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3272) #6
  %and.i106.i = and i32 %call.i105.i, -1073741824
  %or.i107.i = or i32 %and.i106.i, %mul.i104.i
  %call3.i108.i = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3272, i32 noundef %or.i107.i) #6
  %call.i = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3236) #6
  %or.i = and i32 %call.i, -67108864
  %shl.i563 = shl i32 %cond.i, 17
  %and34.i = or i32 %shl.i563, %step_size.0.i
  %or35.i = or i32 %and34.i, %or.i
  %or38.i = or i32 %or35.i, 33554432
  %call39.i = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3236, i32 noundef %or38.i) #6
  %call56 = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 32, i16 noundef zeroext -3208) #6
  %inversion = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 28
  %83 = ptrtoint ptr %inversion to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %inversion, align 4
  %85 = zext i32 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.423)
  switch i32 %84, label %stb0899_dvbs2_init_calc.exit.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 -1, label %sw.bb59
  ]

stb0899_dvbs2_init_calc.exit.sw.epilog_crit_edge: ; preds = %stb0899_dvbs2_init_calc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %stb0899_dvbs2_init_calc.exit
  call void @__sanitizer_cov_trace_pc() #8
  %and57 = and i32 %call56, -5
  br label %sw.epilog

sw.bb59:                                          ; preds = %stb0899_dvbs2_init_calc.exit
  call void @__sanitizer_cov_trace_pc() #8
  %or61 = or i32 %call56, 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb59, %sw.bb, %stb0899_dvbs2_init_calc.exit.sw.epilog_crit_edge
  %reg.0 = phi i32 [ %call56, %stb0899_dvbs2_init_calc.exit.sw.epilog_crit_edge ], [ %or61, %sw.bb59 ], [ %and57, %sw.bb ]
  %call62 = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 32, i16 noundef zeroext -3208, i32 noundef %reg.0) #6
  tail call fastcc void @stb0899_dvbs2_reacquire(ptr noundef %state)
  %call63 = tail call fastcc i32 @stb0899_dvbs2_get_dmd_status(ptr noundef %state, i32 noundef %searchTime.0)
  %status = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 21
  %86 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %call63, ptr %status, align 4
  %87 = zext i32 %call63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.424)
  switch i32 %call63, label %sw.epilog.if.then142_crit_edge [
    i32 14, label %do.body
    i32 16, label %sw.epilog.if.end178thread-pre-split_crit_edge
  ]

sw.epilog.if.end178thread-pre-split_crit_edge:    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end178thread-pre-split

sw.epilog.if.then142_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then142

do.body:                                          ; preds = %sw.epilog
  %verbose = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 3
  %88 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %verbose, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %91)
  %switch = icmp ult i32 %91, 4
  br i1 %switch, label %do.body.do.body.i.preheader_crit_edge, label %do.end

do.body.do.body.i.preheader_crit_edge:            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.preheader

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.157) #9
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %do.end, %do.body.do.body.i.preheader_crit_edge
  br label %do.body.i

do.body.i:                                        ; preds = %stb0899_dvbs2_get_data_lock.exit.i.do.body.i_crit_edge, %do.body.i.preheader
  %time.0.i = phi i32 [ %inc.i, %stb0899_dvbs2_get_data_lock.exit.i.do.body.i_crit_edge ], [ 0, %do.body.i.preheader ]
  %call.i.i564 = tail call i32 @stb0899_read_reg(ptr noundef %state, i32 noundef 63001) #6
  %92 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %verbose, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %95)
  %switch.i.i = icmp ult i32 %95, 4
  br i1 %switch.i.i, label %do.body.i.stb0899_dvbs2_get_data_lock.exit.i_crit_edge, label %do.end.i.i

do.body.i.stb0899_dvbs2_get_data_lock.exit.i_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stb0899_dvbs2_get_data_lock.exit.i

do.end.i.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv7.i.i = and i32 %call.i.i564, 255
  %call8.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.409, ptr noundef nonnull @.str.410, i32 noundef %conv7.i.i) #9
  br label %stb0899_dvbs2_get_data_lock.exit.i

stb0899_dvbs2_get_data_lock.exit.i:               ; preds = %do.end.i.i, %do.body.i.stb0899_dvbs2_get_data_lock.exit.i_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  %96 = and i32 %call.i.i564, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.not.i = icmp eq i32 %96, 0
  %inc.i = add nuw nsw i32 %time.0.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %FecLockTime.0)
  %cmp.i565 = icmp ult i32 %inc.i, %FecLockTime.0
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp.i565, i1 false
  br i1 %or.cond.i, label %stb0899_dvbs2_get_data_lock.exit.i.do.body.i_crit_edge, label %do.end.i

stb0899_dvbs2_get_data_lock.exit.i.do.body.i_crit_edge: ; preds = %stb0899_dvbs2_get_data_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.end.i:                                         ; preds = %stb0899_dvbs2_get_data_lock.exit.i
  br i1 %tobool.not.i, label %while.body.preheader, label %do.body2.i

do.body2.i:                                       ; preds = %do.end.i
  %97 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %verbose, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %98, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %100)
  %switch.i = icmp ult i32 %100, 4
  br i1 %switch.i, label %do.body2.i.if.end178thread-pre-split.sink.split_crit_edge, label %do.body2.i.if.end178thread-pre-split.sink.split.sink.split_crit_edge

do.body2.i.if.end178thread-pre-split.sink.split.sink.split_crit_edge: ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end178thread-pre-split.sink.split.sink.split

do.body2.i.if.end178thread-pre-split.sink.split_crit_edge: ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end178thread-pre-split.sink.split

while.body.preheader:                             ; preds = %do.end.i
  %101 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 17, ptr %status, align 4
  %call131 = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3324) #6
  %call132 = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3272) #6
  %and133 = and i32 %call132, -1073741824
  %or134 = or i32 %and133, %call131
  %call135 = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3272, i32 noundef %or134) #6
  tail call fastcc void @stb0899_dvbs2_reacquire(ptr noundef %state)
  br label %do.body.i570

do.body.i570:                                     ; preds = %stb0899_dvbs2_get_data_lock.exit.i578.do.body.i570_crit_edge, %while.body.preheader
  %time.0.i567 = phi i32 [ 0, %while.body.preheader ], [ %inc.i575, %stb0899_dvbs2_get_data_lock.exit.i578.do.body.i570_crit_edge ]
  %call.i.i568 = tail call i32 @stb0899_read_reg(ptr noundef %state, i32 noundef 63001) #6
  %102 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %verbose, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %105)
  %switch.i.i569 = icmp ult i32 %105, 4
  br i1 %switch.i.i569, label %do.body.i570.stb0899_dvbs2_get_data_lock.exit.i578_crit_edge, label %do.end.i.i573

do.body.i570.stb0899_dvbs2_get_data_lock.exit.i578_crit_edge: ; preds = %do.body.i570
  call void @__sanitizer_cov_trace_pc() #8
  br label %stb0899_dvbs2_get_data_lock.exit.i578

do.end.i.i573:                                    ; preds = %do.body.i570
  call void @__sanitizer_cov_trace_pc() #8
  %conv7.i.i571 = and i32 %call.i.i568, 255
  %call8.i.i572 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.409, ptr noundef nonnull @.str.410, i32 noundef %conv7.i.i571) #9
  br label %stb0899_dvbs2_get_data_lock.exit.i578

stb0899_dvbs2_get_data_lock.exit.i578:            ; preds = %do.end.i.i573, %do.body.i570.stb0899_dvbs2_get_data_lock.exit.i578_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  %106 = and i32 %call.i.i568, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool.not.i574 = icmp eq i32 %106, 0
  %inc.i575 = add nuw nsw i32 %time.0.i567, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i575, i32 %searchTime.0)
  %cmp.i576 = icmp ult i32 %inc.i575, %searchTime.0
  %or.cond.i577 = select i1 %tobool.not.i574, i1 %cmp.i576, i1 false
  br i1 %or.cond.i577, label %stb0899_dvbs2_get_data_lock.exit.i578.do.body.i570_crit_edge, label %do.end.i579

stb0899_dvbs2_get_data_lock.exit.i578.do.body.i570_crit_edge: ; preds = %stb0899_dvbs2_get_data_lock.exit.i578
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i570

do.end.i579:                                      ; preds = %stb0899_dvbs2_get_data_lock.exit.i578
  br i1 %tobool.not.i574, label %stb0899_dvbs2_get_fec_status.exit585, label %do.end.i579.do.body2.i581_crit_edge

do.end.i579.do.body2.i581_crit_edge:              ; preds = %do.end.i579
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2.i581

do.body2.i581:                                    ; preds = %do.end.i579.2.do.body2.i581_crit_edge, %do.end.i579.1.do.body2.i581_crit_edge, %do.end.i579.do.body2.i581_crit_edge
  %107 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %verbose, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %110)
  %switch.i580 = icmp ult i32 %110, 4
  br i1 %switch.i580, label %do.body2.i581.if.end178thread-pre-split.sink.split_crit_edge, label %do.body2.i581.if.end178thread-pre-split.sink.split.sink.split_crit_edge

do.body2.i581.if.end178thread-pre-split.sink.split.sink.split_crit_edge: ; preds = %do.body2.i581
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end178thread-pre-split.sink.split.sink.split

do.body2.i581.if.end178thread-pre-split.sink.split_crit_edge: ; preds = %do.body2.i581
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end178thread-pre-split.sink.split

stb0899_dvbs2_get_fec_status.exit585:             ; preds = %do.end.i579
  %111 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 17, ptr %status, align 4
  %call131.1 = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3324) #6
  %call132.1 = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3272) #6
  %and133.1 = and i32 %call132.1, -1073741824
  %or134.1 = or i32 %and133.1, %call131.1
  %call135.1 = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3272, i32 noundef %or134.1) #6
  tail call fastcc void @stb0899_dvbs2_reacquire(ptr noundef %state)
  br label %do.body.i570.1

do.body.i570.1:                                   ; preds = %stb0899_dvbs2_get_data_lock.exit.i578.1.do.body.i570.1_crit_edge, %stb0899_dvbs2_get_fec_status.exit585
  %time.0.i567.1 = phi i32 [ 0, %stb0899_dvbs2_get_fec_status.exit585 ], [ %inc.i575.1, %stb0899_dvbs2_get_data_lock.exit.i578.1.do.body.i570.1_crit_edge ]
  %call.i.i568.1 = tail call i32 @stb0899_read_reg(ptr noundef %state, i32 noundef 63001) #6
  %112 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %verbose, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %115)
  %switch.i.i569.1 = icmp ult i32 %115, 4
  br i1 %switch.i.i569.1, label %do.body.i570.1.stb0899_dvbs2_get_data_lock.exit.i578.1_crit_edge, label %do.end.i.i573.1

do.body.i570.1.stb0899_dvbs2_get_data_lock.exit.i578.1_crit_edge: ; preds = %do.body.i570.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %stb0899_dvbs2_get_data_lock.exit.i578.1

do.end.i.i573.1:                                  ; preds = %do.body.i570.1
  call void @__sanitizer_cov_trace_pc() #8
  %conv7.i.i571.1 = and i32 %call.i.i568.1, 255
  %call8.i.i572.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.409, ptr noundef nonnull @.str.410, i32 noundef %conv7.i.i571.1) #9
  br label %stb0899_dvbs2_get_data_lock.exit.i578.1

stb0899_dvbs2_get_data_lock.exit.i578.1:          ; preds = %do.end.i.i573.1, %do.body.i570.1.stb0899_dvbs2_get_data_lock.exit.i578.1_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  %116 = and i32 %call.i.i568.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool.not.i574.1 = icmp eq i32 %116, 0
  %inc.i575.1 = add nuw nsw i32 %time.0.i567.1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i575.1, i32 %searchTime.0)
  %cmp.i576.1 = icmp ult i32 %inc.i575.1, %searchTime.0
  %or.cond.i577.1 = select i1 %tobool.not.i574.1, i1 %cmp.i576.1, i1 false
  br i1 %or.cond.i577.1, label %stb0899_dvbs2_get_data_lock.exit.i578.1.do.body.i570.1_crit_edge, label %do.end.i579.1

stb0899_dvbs2_get_data_lock.exit.i578.1.do.body.i570.1_crit_edge: ; preds = %stb0899_dvbs2_get_data_lock.exit.i578.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i570.1

do.end.i579.1:                                    ; preds = %stb0899_dvbs2_get_data_lock.exit.i578.1
  br i1 %tobool.not.i574.1, label %stb0899_dvbs2_get_fec_status.exit585.1, label %do.end.i579.1.do.body2.i581_crit_edge

do.end.i579.1.do.body2.i581_crit_edge:            ; preds = %do.end.i579.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2.i581

stb0899_dvbs2_get_fec_status.exit585.1:           ; preds = %do.end.i579.1
  %117 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 17, ptr %status, align 4
  %call131.2 = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3324) #6
  %call132.2 = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3272) #6
  %and133.2 = and i32 %call132.2, -1073741824
  %or134.2 = or i32 %and133.2, %call131.2
  %call135.2 = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3272, i32 noundef %or134.2) #6
  tail call fastcc void @stb0899_dvbs2_reacquire(ptr noundef %state)
  br label %do.body.i570.2

do.body.i570.2:                                   ; preds = %stb0899_dvbs2_get_data_lock.exit.i578.2.do.body.i570.2_crit_edge, %stb0899_dvbs2_get_fec_status.exit585.1
  %time.0.i567.2 = phi i32 [ 0, %stb0899_dvbs2_get_fec_status.exit585.1 ], [ %inc.i575.2, %stb0899_dvbs2_get_data_lock.exit.i578.2.do.body.i570.2_crit_edge ]
  %call.i.i568.2 = tail call i32 @stb0899_read_reg(ptr noundef %state, i32 noundef 63001) #6
  %118 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %verbose, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %121)
  %switch.i.i569.2 = icmp ult i32 %121, 4
  br i1 %switch.i.i569.2, label %do.body.i570.2.stb0899_dvbs2_get_data_lock.exit.i578.2_crit_edge, label %do.end.i.i573.2

do.body.i570.2.stb0899_dvbs2_get_data_lock.exit.i578.2_crit_edge: ; preds = %do.body.i570.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %stb0899_dvbs2_get_data_lock.exit.i578.2

do.end.i.i573.2:                                  ; preds = %do.body.i570.2
  call void @__sanitizer_cov_trace_pc() #8
  %conv7.i.i571.2 = and i32 %call.i.i568.2, 255
  %call8.i.i572.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.409, ptr noundef nonnull @.str.410, i32 noundef %conv7.i.i571.2) #9
  br label %stb0899_dvbs2_get_data_lock.exit.i578.2

stb0899_dvbs2_get_data_lock.exit.i578.2:          ; preds = %do.end.i.i573.2, %do.body.i570.2.stb0899_dvbs2_get_data_lock.exit.i578.2_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  %122 = and i32 %call.i.i568.2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool.not.i574.2 = icmp eq i32 %122, 0
  %inc.i575.2 = add nuw nsw i32 %time.0.i567.2, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i575.2, i32 %searchTime.0)
  %cmp.i576.2 = icmp ult i32 %inc.i575.2, %searchTime.0
  %or.cond.i577.2 = select i1 %tobool.not.i574.2, i1 %cmp.i576.2, i1 false
  br i1 %or.cond.i577.2, label %stb0899_dvbs2_get_data_lock.exit.i578.2.do.body.i570.2_crit_edge, label %do.end.i579.2

stb0899_dvbs2_get_data_lock.exit.i578.2.do.body.i570.2_crit_edge: ; preds = %stb0899_dvbs2_get_data_lock.exit.i578.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i570.2

do.end.i579.2:                                    ; preds = %stb0899_dvbs2_get_data_lock.exit.i578.2
  br i1 %tobool.not.i574.2, label %stb0899_dvbs2_get_fec_status.exit585.2, label %do.end.i579.2.do.body2.i581_crit_edge

do.end.i579.2.do.body2.i581_crit_edge:            ; preds = %do.end.i579.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2.i581

stb0899_dvbs2_get_fec_status.exit585.2:           ; preds = %do.end.i579.2
  call void @__sanitizer_cov_trace_pc() #8
  %123 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 17, ptr %status, align 4
  br label %if.then142

if.then142:                                       ; preds = %stb0899_dvbs2_get_fec_status.exit585.2, %sw.epilog.if.then142_crit_edge
  %call143 = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 32, i16 noundef zeroext -3208) #6
  %or148 = xor i32 %call143, 4
  %call149 = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 32, i16 noundef zeroext -3208, i32 noundef %or148) #6
  tail call fastcc void @stb0899_dvbs2_reacquire(ptr noundef %state)
  %call150 = tail call fastcc i32 @stb0899_dvbs2_get_dmd_status(ptr noundef %state, i32 noundef %searchTime.0)
  %124 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %call150, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %call150)
  %cmp153 = icmp eq i32 %call150, 14
  br i1 %cmp153, label %if.then155, label %if.then142.if.end178_crit_edge

if.then142.if.end178_crit_edge:                   ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end178

if.then155:                                       ; preds = %if.then142
  %verbose.i.i586 = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 3
  br label %do.body.i590

do.body.i590:                                     ; preds = %stb0899_dvbs2_get_data_lock.exit.i598.do.body.i590_crit_edge, %if.then155
  %time.0.i587 = phi i32 [ 0, %if.then155 ], [ %inc.i595, %stb0899_dvbs2_get_data_lock.exit.i598.do.body.i590_crit_edge ]
  %call.i.i588 = tail call i32 @stb0899_read_reg(ptr noundef %state, i32 noundef 63001) #6
  %125 = ptrtoint ptr %verbose.i.i586 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %verbose.i.i586, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %126, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %128)
  %switch.i.i589 = icmp ult i32 %128, 4
  br i1 %switch.i.i589, label %do.body.i590.stb0899_dvbs2_get_data_lock.exit.i598_crit_edge, label %do.end.i.i593

do.body.i590.stb0899_dvbs2_get_data_lock.exit.i598_crit_edge: ; preds = %do.body.i590
  call void @__sanitizer_cov_trace_pc() #8
  br label %stb0899_dvbs2_get_data_lock.exit.i598

do.end.i.i593:                                    ; preds = %do.body.i590
  call void @__sanitizer_cov_trace_pc() #8
  %conv7.i.i591 = and i32 %call.i.i588, 255
  %call8.i.i592 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.409, ptr noundef nonnull @.str.410, i32 noundef %conv7.i.i591) #9
  br label %stb0899_dvbs2_get_data_lock.exit.i598

stb0899_dvbs2_get_data_lock.exit.i598:            ; preds = %do.end.i.i593, %do.body.i590.stb0899_dvbs2_get_data_lock.exit.i598_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  %129 = and i32 %call.i.i588, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool.not.i594 = icmp eq i32 %129, 0
  %inc.i595 = add nuw nsw i32 %time.0.i587, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i595, i32 %FecLockTime.0)
  %cmp.i596 = icmp ult i32 %inc.i595, %FecLockTime.0
  %or.cond.i597 = select i1 %tobool.not.i594, i1 %cmp.i596, i1 false
  br i1 %or.cond.i597, label %stb0899_dvbs2_get_data_lock.exit.i598.do.body.i590_crit_edge, label %do.end.i599

stb0899_dvbs2_get_data_lock.exit.i598.do.body.i590_crit_edge: ; preds = %stb0899_dvbs2_get_data_lock.exit.i598
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i590

do.end.i599:                                      ; preds = %stb0899_dvbs2_get_data_lock.exit.i598
  br i1 %tobool.not.i594, label %while.body166.preheader, label %do.body2.i601

do.body2.i601:                                    ; preds = %do.end.i599
  %130 = ptrtoint ptr %verbose.i.i586 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %verbose.i.i586, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %133)
  %switch.i600 = icmp ult i32 %133, 4
  br i1 %switch.i600, label %do.body2.i601.do.body183.sink.split_crit_edge, label %do.body2.i601.do.body183.sink.split.sink.split_crit_edge

do.body2.i601.do.body183.sink.split.sink.split_crit_edge: ; preds = %do.body2.i601
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body183.sink.split.sink.split

do.body2.i601.do.body183.sink.split_crit_edge:    ; preds = %do.body2.i601
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body183.sink.split

while.body166.preheader:                          ; preds = %do.end.i599
  %134 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 17, ptr %status, align 4
  %call167 = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3324) #6
  %call168 = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3272) #6
  %and169 = and i32 %call168, -1073741824
  %or171 = or i32 %and169, %call167
  %call172 = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3272, i32 noundef %or171) #6
  tail call fastcc void @stb0899_dvbs2_reacquire(ptr noundef %state)
  br label %do.body.i610

do.body.i610:                                     ; preds = %stb0899_dvbs2_get_data_lock.exit.i618.do.body.i610_crit_edge, %while.body166.preheader
  %time.0.i607 = phi i32 [ 0, %while.body166.preheader ], [ %inc.i615, %stb0899_dvbs2_get_data_lock.exit.i618.do.body.i610_crit_edge ]
  %call.i.i608 = tail call i32 @stb0899_read_reg(ptr noundef %state, i32 noundef 63001) #6
  %135 = ptrtoint ptr %verbose.i.i586 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %verbose.i.i586, align 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %136, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %138)
  %switch.i.i609 = icmp ult i32 %138, 4
  br i1 %switch.i.i609, label %do.body.i610.stb0899_dvbs2_get_data_lock.exit.i618_crit_edge, label %do.end.i.i613

do.body.i610.stb0899_dvbs2_get_data_lock.exit.i618_crit_edge: ; preds = %do.body.i610
  call void @__sanitizer_cov_trace_pc() #8
  br label %stb0899_dvbs2_get_data_lock.exit.i618

do.end.i.i613:                                    ; preds = %do.body.i610
  call void @__sanitizer_cov_trace_pc() #8
  %conv7.i.i611 = and i32 %call.i.i608, 255
  %call8.i.i612 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.409, ptr noundef nonnull @.str.410, i32 noundef %conv7.i.i611) #9
  br label %stb0899_dvbs2_get_data_lock.exit.i618

stb0899_dvbs2_get_data_lock.exit.i618:            ; preds = %do.end.i.i613, %do.body.i610.stb0899_dvbs2_get_data_lock.exit.i618_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  %139 = and i32 %call.i.i608, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool.not.i614 = icmp eq i32 %139, 0
  %inc.i615 = add nuw nsw i32 %time.0.i607, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i615, i32 %searchTime.0)
  %cmp.i616 = icmp ult i32 %inc.i615, %searchTime.0
  %or.cond.i617 = select i1 %tobool.not.i614, i1 %cmp.i616, i1 false
  br i1 %or.cond.i617, label %stb0899_dvbs2_get_data_lock.exit.i618.do.body.i610_crit_edge, label %do.end.i619

stb0899_dvbs2_get_data_lock.exit.i618.do.body.i610_crit_edge: ; preds = %stb0899_dvbs2_get_data_lock.exit.i618
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i610

do.end.i619:                                      ; preds = %stb0899_dvbs2_get_data_lock.exit.i618
  br i1 %tobool.not.i614, label %stb0899_dvbs2_get_fec_status.exit625, label %do.end.i619.do.body2.i621_crit_edge

do.end.i619.do.body2.i621_crit_edge:              ; preds = %do.end.i619
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2.i621

do.body2.i621:                                    ; preds = %do.end.i619.2.do.body2.i621_crit_edge, %do.end.i619.1.do.body2.i621_crit_edge, %do.end.i619.do.body2.i621_crit_edge
  %140 = ptrtoint ptr %verbose.i.i586 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %verbose.i.i586, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %141, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %143)
  %switch.i620 = icmp ult i32 %143, 4
  br i1 %switch.i620, label %do.body2.i621.do.body183.sink.split_crit_edge, label %do.body2.i621.do.body183.sink.split.sink.split_crit_edge

do.body2.i621.do.body183.sink.split.sink.split_crit_edge: ; preds = %do.body2.i621
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body183.sink.split.sink.split

do.body2.i621.do.body183.sink.split_crit_edge:    ; preds = %do.body2.i621
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body183.sink.split

stb0899_dvbs2_get_fec_status.exit625:             ; preds = %do.end.i619
  %144 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 17, ptr %status, align 4
  %call167.1 = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3324) #6
  %call168.1 = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3272) #6
  %and169.1 = and i32 %call168.1, -1073741824
  %or171.1 = or i32 %and169.1, %call167.1
  %call172.1 = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3272, i32 noundef %or171.1) #6
  tail call fastcc void @stb0899_dvbs2_reacquire(ptr noundef %state)
  br label %do.body.i610.1

do.body.i610.1:                                   ; preds = %stb0899_dvbs2_get_data_lock.exit.i618.1.do.body.i610.1_crit_edge, %stb0899_dvbs2_get_fec_status.exit625
  %time.0.i607.1 = phi i32 [ 0, %stb0899_dvbs2_get_fec_status.exit625 ], [ %inc.i615.1, %stb0899_dvbs2_get_data_lock.exit.i618.1.do.body.i610.1_crit_edge ]
  %call.i.i608.1 = tail call i32 @stb0899_read_reg(ptr noundef %state, i32 noundef 63001) #6
  %145 = ptrtoint ptr %verbose.i.i586 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %verbose.i.i586, align 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %146, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %148)
  %switch.i.i609.1 = icmp ult i32 %148, 4
  br i1 %switch.i.i609.1, label %do.body.i610.1.stb0899_dvbs2_get_data_lock.exit.i618.1_crit_edge, label %do.end.i.i613.1

do.body.i610.1.stb0899_dvbs2_get_data_lock.exit.i618.1_crit_edge: ; preds = %do.body.i610.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %stb0899_dvbs2_get_data_lock.exit.i618.1

do.end.i.i613.1:                                  ; preds = %do.body.i610.1
  call void @__sanitizer_cov_trace_pc() #8
  %conv7.i.i611.1 = and i32 %call.i.i608.1, 255
  %call8.i.i612.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.409, ptr noundef nonnull @.str.410, i32 noundef %conv7.i.i611.1) #9
  br label %stb0899_dvbs2_get_data_lock.exit.i618.1

stb0899_dvbs2_get_data_lock.exit.i618.1:          ; preds = %do.end.i.i613.1, %do.body.i610.1.stb0899_dvbs2_get_data_lock.exit.i618.1_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  %149 = and i32 %call.i.i608.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool.not.i614.1 = icmp eq i32 %149, 0
  %inc.i615.1 = add nuw nsw i32 %time.0.i607.1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i615.1, i32 %searchTime.0)
  %cmp.i616.1 = icmp ult i32 %inc.i615.1, %searchTime.0
  %or.cond.i617.1 = select i1 %tobool.not.i614.1, i1 %cmp.i616.1, i1 false
  br i1 %or.cond.i617.1, label %stb0899_dvbs2_get_data_lock.exit.i618.1.do.body.i610.1_crit_edge, label %do.end.i619.1

stb0899_dvbs2_get_data_lock.exit.i618.1.do.body.i610.1_crit_edge: ; preds = %stb0899_dvbs2_get_data_lock.exit.i618.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i610.1

do.end.i619.1:                                    ; preds = %stb0899_dvbs2_get_data_lock.exit.i618.1
  br i1 %tobool.not.i614.1, label %stb0899_dvbs2_get_fec_status.exit625.1, label %do.end.i619.1.do.body2.i621_crit_edge

do.end.i619.1.do.body2.i621_crit_edge:            ; preds = %do.end.i619.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2.i621

stb0899_dvbs2_get_fec_status.exit625.1:           ; preds = %do.end.i619.1
  %150 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 17, ptr %status, align 4
  %call167.2 = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3324) #6
  %call168.2 = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3272) #6
  %and169.2 = and i32 %call168.2, -1073741824
  %or171.2 = or i32 %and169.2, %call167.2
  %call172.2 = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3272, i32 noundef %or171.2) #6
  tail call fastcc void @stb0899_dvbs2_reacquire(ptr noundef %state)
  br label %do.body.i610.2

do.body.i610.2:                                   ; preds = %stb0899_dvbs2_get_data_lock.exit.i618.2.do.body.i610.2_crit_edge, %stb0899_dvbs2_get_fec_status.exit625.1
  %time.0.i607.2 = phi i32 [ 0, %stb0899_dvbs2_get_fec_status.exit625.1 ], [ %inc.i615.2, %stb0899_dvbs2_get_data_lock.exit.i618.2.do.body.i610.2_crit_edge ]
  %call.i.i608.2 = tail call i32 @stb0899_read_reg(ptr noundef %state, i32 noundef 63001) #6
  %151 = ptrtoint ptr %verbose.i.i586 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %verbose.i.i586, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %152, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %154)
  %switch.i.i609.2 = icmp ult i32 %154, 4
  br i1 %switch.i.i609.2, label %do.body.i610.2.stb0899_dvbs2_get_data_lock.exit.i618.2_crit_edge, label %do.end.i.i613.2

do.body.i610.2.stb0899_dvbs2_get_data_lock.exit.i618.2_crit_edge: ; preds = %do.body.i610.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %stb0899_dvbs2_get_data_lock.exit.i618.2

do.end.i.i613.2:                                  ; preds = %do.body.i610.2
  call void @__sanitizer_cov_trace_pc() #8
  %conv7.i.i611.2 = and i32 %call.i.i608.2, 255
  %call8.i.i612.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.409, ptr noundef nonnull @.str.410, i32 noundef %conv7.i.i611.2) #9
  br label %stb0899_dvbs2_get_data_lock.exit.i618.2

stb0899_dvbs2_get_data_lock.exit.i618.2:          ; preds = %do.end.i.i613.2, %do.body.i610.2.stb0899_dvbs2_get_data_lock.exit.i618.2_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  %155 = and i32 %call.i.i608.2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool.not.i614.2 = icmp eq i32 %155, 0
  %inc.i615.2 = add nuw nsw i32 %time.0.i607.2, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i615.2, i32 %searchTime.0)
  %cmp.i616.2 = icmp ult i32 %inc.i615.2, %searchTime.0
  %or.cond.i617.2 = select i1 %tobool.not.i614.2, i1 %cmp.i616.2, i1 false
  br i1 %or.cond.i617.2, label %stb0899_dvbs2_get_data_lock.exit.i618.2.do.body.i610.2_crit_edge, label %do.end.i619.2

stb0899_dvbs2_get_data_lock.exit.i618.2.do.body.i610.2_crit_edge: ; preds = %stb0899_dvbs2_get_data_lock.exit.i618.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i610.2

do.end.i619.2:                                    ; preds = %stb0899_dvbs2_get_data_lock.exit.i618.2
  br i1 %tobool.not.i614.2, label %stb0899_dvbs2_get_fec_status.exit625.2, label %do.end.i619.2.do.body2.i621_crit_edge

do.end.i619.2.do.body2.i621_crit_edge:            ; preds = %do.end.i619.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2.i621

stb0899_dvbs2_get_fec_status.exit625.2:           ; preds = %do.end.i619.2
  call void @__sanitizer_cov_trace_pc() #8
  %156 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 17, ptr %status, align 4
  br label %if.end362

if.end178thread-pre-split.sink.split.sink.split:  ; preds = %do.body2.i581.if.end178thread-pre-split.sink.split.sink.split_crit_edge, %do.body2.i.if.end178thread-pre-split.sink.split.sink.split_crit_edge
  %call10.i582 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.398, ptr noundef nonnull @.str.399) #9
  br label %if.end178thread-pre-split.sink.split

if.end178thread-pre-split.sink.split:             ; preds = %if.end178thread-pre-split.sink.split.sink.split, %do.body2.i581.if.end178thread-pre-split.sink.split_crit_edge, %do.body2.i.if.end178thread-pre-split.sink.split_crit_edge
  %157 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 16, ptr %status, align 4
  br label %if.end178thread-pre-split

if.end178thread-pre-split:                        ; preds = %if.end178thread-pre-split.sink.split, %sw.epilog.if.end178thread-pre-split_crit_edge
  %158 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %158)
  %.pr = load i32, ptr %status, align 4
  br label %if.end178

if.end178:                                        ; preds = %if.end178thread-pre-split, %if.then142.if.end178_crit_edge
  %159 = phi i32 [ %.pr, %if.end178thread-pre-split ], [ %call150, %if.then142.if.end178_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %159)
  %cmp180 = icmp eq i32 %159, 16
  br i1 %cmp180, label %if.end178.do.body183_crit_edge, label %if.end178.if.end362_crit_edge

if.end178.if.end362_crit_edge:                    ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end362

if.end178.do.body183_crit_edge:                   ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body183

do.body183.sink.split.sink.split:                 ; preds = %do.body2.i621.do.body183.sink.split.sink.split_crit_edge, %do.body2.i601.do.body183.sink.split.sink.split_crit_edge
  %call10.i622 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.398, ptr noundef nonnull @.str.399) #9
  br label %do.body183.sink.split

do.body183.sink.split:                            ; preds = %do.body183.sink.split.sink.split, %do.body2.i621.do.body183.sink.split_crit_edge, %do.body2.i601.do.body183.sink.split_crit_edge
  %160 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 16, ptr %status, align 4
  br label %do.body183

do.body183:                                       ; preds = %do.body183.sink.split, %if.end178.do.body183_crit_edge
  %verbose184 = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 3
  %161 = ptrtoint ptr %verbose184 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %verbose184, align 4
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %162, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %164)
  %switch560 = icmp ult i32 %164, 4
  br i1 %switch560, label %do.body183.do.end244_crit_edge, label %do.end194

do.body183.do.end244_crit_edge:                   ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end244

do.end194:                                        ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #8
  %call196 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.157) #9
  br label %do.end244

do.end244:                                        ; preds = %do.end194, %do.body183.do.end244_crit_edge
  %call245 = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3284) #6
  %and247 = lshr i32 %call245, 2
  %shr248 = and i32 %and247, 31
  %and251 = and i32 %call245, 1
  %165 = ptrtoint ptr %internal1 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %internal1, align 4
  %mul = mul i32 %166, 10
  %167 = ptrtoint ptr %srate to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %srate, align 4
  %div = udiv i32 %168, 10
  %div253 = udiv i32 %mul, %div
  call void @__sanitizer_cov_trace_const_cmp4(i32 410, i32 %div253)
  %cmp254 = icmp ugt i32 %div253, 410
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %shr248)
  %cmp257 = icmp ugt i32 %shr248, 6
  %or.cond552 = select i1 %cmp254, i1 true, i1 %cmp257
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and251)
  %cmp260.not = icmp eq i32 %and251, 0
  %or.cond553 = select i1 %or.cond552, i1 true, i1 %cmp260.not
  br i1 %or.cond553, label %do.end244.if.end286_crit_edge, label %if.then262

do.end244.if.end286_crit_edge:                    ; preds = %do.end244
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end286

if.then262:                                       ; preds = %do.end244
  %div.i = udiv i32 %166, %168
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %div.i)
  %cmp.i627 = icmp ult i32 %div.i, 5
  br i1 %cmp.i627, label %if.then.i, label %if.then262.do.body.i633.preheader_crit_edge

if.then262.do.body.i633.preheader_crit_edge:      ; preds = %if.then262
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i633.preheader

if.then.i:                                        ; preds = %if.then262
  %switch.tableidx = add nsw i32 %shr248, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %169 = icmp ult i32 %switch.tableidx, 3
  br i1 %169, label %switch.lookup, label %if.then.i.sw.epilog.i_crit_edge

if.then.i.sw.epilog.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.stb0899_dvbs2_algo, i32 0, i32 %switch.tableidx
  %170 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %170)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep704 = getelementptr inbounds [3 x i32], ptr @switch.table.stb0899_dvbs2_algo.420, i32 0, i32 %switch.tableidx
  %171 = ptrtoint ptr %switch.gep704 to i32
  call void @__asan_load4_noabort(i32 %171)
  %switch.load705 = load i32, ptr %switch.gep704, align 4
  %switch.gep706 = getelementptr inbounds [3 x i32], ptr @switch.table.stb0899_dvbs2_algo.421, i32 0, i32 %switch.tableidx
  %172 = ptrtoint ptr %switch.gep706 to i32
  call void @__asan_load4_noabort(i32 %172)
  %switch.load707 = load i32, ptr %switch.gep706, align 4
  %switch.gep708 = getelementptr inbounds [3 x i32], ptr @switch.table.stb0899_dvbs2_algo.422, i32 0, i32 %switch.tableidx
  %173 = ptrtoint ptr %switch.gep708 to i32
  call void @__asan_load4_noabort(i32 %173)
  %switch.load709 = load i32, ptr %switch.gep708, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %if.then.i.sw.epilog.i_crit_edge
  %gamma_acq.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 66, %if.then.i.sw.epilog.i_crit_edge ]
  %gamma_rho_acq.0.i = phi i32 [ %switch.load705, %switch.lookup ], [ 15172608, %if.then.i.sw.epilog.i_crit_edge ]
  %gamma_trk.0.i = phi i32 [ %switch.load707, %switch.lookup ], [ 24, %if.then.i.sw.epilog.i_crit_edge ]
  %gamma_rho_trk.0.i = phi i32 [ %switch.load709, %switch.lookup ], [ 602112, %if.then.i.sw.epilog.i_crit_edge ]
  %call.i628 = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3312) #6
  %and.i = and i32 %call.i628, -131073
  %call12.i = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3312, i32 noundef %and.i) #6
  %call13.i = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3312) #6
  %call14.i = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3308) #6
  %call15.i = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3304) #6
  %call16.i = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3300) #6
  %or18.i = and i32 %call13.i, -131072
  %or24.i = or i32 %or18.i, 25
  %and31.i = and i32 %call14.i, -262144
  %or33.i = or i32 %gamma_rho_acq.0.i, %gamma_acq.0.i
  %or36.i = or i32 %or33.i, %and31.i
  %and37.i = and i32 %call15.i, -262144
  %or39.i = or i32 %gamma_rho_trk.0.i, %gamma_trk.0.i
  %or42.i = or i32 %or39.i, %and37.i
  %and43.i = and i32 %call16.i, -36864
  %or48.i = or i32 %and43.i, 32776
  %call49.i = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3312, i32 noundef %or24.i) #6
  %call50.i = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3308, i32 noundef %or36.i) #6
  %call51.i = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3304, i32 noundef %or42.i) #6
  %call52.i = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3300, i32 noundef %or48.i) #6
  br label %do.body.i633.preheader

do.body.i633.preheader:                           ; preds = %sw.epilog.i, %if.then262.do.body.i633.preheader_crit_edge
  br label %do.body.i633

do.body.i633:                                     ; preds = %stb0899_dvbs2_get_data_lock.exit.i641.do.body.i633_crit_edge, %do.body.i633.preheader
  %time.0.i630 = phi i32 [ %inc.i638, %stb0899_dvbs2_get_data_lock.exit.i641.do.body.i633_crit_edge ], [ 0, %do.body.i633.preheader ]
  %call.i.i631 = tail call i32 @stb0899_read_reg(ptr noundef %state, i32 noundef 63001) #6
  %174 = ptrtoint ptr %verbose184 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %verbose184, align 4
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %175, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %177)
  %switch.i.i632 = icmp ult i32 %177, 4
  br i1 %switch.i.i632, label %do.body.i633.stb0899_dvbs2_get_data_lock.exit.i641_crit_edge, label %do.end.i.i636

do.body.i633.stb0899_dvbs2_get_data_lock.exit.i641_crit_edge: ; preds = %do.body.i633
  call void @__sanitizer_cov_trace_pc() #8
  br label %stb0899_dvbs2_get_data_lock.exit.i641

do.end.i.i636:                                    ; preds = %do.body.i633
  call void @__sanitizer_cov_trace_pc() #8
  %conv7.i.i634 = and i32 %call.i.i631, 255
  %call8.i.i635 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.409, ptr noundef nonnull @.str.410, i32 noundef %conv7.i.i634) #9
  br label %stb0899_dvbs2_get_data_lock.exit.i641

stb0899_dvbs2_get_data_lock.exit.i641:            ; preds = %do.end.i.i636, %do.body.i633.stb0899_dvbs2_get_data_lock.exit.i641_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  %178 = and i32 %call.i.i631, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %tobool.not.i637 = icmp eq i32 %178, 0
  %inc.i638 = add nuw nsw i32 %time.0.i630, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i638, i32 %FecLockTime.0)
  %cmp.i639 = icmp ult i32 %inc.i638, %FecLockTime.0
  %or.cond.i640 = select i1 %tobool.not.i637, i1 %cmp.i639, i1 false
  br i1 %or.cond.i640, label %stb0899_dvbs2_get_data_lock.exit.i641.do.body.i633_crit_edge, label %do.end.i642

stb0899_dvbs2_get_data_lock.exit.i641.do.body.i633_crit_edge: ; preds = %stb0899_dvbs2_get_data_lock.exit.i641
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i633

do.end.i642:                                      ; preds = %stb0899_dvbs2_get_data_lock.exit.i641
  br i1 %tobool.not.i637, label %while.body273.preheader, label %do.body2.i644

do.body2.i644:                                    ; preds = %do.end.i642
  %179 = ptrtoint ptr %verbose184 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %verbose184, align 4
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %180, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %182)
  %switch.i643 = icmp ult i32 %182, 4
  br i1 %switch.i643, label %do.body2.i644.if.end286.sink.split_crit_edge, label %do.body2.i644.if.end286.sink.split.sink.split_crit_edge

do.body2.i644.if.end286.sink.split.sink.split_crit_edge: ; preds = %do.body2.i644
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end286.sink.split.sink.split

do.body2.i644.if.end286.sink.split_crit_edge:     ; preds = %do.body2.i644
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end286.sink.split

while.body273.preheader:                          ; preds = %do.end.i642
  %183 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 17, ptr %status, align 4
  %call274 = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3312) #6
  %or276 = or i32 %call274, 2
  %call277 = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3312, i32 noundef %or276) #6
  %call278 = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3312) #6
  %and279 = and i32 %call278, -3
  %call281 = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3312, i32 noundef %and279) #6
  br label %do.body.i653

do.body.i653:                                     ; preds = %stb0899_dvbs2_get_data_lock.exit.i661.do.body.i653_crit_edge, %while.body273.preheader
  %time.0.i650 = phi i32 [ 0, %while.body273.preheader ], [ %inc.i658, %stb0899_dvbs2_get_data_lock.exit.i661.do.body.i653_crit_edge ]
  %call.i.i651 = tail call i32 @stb0899_read_reg(ptr noundef %state, i32 noundef 63001) #6
  %184 = ptrtoint ptr %verbose184 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %verbose184, align 4
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %185, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %187)
  %switch.i.i652 = icmp ult i32 %187, 4
  br i1 %switch.i.i652, label %do.body.i653.stb0899_dvbs2_get_data_lock.exit.i661_crit_edge, label %do.end.i.i656

do.body.i653.stb0899_dvbs2_get_data_lock.exit.i661_crit_edge: ; preds = %do.body.i653
  call void @__sanitizer_cov_trace_pc() #8
  br label %stb0899_dvbs2_get_data_lock.exit.i661

do.end.i.i656:                                    ; preds = %do.body.i653
  call void @__sanitizer_cov_trace_pc() #8
  %conv7.i.i654 = and i32 %call.i.i651, 255
  %call8.i.i655 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.409, ptr noundef nonnull @.str.410, i32 noundef %conv7.i.i654) #9
  br label %stb0899_dvbs2_get_data_lock.exit.i661

stb0899_dvbs2_get_data_lock.exit.i661:            ; preds = %do.end.i.i656, %do.body.i653.stb0899_dvbs2_get_data_lock.exit.i661_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  %188 = and i32 %call.i.i651, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool.not.i657 = icmp eq i32 %188, 0
  %inc.i658 = add nuw nsw i32 %time.0.i650, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i658, i32 %FecLockTime.0)
  %cmp.i659 = icmp ult i32 %inc.i658, %FecLockTime.0
  %or.cond.i660 = select i1 %tobool.not.i657, i1 %cmp.i659, i1 false
  br i1 %or.cond.i660, label %stb0899_dvbs2_get_data_lock.exit.i661.do.body.i653_crit_edge, label %do.end.i662

stb0899_dvbs2_get_data_lock.exit.i661.do.body.i653_crit_edge: ; preds = %stb0899_dvbs2_get_data_lock.exit.i661
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i653

do.end.i662:                                      ; preds = %stb0899_dvbs2_get_data_lock.exit.i661
  br i1 %tobool.not.i657, label %stb0899_dvbs2_get_fec_status.exit668, label %do.end.i662.do.body2.i664_crit_edge

do.end.i662.do.body2.i664_crit_edge:              ; preds = %do.end.i662
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2.i664

do.body2.i664:                                    ; preds = %do.end.i662.2.do.body2.i664_crit_edge, %do.end.i662.1.do.body2.i664_crit_edge, %do.end.i662.do.body2.i664_crit_edge
  %189 = ptrtoint ptr %verbose184 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %verbose184, align 4
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %192)
  %switch.i663 = icmp ult i32 %192, 4
  br i1 %switch.i663, label %do.body2.i664.if.end286.sink.split_crit_edge, label %do.body2.i664.if.end286.sink.split.sink.split_crit_edge

do.body2.i664.if.end286.sink.split.sink.split_crit_edge: ; preds = %do.body2.i664
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end286.sink.split.sink.split

do.body2.i664.if.end286.sink.split_crit_edge:     ; preds = %do.body2.i664
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end286.sink.split

stb0899_dvbs2_get_fec_status.exit668:             ; preds = %do.end.i662
  %193 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 17, ptr %status, align 4
  %call274.1 = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3312) #6
  %or276.1 = or i32 %call274.1, 2
  %call277.1 = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3312, i32 noundef %or276.1) #6
  %call278.1 = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3312) #6
  %and279.1 = and i32 %call278.1, -3
  %call281.1 = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3312, i32 noundef %and279.1) #6
  br label %do.body.i653.1

do.body.i653.1:                                   ; preds = %stb0899_dvbs2_get_data_lock.exit.i661.1.do.body.i653.1_crit_edge, %stb0899_dvbs2_get_fec_status.exit668
  %time.0.i650.1 = phi i32 [ 0, %stb0899_dvbs2_get_fec_status.exit668 ], [ %inc.i658.1, %stb0899_dvbs2_get_data_lock.exit.i661.1.do.body.i653.1_crit_edge ]
  %call.i.i651.1 = tail call i32 @stb0899_read_reg(ptr noundef %state, i32 noundef 63001) #6
  %194 = ptrtoint ptr %verbose184 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %verbose184, align 4
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %195, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %197)
  %switch.i.i652.1 = icmp ult i32 %197, 4
  br i1 %switch.i.i652.1, label %do.body.i653.1.stb0899_dvbs2_get_data_lock.exit.i661.1_crit_edge, label %do.end.i.i656.1

do.body.i653.1.stb0899_dvbs2_get_data_lock.exit.i661.1_crit_edge: ; preds = %do.body.i653.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %stb0899_dvbs2_get_data_lock.exit.i661.1

do.end.i.i656.1:                                  ; preds = %do.body.i653.1
  call void @__sanitizer_cov_trace_pc() #8
  %conv7.i.i654.1 = and i32 %call.i.i651.1, 255
  %call8.i.i655.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.409, ptr noundef nonnull @.str.410, i32 noundef %conv7.i.i654.1) #9
  br label %stb0899_dvbs2_get_data_lock.exit.i661.1

stb0899_dvbs2_get_data_lock.exit.i661.1:          ; preds = %do.end.i.i656.1, %do.body.i653.1.stb0899_dvbs2_get_data_lock.exit.i661.1_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  %198 = and i32 %call.i.i651.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %tobool.not.i657.1 = icmp eq i32 %198, 0
  %inc.i658.1 = add nuw nsw i32 %time.0.i650.1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i658.1, i32 %FecLockTime.0)
  %cmp.i659.1 = icmp ult i32 %inc.i658.1, %FecLockTime.0
  %or.cond.i660.1 = select i1 %tobool.not.i657.1, i1 %cmp.i659.1, i1 false
  br i1 %or.cond.i660.1, label %stb0899_dvbs2_get_data_lock.exit.i661.1.do.body.i653.1_crit_edge, label %do.end.i662.1

stb0899_dvbs2_get_data_lock.exit.i661.1.do.body.i653.1_crit_edge: ; preds = %stb0899_dvbs2_get_data_lock.exit.i661.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i653.1

do.end.i662.1:                                    ; preds = %stb0899_dvbs2_get_data_lock.exit.i661.1
  br i1 %tobool.not.i657.1, label %stb0899_dvbs2_get_fec_status.exit668.1, label %do.end.i662.1.do.body2.i664_crit_edge

do.end.i662.1.do.body2.i664_crit_edge:            ; preds = %do.end.i662.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2.i664

stb0899_dvbs2_get_fec_status.exit668.1:           ; preds = %do.end.i662.1
  %199 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 17, ptr %status, align 4
  %call274.2 = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3312) #6
  %or276.2 = or i32 %call274.2, 2
  %call277.2 = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3312, i32 noundef %or276.2) #6
  %call278.2 = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3312) #6
  %and279.2 = and i32 %call278.2, -3
  %call281.2 = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3312, i32 noundef %and279.2) #6
  br label %do.body.i653.2

do.body.i653.2:                                   ; preds = %stb0899_dvbs2_get_data_lock.exit.i661.2.do.body.i653.2_crit_edge, %stb0899_dvbs2_get_fec_status.exit668.1
  %time.0.i650.2 = phi i32 [ 0, %stb0899_dvbs2_get_fec_status.exit668.1 ], [ %inc.i658.2, %stb0899_dvbs2_get_data_lock.exit.i661.2.do.body.i653.2_crit_edge ]
  %call.i.i651.2 = tail call i32 @stb0899_read_reg(ptr noundef %state, i32 noundef 63001) #6
  %200 = ptrtoint ptr %verbose184 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %verbose184, align 4
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %201, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %203)
  %switch.i.i652.2 = icmp ult i32 %203, 4
  br i1 %switch.i.i652.2, label %do.body.i653.2.stb0899_dvbs2_get_data_lock.exit.i661.2_crit_edge, label %do.end.i.i656.2

do.body.i653.2.stb0899_dvbs2_get_data_lock.exit.i661.2_crit_edge: ; preds = %do.body.i653.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %stb0899_dvbs2_get_data_lock.exit.i661.2

do.end.i.i656.2:                                  ; preds = %do.body.i653.2
  call void @__sanitizer_cov_trace_pc() #8
  %conv7.i.i654.2 = and i32 %call.i.i651.2, 255
  %call8.i.i655.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.409, ptr noundef nonnull @.str.410, i32 noundef %conv7.i.i654.2) #9
  br label %stb0899_dvbs2_get_data_lock.exit.i661.2

stb0899_dvbs2_get_data_lock.exit.i661.2:          ; preds = %do.end.i.i656.2, %do.body.i653.2.stb0899_dvbs2_get_data_lock.exit.i661.2_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  %204 = and i32 %call.i.i651.2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %tobool.not.i657.2 = icmp eq i32 %204, 0
  %inc.i658.2 = add nuw nsw i32 %time.0.i650.2, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i658.2, i32 %FecLockTime.0)
  %cmp.i659.2 = icmp ult i32 %inc.i658.2, %FecLockTime.0
  %or.cond.i660.2 = select i1 %tobool.not.i657.2, i1 %cmp.i659.2, i1 false
  br i1 %or.cond.i660.2, label %stb0899_dvbs2_get_data_lock.exit.i661.2.do.body.i653.2_crit_edge, label %do.end.i662.2

stb0899_dvbs2_get_data_lock.exit.i661.2.do.body.i653.2_crit_edge: ; preds = %stb0899_dvbs2_get_data_lock.exit.i661.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i653.2

do.end.i662.2:                                    ; preds = %stb0899_dvbs2_get_data_lock.exit.i661.2
  br i1 %tobool.not.i657.2, label %stb0899_dvbs2_get_fec_status.exit668.2, label %do.end.i662.2.do.body2.i664_crit_edge

do.end.i662.2.do.body2.i664_crit_edge:            ; preds = %do.end.i662.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2.i664

stb0899_dvbs2_get_fec_status.exit668.2:           ; preds = %do.end.i662.2
  call void @__sanitizer_cov_trace_pc() #8
  %205 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 17, ptr %status, align 4
  br label %if.end286

if.end286.sink.split.sink.split:                  ; preds = %do.body2.i664.if.end286.sink.split.sink.split_crit_edge, %do.body2.i644.if.end286.sink.split.sink.split_crit_edge
  %call10.i665 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.398, ptr noundef nonnull @.str.399) #9
  br label %if.end286.sink.split

if.end286.sink.split:                             ; preds = %if.end286.sink.split.sink.split, %do.body2.i664.if.end286.sink.split_crit_edge, %do.body2.i644.if.end286.sink.split_crit_edge
  %206 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 16, ptr %status, align 4
  br label %if.end286

if.end286:                                        ; preds = %if.end286.sink.split, %stb0899_dvbs2_get_fec_status.exit668.2, %do.end244.if.end286_crit_edge
  %207 = ptrtoint ptr %internal1 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %internal1, align 4
  %mul288 = mul i32 %208, 10
  %209 = ptrtoint ptr %srate to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %srate, align 4
  %div290 = udiv i32 %210, 10
  %div291 = udiv i32 %mul288, %div290
  call void @__sanitizer_cov_trace_const_cmp4(i32 410, i32 %div291)
  %cmp292 = icmp ugt i32 %div291, 410
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %shr248)
  %cmp295 = icmp ugt i32 %shr248, 4
  %or.cond555 = select i1 %cmp292, i1 true, i1 %cmp295
  %or.cond556 = select i1 %or.cond555, i1 true, i1 %cmp260.not
  br i1 %or.cond556, label %if.end286.if.end307_crit_edge, label %if.then302

if.end286.if.end307_crit_edge:                    ; preds = %if.end286
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end307

if.then302:                                       ; preds = %if.end286
  call void @__sanitizer_cov_trace_pc() #8
  %call303 = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1088, i16 noundef zeroext -3308) #6
  %or305 = or i32 %call303, 32
  %call306 = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1088, i16 noundef zeroext -3308, i32 noundef %or305) #6
  br label %if.end307

if.end307:                                        ; preds = %if.then302, %if.end286.if.end307_crit_edge
  %call308 = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1088, i16 noundef zeroext -3308) #6
  %and309 = and i32 %call308, -16
  %or310 = or i32 %and309, 2
  %call311 = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1088, i16 noundef zeroext -3308, i32 noundef %or310) #6
  %call312 = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3324) #6
  %shl.i = shl i32 %call312, 2
  %shr.i = ashr exact i32 %shl.i, 2
  %div314 = sdiv i32 %shr.i, 1073741
  %211 = ptrtoint ptr %internal1 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %internal1, align 4
  %div316 = udiv i32 %212, 1000000
  %mul317 = mul nsw i32 %div314, %div316
  %call318 = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 32, i16 noundef zeroext -3208) #6
  %213 = and i32 %call318, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %tobool321.not = icmp eq i32 %213, 0
  %.557 = select i1 %tobool321.not, i32 1, i32 -1
  %214 = ptrtoint ptr %inversion to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %.557, ptr %inversion, align 4
  %freq327 = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 1
  %215 = ptrtoint ptr %freq327 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %freq327, align 4
  %add = add i32 %216, %mul317
  store i32 %add, ptr %freq327, align 4
  %217 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %config, align 4
  %btr_nco_bits.i = getelementptr inbounds %struct.stb0899_config, ptr %218, i32 0, i32 30
  %219 = ptrtoint ptr %btr_nco_bits.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %btr_nco_bits.i, align 4
  %div37.i = lshr i32 %220, 1
  %221 = xor i32 %div37.i, -1
  %sub4.i = add i32 %220, %221
  %call.i670 = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3236) #6
  %call5.i = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3256) #6
  %and.i671 = and i32 %call5.i, 7
  %222 = ptrtoint ptr %internal1 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %internal1, align 4
  %div738.i = lshr i32 %223, %div37.i
  %div939.i = lshr i32 %call.i670, %sub4.i
  %notmask.i = shl nsw i32 -1, %div37.i
  %224 = xor i32 %notmask.i, -1
  %rem.i = and i32 %223, %224
  %notmask43.i = shl nsw i32 -1, %sub4.i
  %225 = xor i32 %notmask43.i, -1
  %rem13.i = and i32 %call.i670, %225
  %mul.i = mul i32 %div738.i, %div939.i
  %mul14.i = mul i32 %div738.i, %rem13.i
  %div1640.i = lshr i32 %mul14.i, %sub4.i
  %add.i672 = add i32 %div1640.i, %mul.i
  %mul17.i = mul i32 %rem.i, %div939.i
  %div1941.i = lshr i32 %mul17.i, %div37.i
  %add20.i = add i32 %add.i672, %div1941.i
  %div2142.i = lshr i32 %add20.i, %and.i671
  %226 = ptrtoint ptr %srate to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %div2142.i, ptr %srate, align 4
  %call331 = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3284) #6
  %and333 = lshr i32 %call331, 2
  %shr334 = and i32 %and333, 31
  %modcod335 = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 29
  %227 = ptrtoint ptr %modcod335 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %shr334, ptr %modcod335, align 4
  %228 = trunc i32 %call331 to i8
  %conv339 = and i8 %228, 1
  %pilots340 = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 30
  %229 = ptrtoint ptr %pilots340 to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 %conv339, ptr %pilots340, align 4
  %shr343 = lshr i32 %call331, 1
  %and344 = and i32 %shr343, 1
  %frame_length = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 31
  %230 = ptrtoint ptr %frame_length to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %and344, ptr %frame_length, align 4
  %call345 = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3296) #6
  %and346 = and i32 %call345, -3841
  %or347 = or i32 %and346, 768
  %231 = ptrtoint ptr %modcod335 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %modcod335, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %232)
  %cmp349 = icmp ult i32 %232, 5
  %and354 = and i32 %or347, -3200
  %or355 = or i32 %and354, 16
  %reg.1 = select i1 %cmp349, i32 %or355, i32 %or347
  %call357 = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3296, i32 noundef %reg.1) #6
  %call358 = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 32, i16 noundef zeroext -3212) #6
  %or360 = or i32 %call358, 7
  %call361 = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 32, i16 noundef zeroext -3212, i32 noundef %or360) #6
  br label %if.end362

if.end362:                                        ; preds = %if.end307, %if.end178.if.end362_crit_edge, %stb0899_dvbs2_get_fec_status.exit625.2
  %call363 = tail call i32 @stb0899_read_reg(ptr noundef %state, i32 noundef 65297) #6
  %233 = trunc i32 %call363 to i8
  %conv366 = and i8 %233, -65
  %call367 = tail call i32 @stb0899_write_reg(ptr noundef %state, i32 noundef 65297, i8 noundef zeroext %conv366) #6
  %234 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %status, align 4
  ret i32 %235
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_stb0899_read_s2reg(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stb0899_write_s2reg(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stb0899_dvbs2_reacquire(ptr noundef %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3328, i32 noundef 1) #6
  %call.i = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3252) #6
  %or2.i = or i32 %call.i, 3
  %call3.i = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3252, i32 noundef %or2.i) #6
  %call4.i = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3240, i32 noundef 268435456) #6
  %call5.i = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3240, i32 noundef 0) #6
  %call6.i = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3244, i32 noundef 268435456) #6
  %call7.i = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3244, i32 noundef 0) #6
  %call1 = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3280, i32 noundef 1073741824) #6
  %call2 = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3280, i32 noundef 0) #6
  %call3 = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3276, i32 noundef 0) #6
  %call4 = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3284, i32 noundef 1073741824) #6
  %call5 = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3284, i32 noundef 0) #6
  %call8 = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3328, i32 noundef 0) #6
  %call9 = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3220, i32 noundef 1) #6
  %call10 = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3216, i32 noundef 0) #6
  %call11 = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1088, i16 noundef zeroext -3312, i32 noundef 1) #6
  %call12 = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1088, i16 noundef zeroext -3312, i32 noundef 0) #6
  %call13 = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1088, i16 noundef zeroext -3308) #6
  %and18 = and i32 %call13, -507952
  %or21 = or i32 %and18, 344064
  %call22 = tail call i32 @stb0899_write_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1088, i16 noundef zeroext -3308, i32 noundef %or21) #6
  %call23 = tail call i32 @stb0899_write_reg(ptr noundef %state, i32 noundef 62976, i8 noundef zeroext 74) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stb0899_dvbs2_get_dmd_status(ptr noundef %state, i32 noundef %timeout) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %verbose = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %do.end156.do.body_crit_edge, %entry
  %time.0 = phi i32 [ -10, %entry ], [ %add, %do.end156.do.body_crit_edge ]
  %call = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3328) #6
  %0 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %verbose, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %switch = icmp ult i32 %3, 4
  br i1 %switch, label %do.body.do.end45_crit_edge, label %do.end

do.body.do.end45_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end45

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.351, ptr noundef nonnull @.str.352, i32 noundef %call) #9
  br label %do.end45

do.end45:                                         ; preds = %do.end, %do.body.do.end45_crit_edge
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end45.if.end101_crit_edge, label %do.body47

do.end45.if.end101_crit_edge:                     ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101

do.body47:                                        ; preds = %do.end45
  %4 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %verbose, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %switch302 = icmp ult i32 %7, 4
  br i1 %switch302, label %do.body47.if.end101_crit_edge, label %do.end56

do.body47.if.end101_crit_edge:                    ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101

do.end56:                                         ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #8
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.363, ptr noundef nonnull @.str.352) #9
  br label %if.end101

if.end101:                                        ; preds = %do.end56, %do.body47.if.end101_crit_edge, %do.end45.if.end101_crit_edge
  %call102 = tail call i32 @_stb0899_read_s2reg(ptr noundef %state, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3264) #6
  %8 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %verbose, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %switch305 = icmp ult i32 %11, 4
  br i1 %switch305, label %if.end101.do.end156_crit_edge, label %do.end112

if.end101.do.end156_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end156

do.end112:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  %call114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.375, ptr noundef nonnull @.str.352, i32 noundef %call102) #9
  br label %do.end156

do.end156:                                        ; preds = %do.end112, %if.end101.do.end156_crit_edge
  %12 = and i32 %call102, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %.not = icmp eq i32 %12, 3
  tail call void @msleep(i32 noundef 10) #6
  %add = add i32 %time.0, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %timeout)
  %cmp168.not = icmp sgt i32 %add, %timeout
  %or.cond296 = select i1 %.not, i1 true, i1 %cmp168.not
  br i1 %or.cond296, label %do.end169, label %do.end156.do.body_crit_edge

do.end156.do.body_crit_edge:                      ; preds = %do.end156
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end169:                                        ; preds = %do.end156
  br i1 %.not, label %do.body172, label %do.end169.cleanup_crit_edge

do.end169.cleanup_crit_edge:                      ; preds = %do.end169
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body172:                                       ; preds = %do.end169
  %13 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %verbose, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %switch308 = icmp ult i32 %16, 4
  br i1 %switch308, label %do.body172.cleanup_crit_edge, label %do.end181

do.body172.cleanup_crit_edge:                     ; preds = %do.body172
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end181:                                        ; preds = %do.body172
  call void @__sanitizer_cov_trace_pc() #8
  %call183 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.387, ptr noundef nonnull @.str.352) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end181, %do.body172.cleanup_crit_edge, %do.end169.cleanup_crit_edge
  %retval.0 = phi i32 [ 14, %do.end181 ], [ 15, %do.end169.cleanup_crit_edge ], [ 14, %do.body172.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stb0899_check_carrier(ptr noundef %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %t_derot = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 15
  %0 = ptrtoint ptr %t_derot to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %t_derot, align 4
  %conv = sext i16 %1 to i32
  tail call void @msleep(i32 noundef %conv) #6
  %call = tail call i32 @stb0899_read_reg(ptr noundef %state, i32 noundef 62491) #6
  %2 = trunc i32 %call to i8
  %conv4 = or i8 %2, -128
  %call5 = tail call i32 @stb0899_write_reg(ptr noundef %state, i32 noundef 62491, i8 noundef zeroext %conv4) #6
  %call6 = tail call i32 @stb0899_read_reg(ptr noundef %state, i32 noundef 62522) #6
  %verbose = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 3
  %3 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %verbose, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %switch = icmp ult i32 %6, 4
  br i1 %switch, label %entry.do.end63_crit_edge, label %do.end

entry.do.end63_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end63

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv13 = and i32 %call6, 255
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.259, ptr noundef nonnull @.str.260, i32 noundef %conv13) #9
  br label %do.end63

do.end63:                                         ; preds = %do.end, %entry.do.end63_crit_edge
  %7 = and i32 %call6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %status130 = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 21
  br i1 %tobool.not, label %if.else129, label %if.then66

if.then66:                                        ; preds = %do.end63
  %8 = ptrtoint ptr %status130 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8, ptr %status130, align 4
  %9 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %verbose, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %switch249 = icmp ult i32 %12, 4
  br i1 %switch249, label %if.then66.if.end193_crit_edge, label %if.then66.if.end193.sink.split_crit_edge

if.then66.if.end193.sink.split_crit_edge:         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end193.sink.split

if.then66.if.end193_crit_edge:                    ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end193

if.else129:                                       ; preds = %do.end63
  %13 = ptrtoint ptr %status130 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 7, ptr %status130, align 4
  %14 = ptrtoint ptr %verbose to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %verbose, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %switch252 = icmp ult i32 %17, 4
  br i1 %switch252, label %if.else129.if.end193_crit_edge, label %if.else129.if.end193.sink.split_crit_edge

if.else129.if.end193.sink.split_crit_edge:        ; preds = %if.else129
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end193.sink.split

if.else129.if.end193_crit_edge:                   ; preds = %if.else129
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end193

if.end193.sink.split:                             ; preds = %if.else129.if.end193.sink.split_crit_edge, %if.then66.if.end193.sink.split_crit_edge
  %.str.283.sink = phi ptr [ @.str.271, %if.then66.if.end193.sink.split_crit_edge ], [ @.str.283, %if.else129.if.end193.sink.split_crit_edge ]
  %call144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.283.sink, ptr noundef nonnull @.str.260) #9
  br label %if.end193

if.end193:                                        ; preds = %if.end193.sink.split, %if.else129.if.end193_crit_edge, %if.then66.if.end193_crit_edge
  %status194 = getelementptr inbounds %struct.stb0899_state, ptr %state, i32 0, i32 4, i32 21
  %18 = ptrtoint ptr %status194 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status194, align 4
  ret i32 %19
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 306)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 306)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481}
!llvm.module.flags = !{!482, !483, !484, !485, !486, !487, !488, !489}
!llvm.ident = !{!490}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/stb0899_algo.c", i32 541, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @stb0899_dvbs_algo._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @stb0899_dvbs_algo._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @stb0899_dvbs_algo._entry.3, !1, !"_entry", i1 false, i1 false}
!8 = !{ptr @stb0899_dvbs_algo._entry_ptr.5, !1, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @stb0899_dvbs_algo._entry.6, !1, !"_entry", i1 false, i1 false}
!11 = !{ptr @stb0899_dvbs_algo._entry_ptr.8, !1, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @stb0899_dvbs_algo._entry.9, !1, !"_entry", i1 false, i1 false}
!14 = !{ptr @stb0899_dvbs_algo._entry_ptr.11, !1, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.13, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/dvb-frontends/stb0899_algo.c", i32 552, i32 2}
!17 = !{ptr @stb0899_dvbs_algo._entry.12, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @stb0899_dvbs_algo._entry_ptr.14, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.16, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @stb0899_dvbs_algo._entry.15, !16, !"_entry", i1 false, i1 false}
!21 = !{ptr @stb0899_dvbs_algo._entry_ptr.17, !16, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.19, !16, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @stb0899_dvbs_algo._entry.18, !16, !"_entry", i1 false, i1 false}
!24 = !{ptr @stb0899_dvbs_algo._entry_ptr.20, !16, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.22, !16, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @stb0899_dvbs_algo._entry.21, !16, !"_entry", i1 false, i1 false}
!27 = !{ptr @stb0899_dvbs_algo._entry_ptr.23, !16, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.25, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/dvb-frontends/stb0899_algo.c", i32 560, i32 2}
!30 = !{ptr @stb0899_dvbs_algo._entry.24, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @stb0899_dvbs_algo._entry_ptr.26, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.28, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @stb0899_dvbs_algo._entry.27, !29, !"_entry", i1 false, i1 false}
!34 = !{ptr @stb0899_dvbs_algo._entry_ptr.29, !29, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.31, !29, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @stb0899_dvbs_algo._entry.30, !29, !"_entry", i1 false, i1 false}
!37 = !{ptr @stb0899_dvbs_algo._entry_ptr.32, !29, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.34, !29, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @stb0899_dvbs_algo._entry.33, !29, !"_entry", i1 false, i1 false}
!40 = !{ptr @stb0899_dvbs_algo._entry_ptr.35, !29, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.37, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/dvb-frontends/stb0899_algo.c", i32 595, i32 3}
!43 = !{ptr @stb0899_dvbs_algo._entry.36, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @stb0899_dvbs_algo._entry_ptr.38, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.40, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @stb0899_dvbs_algo._entry.39, !42, !"_entry", i1 false, i1 false}
!47 = !{ptr @stb0899_dvbs_algo._entry_ptr.41, !42, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.43, !42, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @stb0899_dvbs_algo._entry.42, !42, !"_entry", i1 false, i1 false}
!50 = !{ptr @stb0899_dvbs_algo._entry_ptr.44, !42, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.46, !42, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @stb0899_dvbs_algo._entry.45, !42, !"_entry", i1 false, i1 false}
!53 = !{ptr @stb0899_dvbs_algo._entry_ptr.47, !42, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.49, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/dvb-frontends/stb0899_algo.c", i32 603, i32 3}
!56 = !{ptr @stb0899_dvbs_algo._entry.48, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @stb0899_dvbs_algo._entry_ptr.50, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.52, !55, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @stb0899_dvbs_algo._entry.51, !55, !"_entry", i1 false, i1 false}
!60 = !{ptr @stb0899_dvbs_algo._entry_ptr.53, !55, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.55, !55, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @stb0899_dvbs_algo._entry.54, !55, !"_entry", i1 false, i1 false}
!63 = !{ptr @stb0899_dvbs_algo._entry_ptr.56, !55, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.58, !55, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @stb0899_dvbs_algo._entry.57, !55, !"_entry", i1 false, i1 false}
!66 = !{ptr @stb0899_dvbs_algo._entry_ptr.59, !55, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.61, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/dvb-frontends/stb0899_algo.c", i32 619, i32 4}
!69 = !{ptr @stb0899_dvbs_algo._entry.60, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @stb0899_dvbs_algo._entry_ptr.62, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.64, !68, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @stb0899_dvbs_algo._entry.63, !68, !"_entry", i1 false, i1 false}
!73 = !{ptr @stb0899_dvbs_algo._entry_ptr.65, !68, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.67, !68, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @stb0899_dvbs_algo._entry.66, !68, !"_entry", i1 false, i1 false}
!76 = !{ptr @stb0899_dvbs_algo._entry_ptr.68, !68, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.70, !68, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @stb0899_dvbs_algo._entry.69, !68, !"_entry", i1 false, i1 false}
!79 = !{ptr @stb0899_dvbs_algo._entry_ptr.71, !68, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.73, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/dvb-frontends/stb0899_algo.c", i32 624, i32 5}
!82 = !{ptr @stb0899_dvbs_algo._entry.72, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @stb0899_dvbs_algo._entry_ptr.74, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.76, !81, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @stb0899_dvbs_algo._entry.75, !81, !"_entry", i1 false, i1 false}
!86 = !{ptr @stb0899_dvbs_algo._entry_ptr.77, !81, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.79, !81, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @stb0899_dvbs_algo._entry.78, !81, !"_entry", i1 false, i1 false}
!89 = !{ptr @stb0899_dvbs_algo._entry_ptr.80, !81, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.82, !81, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @stb0899_dvbs_algo._entry.81, !81, !"_entry", i1 false, i1 false}
!92 = !{ptr @stb0899_dvbs_algo._entry_ptr.83, !81, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.85, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/dvb-frontends/stb0899_algo.c", i32 629, i32 6}
!95 = !{ptr @stb0899_dvbs_algo._entry.84, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @stb0899_dvbs_algo._entry_ptr.86, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.88, !94, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @stb0899_dvbs_algo._entry.87, !94, !"_entry", i1 false, i1 false}
!99 = !{ptr @stb0899_dvbs_algo._entry_ptr.89, !94, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.91, !94, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @stb0899_dvbs_algo._entry.90, !94, !"_entry", i1 false, i1 false}
!102 = !{ptr @stb0899_dvbs_algo._entry_ptr.92, !94, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.94, !94, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @stb0899_dvbs_algo._entry.93, !94, !"_entry", i1 false, i1 false}
!105 = !{ptr @stb0899_dvbs_algo._entry_ptr.95, !94, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.97, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/dvb-frontends/stb0899_algo.c", i32 634, i32 7}
!108 = !{ptr @stb0899_dvbs_algo._entry.96, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @stb0899_dvbs_algo._entry_ptr.98, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.100, !107, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @stb0899_dvbs_algo._entry.99, !107, !"_entry", i1 false, i1 false}
!112 = !{ptr @stb0899_dvbs_algo._entry_ptr.101, !107, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.103, !107, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @stb0899_dvbs_algo._entry.102, !107, !"_entry", i1 false, i1 false}
!115 = !{ptr @stb0899_dvbs_algo._entry_ptr.104, !107, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.106, !107, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @stb0899_dvbs_algo._entry.105, !107, !"_entry", i1 false, i1 false}
!118 = !{ptr @stb0899_dvbs_algo._entry_ptr.107, !107, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.109, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/dvb-frontends/stb0899_algo.c", i32 641, i32 7}
!121 = !{ptr @stb0899_dvbs_algo._entry.108, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @stb0899_dvbs_algo._entry_ptr.110, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.112, !120, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @stb0899_dvbs_algo._entry.111, !120, !"_entry", i1 false, i1 false}
!125 = !{ptr @stb0899_dvbs_algo._entry_ptr.113, !120, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.115, !120, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @stb0899_dvbs_algo._entry.114, !120, !"_entry", i1 false, i1 false}
!128 = !{ptr @stb0899_dvbs_algo._entry_ptr.116, !120, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.118, !120, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @stb0899_dvbs_algo._entry.117, !120, !"_entry", i1 false, i1 false}
!131 = !{ptr @stb0899_dvbs_algo._entry_ptr.119, !120, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.121, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/dvb-frontends/stb0899_algo.c", i32 645, i32 7}
!134 = !{ptr @stb0899_dvbs_algo._entry.120, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @stb0899_dvbs_algo._entry_ptr.122, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.124, !133, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @stb0899_dvbs_algo._entry.123, !133, !"_entry", i1 false, i1 false}
!138 = !{ptr @stb0899_dvbs_algo._entry_ptr.125, !133, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.127, !133, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @stb0899_dvbs_algo._entry.126, !133, !"_entry", i1 false, i1 false}
!141 = !{ptr @stb0899_dvbs_algo._entry_ptr.128, !133, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.130, !133, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @stb0899_dvbs_algo._entry.129, !133, !"_entry", i1 false, i1 false}
!144 = !{ptr @stb0899_dvbs_algo._entry_ptr.131, !133, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.133, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/dvb-frontends/stb0899_algo.c", i32 662, i32 3}
!147 = !{ptr @stb0899_dvbs_algo._entry.132, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @stb0899_dvbs_algo._entry_ptr.134, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.136, !146, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @stb0899_dvbs_algo._entry.135, !146, !"_entry", i1 false, i1 false}
!151 = !{ptr @stb0899_dvbs_algo._entry_ptr.137, !146, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.139, !146, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @stb0899_dvbs_algo._entry.138, !146, !"_entry", i1 false, i1 false}
!154 = !{ptr @stb0899_dvbs_algo._entry_ptr.140, !146, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.142, !146, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @stb0899_dvbs_algo._entry.141, !146, !"_entry", i1 false, i1 false}
!157 = !{ptr @stb0899_dvbs_algo._entry_ptr.143, !146, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.145, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/dvb-frontends/stb0899_algo.c", i32 703, i32 4}
!160 = !{ptr @stb0899_dvbs_algo._entry.144, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @stb0899_dvbs_algo._entry_ptr.146, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.148, !159, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @stb0899_dvbs_algo._entry.147, !159, !"_entry", i1 false, i1 false}
!164 = !{ptr @stb0899_dvbs_algo._entry_ptr.149, !159, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.151, !159, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @stb0899_dvbs_algo._entry.150, !159, !"_entry", i1 false, i1 false}
!167 = !{ptr @stb0899_dvbs_algo._entry_ptr.152, !159, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.154, !159, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @stb0899_dvbs_algo._entry.153, !159, !"_entry", i1 false, i1 false}
!170 = !{ptr @stb0899_dvbs_algo._entry_ptr.155, !159, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.156, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/dvb-frontends/stb0899_algo.c", i32 1380, i32 3}
!173 = !{ptr @.str.157, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @stb0899_dvbs2_algo._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @stb0899_dvbs2_algo._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.159, !172, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @stb0899_dvbs2_algo._entry.158, !172, !"_entry", i1 false, i1 false}
!178 = !{ptr @stb0899_dvbs2_algo._entry_ptr.160, !172, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.162, !172, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @stb0899_dvbs2_algo._entry.161, !172, !"_entry", i1 false, i1 false}
!181 = !{ptr @stb0899_dvbs2_algo._entry_ptr.163, !172, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.165, !172, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @stb0899_dvbs2_algo._entry.164, !172, !"_entry", i1 false, i1 false}
!184 = !{ptr @stb0899_dvbs2_algo._entry_ptr.166, !172, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.168, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/dvb-frontends/stb0899_algo.c", i32 1436, i32 3}
!187 = !{ptr @stb0899_dvbs2_algo._entry.167, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @stb0899_dvbs2_algo._entry_ptr.169, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.171, !186, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @stb0899_dvbs2_algo._entry.170, !186, !"_entry", i1 false, i1 false}
!191 = !{ptr @stb0899_dvbs2_algo._entry_ptr.172, !186, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.174, !186, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @stb0899_dvbs2_algo._entry.173, !186, !"_entry", i1 false, i1 false}
!194 = !{ptr @stb0899_dvbs2_algo._entry_ptr.175, !186, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.177, !186, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @stb0899_dvbs2_algo._entry.176, !186, !"_entry", i1 false, i1 false}
!197 = !{ptr @stb0899_dvbs2_algo._entry_ptr.178, !186, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.179, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/dvb-frontends/stb0899_algo.c", i32 71, i32 2}
!200 = !{ptr @.str.180, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @stb0899_set_srate._entry, !199, !"_entry", i1 false, i1 false}
!202 = !{ptr @stb0899_set_srate._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.182, !199, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @stb0899_set_srate._entry.181, !199, !"_entry", i1 false, i1 false}
!205 = !{ptr @stb0899_set_srate._entry_ptr.183, !199, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.185, !199, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @stb0899_set_srate._entry.184, !199, !"_entry", i1 false, i1 false}
!208 = !{ptr @stb0899_set_srate._entry_ptr.186, !199, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.188, !199, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @stb0899_set_srate._entry.187, !199, !"_entry", i1 false, i1 false}
!211 = !{ptr @stb0899_set_srate._entry_ptr.189, !199, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.190, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/media/dvb-frontends/stb0899_algo.c", i32 228, i32 3}
!214 = !{ptr @.str.191, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @stb0899_search_tmg._entry, !213, !"_entry", i1 false, i1 false}
!216 = !{ptr @stb0899_search_tmg._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.193, !213, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @stb0899_search_tmg._entry.192, !213, !"_entry", i1 false, i1 false}
!219 = !{ptr @stb0899_search_tmg._entry_ptr.194, !213, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.196, !213, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @stb0899_search_tmg._entry.195, !213, !"_entry", i1 false, i1 false}
!222 = !{ptr @stb0899_search_tmg._entry_ptr.197, !213, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.199, !213, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @stb0899_search_tmg._entry.198, !213, !"_entry", i1 false, i1 false}
!225 = !{ptr @stb0899_search_tmg._entry_ptr.200, !213, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.201, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/media/dvb-frontends/stb0899_algo.c", i32 179, i32 4}
!228 = !{ptr @.str.202, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @stb0899_check_tmg._entry, !227, !"_entry", i1 false, i1 false}
!230 = !{ptr @stb0899_check_tmg._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.204, !227, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @stb0899_check_tmg._entry.203, !227, !"_entry", i1 false, i1 false}
!233 = !{ptr @stb0899_check_tmg._entry_ptr.205, !227, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.207, !227, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @stb0899_check_tmg._entry.206, !227, !"_entry", i1 false, i1 false}
!236 = !{ptr @stb0899_check_tmg._entry_ptr.208, !227, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.210, !227, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @stb0899_check_tmg._entry.209, !227, !"_entry", i1 false, i1 false}
!239 = !{ptr @stb0899_check_tmg._entry_ptr.211, !227, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.213, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/media/dvb-frontends/stb0899_algo.c", i32 182, i32 4}
!242 = !{ptr @stb0899_check_tmg._entry.212, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @stb0899_check_tmg._entry_ptr.214, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.216, !241, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @stb0899_check_tmg._entry.215, !241, !"_entry", i1 false, i1 false}
!246 = !{ptr @stb0899_check_tmg._entry_ptr.217, !241, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.219, !241, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @stb0899_check_tmg._entry.218, !241, !"_entry", i1 false, i1 false}
!249 = !{ptr @stb0899_check_tmg._entry_ptr.220, !241, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.222, !241, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @stb0899_check_tmg._entry.221, !241, !"_entry", i1 false, i1 false}
!252 = !{ptr @stb0899_check_tmg._entry_ptr.223, !241, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.225, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/media/dvb-frontends/stb0899_algo.c", i32 186, i32 3}
!255 = !{ptr @stb0899_check_tmg._entry.224, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @stb0899_check_tmg._entry_ptr.226, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.228, !254, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @stb0899_check_tmg._entry.227, !254, !"_entry", i1 false, i1 false}
!259 = !{ptr @stb0899_check_tmg._entry_ptr.229, !254, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.231, !254, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @stb0899_check_tmg._entry.230, !254, !"_entry", i1 false, i1 false}
!262 = !{ptr @stb0899_check_tmg._entry_ptr.232, !254, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.234, !254, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @stb0899_check_tmg._entry.233, !254, !"_entry", i1 false, i1 false}
!265 = !{ptr @stb0899_check_tmg._entry_ptr.235, !254, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.236, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/media/dvb-frontends/stb0899_algo.c", i32 284, i32 3}
!268 = !{ptr @.str.237, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @stb0899_search_carrier._entry, !267, !"_entry", i1 false, i1 false}
!270 = !{ptr @stb0899_search_carrier._entry_ptr, !267, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.239, !267, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @stb0899_search_carrier._entry.238, !267, !"_entry", i1 false, i1 false}
!273 = !{ptr @stb0899_search_carrier._entry_ptr.240, !267, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.242, !267, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @stb0899_search_carrier._entry.241, !267, !"_entry", i1 false, i1 false}
!276 = !{ptr @stb0899_search_carrier._entry_ptr.243, !267, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.245, !267, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @stb0899_search_carrier._entry.244, !267, !"_entry", i1 false, i1 false}
!279 = !{ptr @stb0899_search_carrier._entry_ptr.246, !267, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.248, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/media/dvb-frontends/stb0899_algo.c", i32 310, i32 3}
!282 = !{ptr @stb0899_search_carrier._entry.247, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @stb0899_search_carrier._entry_ptr.249, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.251, !281, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @stb0899_search_carrier._entry.250, !281, !"_entry", i1 false, i1 false}
!286 = !{ptr @stb0899_search_carrier._entry_ptr.252, !281, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.254, !281, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @stb0899_search_carrier._entry.253, !281, !"_entry", i1 false, i1 false}
!289 = !{ptr @stb0899_search_carrier._entry_ptr.255, !281, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.257, !281, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @stb0899_search_carrier._entry.256, !281, !"_entry", i1 false, i1 false}
!292 = !{ptr @stb0899_search_carrier._entry_ptr.258, !281, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.259, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/media/dvb-frontends/stb0899_algo.c", i32 250, i32 2}
!295 = !{ptr @.str.260, !294, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @stb0899_check_carrier._entry, !294, !"_entry", i1 false, i1 false}
!297 = !{ptr @stb0899_check_carrier._entry_ptr, !294, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.262, !294, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @stb0899_check_carrier._entry.261, !294, !"_entry", i1 false, i1 false}
!300 = !{ptr @stb0899_check_carrier._entry_ptr.263, !294, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.265, !294, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @stb0899_check_carrier._entry.264, !294, !"_entry", i1 false, i1 false}
!303 = !{ptr @stb0899_check_carrier._entry_ptr.266, !294, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.268, !294, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @stb0899_check_carrier._entry.267, !294, !"_entry", i1 false, i1 false}
!306 = !{ptr @stb0899_check_carrier._entry_ptr.269, !294, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.271, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/media/dvb-frontends/stb0899_algo.c", i32 253, i32 3}
!309 = !{ptr @stb0899_check_carrier._entry.270, !308, !"_entry", i1 false, i1 false}
!310 = !{ptr @stb0899_check_carrier._entry_ptr.272, !308, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.274, !308, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @stb0899_check_carrier._entry.273, !308, !"_entry", i1 false, i1 false}
!313 = !{ptr @stb0899_check_carrier._entry_ptr.275, !308, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @.str.277, !308, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @stb0899_check_carrier._entry.276, !308, !"_entry", i1 false, i1 false}
!316 = !{ptr @stb0899_check_carrier._entry_ptr.278, !308, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @.str.280, !308, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @stb0899_check_carrier._entry.279, !308, !"_entry", i1 false, i1 false}
!319 = !{ptr @stb0899_check_carrier._entry_ptr.281, !308, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.283, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/media/dvb-frontends/stb0899_algo.c", i32 256, i32 3}
!322 = !{ptr @stb0899_check_carrier._entry.282, !321, !"_entry", i1 false, i1 false}
!323 = !{ptr @stb0899_check_carrier._entry_ptr.284, !321, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.286, !321, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @stb0899_check_carrier._entry.285, !321, !"_entry", i1 false, i1 false}
!326 = !{ptr @stb0899_check_carrier._entry_ptr.287, !321, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.289, !321, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @stb0899_check_carrier._entry.288, !321, !"_entry", i1 false, i1 false}
!329 = !{ptr @stb0899_check_carrier._entry_ptr.290, !321, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @.str.292, !321, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @stb0899_check_carrier._entry.291, !321, !"_entry", i1 false, i1 false}
!332 = !{ptr @stb0899_check_carrier._entry_ptr.293, !321, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.294, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/media/dvb-frontends/stb0899_algo.c", i32 399, i32 5}
!335 = !{ptr @.str.295, !334, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @stb0899_search_data._entry, !334, !"_entry", i1 false, i1 false}
!337 = !{ptr @stb0899_search_data._entry_ptr, !334, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.297, !334, !"<string literal>", i1 false, i1 false}
!339 = !{ptr @stb0899_search_data._entry.296, !334, !"_entry", i1 false, i1 false}
!340 = !{ptr @stb0899_search_data._entry_ptr.298, !334, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @.str.300, !334, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @stb0899_search_data._entry.299, !334, !"_entry", i1 false, i1 false}
!343 = !{ptr @stb0899_search_data._entry_ptr.301, !334, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @.str.303, !334, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @stb0899_search_data._entry.302, !334, !"_entry", i1 false, i1 false}
!346 = !{ptr @stb0899_search_data._entry_ptr.304, !334, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @.str.306, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/media/dvb-frontends/stb0899_algo.c", i32 426, i32 3}
!349 = !{ptr @stb0899_search_data._entry.305, !348, !"_entry", i1 false, i1 false}
!350 = !{ptr @stb0899_search_data._entry_ptr.307, !348, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @.str.309, !348, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @stb0899_search_data._entry.308, !348, !"_entry", i1 false, i1 false}
!353 = !{ptr @stb0899_search_data._entry_ptr.310, !348, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.312, !348, !"<string literal>", i1 false, i1 false}
!355 = !{ptr @stb0899_search_data._entry.311, !348, !"_entry", i1 false, i1 false}
!356 = !{ptr @stb0899_search_data._entry_ptr.313, !348, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @.str.315, !348, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @stb0899_search_data._entry.314, !348, !"_entry", i1 false, i1 false}
!359 = !{ptr @stb0899_search_data._entry_ptr.316, !348, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @.str.317, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/media/dvb-frontends/stb0899_algo.c", i32 367, i32 3}
!362 = !{ptr @.str.318, !361, !"<string literal>", i1 false, i1 false}
!363 = !{ptr @stb0899_check_data._entry, !361, !"_entry", i1 false, i1 false}
!364 = !{ptr @stb0899_check_data._entry_ptr, !361, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @.str.320, !361, !"<string literal>", i1 false, i1 false}
!366 = !{ptr @stb0899_check_data._entry.319, !361, !"_entry", i1 false, i1 false}
!367 = !{ptr @stb0899_check_data._entry_ptr.321, !361, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @.str.323, !361, !"<string literal>", i1 false, i1 false}
!369 = !{ptr @stb0899_check_data._entry.322, !361, !"_entry", i1 false, i1 false}
!370 = !{ptr @stb0899_check_data._entry_ptr.324, !361, !"_entry_ptr", i1 false, i1 false}
!371 = !{ptr @.str.326, !361, !"<string literal>", i1 false, i1 false}
!372 = !{ptr @stb0899_check_data._entry.325, !361, !"_entry", i1 false, i1 false}
!373 = !{ptr @stb0899_check_data._entry_ptr.327, !361, !"_entry_ptr", i1 false, i1 false}
!374 = !{ptr @.str.328, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/media/dvb-frontends/stb0899_algo.c", i32 448, i32 3}
!376 = !{ptr @.str.329, !375, !"<string literal>", i1 false, i1 false}
!377 = !{ptr @stb0899_check_range._entry, !375, !"_entry", i1 false, i1 false}
!378 = !{ptr @stb0899_check_range._entry_ptr, !375, !"_entry_ptr", i1 false, i1 false}
!379 = !{ptr @.str.331, !375, !"<string literal>", i1 false, i1 false}
!380 = !{ptr @stb0899_check_range._entry.330, !375, !"_entry", i1 false, i1 false}
!381 = !{ptr @stb0899_check_range._entry_ptr.332, !375, !"_entry_ptr", i1 false, i1 false}
!382 = !{ptr @.str.334, !375, !"<string literal>", i1 false, i1 false}
!383 = !{ptr @stb0899_check_range._entry.333, !375, !"_entry", i1 false, i1 false}
!384 = !{ptr @stb0899_check_range._entry_ptr.335, !375, !"_entry_ptr", i1 false, i1 false}
!385 = !{ptr @.str.337, !375, !"<string literal>", i1 false, i1 false}
!386 = !{ptr @stb0899_check_range._entry.336, !375, !"_entry", i1 false, i1 false}
!387 = !{ptr @stb0899_check_range._entry_ptr.338, !375, !"_entry_ptr", i1 false, i1 false}
!388 = !{ptr @.str.340, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/media/dvb-frontends/stb0899_algo.c", i32 451, i32 3}
!390 = !{ptr @stb0899_check_range._entry.339, !389, !"_entry", i1 false, i1 false}
!391 = !{ptr @stb0899_check_range._entry_ptr.341, !389, !"_entry_ptr", i1 false, i1 false}
!392 = !{ptr @.str.343, !389, !"<string literal>", i1 false, i1 false}
!393 = !{ptr @stb0899_check_range._entry.342, !389, !"_entry", i1 false, i1 false}
!394 = !{ptr @stb0899_check_range._entry_ptr.344, !389, !"_entry_ptr", i1 false, i1 false}
!395 = !{ptr @.str.346, !389, !"<string literal>", i1 false, i1 false}
!396 = !{ptr @stb0899_check_range._entry.345, !389, !"_entry", i1 false, i1 false}
!397 = !{ptr @stb0899_check_range._entry_ptr.347, !389, !"_entry_ptr", i1 false, i1 false}
!398 = !{ptr @.str.349, !389, !"<string literal>", i1 false, i1 false}
!399 = !{ptr @stb0899_check_range._entry.348, !389, !"_entry", i1 false, i1 false}
!400 = !{ptr @stb0899_check_range._entry_ptr.350, !389, !"_entry_ptr", i1 false, i1 false}
!401 = !{ptr @.str.351, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/media/dvb-frontends/stb0899_algo.c", i32 1091, i32 3}
!403 = !{ptr @.str.352, !402, !"<string literal>", i1 false, i1 false}
!404 = !{ptr @stb0899_dvbs2_get_dmd_status._entry, !402, !"_entry", i1 false, i1 false}
!405 = !{ptr @stb0899_dvbs2_get_dmd_status._entry_ptr, !402, !"_entry_ptr", i1 false, i1 false}
!406 = !{ptr @.str.354, !402, !"<string literal>", i1 false, i1 false}
!407 = !{ptr @stb0899_dvbs2_get_dmd_status._entry.353, !402, !"_entry", i1 false, i1 false}
!408 = !{ptr @stb0899_dvbs2_get_dmd_status._entry_ptr.355, !402, !"_entry_ptr", i1 false, i1 false}
!409 = !{ptr @.str.357, !402, !"<string literal>", i1 false, i1 false}
!410 = !{ptr @stb0899_dvbs2_get_dmd_status._entry.356, !402, !"_entry", i1 false, i1 false}
!411 = !{ptr @stb0899_dvbs2_get_dmd_status._entry_ptr.358, !402, !"_entry_ptr", i1 false, i1 false}
!412 = !{ptr @.str.360, !402, !"<string literal>", i1 false, i1 false}
!413 = !{ptr @stb0899_dvbs2_get_dmd_status._entry.359, !402, !"_entry", i1 false, i1 false}
!414 = !{ptr @stb0899_dvbs2_get_dmd_status._entry_ptr.361, !402, !"_entry_ptr", i1 false, i1 false}
!415 = !{ptr @.str.363, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/media/dvb-frontends/stb0899_algo.c", i32 1093, i32 4}
!417 = !{ptr @stb0899_dvbs2_get_dmd_status._entry.362, !416, !"_entry", i1 false, i1 false}
!418 = !{ptr @stb0899_dvbs2_get_dmd_status._entry_ptr.364, !416, !"_entry_ptr", i1 false, i1 false}
!419 = !{ptr @.str.366, !416, !"<string literal>", i1 false, i1 false}
!420 = !{ptr @stb0899_dvbs2_get_dmd_status._entry.365, !416, !"_entry", i1 false, i1 false}
!421 = !{ptr @stb0899_dvbs2_get_dmd_status._entry_ptr.367, !416, !"_entry_ptr", i1 false, i1 false}
!422 = !{ptr @.str.369, !416, !"<string literal>", i1 false, i1 false}
!423 = !{ptr @stb0899_dvbs2_get_dmd_status._entry.368, !416, !"_entry", i1 false, i1 false}
!424 = !{ptr @stb0899_dvbs2_get_dmd_status._entry_ptr.370, !416, !"_entry_ptr", i1 false, i1 false}
!425 = !{ptr @.str.372, !416, !"<string literal>", i1 false, i1 false}
!426 = !{ptr @stb0899_dvbs2_get_dmd_status._entry.371, !416, !"_entry", i1 false, i1 false}
!427 = !{ptr @stb0899_dvbs2_get_dmd_status._entry_ptr.373, !416, !"_entry_ptr", i1 false, i1 false}
!428 = !{ptr @.str.375, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/media/dvb-frontends/stb0899_algo.c", i32 1095, i32 3}
!430 = !{ptr @stb0899_dvbs2_get_dmd_status._entry.374, !429, !"_entry", i1 false, i1 false}
!431 = !{ptr @stb0899_dvbs2_get_dmd_status._entry_ptr.376, !429, !"_entry_ptr", i1 false, i1 false}
!432 = !{ptr @.str.378, !429, !"<string literal>", i1 false, i1 false}
!433 = !{ptr @stb0899_dvbs2_get_dmd_status._entry.377, !429, !"_entry", i1 false, i1 false}
!434 = !{ptr @stb0899_dvbs2_get_dmd_status._entry_ptr.379, !429, !"_entry_ptr", i1 false, i1 false}
!435 = !{ptr @.str.381, !429, !"<string literal>", i1 false, i1 false}
!436 = !{ptr @stb0899_dvbs2_get_dmd_status._entry.380, !429, !"_entry", i1 false, i1 false}
!437 = !{ptr @stb0899_dvbs2_get_dmd_status._entry_ptr.382, !429, !"_entry_ptr", i1 false, i1 false}
!438 = !{ptr @.str.384, !429, !"<string literal>", i1 false, i1 false}
!439 = !{ptr @stb0899_dvbs2_get_dmd_status._entry.383, !429, !"_entry", i1 false, i1 false}
!440 = !{ptr @stb0899_dvbs2_get_dmd_status._entry_ptr.385, !429, !"_entry_ptr", i1 false, i1 false}
!441 = !{ptr @.str.387, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/media/dvb-frontends/stb0899_algo.c", i32 1107, i32 3}
!443 = !{ptr @stb0899_dvbs2_get_dmd_status._entry.386, !442, !"_entry", i1 false, i1 false}
!444 = !{ptr @stb0899_dvbs2_get_dmd_status._entry_ptr.388, !442, !"_entry_ptr", i1 false, i1 false}
!445 = !{ptr @.str.390, !442, !"<string literal>", i1 false, i1 false}
!446 = !{ptr @stb0899_dvbs2_get_dmd_status._entry.389, !442, !"_entry", i1 false, i1 false}
!447 = !{ptr @stb0899_dvbs2_get_dmd_status._entry_ptr.391, !442, !"_entry_ptr", i1 false, i1 false}
!448 = !{ptr @.str.393, !442, !"<string literal>", i1 false, i1 false}
!449 = !{ptr @stb0899_dvbs2_get_dmd_status._entry.392, !442, !"_entry", i1 false, i1 false}
!450 = !{ptr @stb0899_dvbs2_get_dmd_status._entry_ptr.394, !442, !"_entry_ptr", i1 false, i1 false}
!451 = !{ptr @.str.396, !442, !"<string literal>", i1 false, i1 false}
!452 = !{ptr @stb0899_dvbs2_get_dmd_status._entry.395, !442, !"_entry", i1 false, i1 false}
!453 = !{ptr @stb0899_dvbs2_get_dmd_status._entry_ptr.397, !442, !"_entry_ptr", i1 false, i1 false}
!454 = !{ptr @.str.398, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/media/dvb-frontends/stb0899_algo.c", i32 1149, i32 3}
!456 = !{ptr @.str.399, !455, !"<string literal>", i1 false, i1 false}
!457 = !{ptr @stb0899_dvbs2_get_fec_status._entry, !455, !"_entry", i1 false, i1 false}
!458 = !{ptr @stb0899_dvbs2_get_fec_status._entry_ptr, !455, !"_entry_ptr", i1 false, i1 false}
!459 = !{ptr @.str.401, !455, !"<string literal>", i1 false, i1 false}
!460 = !{ptr @stb0899_dvbs2_get_fec_status._entry.400, !455, !"_entry", i1 false, i1 false}
!461 = !{ptr @stb0899_dvbs2_get_fec_status._entry_ptr.402, !455, !"_entry_ptr", i1 false, i1 false}
!462 = !{ptr @.str.404, !455, !"<string literal>", i1 false, i1 false}
!463 = !{ptr @stb0899_dvbs2_get_fec_status._entry.403, !455, !"_entry", i1 false, i1 false}
!464 = !{ptr @stb0899_dvbs2_get_fec_status._entry_ptr.405, !455, !"_entry_ptr", i1 false, i1 false}
!465 = !{ptr @.str.407, !455, !"<string literal>", i1 false, i1 false}
!466 = !{ptr @stb0899_dvbs2_get_fec_status._entry.406, !455, !"_entry", i1 false, i1 false}
!467 = !{ptr @stb0899_dvbs2_get_fec_status._entry_ptr.408, !455, !"_entry_ptr", i1 false, i1 false}
!468 = !{ptr @.str.409, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/media/dvb-frontends/stb0899_algo.c", i32 1125, i32 3}
!470 = !{ptr @.str.410, !469, !"<string literal>", i1 false, i1 false}
!471 = !{ptr @stb0899_dvbs2_get_data_lock._entry, !469, !"_entry", i1 false, i1 false}
!472 = !{ptr @stb0899_dvbs2_get_data_lock._entry_ptr, !469, !"_entry_ptr", i1 false, i1 false}
!473 = !{ptr @.str.412, !469, !"<string literal>", i1 false, i1 false}
!474 = !{ptr @stb0899_dvbs2_get_data_lock._entry.411, !469, !"_entry", i1 false, i1 false}
!475 = !{ptr @stb0899_dvbs2_get_data_lock._entry_ptr.413, !469, !"_entry_ptr", i1 false, i1 false}
!476 = !{ptr @.str.415, !469, !"<string literal>", i1 false, i1 false}
!477 = !{ptr @stb0899_dvbs2_get_data_lock._entry.414, !469, !"_entry", i1 false, i1 false}
!478 = !{ptr @stb0899_dvbs2_get_data_lock._entry_ptr.416, !469, !"_entry_ptr", i1 false, i1 false}
!479 = !{ptr @.str.418, !469, !"<string literal>", i1 false, i1 false}
!480 = !{ptr @stb0899_dvbs2_get_data_lock._entry.417, !469, !"_entry", i1 false, i1 false}
!481 = !{ptr @stb0899_dvbs2_get_data_lock._entry_ptr.419, !469, !"_entry_ptr", i1 false, i1 false}
!482 = !{i32 1, !"wchar_size", i32 2}
!483 = !{i32 1, !"min_enum_size", i32 4}
!484 = !{i32 8, !"branch-target-enforcement", i32 0}
!485 = !{i32 8, !"sign-return-address", i32 0}
!486 = !{i32 8, !"sign-return-address-all", i32 0}
!487 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!488 = !{i32 7, !"uwtable", i32 1}
!489 = !{i32 7, !"frame-pointer", i32 2}
!490 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!491 = !{!"auto-init"}
!492 = !{!"branch_weights", i32 2000, i32 1}
!493 = !{i64 2148651888, i64 2148652168, i64 2148652502, i64 2148652836}

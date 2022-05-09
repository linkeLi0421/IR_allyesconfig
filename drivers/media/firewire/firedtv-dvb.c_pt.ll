; ModuleID = '/llk/IR_all_yes/drivers/media/firewire/firedtv-dvb.c_pt.bc'
source_filename = "../drivers/media/firewire/firedtv-dvb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.103 }
%union.anon.103 = type { ptr }
%struct.dvb_demux_feed = type { %union.anon, %union.anon.0, ptr, ptr, i32, i32, i16, i64, ptr, i32, i32, i32, i32, i8, i16, %struct.list_head, i32 }
%union.anon = type { %struct.dmx_section_feed }
%struct.dmx_section_feed = type { i32, ptr, ptr, i32, i32, ptr, [4284 x i8], i16, i16, i16, ptr, ptr, ptr, ptr, ptr }
%union.anon.0 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.firedtv = type { ptr, %struct.list_head, %struct.dvb_adapter, %struct.dmxdev, %struct.dvb_demux, %struct.dmx_frontend, %struct.dvb_net, %struct.dvb_frontend, ptr, i32, i32, %struct.mutex, %struct.wait_queue_head, i8, %struct.work_struct, ptr, i32, i8, i8, ptr, i32, i32, %struct.mutex, i32, [16 x i16], i32, [512 x i8] }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.131], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.131 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.132 }>
%union.anon.132 = type { i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }

@fdtv_start_feed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 61, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"can't start dmx feed: invalid type %u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fdtv_start_feed\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/media/firewire/firedtv-dvb.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fdtv_start_feed._entry_ptr = internal global ptr @fdtv_start_feed._entry, section ".printk_index", align 4
@fdtv_start_feed._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 80, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"can't start dmx feed: invalid pes type %u\0A\00", [53 x i8] zeroinitializer }, align 32
@fdtv_start_feed._entry_ptr.7 = internal global ptr @fdtv_start_feed._entry.5, section ".printk_index", align 4
@fdtv_start_feed._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 89, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"can't start dmx feed: busy\0A\00", [36 x i8] zeroinitializer }, align 32
@fdtv_start_feed._entry_ptr.10 = internal global ptr @fdtv_start_feed._entry.8, section ".printk_index", align 4
@fdtv_start_feed._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 102, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"can't get TS\0A\00", [18 x i8] zeroinitializer }, align 32
@fdtv_start_feed._entry_ptr.13 = internal global ptr @fdtv_start_feed._entry.11, section ".printk_index", align 4
@fdtv_start_feed._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 109, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"can't set PIDs\0A\00", [16 x i8] zeroinitializer }, align 32
@fdtv_start_feed._entry_ptr.16 = internal global ptr @fdtv_start_feed._entry.14, section ".printk_index", align 4
@__param_str_adapter_nr = internal constant [19 x i8] c"firedtv.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.103 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype381 = internal constant [43 x i8] c"firedtv.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr382 = internal constant [44 x i8] c"firedtv.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@fdtv_dvb_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 214, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Conditional Access Module not enabled\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fdtv_dvb_register\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@fdtv_dvb_register._entry_ptr = internal global ptr @fdtv_dvb_register._entry, section ".printk_index", align 4
@fdtv_dvb_register._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.2, i32 230, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DVB initialization failed\0A\00", [37 x i8] zeroinitializer }, align 32
@fdtv_dvb_register._entry_ptr.22 = internal global ptr @fdtv_dvb_register._entry.20, section ".printk_index", align 4
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 4, i64 20]
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 60, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 78, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 89, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 102, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 109, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 158, i32 1 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 213, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private constant [40 x i8] c"../drivers/media/firewire/firedtv-dvb.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 230, i32 2 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_adapter_nr382, ptr @__UNIQUE_ID_adapter_nrtype381, ptr @__param_adapter_nr, ptr @fdtv_dvb_register._entry, ptr @fdtv_dvb_register._entry.20, ptr @fdtv_dvb_register._entry_ptr, ptr @fdtv_dvb_register._entry_ptr.22, ptr @fdtv_start_feed._entry, ptr @fdtv_start_feed._entry.11, ptr @fdtv_start_feed._entry.14, ptr @fdtv_start_feed._entry.5, ptr @fdtv_start_feed._entry.8, ptr @fdtv_start_feed._entry_ptr, ptr @fdtv_start_feed._entry_ptr.10, ptr @fdtv_start_feed._entry_ptr.13, ptr @fdtv_start_feed._entry_ptr.16, ptr @fdtv_start_feed._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @adapter_nr, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdtv_start_feed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdtv_start_feed._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdtv_start_feed._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdtv_start_feed._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdtv_start_feed._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdtv_dvb_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdtv_dvb_register._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdtv_start_feed(ptr nocapture noundef %dvbdmxfeed) #0 align 64 {
entry:
  %pids = alloca [16 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %demux = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 2
  %0 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux, align 4
  %priv = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pids) #4
  %type = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 4
  %4 = call ptr @memset(ptr %pids, i32 255, i32 32)
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %switch = icmp ult i32 %6, 2
  br i1 %switch, label %sw.epilog, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str, i32 noundef %6) #7
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %demux_mutex = getelementptr inbounds %struct.firedtv, ptr %3, i32 0, i32 22
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %demux_mutex, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %pes_type = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 11
  %11 = ptrtoint ptr %pes_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pes_type, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %do.end9 [
    i32 1, label %if.then3.sw.bb4_crit_edge
    i32 0, label %if.then3.sw.bb4_crit_edge119
    i32 2, label %if.then3.sw.bb4_crit_edge120
    i32 4, label %if.then3.sw.bb4_crit_edge121
    i32 20, label %if.then3.sw.bb4_crit_edge122
  ]

if.then3.sw.bb4_crit_edge122:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb4

if.then3.sw.bb4_crit_edge121:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb4

if.then3.sw.bb4_crit_edge120:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb4

if.then3.sw.bb4_crit_edge119:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb4

if.then3.sw.bb4_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb4

sw.bb4:                                           ; preds = %if.then3.sw.bb4_crit_edge, %if.then3.sw.bb4_crit_edge119, %if.then3.sw.bb4_crit_edge120, %if.then3.sw.bb4_crit_edge121, %if.then3.sw.bb4_crit_edge122
  %channel_active.i = getelementptr inbounds %struct.firedtv, ptr %3, i32 0, i32 23
  %14 = ptrtoint ptr %channel_active.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channel_active.i, align 4
  %or.i.i = or i32 %15, 1
  store i32 %or.i.i, ptr %channel_active.i, align 4
  %16 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %sw.bb4.if.end21_crit_edge, label %for.inc.i

sw.bb4.if.end21_crit_edge:                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

for.inc.i:                                        ; preds = %sw.bb4
  %17 = ptrtoint ptr %channel_active.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %channel_active.i, align 4
  %or.i.i.1 = or i32 %18, 2
  store i32 %or.i.i.1, ptr %channel_active.i, align 4
  %19 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.1 = icmp eq i32 %19, 0
  br i1 %tobool.not.i.1, label %for.inc.i.if.end21_crit_edge, label %for.inc.i.1

for.inc.i.if.end21_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

for.inc.i.1:                                      ; preds = %for.inc.i
  %20 = ptrtoint ptr %channel_active.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channel_active.i, align 4
  %or.i.i.2 = or i32 %21, 4
  store i32 %or.i.i.2, ptr %channel_active.i, align 4
  %22 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.2 = icmp eq i32 %22, 0
  br i1 %tobool.not.i.2, label %for.inc.i.1.if.end21_crit_edge, label %for.inc.i.2

for.inc.i.1.if.end21_crit_edge:                   ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

for.inc.i.2:                                      ; preds = %for.inc.i.1
  %23 = ptrtoint ptr %channel_active.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %channel_active.i, align 4
  %or.i.i.3 = or i32 %24, 8
  store i32 %or.i.i.3, ptr %channel_active.i, align 4
  %25 = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.3 = icmp eq i32 %25, 0
  br i1 %tobool.not.i.3, label %for.inc.i.2.if.end21_crit_edge, label %for.inc.i.3

for.inc.i.2.if.end21_crit_edge:                   ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

for.inc.i.3:                                      ; preds = %for.inc.i.2
  %26 = ptrtoint ptr %channel_active.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %channel_active.i, align 4
  %or.i.i.4 = or i32 %27, 16
  store i32 %or.i.i.4, ptr %channel_active.i, align 4
  %28 = and i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.4 = icmp eq i32 %28, 0
  br i1 %tobool.not.i.4, label %for.inc.i.3.if.end21_crit_edge, label %for.inc.i.4

for.inc.i.3.if.end21_crit_edge:                   ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

for.inc.i.4:                                      ; preds = %for.inc.i.3
  %29 = ptrtoint ptr %channel_active.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %channel_active.i, align 4
  %or.i.i.5 = or i32 %30, 32
  store i32 %or.i.i.5, ptr %channel_active.i, align 4
  %31 = and i32 %30, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i.5 = icmp eq i32 %31, 0
  br i1 %tobool.not.i.5, label %for.inc.i.4.if.end21_crit_edge, label %for.inc.i.5

for.inc.i.4.if.end21_crit_edge:                   ; preds = %for.inc.i.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

for.inc.i.5:                                      ; preds = %for.inc.i.4
  %32 = ptrtoint ptr %channel_active.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %channel_active.i, align 4
  %or.i.i.6 = or i32 %33, 64
  store i32 %or.i.i.6, ptr %channel_active.i, align 4
  %34 = and i32 %33, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i.6 = icmp eq i32 %34, 0
  br i1 %tobool.not.i.6, label %for.inc.i.5.if.end21_crit_edge, label %for.inc.i.6

for.inc.i.5.if.end21_crit_edge:                   ; preds = %for.inc.i.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

for.inc.i.6:                                      ; preds = %for.inc.i.5
  %35 = ptrtoint ptr %channel_active.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %channel_active.i, align 4
  %or.i.i.7 = or i32 %36, 128
  store i32 %or.i.i.7, ptr %channel_active.i, align 4
  %37 = and i32 %36, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i.7 = icmp eq i32 %37, 0
  br i1 %tobool.not.i.7, label %for.inc.i.6.if.end21_crit_edge, label %for.inc.i.7

for.inc.i.6.if.end21_crit_edge:                   ; preds = %for.inc.i.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

for.inc.i.7:                                      ; preds = %for.inc.i.6
  %38 = ptrtoint ptr %channel_active.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %channel_active.i, align 4
  %or.i.i.8 = or i32 %39, 256
  store i32 %or.i.i.8, ptr %channel_active.i, align 4
  %40 = and i32 %39, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.8 = icmp eq i32 %40, 0
  br i1 %tobool.not.i.8, label %for.inc.i.7.if.end21_crit_edge, label %for.inc.i.8

for.inc.i.7.if.end21_crit_edge:                   ; preds = %for.inc.i.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

for.inc.i.8:                                      ; preds = %for.inc.i.7
  %41 = ptrtoint ptr %channel_active.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %channel_active.i, align 4
  %or.i.i.9 = or i32 %42, 512
  store i32 %or.i.i.9, ptr %channel_active.i, align 4
  %43 = and i32 %42, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i.9 = icmp eq i32 %43, 0
  br i1 %tobool.not.i.9, label %for.inc.i.8.if.end21_crit_edge, label %for.inc.i.9

for.inc.i.8.if.end21_crit_edge:                   ; preds = %for.inc.i.8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

for.inc.i.9:                                      ; preds = %for.inc.i.8
  %44 = ptrtoint ptr %channel_active.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %channel_active.i, align 4
  %or.i.i.10 = or i32 %45, 1024
  store i32 %or.i.i.10, ptr %channel_active.i, align 4
  %46 = and i32 %45, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i.10 = icmp eq i32 %46, 0
  br i1 %tobool.not.i.10, label %for.inc.i.9.if.end21_crit_edge, label %for.inc.i.10

for.inc.i.9.if.end21_crit_edge:                   ; preds = %for.inc.i.9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

for.inc.i.10:                                     ; preds = %for.inc.i.9
  %47 = ptrtoint ptr %channel_active.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %channel_active.i, align 4
  %or.i.i.11 = or i32 %48, 2048
  store i32 %or.i.i.11, ptr %channel_active.i, align 4
  %49 = and i32 %48, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i.11 = icmp eq i32 %49, 0
  br i1 %tobool.not.i.11, label %for.inc.i.10.if.end21_crit_edge, label %for.inc.i.11

for.inc.i.10.if.end21_crit_edge:                  ; preds = %for.inc.i.10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

for.inc.i.11:                                     ; preds = %for.inc.i.10
  %50 = ptrtoint ptr %channel_active.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %channel_active.i, align 4
  %or.i.i.12 = or i32 %51, 4096
  store i32 %or.i.i.12, ptr %channel_active.i, align 4
  %52 = and i32 %51, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i.12 = icmp eq i32 %52, 0
  br i1 %tobool.not.i.12, label %for.inc.i.11.if.end21_crit_edge, label %for.inc.i.12

for.inc.i.11.if.end21_crit_edge:                  ; preds = %for.inc.i.11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

for.inc.i.12:                                     ; preds = %for.inc.i.11
  %53 = ptrtoint ptr %channel_active.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %channel_active.i, align 4
  %or.i.i.13 = or i32 %54, 8192
  store i32 %or.i.i.13, ptr %channel_active.i, align 4
  %55 = and i32 %54, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i.13 = icmp eq i32 %55, 0
  br i1 %tobool.not.i.13, label %for.inc.i.12.if.end21_crit_edge, label %for.inc.i.13

for.inc.i.12.if.end21_crit_edge:                  ; preds = %for.inc.i.12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

for.inc.i.13:                                     ; preds = %for.inc.i.12
  %56 = ptrtoint ptr %channel_active.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %channel_active.i, align 4
  %or.i.i.14 = or i32 %57, 16384
  store i32 %or.i.i.14, ptr %channel_active.i, align 4
  %58 = and i32 %57, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i.14 = icmp eq i32 %58, 0
  br i1 %tobool.not.i.14, label %for.inc.i.13.if.end21_crit_edge, label %for.inc.i.14

for.inc.i.13.if.end21_crit_edge:                  ; preds = %for.inc.i.13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

for.inc.i.14:                                     ; preds = %for.inc.i.13
  %59 = ptrtoint ptr %channel_active.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %channel_active.i, align 4
  %or.i.i.15 = or i32 %60, 32768
  store i32 %or.i.i.15, ptr %channel_active.i, align 4
  %61 = and i32 %60, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i.15 = icmp eq i32 %61, 0
  br i1 %tobool.not.i.15, label %for.inc.i.14.if.end21_crit_edge, label %for.inc.i.14.do.end19_crit_edge

for.inc.i.14.do.end19_crit_edge:                  ; preds = %for.inc.i.14
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end19

for.inc.i.14.if.end21_crit_edge:                  ; preds = %for.inc.i.14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

do.end9:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  %62 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.6, i32 noundef %12) #7
  br label %out

if.else:                                          ; preds = %if.end
  %channel_active.i80 = getelementptr inbounds %struct.firedtv, ptr %3, i32 0, i32 23
  %64 = ptrtoint ptr %channel_active.i80 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %channel_active.i80, align 4
  %or.i.i85 = or i32 %65, 1
  store i32 %or.i.i85, ptr %channel_active.i80, align 4
  %66 = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not.i86 = icmp eq i32 %66, 0
  br i1 %tobool.not.i86, label %if.else.if.end21_crit_edge, label %for.inc.i90

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

for.inc.i90:                                      ; preds = %if.else
  %67 = ptrtoint ptr %channel_active.i80 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %channel_active.i80, align 4
  %or.i.i85.1 = or i32 %68, 2
  store i32 %or.i.i85.1, ptr %channel_active.i80, align 4
  %69 = and i32 %68, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i86.1 = icmp eq i32 %69, 0
  br i1 %tobool.not.i86.1, label %for.inc.i90.if.end21_crit_edge, label %for.inc.i90.1

for.inc.i90.if.end21_crit_edge:                   ; preds = %for.inc.i90
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

for.inc.i90.1:                                    ; preds = %for.inc.i90
  %70 = ptrtoint ptr %channel_active.i80 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %channel_active.i80, align 4
  %or.i.i85.2 = or i32 %71, 4
  store i32 %or.i.i85.2, ptr %channel_active.i80, align 4
  %72 = and i32 %71, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i86.2 = icmp eq i32 %72, 0
  br i1 %tobool.not.i86.2, label %for.inc.i90.1.if.end21_crit_edge, label %for.inc.i90.2

for.inc.i90.1.if.end21_crit_edge:                 ; preds = %for.inc.i90.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

for.inc.i90.2:                                    ; preds = %for.inc.i90.1
  %73 = ptrtoint ptr %channel_active.i80 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %channel_active.i80, align 4
  %or.i.i85.3 = or i32 %74, 8
  store i32 %or.i.i85.3, ptr %channel_active.i80, align 4
  %75 = and i32 %74, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i86.3 = icmp eq i32 %75, 0
  br i1 %tobool.not.i86.3, label %for.inc.i90.2.if.end21_crit_edge, label %for.inc.i90.3

for.inc.i90.2.if.end21_crit_edge:                 ; preds = %for.inc.i90.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

for.inc.i90.3:                                    ; preds = %for.inc.i90.2
  %76 = ptrtoint ptr %channel_active.i80 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %channel_active.i80, align 4
  %or.i.i85.4 = or i32 %77, 16
  store i32 %or.i.i85.4, ptr %channel_active.i80, align 4
  %78 = and i32 %77, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.not.i86.4 = icmp eq i32 %78, 0
  br i1 %tobool.not.i86.4, label %for.inc.i90.3.if.end21_crit_edge, label %for.inc.i90.4

for.inc.i90.3.if.end21_crit_edge:                 ; preds = %for.inc.i90.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

for.inc.i90.4:                                    ; preds = %for.inc.i90.3
  %79 = ptrtoint ptr %channel_active.i80 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %channel_active.i80, align 4
  %or.i.i85.5 = or i32 %80, 32
  store i32 %or.i.i85.5, ptr %channel_active.i80, align 4
  %81 = and i32 %80, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.i86.5 = icmp eq i32 %81, 0
  br i1 %tobool.not.i86.5, label %for.inc.i90.4.if.end21_crit_edge, label %for.inc.i90.5

for.inc.i90.4.if.end21_crit_edge:                 ; preds = %for.inc.i90.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

for.inc.i90.5:                                    ; preds = %for.inc.i90.4
  %82 = ptrtoint ptr %channel_active.i80 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %channel_active.i80, align 4
  %or.i.i85.6 = or i32 %83, 64
  store i32 %or.i.i85.6, ptr %channel_active.i80, align 4
  %84 = and i32 %83, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.not.i86.6 = icmp eq i32 %84, 0
  br i1 %tobool.not.i86.6, label %for.inc.i90.5.if.end21_crit_edge, label %for.inc.i90.6

for.inc.i90.5.if.end21_crit_edge:                 ; preds = %for.inc.i90.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

for.inc.i90.6:                                    ; preds = %for.inc.i90.5
  %85 = ptrtoint ptr %channel_active.i80 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %channel_active.i80, align 4
  %or.i.i85.7 = or i32 %86, 128
  store i32 %or.i.i85.7, ptr %channel_active.i80, align 4
  %87 = and i32 %86, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool.not.i86.7 = icmp eq i32 %87, 0
  br i1 %tobool.not.i86.7, label %for.inc.i90.6.if.end21_crit_edge, label %for.inc.i90.7

for.inc.i90.6.if.end21_crit_edge:                 ; preds = %for.inc.i90.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

for.inc.i90.7:                                    ; preds = %for.inc.i90.6
  %88 = ptrtoint ptr %channel_active.i80 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %channel_active.i80, align 4
  %or.i.i85.8 = or i32 %89, 256
  store i32 %or.i.i85.8, ptr %channel_active.i80, align 4
  %90 = and i32 %89, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.not.i86.8 = icmp eq i32 %90, 0
  br i1 %tobool.not.i86.8, label %for.inc.i90.7.if.end21_crit_edge, label %for.inc.i90.8

for.inc.i90.7.if.end21_crit_edge:                 ; preds = %for.inc.i90.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

for.inc.i90.8:                                    ; preds = %for.inc.i90.7
  %91 = ptrtoint ptr %channel_active.i80 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %channel_active.i80, align 4
  %or.i.i85.9 = or i32 %92, 512
  store i32 %or.i.i85.9, ptr %channel_active.i80, align 4
  %93 = and i32 %92, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool.not.i86.9 = icmp eq i32 %93, 0
  br i1 %tobool.not.i86.9, label %for.inc.i90.8.if.end21_crit_edge, label %for.inc.i90.9

for.inc.i90.8.if.end21_crit_edge:                 ; preds = %for.inc.i90.8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

for.inc.i90.9:                                    ; preds = %for.inc.i90.8
  %94 = ptrtoint ptr %channel_active.i80 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %channel_active.i80, align 4
  %or.i.i85.10 = or i32 %95, 1024
  store i32 %or.i.i85.10, ptr %channel_active.i80, align 4
  %96 = and i32 %95, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.not.i86.10 = icmp eq i32 %96, 0
  br i1 %tobool.not.i86.10, label %for.inc.i90.9.if.end21_crit_edge, label %for.inc.i90.10

for.inc.i90.9.if.end21_crit_edge:                 ; preds = %for.inc.i90.9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

for.inc.i90.10:                                   ; preds = %for.inc.i90.9
  %97 = ptrtoint ptr %channel_active.i80 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %channel_active.i80, align 4
  %or.i.i85.11 = or i32 %98, 2048
  store i32 %or.i.i85.11, ptr %channel_active.i80, align 4
  %99 = and i32 %98, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool.not.i86.11 = icmp eq i32 %99, 0
  br i1 %tobool.not.i86.11, label %for.inc.i90.10.if.end21_crit_edge, label %for.inc.i90.11

for.inc.i90.10.if.end21_crit_edge:                ; preds = %for.inc.i90.10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

for.inc.i90.11:                                   ; preds = %for.inc.i90.10
  %100 = ptrtoint ptr %channel_active.i80 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %channel_active.i80, align 4
  %or.i.i85.12 = or i32 %101, 4096
  store i32 %or.i.i85.12, ptr %channel_active.i80, align 4
  %102 = and i32 %101, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool.not.i86.12 = icmp eq i32 %102, 0
  br i1 %tobool.not.i86.12, label %for.inc.i90.11.if.end21_crit_edge, label %for.inc.i90.12

for.inc.i90.11.if.end21_crit_edge:                ; preds = %for.inc.i90.11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

for.inc.i90.12:                                   ; preds = %for.inc.i90.11
  %103 = ptrtoint ptr %channel_active.i80 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %channel_active.i80, align 4
  %or.i.i85.13 = or i32 %104, 8192
  store i32 %or.i.i85.13, ptr %channel_active.i80, align 4
  %105 = and i32 %104, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool.not.i86.13 = icmp eq i32 %105, 0
  br i1 %tobool.not.i86.13, label %for.inc.i90.12.if.end21_crit_edge, label %for.inc.i90.13

for.inc.i90.12.if.end21_crit_edge:                ; preds = %for.inc.i90.12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

for.inc.i90.13:                                   ; preds = %for.inc.i90.12
  %106 = ptrtoint ptr %channel_active.i80 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %channel_active.i80, align 4
  %or.i.i85.14 = or i32 %107, 16384
  store i32 %or.i.i85.14, ptr %channel_active.i80, align 4
  %108 = and i32 %107, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool.not.i86.14 = icmp eq i32 %108, 0
  br i1 %tobool.not.i86.14, label %for.inc.i90.13.if.end21_crit_edge, label %for.inc.i90.14

for.inc.i90.13.if.end21_crit_edge:                ; preds = %for.inc.i90.13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

for.inc.i90.14:                                   ; preds = %for.inc.i90.13
  %109 = ptrtoint ptr %channel_active.i80 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %channel_active.i80, align 4
  %or.i.i85.15 = or i32 %110, 32768
  store i32 %or.i.i85.15, ptr %channel_active.i80, align 4
  %111 = and i32 %110, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool.not.i86.15 = icmp eq i32 %111, 0
  br i1 %tobool.not.i86.15, label %for.inc.i90.14.if.end21_crit_edge, label %for.inc.i90.14.do.end19_crit_edge

for.inc.i90.14.do.end19_crit_edge:                ; preds = %for.inc.i90.14
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end19

for.inc.i90.14.if.end21_crit_edge:                ; preds = %for.inc.i90.14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

do.end19:                                         ; preds = %for.inc.i90.14.do.end19_crit_edge, %for.inc.i.14.do.end19_crit_edge
  %112 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.9) #7
  br label %out

if.end21:                                         ; preds = %for.inc.i90.14.if.end21_crit_edge, %for.inc.i90.13.if.end21_crit_edge, %for.inc.i90.12.if.end21_crit_edge, %for.inc.i90.11.if.end21_crit_edge, %for.inc.i90.10.if.end21_crit_edge, %for.inc.i90.9.if.end21_crit_edge, %for.inc.i90.8.if.end21_crit_edge, %for.inc.i90.7.if.end21_crit_edge, %for.inc.i90.6.if.end21_crit_edge, %for.inc.i90.5.if.end21_crit_edge, %for.inc.i90.4.if.end21_crit_edge, %for.inc.i90.3.if.end21_crit_edge, %for.inc.i90.2.if.end21_crit_edge, %for.inc.i90.1.if.end21_crit_edge, %for.inc.i90.if.end21_crit_edge, %if.else.if.end21_crit_edge, %for.inc.i.14.if.end21_crit_edge, %for.inc.i.13.if.end21_crit_edge, %for.inc.i.12.if.end21_crit_edge, %for.inc.i.11.if.end21_crit_edge, %for.inc.i.10.if.end21_crit_edge, %for.inc.i.9.if.end21_crit_edge, %for.inc.i.8.if.end21_crit_edge, %for.inc.i.7.if.end21_crit_edge, %for.inc.i.6.if.end21_crit_edge, %for.inc.i.5.if.end21_crit_edge, %for.inc.i.4.if.end21_crit_edge, %for.inc.i.3.if.end21_crit_edge, %for.inc.i.2.if.end21_crit_edge, %for.inc.i.1.if.end21_crit_edge, %for.inc.i.if.end21_crit_edge, %sw.bb4.if.end21_crit_edge
  %c.0 = phi i32 [ 0, %sw.bb4.if.end21_crit_edge ], [ 1, %for.inc.i.if.end21_crit_edge ], [ 2, %for.inc.i.1.if.end21_crit_edge ], [ 3, %for.inc.i.2.if.end21_crit_edge ], [ 4, %for.inc.i.3.if.end21_crit_edge ], [ 5, %for.inc.i.4.if.end21_crit_edge ], [ 6, %for.inc.i.5.if.end21_crit_edge ], [ 7, %for.inc.i.6.if.end21_crit_edge ], [ 8, %for.inc.i.7.if.end21_crit_edge ], [ 9, %for.inc.i.8.if.end21_crit_edge ], [ 10, %for.inc.i.9.if.end21_crit_edge ], [ 11, %for.inc.i.10.if.end21_crit_edge ], [ 12, %for.inc.i.11.if.end21_crit_edge ], [ 13, %for.inc.i.12.if.end21_crit_edge ], [ 14, %for.inc.i.13.if.end21_crit_edge ], [ 15, %for.inc.i.14.if.end21_crit_edge ], [ 0, %if.else.if.end21_crit_edge ], [ 1, %for.inc.i90.if.end21_crit_edge ], [ 2, %for.inc.i90.1.if.end21_crit_edge ], [ 3, %for.inc.i90.2.if.end21_crit_edge ], [ 4, %for.inc.i90.3.if.end21_crit_edge ], [ 5, %for.inc.i90.4.if.end21_crit_edge ], [ 6, %for.inc.i90.5.if.end21_crit_edge ], [ 7, %for.inc.i90.6.if.end21_crit_edge ], [ 8, %for.inc.i90.7.if.end21_crit_edge ], [ 9, %for.inc.i90.8.if.end21_crit_edge ], [ 10, %for.inc.i90.9.if.end21_crit_edge ], [ 11, %for.inc.i90.10.if.end21_crit_edge ], [ 12, %for.inc.i90.11.if.end21_crit_edge ], [ 13, %for.inc.i90.12.if.end21_crit_edge ], [ 14, %for.inc.i90.13.if.end21_crit_edge ], [ 15, %for.inc.i90.14.if.end21_crit_edge ]
  %114 = inttoptr i32 %c.0 to ptr
  %priv22 = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 3
  %115 = ptrtoint ptr %priv22 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %114, ptr %priv22, align 8
  %pid = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 6
  %116 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %pid, align 4
  %arrayidx = getelementptr %struct.firedtv, ptr %3, i32 0, i32 24, i32 %c.0
  %118 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %117, ptr %arrayidx, align 2
  %channel_active.i93 = getelementptr inbounds %struct.firedtv, ptr %3, i32 0, i32 23
  br label %for.body.i95

for.body.i95:                                     ; preds = %for.inc.i98.for.body.i95_crit_edge, %if.end21
  %n.010.i = phi i32 [ 0, %if.end21 ], [ %n.1.i, %for.inc.i98.for.body.i95_crit_edge ]
  %i.08.i = phi i32 [ 0, %if.end21 ], [ %inc2.i, %for.inc.i98.for.body.i95_crit_edge ]
  %div3.i.i = lshr i32 %i.08.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %channel_active.i93, i32 %div3.i.i
  %119 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %arrayidx.i.i, align 4
  %121 = shl nuw i32 1, %i.08.i
  %122 = and i32 %120, %121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool.not.i94 = icmp eq i32 %122, 0
  br i1 %tobool.not.i94, label %for.body.i95.for.inc.i98_crit_edge, label %if.then.i

for.body.i95.for.inc.i98_crit_edge:               ; preds = %for.body.i95
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i98

if.then.i:                                        ; preds = %for.body.i95
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i = getelementptr %struct.firedtv, ptr %3, i32 0, i32 24, i32 %i.08.i
  %123 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %arrayidx.i, align 2
  %inc.i96 = add i32 %n.010.i, 1
  %arrayidx1.i = getelementptr i16, ptr %pids, i32 %n.010.i
  %125 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %124, ptr %arrayidx1.i, align 2
  br label %for.inc.i98

for.inc.i98:                                      ; preds = %if.then.i, %for.body.i95.for.inc.i98_crit_edge
  %n.1.i = phi i32 [ %inc.i96, %if.then.i ], [ %n.010.i, %for.body.i95.for.inc.i98_crit_edge ]
  %inc2.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i97 = icmp eq i32 %inc2.i, 16
  br i1 %exitcond.not.i97, label %collect_channels.exit, label %for.inc.i98.for.body.i95_crit_edge

for.inc.i98.for.body.i95_crit_edge:               ; preds = %for.inc.i98
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i95

collect_channels.exit:                            ; preds = %for.inc.i98
  %126 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %127)
  %cmp24 = icmp eq i16 %127, 8192
  br i1 %cmp24, label %if.then26, label %if.else35

if.then26:                                        ; preds = %collect_channels.exit
  %call27 = tail call i32 @avc_tuner_get_ts(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then26.out_crit_edge, label %if.then29

if.then26.out_crit_edge:                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then29:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  %shl.i.i100 = shl nuw i32 1, %c.0
  %neg.i.i = xor i32 %shl.i.i100, -1
  %128 = ptrtoint ptr %channel_active.i93 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %channel_active.i93, align 4
  %and.i.i = and i32 %129, %neg.i.i
  store i32 %and.i.i, ptr %channel_active.i93, align 4
  %130 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %131, ptr noundef nonnull @.str.12) #7
  br label %out

if.else35:                                        ; preds = %collect_channels.exit
  %conv36 = trunc i32 %n.1.i to i8
  %call38 = call i32 @avc_tuner_set_pids(ptr noundef %3, i8 noundef zeroext %conv36, ptr noundef nonnull %pids) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.else35.out_crit_edge, label %if.then40

if.else35.out_crit_edge:                          ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then40:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #6
  %shl.i.i104 = shl nuw i32 1, %c.0
  %neg.i.i107 = xor i32 %shl.i.i104, -1
  %132 = ptrtoint ptr %channel_active.i93 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %channel_active.i93, align 4
  %and.i.i108 = and i32 %133, %neg.i.i107
  store i32 %and.i.i108, ptr %channel_active.i93, align 4
  %134 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %3, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %135, ptr noundef nonnull @.str.15) #7
  br label %out

out:                                              ; preds = %if.then40, %if.else35.out_crit_edge, %if.then29, %if.then26.out_crit_edge, %do.end19, %do.end9
  %ret.0 = phi i32 [ -22, %do.end9 ], [ -16, %do.end19 ], [ %call27, %if.then29 ], [ 0, %if.then26.out_crit_edge ], [ %call38, %if.then40 ], [ 0, %if.else35.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %demux_mutex) #4
  br label %cleanup

cleanup:                                          ; preds = %out, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.0, %out ], [ -4, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pids) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avc_tuner_get_ts(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avc_tuner_set_pids(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdtv_stop_feed(ptr nocapture noundef readonly %dvbdmxfeed) #0 align 64 {
entry:
  %pids = alloca [16 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %demux1 = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 2
  %0 = ptrtoint ptr %demux1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux1, align 4
  %priv = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pids) #4
  %type = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 4
  %4 = call ptr @memset(ptr %pids, i32 255, i32 32)
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

land.lhs.true:                                    ; preds = %entry
  %ts_type = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 10
  %7 = ptrtoint ptr %ts_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ts_type, align 8
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true2

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

land.lhs.true2:                                   ; preds = %land.lhs.true
  %frontend = getelementptr inbounds %struct.dmx_demux, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %frontend, align 4
  %source = getelementptr inbounds %struct.dmx_frontend, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %source, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp3.not = icmp eq i32 %12, 0
  br i1 %cmp3.not, label %land.lhs.true2.if.then_crit_edge, label %land.lhs.true2.if.end29_crit_edge

land.lhs.true2.if.end29_crit_edge:                ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

land.lhs.true2.if.then_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %land.lhs.true2.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %and5 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.then.if.end19_crit_edge, label %if.then7

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.then7:                                         ; preds = %if.then
  %pes_type = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 11
  %13 = ptrtoint ptr %pes_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pes_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %14)
  %cmp8 = icmp ugt i32 %14, 19
  br i1 %cmp8, label %if.then7.cleanup_crit_edge, label %lor.lhs.false

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then7
  %arrayidx = getelementptr %struct.dvb_demux, ptr %1, i32 0, i32 13, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %tobool10.not = icmp eq ptr %16, null
  br i1 %tobool10.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx14 = getelementptr %struct.dvb_demux, ptr %1, i32 0, i32 14, i32 %14
  %17 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx14, align 2
  %19 = or i16 %18, -32768
  store i16 %19, ptr %arrayidx14, align 2
  %20 = ptrtoint ptr %pes_type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pes_type, align 4
  %arrayidx18 = getelementptr %struct.dvb_demux, ptr %1, i32 0, i32 13, i32 %21
  %22 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %arrayidx18, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end, %if.then.if.end19_crit_edge
  %23 = ptrtoint ptr %ts_type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ts_type, align 8
  %and21 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end19.cleanup_crit_edge, label %land.lhs.true23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true23:                                  ; preds = %if.end19
  %pes_type24 = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 11
  %25 = ptrtoint ptr %pes_type24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pes_type24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %26)
  %cmp25 = icmp ult i32 %26, 20
  br i1 %cmp25, label %land.lhs.true23.if.end29_crit_edge, label %land.lhs.true23.cleanup_crit_edge

land.lhs.true23.cleanup_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true23.if.end29_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.end29:                                         ; preds = %land.lhs.true23.if.end29_crit_edge, %land.lhs.true2.if.end29_crit_edge, %entry.if.end29_crit_edge
  %demux_mutex = getelementptr inbounds %struct.firedtv, ptr %3, i32 0, i32 22
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %demux_mutex, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool30.not = icmp eq i32 %call, 0
  br i1 %tobool30.not, label %if.end32, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end32:                                         ; preds = %if.end29
  %priv33 = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 3
  %27 = ptrtoint ptr %priv33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv33, align 8
  %29 = ptrtoint ptr %28 to i32
  %channel_active.i = getelementptr inbounds %struct.firedtv, ptr %3, i32 0, i32 23
  %rem.i.i = and i32 %29, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %29, 5
  %add.ptr.i.i = getelementptr i32, ptr %channel_active.i, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %30 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %31, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end32
  %n.010.i = phi i32 [ 0, %if.end32 ], [ %n.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.08.i = phi i32 [ 0, %if.end32 ], [ %inc2.i, %for.inc.i.for.body.i_crit_edge ]
  %div3.i.i = lshr i32 %i.08.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %channel_active.i, i32 %div3.i.i
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %arrayidx.i.i, align 4
  %34 = shl nuw i32 1, %i.08.i
  %35 = and i32 %33, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i = getelementptr %struct.firedtv, ptr %3, i32 0, i32 24, i32 %i.08.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx.i, align 2
  %inc.i = add i32 %n.010.i, 1
  %arrayidx1.i = getelementptr i16, ptr %pids, i32 %n.010.i
  %38 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %arrayidx1.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %n.1.i = phi i32 [ %inc.i, %if.then.i ], [ %n.010.i, %for.body.i.for.inc.i_crit_edge ]
  %inc2.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc2.i, 16
  br i1 %exitcond.not.i, label %collect_channels.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

collect_channels.exit:                            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv34 = trunc i32 %n.1.i to i8
  %call36 = call i32 @avc_tuner_set_pids(ptr noundef %3, i8 noundef zeroext %conv34, ptr noundef nonnull %pids) #4
  call void @mutex_unlock(ptr noundef %demux_mutex) #4
  br label %cleanup

cleanup:                                          ; preds = %collect_channels.exit, %if.end29.cleanup_crit_edge, %land.lhs.true23.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then7.cleanup_crit_edge
  %retval.0 = phi i32 [ %call36, %collect_channels.exit ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.then7.cleanup_crit_edge ], [ 0, %land.lhs.true23.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ], [ -4, %if.end29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pids) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdtv_dvb_register(ptr noundef %fdtv, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 2
  %0 = ptrtoint ptr %fdtv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fdtv, align 8
  %call = tail call i32 @dvb_register_adapter(ptr noundef %adapter, ptr noundef %name, ptr noundef null, ptr noundef %1, ptr noundef nonnull @adapter_nr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.do.end77_crit_edge, label %if.end

entry.do.end77_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end77

if.end:                                           ; preds = %entry
  %demux = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 4
  %2 = ptrtoint ptr %demux to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %demux, align 8
  %priv = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %fdtv, ptr %priv, align 4
  %filternum = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %filternum to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16, ptr %filternum, align 8
  %feednum = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 4, i32 3
  %5 = ptrtoint ptr %feednum to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16, ptr %feednum, align 4
  %start_feed = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 4, i32 4
  %6 = ptrtoint ptr %start_feed to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @fdtv_start_feed, ptr %start_feed, align 8
  %stop_feed = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 4, i32 5
  %7 = ptrtoint ptr %stop_feed to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @fdtv_stop_feed, ptr %stop_feed, align 4
  %write_to_decoder = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 4, i32 6
  %8 = ptrtoint ptr %write_to_decoder to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %write_to_decoder, align 8
  %call8 = tail call i32 @dvb_dmx_init(ptr noundef %demux) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end10, label %if.end.fail_unreg_adapter_crit_edge

if.end.fail_unreg_adapter_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail_unreg_adapter

if.end10:                                         ; preds = %if.end
  %dmxdev = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 3
  %filternum11 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 3, i32 4
  %9 = ptrtoint ptr %filternum11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 16, ptr %filternum11, align 4
  %demux15 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %demux15 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %demux, ptr %demux15, align 4
  %capabilities17 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 3, i32 5
  %11 = ptrtoint ptr %capabilities17 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %capabilities17, align 4
  %call20 = tail call i32 @dvb_dmxdev_init(ptr noundef %dmxdev, ptr noundef %adapter) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end10.fail_dmx_release_crit_edge

if.end10.fail_dmx_release_crit_edge:              ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail_dmx_release

if.end23:                                         ; preds = %if.end10
  %frontend = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 5
  %source = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %source to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %source, align 8
  %add_frontend = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 4, i32 0, i32 10
  %13 = ptrtoint ptr %add_frontend to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add_frontend, align 8
  %call29 = tail call i32 %14(ptr noundef %demux, ptr noundef %frontend) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end23.fail_dmxdev_release_crit_edge

if.end23.fail_dmxdev_release_crit_edge:           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail_dmxdev_release

if.end32:                                         ; preds = %if.end23
  %connect_frontend = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 4, i32 0, i32 13
  %15 = ptrtoint ptr %connect_frontend to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %connect_frontend, align 4
  %call38 = tail call i32 %16(ptr noundef %demux, ptr noundef %frontend) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end32.fail_rem_frontend_crit_edge

if.end32.fail_rem_frontend_crit_edge:             ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail_rem_frontend

if.end41:                                         ; preds = %if.end32
  %dvbnet = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 6
  %call45 = tail call i32 @dvb_net_init(ptr noundef %adapter, ptr noundef %dvbnet, ptr noundef %demux) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end41.fail_disconnect_frontend_crit_edge

if.end41.fail_disconnect_frontend_crit_edge:      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail_disconnect_frontend

if.end48:                                         ; preds = %if.end41
  tail call void @fdtv_frontend_init(ptr noundef %fdtv, ptr noundef %name) #4
  %fe = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7
  %call50 = tail call i32 @dvb_register_frontend(ptr noundef %adapter, ptr noundef %fe) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %fail_net_release

if.end53:                                         ; preds = %if.end48
  %call54 = tail call i32 @fdtv_ca_register(ptr noundef %fdtv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end53.cleanup_crit_edge, label %do.end

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %fdtv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fdtv, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.17) #7
  br label %cleanup

fail_net_release:                                 ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dvb_net_release(ptr noundef %dvbnet) #4
  br label %fail_disconnect_frontend

fail_disconnect_frontend:                         ; preds = %fail_net_release, %if.end41.fail_disconnect_frontend_crit_edge
  %err.0 = phi i32 [ %call45, %if.end41.fail_disconnect_frontend_crit_edge ], [ %call50, %fail_net_release ]
  %close = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 4, i32 0, i32 4
  %19 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %close, align 8
  %call64 = tail call i32 %20(ptr noundef %demux) #4
  br label %fail_rem_frontend

fail_rem_frontend:                                ; preds = %fail_disconnect_frontend, %if.end32.fail_rem_frontend_crit_edge
  %err.1 = phi i32 [ %call38, %if.end32.fail_rem_frontend_crit_edge ], [ %err.0, %fail_disconnect_frontend ]
  %remove_frontend = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 4, i32 0, i32 11
  %21 = ptrtoint ptr %remove_frontend to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %remove_frontend, align 4
  %call70 = tail call i32 %22(ptr noundef %demux, ptr noundef %frontend) #4
  br label %fail_dmxdev_release

fail_dmxdev_release:                              ; preds = %fail_rem_frontend, %if.end23.fail_dmxdev_release_crit_edge
  %err.2 = phi i32 [ %call29, %if.end23.fail_dmxdev_release_crit_edge ], [ %err.1, %fail_rem_frontend ]
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev) #4
  br label %fail_dmx_release

fail_dmx_release:                                 ; preds = %fail_dmxdev_release, %if.end10.fail_dmx_release_crit_edge
  %err.3 = phi i32 [ %call20, %if.end10.fail_dmx_release_crit_edge ], [ %err.2, %fail_dmxdev_release ]
  tail call void @dvb_dmx_release(ptr noundef %demux) #4
  br label %fail_unreg_adapter

fail_unreg_adapter:                               ; preds = %fail_dmx_release, %if.end.fail_unreg_adapter_crit_edge
  %err.4 = phi i32 [ %call8, %if.end.fail_unreg_adapter_crit_edge ], [ %err.3, %fail_dmx_release ]
  %call74 = tail call i32 @dvb_unregister_adapter(ptr noundef %adapter) #4
  br label %do.end77

do.end77:                                         ; preds = %fail_unreg_adapter, %entry.do.end77_crit_edge
  %err.5 = phi i32 [ %call, %entry.do.end77_crit_edge ], [ %err.4, %fail_unreg_adapter ]
  %23 = ptrtoint ptr %fdtv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fdtv, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.21) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end77, %do.end, %if.end53.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.5, %do.end77 ], [ 0, %do.end ], [ 0, %if.end53.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_adapter(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmx_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmxdev_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_net_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fdtv_frontend_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_frontend(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdtv_ca_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_net_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmxdev_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_adapter(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fdtv_dvb_unregister(ptr noundef %fdtv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @fdtv_ca_release(ptr noundef %fdtv) #4
  %fe = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7
  %call = tail call i32 @dvb_unregister_frontend(ptr noundef %fe) #4
  %dvbnet = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 6
  tail call void @dvb_net_release(ptr noundef %dvbnet) #4
  %demux = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 4
  %close = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 4, i32 0, i32 4
  %0 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %close, align 8
  %call3 = tail call i32 %1(ptr noundef %demux) #4
  %remove_frontend = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 4, i32 0, i32 11
  %2 = ptrtoint ptr %remove_frontend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remove_frontend, align 4
  %frontend = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 5
  %call8 = tail call i32 %3(ptr noundef %demux, ptr noundef %frontend) #4
  %dmxdev = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 3
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev) #4
  tail call void @dvb_dmx_release(ptr noundef %demux) #4
  %adapter = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 2
  %call10 = tail call i32 @dvb_unregister_adapter(ptr noundef %adapter) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fdtv_ca_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_frontend(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !34, !36, !37, !38, !39, !40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/firewire/firedtv-dvb.c", i32 60, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @fdtv_start_feed._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @fdtv_start_feed._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/firewire/firedtv-dvb.c", i32 78, i32 4}
!10 = !{ptr @fdtv_start_feed._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @fdtv_start_feed._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/firewire/firedtv-dvb.c", i32 89, i32 3}
!14 = !{ptr @fdtv_start_feed._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @fdtv_start_feed._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/firewire/firedtv-dvb.c", i32 102, i32 4}
!18 = !{ptr @fdtv_start_feed._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @fdtv_start_feed._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/firewire/firedtv-dvb.c", i32 109, i32 4}
!22 = !{ptr @fdtv_start_feed._entry.14, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @fdtv_start_feed._entry_ptr.16, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @__param_adapter_nr, !25, !"__param_adapter_nr", i1 false, i1 false}
!25 = !{!"../drivers/media/firewire/firedtv-dvb.c", i32 158, i32 1}
!26 = !{ptr @__UNIQUE_ID_adapter_nrtype381, !25, !"__UNIQUE_ID_adapter_nrtype381", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_adapter_nr382, !25, !"__UNIQUE_ID_adapter_nr382", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/firewire/firedtv-dvb.c", i32 213, i32 3}
!30 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.19, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @fdtv_dvb_register._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @fdtv_dvb_register._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/firewire/firedtv-dvb.c", i32 230, i32 2}
!36 = !{ptr @fdtv_dvb_register._entry.20, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @fdtv_dvb_register._entry_ptr.22, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @__param_str_adapter_nr, !25, !"__param_str_adapter_nr", i1 false, i1 false}
!39 = !{ptr @__param_arr_adapter_nr, !25, !"__param_arr_adapter_nr", i1 false, i1 false}
!40 = !{ptr @adapter_nr, !25, !"adapter_nr", i1 false, i1 false}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}

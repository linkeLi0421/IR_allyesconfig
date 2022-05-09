; ModuleID = '/llk/IR_all_yes/drivers/media/usb/pvrusb2/pvrusb2-encoder.c_pt.bc'
source_filename = "../drivers/media/usb/pvrusb2/pvrusb2-encoder.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pvr2_hdw = type { ptr, ptr, %struct.v4l2_device, ptr, %struct.work_struct, ptr, %struct.mutex, i32, [32 x i8], [32 x i8], %struct.i2c_adapter, %struct.i2c_algorithm, [128 x ptr], i32, i32, i32, %struct.IR_i2c_init_data, [500 x i32], i32, %struct.mutex, i32, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.completion, [64 x i8], i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_tuner, i32, %struct.v4l2_cropcap, i32, i64, i64, i64, i32, i32, %struct.pvr2_ctl_info, %struct.pvr2_ctl_info, %struct.pvr2_ctl_info, %struct.pvr2_ctl_info, [32 x ptr], [32 x [16 x i8]], i32, i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_cropcap = type { i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_fract }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.pvr2_ctl_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %union.anon.143 }
%union.anon.143 = type { %struct.anon.144 }
%struct.anon.144 = type { i32, i32 }
%struct.cx2341x_mpeg_params = type { i32, i32, i16, i16, i16, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i16, i32, i32, i32, i16, i32, i16, i16, i16, i16 }
%struct.pvr2_device_desc = type { ptr, ptr, %struct.pvr2_string_table, %struct.pvr2_device_client_table, %struct.pvr2_string_table, ptr, i64, i32, i8, i8, i8, i8, i16 }
%struct.pvr2_device_client_table = type { ptr, i8 }
%struct.pvr2_string_table = type { ptr, i32 }
%struct.__va_list = type { ptr }

@pvrusb2_debug = external dso_local local_unnamed_addr global i32, align 4
@pvr2_encoder_adjust._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016pvrusb2: Error from cx2341x module code=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pvr2_encoder_adjust\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/media/usb/pvrusb2/pvrusb2-encoder.c\00", [52 x i8] zeroinitializer }, align 32
@pvr2_encoder_adjust._entry_ptr = internal global ptr @pvr2_encoder_adjust._entry, section ".printk_index", align 4
@pvr2_encoder_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016pvrusb2: pvr2_encoder_configure (cx2341x module)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pvr2_encoder_configure\00", [41 x i8] zeroinitializer }, align 32
@pvr2_encoder_configure._entry_ptr = internal global ptr @pvr2_encoder_configure._entry, section ".printk_index", align 4
@pvr2_encoder_configure._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016pvrusb2: Failed to configure cx23416\0A\00", [56 x i8] zeroinitializer }, align 32
@pvr2_encoder_configure._entry_ptr.7 = internal global ptr @pvr2_encoder_configure._entry.5, section ".printk_index", align 4
@pvr2_encoder_configure._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.2, i32 455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016pvrusb2: Failed to initialize cx23416 video input\0A\00", [43 x i8] zeroinitializer }, align 32
@pvr2_encoder_configure._entry_ptr.10 = internal global ptr @pvr2_encoder_configure._entry.8, section ".printk_index", align 4
@pvr2_encoder_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\016pvrusb2: Failed to write cx23416 command - too many input arguments (was given %u limit %lu)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pvr2_encoder_cmd\00", [47 x i8] zeroinitializer }, align 32
@pvr2_encoder_cmd._entry_ptr = internal global ptr @pvr2_encoder_cmd._entry, section ".printk_index", align 4
@pvr2_encoder_cmd._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"\016pvrusb2: Failed to write cx23416 command - too many return arguments (was given %u limit %lu)\0A\00", [63 x i8] zeroinitializer }, align 32
@pvr2_encoder_cmd._entry_ptr.15 = internal global ptr @pvr2_encoder_cmd._entry.13, section ".printk_index", align 4
@pvr2_encoder_cmd._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.2, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016pvrusb2: Encoder timed out waiting for us; arranging to retry\0A\00", [63 x i8] zeroinitializer }, align 32
@pvr2_encoder_cmd._entry_ptr.18 = internal global ptr @pvr2_encoder_cmd._entry.16, section ".printk_index", align 4
@pvr2_encoder_cmd._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.2, i32 238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\016pvrusb2: ***WARNING*** device's encoder appears to be stuck (status=0x%08x)\0A\00", [49 x i8] zeroinitializer }, align 32
@pvr2_encoder_cmd._entry_ptr.21 = internal global ptr @pvr2_encoder_cmd._entry.19, section ".printk_index", align 4
@pvr2_encoder_cmd._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.12, ptr @.str.2, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016pvrusb2: Encoder command: 0x%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@pvr2_encoder_cmd._entry_ptr.24 = internal global ptr @pvr2_encoder_cmd._entry.22, section ".printk_index", align 4
@pvr2_encoder_cmd._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.12, ptr @.str.2, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016pvrusb2: Encoder arg%d: 0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@pvr2_encoder_cmd._entry_ptr.27 = internal global ptr @pvr2_encoder_cmd._entry.25, section ".printk_index", align 4
@pvr2_encoder_cmd._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.12, ptr @.str.2, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016pvrusb2: Too many retries...\0A\00", [32 x i8] zeroinitializer }, align 32
@pvr2_encoder_cmd._entry_ptr.30 = internal global ptr @pvr2_encoder_cmd._entry.28, section ".printk_index", align 4
@pvr2_encoder_cmd._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.12, ptr @.str.2, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016pvrusb2: State bit %s <-- %s\0A\00", [32 x i8] zeroinitializer }, align 32
@pvr2_encoder_cmd._entry_ptr.33 = internal global ptr @pvr2_encoder_cmd._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"state_encoder_ok\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@pvr2_encoder_cmd._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.12, ptr @.str.2, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pvr2_encoder_cmd._entry_ptr.38 = internal global ptr @pvr2_encoder_cmd._entry.37, section ".printk_index", align 4
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"state_encoder_runok\00", [44 x i8] zeroinitializer }, align 32
@pvr2_encoder_cmd._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.12, ptr @.str.2, i32 276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [173 x i8], [51 x i8] } { [173 x i8] c"\016pvrusb2: Giving up on command.  This is normally recovered via a firmware reload and re-initialization; concern is only warranted if this happens repeatedly and rapidly.\0A\00", [51 x i8] zeroinitializer }, align 32
@pvr2_encoder_cmd._entry_ptr.42 = internal global ptr @pvr2_encoder_cmd._entry.40, section ".printk_index", align 4
@pvr2_encoder_vcmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\016pvrusb2: Failed to write cx23416 command - too many arguments (was given %u limit %lu)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pvr2_encoder_vcmd\00", [46 x i8] zeroinitializer }, align 32
@pvr2_encoder_vcmd._entry_ptr = internal global ptr @pvr2_encoder_vcmd._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 396, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 410, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 442, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 454, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 175, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 183, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 231, i32 5 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 235, i32 5 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 240, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 244, i32 5 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 254, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 262, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 268, i32 5 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 274, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.155 = private constant [47 x i8] c"../drivers/media/usb/pvrusb2/pvrusb2-encoder.c\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 302, i32 3 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @pvr2_encoder_adjust._entry, ptr @pvr2_encoder_adjust._entry_ptr, ptr @pvr2_encoder_cmd._entry, ptr @pvr2_encoder_cmd._entry.13, ptr @pvr2_encoder_cmd._entry.16, ptr @pvr2_encoder_cmd._entry.19, ptr @pvr2_encoder_cmd._entry.22, ptr @pvr2_encoder_cmd._entry.25, ptr @pvr2_encoder_cmd._entry.28, ptr @pvr2_encoder_cmd._entry.31, ptr @pvr2_encoder_cmd._entry.37, ptr @pvr2_encoder_cmd._entry.40, ptr @pvr2_encoder_cmd._entry_ptr, ptr @pvr2_encoder_cmd._entry_ptr.15, ptr @pvr2_encoder_cmd._entry_ptr.18, ptr @pvr2_encoder_cmd._entry_ptr.21, ptr @pvr2_encoder_cmd._entry_ptr.24, ptr @pvr2_encoder_cmd._entry_ptr.27, ptr @pvr2_encoder_cmd._entry_ptr.30, ptr @pvr2_encoder_cmd._entry_ptr.33, ptr @pvr2_encoder_cmd._entry_ptr.38, ptr @pvr2_encoder_cmd._entry_ptr.42, ptr @pvr2_encoder_configure._entry, ptr @pvr2_encoder_configure._entry.5, ptr @pvr2_encoder_configure._entry.8, ptr @pvr2_encoder_configure._entry_ptr, ptr @pvr2_encoder_configure._entry_ptr.10, ptr @pvr2_encoder_configure._entry_ptr.7, ptr @pvr2_encoder_vcmd._entry, ptr @pvr2_encoder_vcmd._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_encoder_adjust._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_encoder_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_encoder_configure._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_encoder_configure._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_encoder_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_encoder_cmd._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_encoder_cmd._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_encoder_cmd._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_encoder_cmd._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_encoder_cmd._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_encoder_cmd._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_encoder_cmd._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_encoder_cmd._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_encoder_cmd._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 173, i32 224, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_encoder_vcmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvr2_encoder_adjust(ptr noundef %hdw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %enc_cur_valid = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 109
  %0 = ptrtoint ptr %enc_cur_valid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enc_cur_valid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %enc_cur_state = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 105
  %spec.select = select i1 %tobool.not, ptr null, ptr %enc_cur_state
  %enc_ctl_state = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 106
  %call = tail call i32 @cx2341x_update(ptr noundef %hdw, ptr noundef nonnull @pvr2_encoder_cmd, ptr noundef %spec.select, ptr noundef %enc_ctl_state) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %2 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.if.end11_crit_edge, label %do.end

do.body.if.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call) #9
  br label %if.end11

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = call ptr @memcpy(ptr %enc_cur_state, ptr %enc_ctl_state, i32 140)
  %4 = ptrtoint ptr %enc_cur_valid to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %enc_cur_valid, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.else, %do.end, %do.body.if.end11_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx2341x_update(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_encoder_cmd(ptr noundef %ctxt, i32 noundef %cmd, i32 noundef %arg_cnt_send, i32 noundef %arg_cnt_recv, ptr nocapture noundef %argp) #0 align 64 {
entry:
  %wrData = alloca [16 x i32], align 4
  %rdData = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %wrData) #6
  %0 = getelementptr inbounds i8, ptr %wrData, i32 16
  %1 = call ptr @memset(ptr %0, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rdData) #6
  %2 = call ptr @memset(ptr %rdData, i32 255, i32 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %arg_cnt_send)
  %cmp = icmp ugt i32 %arg_cnt_send, 12
  br i1 %cmp, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %3 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %arg_cnt_send, i32 noundef 12) #9
  br label %cleanup

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %arg_cnt_recv)
  %cmp6 = icmp ugt i32 %arg_cnt_recv, 12
  br i1 %cmp6, label %do.body8, label %do.body21

do.body8:                                         ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %4 = load i32, ptr @pvrusb2_debug, align 4
  %and9 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.body8.cleanup_crit_edge, label %do.end14

do.body8.cleanup_crit_edge:                       ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end14:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %arg_cnt_recv, i32 noundef 12) #9
  br label %cleanup

do.body21:                                        ; preds = %if.end5
  %ctl_lock_mutex = getelementptr inbounds %struct.pvr2_hdw, ptr %ctxt, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %ctl_lock_mutex, i32 noundef 0) #6
  %ctl_lock_held = getelementptr inbounds %struct.pvr2_hdw, ptr %ctxt, i32 0, i32 20
  %5 = ptrtoint ptr %ctl_lock_held to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %ctl_lock_held, align 8
  %state_encoder_ok = getelementptr inbounds %struct.pvr2_hdw, ptr %ctxt, i32 0, i32 35
  %arrayidx27 = getelementptr inbounds [16 x i32], ptr %wrData, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [16 x i32], ptr %wrData, i32 0, i32 2
  %arrayidx29 = getelementptr inbounds [16 x i32], ptr %wrData, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg_cnt_send)
  %cmp30287.not = icmp eq i32 %arg_cnt_send, 0
  %add56 = add nuw nsw i32 %arg_cnt_recv, 4
  %cmd_buffer.i = getelementptr inbounds %struct.pvr2_hdw, ptr %ctxt, i32 0, i32 29
  %arrayidx6.i = getelementptr %struct.pvr2_hdw, ptr %ctxt, i32 0, i32 29, i32 1
  %arrayidx15.i = getelementptr %struct.pvr2_hdw, ptr %ctxt, i32 0, i32 29, i32 5
  %arrayidx20.i = getelementptr %struct.pvr2_hdw, ptr %ctxt, i32 0, i32 29, i32 6
  %arrayidx24.i = getelementptr %struct.pvr2_hdw, ptr %ctxt, i32 0, i32 29, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %arg_cnt_send)
  %cmp113292 = icmp ugt i32 %arg_cnt_send, 4
  %uglygep = getelementptr inbounds i8, ptr %wrData, i32 16
  %6 = shl nuw nsw i32 %arg_cnt_send, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %arg_cnt_send)
  %cmp35289 = icmp ult i32 %arg_cnt_send, 12
  %7 = shl i32 %arg_cnt_send, 2
  %uglygep301 = getelementptr i8, ptr %uglygep, i32 %7
  %8 = sub i32 48, %7
  %arrayidx123 = getelementptr inbounds [16 x i32], ptr %wrData, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %arg_cnt_send)
  %exitcond.not = icmp eq i32 %arg_cnt_send, 5
  %arrayidx123.1 = getelementptr inbounds [16 x i32], ptr %wrData, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %arg_cnt_send)
  %exitcond.not.1 = icmp eq i32 %arg_cnt_send, 6
  %arrayidx123.2 = getelementptr inbounds [16 x i32], ptr %wrData, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %arg_cnt_send)
  %exitcond.not.2 = icmp eq i32 %arg_cnt_send, 7
  %arrayidx123.3 = getelementptr inbounds [16 x i32], ptr %wrData, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %arg_cnt_send)
  %exitcond.not.3 = icmp eq i32 %arg_cnt_send, 8
  %arrayidx123.4 = getelementptr inbounds [16 x i32], ptr %wrData, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %arg_cnt_send)
  %exitcond.not.4 = icmp eq i32 %arg_cnt_send, 9
  %arrayidx123.5 = getelementptr inbounds [16 x i32], ptr %wrData, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %arg_cnt_send)
  %exitcond.not.5 = icmp eq i32 %arg_cnt_send, 10
  %arrayidx123.6 = getelementptr inbounds [16 x i32], ptr %wrData, i32 0, i32 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %arg_cnt_send)
  %exitcond.not.6 = icmp eq i32 %arg_cnt_send, 11
  %arrayidx123.7 = getelementptr inbounds [16 x i32], ptr %wrData, i32 0, i32 11
  br label %while.cond

while.cond:                                       ; preds = %if.then132.while.cond_crit_edge, %do.body21
  %try_count.0 = phi i32 [ 0, %do.body21 ], [ %inc, %if.then132.while.cond_crit_edge ]
  %9 = ptrtoint ptr %state_encoder_ok to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state_encoder_ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool24.not = icmp eq i32 %10, 0
  br i1 %tobool24.not, label %while.cond.do.body213_crit_edge, label %if.end26

while.cond.do.body213_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body213

if.end26:                                         ; preds = %while.cond
  %inc = add nuw nsw i32 %try_count.0, 1
  %11 = ptrtoint ptr %wrData to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %wrData, align 4
  %12 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cmd, ptr %arrayidx27, align 4
  %13 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %arrayidx28, align 4
  %14 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 393216, ptr %arrayidx29, align 4
  br i1 %cmp30287.not, label %if.end26.for.body36.preheader_crit_edge, label %for.cond34.preheader

if.end26.for.body36.preheader_crit_edge:          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body36.preheader

for.cond34.preheader:                             ; preds = %if.end26
  %15 = call ptr @memcpy(ptr %uglygep, ptr %argp, i32 %6)
  br i1 %cmp35289, label %for.cond34.preheader.for.body36.preheader_crit_edge, label %for.cond34.preheader.for.end41_crit_edge

for.cond34.preheader.for.end41_crit_edge:         ; preds = %for.cond34.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end41

for.cond34.preheader.for.body36.preheader_crit_edge: ; preds = %for.cond34.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body36.preheader

for.body36.preheader:                             ; preds = %for.cond34.preheader.for.body36.preheader_crit_edge, %if.end26.for.body36.preheader_crit_edge
  %16 = call ptr @memset(ptr %uglygep301, i32 0, i32 %8)
  br label %for.end41

for.end41:                                        ; preds = %for.body36.preheader, %for.cond34.preheader.for.end41_crit_edge
  %idx.1.lcssa = phi i32 [ %arg_cnt_send, %for.cond34.preheader.for.end41_crit_edge ], [ 12, %for.body36.preheader ]
  %call42 = call fastcc i32 @pvr2_encoder_write_words(ptr noundef %ctxt, ptr noundef nonnull %wrData, i32 noundef %idx.1.lcssa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %for.end41.do.body213_crit_edge

for.end41.do.body213_crit_edge:                   ; preds = %for.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body213

if.end45:                                         ; preds = %for.end41
  %17 = ptrtoint ptr %wrData to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %wrData, align 4
  %call48 = call fastcc i32 @pvr2_encoder_write_words(ptr noundef %ctxt, ptr noundef nonnull %wrData, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end45.while.cond52_crit_edge, label %if.end45.do.body213_crit_edge

if.end45.do.body213_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body213

if.end45.while.cond52_crit_edge:                  ; preds = %if.end45
  br label %while.cond52

while.cond52:                                     ; preds = %if.end65.while.cond52_crit_edge, %if.end45.while.cond52_crit_edge
  %poll_count.0 = phi i32 [ %inc54, %if.end65.while.cond52_crit_edge ], [ 0, %if.end45.while.cond52_crit_edge ]
  %inc54 = add nuw nsw i32 %poll_count.0, 1
  br label %while.body.i

while.body.i:                                     ; preds = %for.end.i.while.body.i_crit_edge, %while.cond52
  %dlen.addr.06.i = phi i32 [ %sub.i, %for.end.i.while.body.i_crit_edge ], [ %add56, %while.cond52 ]
  %data.addr.05.i = phi ptr [ %add.ptr.i, %for.end.i.while.body.i_crit_edge ], [ %rdData, %while.cond52 ]
  %offs.addr.04.i = phi i32 [ %add58.i, %for.end.i.while.body.i_crit_edge ], [ 68, %while.cond52 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %dlen.addr.06.i)
  %cmp.i = icmp ult i32 %dlen.addr.06.i, 16
  %18 = tail call i32 @llvm.umin.i32(i32 %dlen.addr.06.i, i32 16) #6
  %spec.store.select.i = select i1 %cmp.i, i32 1, i32 %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.store.select.i)
  %cmp4.i = icmp eq i32 %spec.store.select.i, 1
  %conv.i = select i1 %cmp4.i, i8 2, i8 40
  %19 = ptrtoint ptr %cmd_buffer.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv.i, ptr %cmd_buffer.i, align 8
  %shr.i = lshr i32 %offs.addr.04.i, 16
  %conv13.i = trunc i32 %shr.i to i8
  %20 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 0, ptr %arrayidx6.i, align 1
  %21 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv13.i, ptr %arrayidx15.i, align 1
  %shr16.i = lshr i32 %offs.addr.04.i, 8
  %conv18.i = trunc i32 %shr16.i to i8
  %22 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv18.i, ptr %arrayidx20.i, align 2
  %conv22.i = trunc i32 %offs.addr.04.i to i8
  %23 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv22.i, ptr %arrayidx24.i, align 1
  %cond30.i = select i1 %cmp4.i, i32 4, i32 64
  %call.i = tail call i32 @pvr2_send_request(ptr noundef %ctxt, ptr noundef %cmd_buffer.i, i32 noundef 8, ptr noundef %cmd_buffer.i, i32 noundef %cond30.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool31.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool31.not.i, label %while.body.i.for.body.i_crit_edge, label %while.body.i.if.then150_crit_edge

while.body.i.if.then150_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then150

while.body.i.for.body.i_crit_edge:                ; preds = %while.body.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %while.body.i.for.body.i_crit_edge
  %idx.02.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %while.body.i.for.body.i_crit_edge ]
  %mul.i = shl i32 %idx.02.i, 2
  %add.i = or i32 %mul.i, 3
  %arrayidx37.i = getelementptr %struct.pvr2_hdw, ptr %ctxt, i32 0, i32 29, i32 %add.i
  %24 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx37.i, align 1
  %conv38.i = zext i8 %25 to i32
  %shl.i = shl nuw i32 %conv38.i, 24
  %add41.i = or i32 %mul.i, 2
  %arrayidx42.i = getelementptr %struct.pvr2_hdw, ptr %ctxt, i32 0, i32 29, i32 %add41.i
  %26 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx42.i, align 1
  %conv43.i = zext i8 %27 to i32
  %shl44.i = shl nuw nsw i32 %conv43.i, 16
  %or.i = or i32 %shl44.i, %shl.i
  %add47.i = or i32 %mul.i, 1
  %arrayidx48.i = getelementptr %struct.pvr2_hdw, ptr %ctxt, i32 0, i32 29, i32 %add47.i
  %28 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx48.i, align 1
  %conv49.i = zext i8 %29 to i32
  %shl50.i = shl nuw nsw i32 %conv49.i, 8
  %or51.i = or i32 %or.i, %shl50.i
  %arrayidx54.i = getelementptr %struct.pvr2_hdw, ptr %ctxt, i32 0, i32 29, i32 %mul.i
  %30 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx54.i, align 1
  %conv55.i = zext i8 %31 to i32
  %or56.i = or i32 %or51.i, %conv55.i
  %arrayidx57.i = getelementptr i32, ptr %data.addr.05.i, i32 %idx.02.i
  %32 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or56.i, ptr %arrayidx57.i, align 4
  %inc.i = add nuw nsw i32 %idx.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %spec.store.select.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %add.ptr.i = getelementptr i32, ptr %data.addr.05.i, i32 %spec.store.select.i
  %sub.i = sub i32 %dlen.addr.06.i, %spec.store.select.i
  %add58.i = add i32 %spec.store.select.i, %offs.addr.04.i
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %if.end60, label %for.end.i.while.body.i_crit_edge

for.end.i.while.body.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end60:                                         ; preds = %for.end.i
  %33 = ptrtoint ptr %rdData to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rdData, align 4
  %and62 = and i32 %34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end198

if.end65:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool67.not = icmp ne i32 %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %poll_count.0)
  %cmp68 = icmp ult i32 %poll_count.0, 999
  %or.cond = select i1 %tobool67.not, i1 %cmp68, i1 false
  br i1 %or.cond, label %if.end65.while.cond52_crit_edge, label %if.end70

if.end65.while.cond52_crit_edge:                  ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond52

if.end70:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool72.not = icmp eq i32 %34, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %35 = load i32, ptr @pvrusb2_debug, align 4
  %and75 = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool72.not, label %if.then73, label %do.body86

if.then73:                                        ; preds = %if.end70
  br i1 %tobool76.not, label %if.then73.do.body100_crit_edge, label %do.end80

if.then73.do.body100_crit_edge:                   ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body100

do.end80:                                         ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #8
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #9
  br label %do.body100

do.body86:                                        ; preds = %if.end70
  br i1 %tobool76.not, label %do.body86.do.body100_crit_edge, label %do.end92

do.body86.do.body100_crit_edge:                   ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body100

do.end92:                                         ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #8
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %34) #9
  br label %do.body100

do.body100:                                       ; preds = %do.end92, %do.body86.do.body100_crit_edge, %do.end80, %if.then73.do.body100_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %36 = load i32, ptr @pvrusb2_debug, align 4
  %and101 = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %do.body100.do.end111_crit_edge, label %do.end106

do.body100.do.end111_crit_edge:                   ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end111

do.end106:                                        ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #8
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %cmd) #9
  br label %do.end111

do.end111:                                        ; preds = %do.end106, %do.body100.do.end111_crit_edge
  br i1 %cmp113292, label %do.body115, label %do.end111.while.end_crit_edge

do.end111.while.end_crit_edge:                    ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

do.body115:                                       ; preds = %do.end111
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %37 = load i32, ptr @pvrusb2_debug, align 4
  %and116 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %do.body115.for.inc128_crit_edge, label %do.end121

do.body115.for.inc128_crit_edge:                  ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc128

do.end121:                                        ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx123, align 4
  %call124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef 1, i32 noundef %39) #9
  br label %for.inc128

for.inc128:                                       ; preds = %do.end121, %do.body115.for.inc128_crit_edge
  br i1 %exitcond.not, label %for.inc128.while.end_crit_edge, label %do.body115.1

for.inc128.while.end_crit_edge:                   ; preds = %for.inc128
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

do.body115.1:                                     ; preds = %for.inc128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %40 = load i32, ptr @pvrusb2_debug, align 4
  %and116.1 = and i32 %40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116.1)
  %tobool117.not.1 = icmp eq i32 %and116.1, 0
  br i1 %tobool117.not.1, label %do.body115.1.for.inc128.1_crit_edge, label %do.end121.1

do.body115.1.for.inc128.1_crit_edge:              ; preds = %do.body115.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc128.1

do.end121.1:                                      ; preds = %do.body115.1
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %arrayidx123.1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx123.1, align 4
  %call124.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef 2, i32 noundef %42) #9
  br label %for.inc128.1

for.inc128.1:                                     ; preds = %do.end121.1, %do.body115.1.for.inc128.1_crit_edge
  br i1 %exitcond.not.1, label %for.inc128.1.while.end_crit_edge, label %do.body115.2

for.inc128.1.while.end_crit_edge:                 ; preds = %for.inc128.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

do.body115.2:                                     ; preds = %for.inc128.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %43 = load i32, ptr @pvrusb2_debug, align 4
  %and116.2 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116.2)
  %tobool117.not.2 = icmp eq i32 %and116.2, 0
  br i1 %tobool117.not.2, label %do.body115.2.for.inc128.2_crit_edge, label %do.end121.2

do.body115.2.for.inc128.2_crit_edge:              ; preds = %do.body115.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc128.2

do.end121.2:                                      ; preds = %do.body115.2
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %arrayidx123.2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx123.2, align 4
  %call124.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef 3, i32 noundef %45) #9
  br label %for.inc128.2

for.inc128.2:                                     ; preds = %do.end121.2, %do.body115.2.for.inc128.2_crit_edge
  br i1 %exitcond.not.2, label %for.inc128.2.while.end_crit_edge, label %do.body115.3

for.inc128.2.while.end_crit_edge:                 ; preds = %for.inc128.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

do.body115.3:                                     ; preds = %for.inc128.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %46 = load i32, ptr @pvrusb2_debug, align 4
  %and116.3 = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116.3)
  %tobool117.not.3 = icmp eq i32 %and116.3, 0
  br i1 %tobool117.not.3, label %do.body115.3.for.inc128.3_crit_edge, label %do.end121.3

do.body115.3.for.inc128.3_crit_edge:              ; preds = %do.body115.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc128.3

do.end121.3:                                      ; preds = %do.body115.3
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %arrayidx123.3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx123.3, align 4
  %call124.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef 4, i32 noundef %48) #9
  br label %for.inc128.3

for.inc128.3:                                     ; preds = %do.end121.3, %do.body115.3.for.inc128.3_crit_edge
  br i1 %exitcond.not.3, label %for.inc128.3.while.end_crit_edge, label %do.body115.4

for.inc128.3.while.end_crit_edge:                 ; preds = %for.inc128.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

do.body115.4:                                     ; preds = %for.inc128.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %49 = load i32, ptr @pvrusb2_debug, align 4
  %and116.4 = and i32 %49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116.4)
  %tobool117.not.4 = icmp eq i32 %and116.4, 0
  br i1 %tobool117.not.4, label %do.body115.4.for.inc128.4_crit_edge, label %do.end121.4

do.body115.4.for.inc128.4_crit_edge:              ; preds = %do.body115.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc128.4

do.end121.4:                                      ; preds = %do.body115.4
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %arrayidx123.4 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx123.4, align 4
  %call124.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef 5, i32 noundef %51) #9
  br label %for.inc128.4

for.inc128.4:                                     ; preds = %do.end121.4, %do.body115.4.for.inc128.4_crit_edge
  br i1 %exitcond.not.4, label %for.inc128.4.while.end_crit_edge, label %do.body115.5

for.inc128.4.while.end_crit_edge:                 ; preds = %for.inc128.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

do.body115.5:                                     ; preds = %for.inc128.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %52 = load i32, ptr @pvrusb2_debug, align 4
  %and116.5 = and i32 %52, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116.5)
  %tobool117.not.5 = icmp eq i32 %and116.5, 0
  br i1 %tobool117.not.5, label %do.body115.5.for.inc128.5_crit_edge, label %do.end121.5

do.body115.5.for.inc128.5_crit_edge:              ; preds = %do.body115.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc128.5

do.end121.5:                                      ; preds = %do.body115.5
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %arrayidx123.5 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx123.5, align 4
  %call124.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef 6, i32 noundef %54) #9
  br label %for.inc128.5

for.inc128.5:                                     ; preds = %do.end121.5, %do.body115.5.for.inc128.5_crit_edge
  br i1 %exitcond.not.5, label %for.inc128.5.while.end_crit_edge, label %do.body115.6

for.inc128.5.while.end_crit_edge:                 ; preds = %for.inc128.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

do.body115.6:                                     ; preds = %for.inc128.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %55 = load i32, ptr @pvrusb2_debug, align 4
  %and116.6 = and i32 %55, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116.6)
  %tobool117.not.6 = icmp eq i32 %and116.6, 0
  br i1 %tobool117.not.6, label %do.body115.6.for.inc128.6_crit_edge, label %do.end121.6

do.body115.6.for.inc128.6_crit_edge:              ; preds = %do.body115.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc128.6

do.end121.6:                                      ; preds = %do.body115.6
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %arrayidx123.6 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx123.6, align 4
  %call124.6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef 7, i32 noundef %57) #9
  br label %for.inc128.6

for.inc128.6:                                     ; preds = %do.end121.6, %do.body115.6.for.inc128.6_crit_edge
  br i1 %exitcond.not.6, label %for.inc128.6.while.end_crit_edge, label %do.body115.7

for.inc128.6.while.end_crit_edge:                 ; preds = %for.inc128.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

do.body115.7:                                     ; preds = %for.inc128.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %58 = load i32, ptr @pvrusb2_debug, align 4
  %and116.7 = and i32 %58, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116.7)
  %tobool117.not.7 = icmp eq i32 %and116.7, 0
  br i1 %tobool117.not.7, label %do.body115.7.while.end_crit_edge, label %do.end121.7

do.body115.7.while.end_crit_edge:                 ; preds = %do.body115.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

do.end121.7:                                      ; preds = %do.body115.7
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %arrayidx123.7 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx123.7, align 4
  %call124.7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef 8, i32 noundef %60) #9
  br label %while.end

while.end:                                        ; preds = %do.end121.7, %do.body115.7.while.end_crit_edge, %for.inc128.6.while.end_crit_edge, %for.inc128.5.while.end_crit_edge, %for.inc128.4.while.end_crit_edge, %for.inc128.3.while.end_crit_edge, %for.inc128.2.while.end_crit_edge, %for.inc128.1.while.end_crit_edge, %for.inc128.while.end_crit_edge, %do.end111.while.end_crit_edge
  br i1 %tobool72.not, label %if.then132, label %while.end.if.then150_crit_edge

while.end.if.then150_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then150

if.then132:                                       ; preds = %while.end
  %exitcond302.not = icmp eq i32 %inc, 20
  br i1 %exitcond302.not, label %do.body136, label %if.then132.while.cond_crit_edge

if.then132.while.cond_crit_edge:                  ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

do.body136:                                       ; preds = %if.then132
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %61 = load i32, ptr @pvrusb2_debug, align 4
  %and137 = and i32 %61, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %do.body136.if.then150_crit_edge, label %do.end142

do.body136.if.then150_crit_edge:                  ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then150

do.end142:                                        ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #8
  %call144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #9
  br label %if.then150

if.then150:                                       ; preds = %do.end142, %do.body136.if.then150_crit_edge, %while.end.if.then150_crit_edge, %while.body.i.if.then150_crit_edge
  %ret.1275 = phi i32 [ -16, %do.body136.if.then150_crit_edge ], [ -16, %do.end142 ], [ %call.i, %while.body.i.if.then150_crit_edge ], [ -16, %while.end.if.then150_crit_edge ]
  %encoder_run_timer = getelementptr inbounds %struct.pvr2_hdw, ptr %ctxt, i32 0, i32 56
  %call151 = tail call i32 @del_timer_sync(ptr noundef %encoder_run_timer) #6
  %62 = ptrtoint ptr %state_encoder_ok to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %state_encoder_ok, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %63 = load i32, ptr @pvrusb2_debug, align 4
  %and154 = and i32 %63, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155.not = icmp eq i32 %and154, 0
  br i1 %tobool155.not, label %if.then150.do.end166_crit_edge, label %do.end159

if.then150.do.end166_crit_edge:                   ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end166

do.end159:                                        ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #8
  %call163 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.36) #9
  br label %do.end166

do.end166:                                        ; preds = %do.end159, %if.then150.do.end166_crit_edge
  %state_encoder_runok = getelementptr inbounds %struct.pvr2_hdw, ptr %ctxt, i32 0, i32 39
  %64 = ptrtoint ptr %state_encoder_runok to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %state_encoder_runok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool167.not = icmp eq i32 %65, 0
  br i1 %tobool167.not, label %do.end166.do.body186_crit_edge, label %if.then168

do.end166.do.body186_crit_edge:                   ; preds = %do.end166
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body186

if.then168:                                       ; preds = %do.end166
  %66 = ptrtoint ptr %state_encoder_runok to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %state_encoder_runok, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %67 = load i32, ptr @pvrusb2_debug, align 4
  %and171 = and i32 %67, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171)
  %tobool172.not = icmp eq i32 %and171, 0
  br i1 %tobool172.not, label %if.then168.do.body186_crit_edge, label %do.end176

if.then168.do.body186_crit_edge:                  ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body186

do.end176:                                        ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #8
  %call181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.36) #9
  br label %do.body186

do.body186:                                       ; preds = %do.end176, %if.then168.do.body186_crit_edge, %do.end166.do.body186_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %68 = load i32, ptr @pvrusb2_debug, align 4
  %and187 = and i32 %68, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and187)
  %tobool188.not = icmp eq i32 %and187, 0
  br i1 %tobool188.not, label %do.body186.do.body213_crit_edge, label %do.end192

do.body186.do.body213_crit_edge:                  ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body213

do.end192:                                        ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #8
  %call194 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #9
  br label %do.body213

if.end198:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg_cnt_recv)
  %cmp201295.not = icmp eq i32 %arg_cnt_recv, 0
  br i1 %cmp201295.not, label %if.end198.for.end208_crit_edge, label %for.body202.preheader

if.end198.for.end208_crit_edge:                   ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end208

for.body202.preheader:                            ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #8
  %uglygep303 = getelementptr inbounds i8, ptr %rdData, i32 16
  %69 = shl nuw i32 %arg_cnt_recv, 2
  %70 = call ptr @memcpy(ptr %argp, ptr %uglygep303, i32 %69)
  br label %for.end208

for.end208:                                       ; preds = %for.body202.preheader, %if.end198.for.end208_crit_edge
  %71 = ptrtoint ptr %wrData to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %wrData, align 4
  %call211 = call fastcc i32 @pvr2_encoder_write_words(ptr noundef %ctxt, ptr noundef nonnull %wrData, i32 noundef 1)
  br label %do.body213

do.body213:                                       ; preds = %for.end208, %do.end192, %do.body186.do.body213_crit_edge, %if.end45.do.body213_crit_edge, %for.end41.do.body213_crit_edge, %while.cond.do.body213_crit_edge
  %ret.2 = phi i32 [ %ret.1275, %do.end192 ], [ %ret.1275, %do.body186.do.body213_crit_edge ], [ %call211, %for.end208 ], [ -5, %while.cond.do.body213_crit_edge ], [ %call48, %if.end45.do.body213_crit_edge ], [ %call42, %for.end41.do.body213_crit_edge ]
  %72 = ptrtoint ptr %ctl_lock_held to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %ctl_lock_held, align 8
  tail call void @mutex_unlock(ptr noundef %ctl_lock_mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body213, %do.end14, %do.body8.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %do.body213 ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %do.end14 ], [ -22, %do.body8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rdData) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %wrData) #6
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvr2_encoder_configure(ptr noundef %hdw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %0 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %0, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %port = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 106, i32 1
  %1 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %port, align 4
  %res_hor_val = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 140
  %2 = ptrtoint ptr %res_hor_val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %res_hor_val, align 4
  %conv = trunc i32 %3 to i16
  %width = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 106, i32 2
  %4 = ptrtoint ptr %width to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %width, align 4
  %res_ver_val = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 142
  %5 = ptrtoint ptr %res_ver_val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %res_ver_val, align 4
  %conv5 = trunc i32 %6 to i16
  %height = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 106, i32 3
  %7 = ptrtoint ptr %height to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv5, ptr %height, align 2
  %std_mask_cur = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 85
  %8 = ptrtoint ptr %std_mask_cur to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %std_mask_cur, align 8
  %and7 = and i64 %9, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7)
  %tobool8.not = icmp eq i64 %and7, 0
  %conv9 = zext i1 %tobool8.not to i16
  %is_50hz = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 106, i32 4
  %10 = ptrtoint ptr %is_50hz to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv9, ptr %is_50hz, align 4
  %hdw_desc.i = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 3
  %11 = ptrtoint ptr %hdw_desc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hdw_desc.i, align 8
  %flag_has_cx25840.i = getelementptr inbounds %struct.pvr2_device_desc, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %flag_has_cx25840.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i = load i8, ptr %flag_has_cx25840.i, align 1
  %14 = lshr i8 %bf.load.i, 3
  %.lobit.i = and i8 %14, 1
  %15 = zext i8 %.lobit.i to i32
  %call.i = tail call i32 (ptr, i32, i32, ...) @pvr2_encoder_vcmd(ptr noundef %hdw, i32 noundef 220, i32 noundef 4, i32 noundef 3, i32 noundef %15, i32 noundef 0, i32 noundef 0) #6
  %call1.i = tail call i32 (ptr, i32, i32, ...) @pvr2_encoder_vcmd(ptr noundef %hdw, i32 noundef 220, i32 noundef 4, i32 noundef 8, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %or2.i = or i32 %call1.i, %call.i
  %call3.i = tail call i32 (ptr, i32, i32, ...) @pvr2_encoder_vcmd(ptr noundef %hdw, i32 noundef 220, i32 noundef 4, i32 noundef 0, i32 noundef 3, i32 noundef 0, i32 noundef 0) #6
  %or4.i = or i32 %or2.i, %call3.i
  %call5.i = tail call i32 (ptr, i32, i32, ...) @pvr2_encoder_vcmd(ptr noundef %hdw, i32 noundef 220, i32 noundef 4, i32 noundef 15, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %or6.i = or i32 %or4.i, %call5.i
  %call7.i = tail call i32 (ptr, i32, i32, ...) @pvr2_encoder_vcmd(ptr noundef %hdw, i32 noundef 220, i32 noundef 2, i32 noundef 4, i32 noundef 1) #6
  %or8.i = or i32 %or6.i, %call7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %tobool15.not = icmp eq i32 %or8.i, 0
  br i1 %tobool15.not, label %if.end18, label %do.end3.do.body29_crit_edge

do.end3.do.body29_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body29

if.end18:                                         ; preds = %do.end3
  %16 = ptrtoint ptr %hdw_desc.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hdw_desc.i, align 8
  %flag_has_cx25840 = getelementptr inbounds %struct.pvr2_device_desc, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %flag_has_cx25840 to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %flag_has_cx25840, align 1
  %19 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool12.not = icmp eq i8 %19, 0
  %spec.select = select i1 %tobool12.not, i32 240, i32 320
  %call17 = tail call i32 (ptr, i32, i32, ...) @pvr2_encoder_vcmd(ptr noundef %hdw, i32 noundef 214, i32 noundef 2, i32 noundef %spec.select, i32 noundef %spec.select)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool19.not = icmp eq i32 %call17, 0
  br i1 %tobool19.not, label %if.end22, label %if.end18.do.body29_crit_edge

if.end18.do.body29_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body29

if.end22:                                         ; preds = %if.end18
  %call21 = tail call i32 (ptr, i32, i32, ...) @pvr2_encoder_vcmd(ptr noundef %hdw, i32 noundef 213, i32 noundef 4, i32 noundef 0, i32 noundef 0, i32 noundef 268435456, i32 noundef -1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool23.not = icmp eq i32 %call21, 0
  br i1 %tobool23.not, label %if.end26, label %if.end22.do.body29_crit_edge

if.end22.do.body29_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body29

if.end26:                                         ; preds = %if.end22
  %call25 = tail call i32 (ptr, i32, i32, ...) @pvr2_encoder_vcmd(ptr noundef %hdw, i32 noundef 183, i32 noundef 5, i32 noundef -1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool27.not = icmp eq i32 %call25, 0
  br i1 %tobool27.not, label %if.end41, label %if.end26.do.body29_crit_edge

if.end26.do.body29_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body29

do.body29:                                        ; preds = %if.end26.do.body29_crit_edge, %if.end22.do.body29_crit_edge, %if.end18.do.body29_crit_edge, %do.end3.do.body29_crit_edge
  %ret.294 = phi i32 [ %call25, %if.end26.do.body29_crit_edge ], [ %call21, %if.end22.do.body29_crit_edge ], [ %call17, %if.end18.do.body29_crit_edge ], [ %or8.i, %do.end3.do.body29_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %20 = load i32, ptr @pvrusb2_debug, align 4
  %and30 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %do.body29.cleanup_crit_edge, label %do.end35

do.body29.cleanup_crit_edge:                      ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end35:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #8
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #9
  br label %cleanup

if.end41:                                         ; preds = %if.end26
  %enc_cur_valid.i = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 109
  %21 = ptrtoint ptr %enc_cur_valid.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %enc_cur_valid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  %enc_cur_state.i = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 105
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %enc_cur_state.i
  %enc_ctl_state.i = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 106
  %call.i86 = tail call i32 @cx2341x_update(ptr noundef %hdw, ptr noundef nonnull @pvr2_encoder_cmd, ptr noundef %spec.select.i, ptr noundef %enc_ctl_state.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86)
  %tobool1.not.i = icmp eq i32 %call.i86, 0
  br i1 %tobool1.not.i, label %if.end45, label %do.body.i

do.body.i:                                        ; preds = %if.end41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %23 = load i32, ptr @pvrusb2_debug, align 4
  %and.i = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %do.body.i.cleanup_crit_edge, label %do.end.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call.i86) #9
  br label %cleanup

if.end45:                                         ; preds = %if.end41
  %24 = call ptr @memcpy(ptr %enc_cur_state.i, ptr %enc_ctl_state.i, i32 140)
  %25 = ptrtoint ptr %enc_cur_valid.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %enc_cur_valid.i, align 8
  %call46 = tail call i32 (ptr, i32, i32, ...) @pvr2_encoder_vcmd(ptr noundef %hdw, i32 noundef 205, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end45.cleanup_crit_edge, label %do.body49

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body49:                                        ; preds = %if.end45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %26 = load i32, ptr @pvrusb2_debug, align 4
  %and50 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %do.body49.cleanup_crit_edge, label %do.end55

do.body49.cleanup_crit_edge:                      ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end55:                                         ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #8
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end55, %do.body49.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %do.end.i, %do.body.i.cleanup_crit_edge, %do.end35, %do.body29.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.294, %do.end35 ], [ %ret.294, %do.body29.cleanup_crit_edge ], [ %call46, %do.end55 ], [ %call46, %do.body49.cleanup_crit_edge ], [ 0, %if.end45.cleanup_crit_edge ], [ %call.i86, %do.body.i.cleanup_crit_edge ], [ %call.i86, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_encoder_vcmd(ptr noundef %hdw, i32 noundef %cmd, i32 noundef %args, ...) unnamed_addr #0 align 64 {
entry:
  %vl = alloca %struct.__va_list, align 4
  %data = alloca [12 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vl) #6
  %0 = ptrtoint ptr %vl to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %vl, align 4, !annotation !77
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %data) #6
  %1 = call ptr @memset(ptr %data, i32 255, i32 48)
  call void @llvm.va_start(ptr nonnull %vl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %args)
  %cmp615.not = icmp eq i32 %args, 0
  br i1 %cmp615.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %idx.016 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %vl to i32
  call void @__asan_load4_noabort(i32 %2)
  %argp.cur = load ptr, ptr %vl, align 4
  %argp.next = getelementptr inbounds i8, ptr %argp.cur, i32 4
  store ptr %argp.next, ptr %vl, align 4
  %3 = ptrtoint ptr %argp.cur to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %argp.cur, align 4
  %arrayidx = getelementptr [12 x i32], ptr %data, i32 0, i32 %idx.016
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx, align 4
  %inc = add nuw i32 %idx.016, 1
  %exitcond.not = icmp eq i32 %inc, %args
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.va_end(ptr nonnull %vl)
  %call7 = call i32 @pvr2_encoder_cmd(ptr noundef %hdw, i32 noundef %cmd, i32 noundef %args, i32 noundef 0, ptr noundef nonnull %data)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %data) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vl) #6
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvr2_encoder_start(ptr noundef %hdw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pvr2_write_register(ptr noundef %hdw, i16 noundef zeroext 72, i32 noundef -1073741825) #6
  %input_val = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 136
  %0 = ptrtoint ptr %input_val to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %input_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  %cond = zext i1 %cmp to i32
  %call1 = tail call i32 (ptr, i32, i32, ...) @pvr2_encoder_vcmd(ptr noundef %hdw, i32 noundef 217, i32 noundef 1, i32 noundef %cond)
  %active_stream_type = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 103
  %2 = ptrtoint ptr %active_stream_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %active_stream_type, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 (ptr, i32, i32, ...) @pvr2_encoder_vcmd(ptr noundef %hdw, i32 noundef 129, i32 noundef 2, i32 noundef 1, i32 noundef 20)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 (ptr, i32, i32, ...) @pvr2_encoder_vcmd(ptr noundef %hdw, i32 noundef 129, i32 noundef 2, i32 noundef 0, i32 noundef 19)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 (ptr, i32, i32, ...) @pvr2_encoder_vcmd(ptr noundef %hdw, i32 noundef 129, i32 noundef 2, i32 noundef 0, i32 noundef 19)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb
  %status.0 = phi i32 [ %call5, %sw.default ], [ %call4, %sw.bb3 ], [ %call2, %sw.bb ]
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_write_register(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvr2_encoder_stop(ptr noundef %hdw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pvr2_write_register(ptr noundef %hdw, i16 noundef zeroext 72, i32 noundef -1) #6
  %active_stream_type = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 103
  %0 = ptrtoint ptr %active_stream_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %active_stream_type, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %1, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, i32, i32, ...) @pvr2_encoder_vcmd(ptr noundef %hdw, i32 noundef 130, i32 noundef 3, i32 noundef 1, i32 noundef 1, i32 noundef 20)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 (ptr, i32, i32, ...) @pvr2_encoder_vcmd(ptr noundef %hdw, i32 noundef 130, i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 19)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 (ptr, i32, i32, ...) @pvr2_encoder_vcmd(ptr noundef %hdw, i32 noundef 130, i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 19)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %sw.bb
  %status.0 = phi i32 [ %call4, %sw.default ], [ %call3, %sw.bb2 ], [ %call1, %sw.bb ]
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pvr2_encoder_write_words(ptr noundef %hdw, ptr nocapture noundef readonly %data, i32 noundef %dlen) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dlen)
  %tobool.not4 = icmp eq i32 %dlen, 0
  br i1 %tobool.not4, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %cmd_buffer = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 29
  br label %while.body

while.body:                                       ; preds = %if.end50.while.body_crit_edge, %while.body.lr.ph
  %dlen.addr.07 = phi i32 [ %dlen, %while.body.lr.ph ], [ %sub, %if.end50.while.body_crit_edge ]
  %data.addr.06 = phi ptr [ %data, %while.body.lr.ph ], [ %add.ptr, %if.end50.while.body_crit_edge ]
  %offs.addr.05 = phi i32 [ 68, %while.body.lr.ph ], [ %add51, %if.end50.while.body_crit_edge ]
  %0 = tail call i32 @llvm.umin.i32(i32 %dlen.addr.07, i32 8)
  %1 = call ptr @memset(ptr %cmd_buffer, i32 0, i32 64)
  %2 = ptrtoint ptr %cmd_buffer to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %cmd_buffer, align 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %while.body
  %bAddr.03 = phi i32 [ %add43, %for.body.for.body_crit_edge ], [ 1, %while.body ]
  %idx.02 = phi i32 [ %inc44, %for.body.for.body_crit_edge ], [ 0, %while.body ]
  %add = add i32 %idx.02, %offs.addr.05
  %conv = trunc i32 %add to i8
  %add4 = add nuw nsw i32 %bAddr.03, 6
  %arrayidx5 = getelementptr %struct.pvr2_hdw, ptr %hdw, i32 0, i32 29, i32 %add4
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %arrayidx5, align 1
  %shr = lshr i32 %add, 8
  %conv7 = trunc i32 %shr to i8
  %add9 = add nuw nsw i32 %bAddr.03, 5
  %arrayidx10 = getelementptr %struct.pvr2_hdw, ptr %hdw, i32 0, i32 29, i32 %add9
  %4 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv7, ptr %arrayidx10, align 1
  %shr11 = lshr i32 %add, 16
  %conv13 = trunc i32 %shr11 to i8
  %add15 = add nuw nsw i32 %bAddr.03, 4
  %arrayidx16 = getelementptr %struct.pvr2_hdw, ptr %hdw, i32 0, i32 29, i32 %add15
  %5 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv13, ptr %arrayidx16, align 1
  %arrayidx17 = getelementptr i32, ptr %data.addr.06, i32 %idx.02
  %6 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx17, align 4
  %conv19 = trunc i32 %7 to i8
  %arrayidx21 = getelementptr %struct.pvr2_hdw, ptr %hdw, i32 0, i32 29, i32 %bAddr.03
  %8 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv19, ptr %arrayidx21, align 1
  %9 = load i32, ptr %arrayidx17, align 4
  %shr23 = lshr i32 %9, 8
  %conv25 = trunc i32 %shr23 to i8
  %add27 = add nuw nsw i32 %bAddr.03, 1
  %arrayidx28 = getelementptr %struct.pvr2_hdw, ptr %hdw, i32 0, i32 29, i32 %add27
  %10 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv25, ptr %arrayidx28, align 1
  %11 = load i32, ptr %arrayidx17, align 4
  %shr30 = lshr i32 %11, 16
  %conv32 = trunc i32 %shr30 to i8
  %add34 = add nuw nsw i32 %bAddr.03, 2
  %arrayidx35 = getelementptr %struct.pvr2_hdw, ptr %hdw, i32 0, i32 29, i32 %add34
  %12 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv32, ptr %arrayidx35, align 1
  %13 = load i32, ptr %arrayidx17, align 4
  %shr37 = lshr i32 %13, 24
  %conv39 = trunc i32 %shr37 to i8
  %add41 = add nuw nsw i32 %bAddr.03, 3
  %arrayidx42 = getelementptr %struct.pvr2_hdw, ptr %hdw, i32 0, i32 29, i32 %add41
  %14 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv39, ptr %arrayidx42, align 1
  %add43 = add nuw nsw i32 %bAddr.03, 7
  %inc44 = add nuw nsw i32 %idx.02, 1
  %exitcond.not = icmp eq i32 %inc44, %0
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  %mul = mul nuw nsw i32 %0, 7
  %add47 = add nuw nsw i32 %mul, 1
  %call = tail call i32 @pvr2_send_request(ptr noundef %hdw, ptr noundef %cmd_buffer, i32 noundef %add47, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool48.not = icmp eq i32 %call, 0
  br i1 %tobool48.not, label %if.end50, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end50:                                         ; preds = %for.end
  %add.ptr = getelementptr i32, ptr %data.addr.06, i32 %0
  %sub = sub i32 %dlen.addr.07, %0
  %add51 = add i32 %0, %offs.addr.05
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %if.end50.cleanup_crit_edge, label %if.end50.while.body_crit_edge

if.end50.while.body_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end50.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end50.cleanup_crit_edge ], [ %call, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_send_request(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-encoder.c", i32 396, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @pvr2_encoder_adjust._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @pvr2_encoder_adjust._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-encoder.c", i32 410, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @pvr2_encoder_configure._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @pvr2_encoder_configure._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-encoder.c", i32 442, i32 3}
!13 = !{ptr @pvr2_encoder_configure._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @pvr2_encoder_configure._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-encoder.c", i32 454, i32 3}
!17 = !{ptr @pvr2_encoder_configure._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @pvr2_encoder_configure._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-encoder.c", i32 175, i32 3}
!21 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @pvr2_encoder_cmd._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @pvr2_encoder_cmd._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-encoder.c", i32 183, i32 3}
!26 = !{ptr @pvr2_encoder_cmd._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @pvr2_encoder_cmd._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-encoder.c", i32 231, i32 5}
!30 = !{ptr @pvr2_encoder_cmd._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @pvr2_encoder_cmd._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-encoder.c", i32 235, i32 5}
!34 = !{ptr @pvr2_encoder_cmd._entry.19, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @pvr2_encoder_cmd._entry_ptr.21, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-encoder.c", i32 240, i32 4}
!38 = !{ptr @pvr2_encoder_cmd._entry.22, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @pvr2_encoder_cmd._entry_ptr.24, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-encoder.c", i32 244, i32 5}
!42 = !{ptr @pvr2_encoder_cmd._entry.25, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @pvr2_encoder_cmd._entry_ptr.27, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.29, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-encoder.c", i32 254, i32 4}
!46 = !{ptr @pvr2_encoder_cmd._entry.28, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @pvr2_encoder_cmd._entry_ptr.30, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.32, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-encoder.c", i32 262, i32 4}
!50 = !{ptr @pvr2_encoder_cmd._entry.31, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @pvr2_encoder_cmd._entry_ptr.33, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.34, !49, !"<string literal>", i1 false, i1 false}
!53 = distinct !{null, !49, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.36, !49, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @pvr2_encoder_cmd._entry.37, !56, !"_entry", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-encoder.c", i32 268, i32 5}
!57 = !{ptr @pvr2_encoder_cmd._entry_ptr.38, !56, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.39, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.41, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-encoder.c", i32 274, i32 4}
!61 = !{ptr @pvr2_encoder_cmd._entry.40, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @pvr2_encoder_cmd._entry_ptr.42, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.43, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-encoder.c", i32 302, i32 3}
!65 = !{ptr @.str.44, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @pvr2_encoder_vcmd._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @pvr2_encoder_vcmd._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{!"auto-init"}

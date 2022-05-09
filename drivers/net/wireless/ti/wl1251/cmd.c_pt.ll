; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ti/wl1251/cmd.c_pt.bc'
source_filename = "../drivers/net/wireless/ti/wl1251/cmd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.wl1251_cmd_header = type { i16, i16, [0 x i8] }
%struct.wl1251 = type { ptr, i8, ptr, ptr, i32, i32, i8, ptr, %struct.spinlock, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.boot_attr, ptr, i32, ptr, i32, [6 x i8], [6 x i8], i8, i8, i32, i8, i8, ptr, ptr, i32, %struct.sk_buff_head, i8, %struct.work_struct, [16 x ptr], i32, i32, i32, i32, i32, i32, %struct.work_struct, i32, [2 x i32], i8, i32, i32, i32, i32, i32, i8, %struct.delayed_work, i32, i8, i8, i16, i8, i32, i32, %struct.wl1251_stats, %struct.wl1251_debugfs, i32, i32, [8 x i8], ptr, ptr, i32, [21 x i8], i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.boot_attr = type { i32, i8, i8, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wl1251_stats = type { ptr, i32, i32, i32 }
%struct.wl1251_debugfs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acx_header = type { %struct.wl1251_cmd_header, i16, i16 }
%struct.wl1251_cmd_vbm_update = type { %struct.wl1251_cmd_header, i16, [2 x i8], %struct.wl1251_tim }
%struct.wl1251_tim = type { i8, i8, i8, i8, i8, [251 x i8] }
%struct.cmd_enabledisable_path = type { %struct.wl1251_cmd_header, i8, [3 x i8] }
%struct.cmd_join = type { %struct.wl1251_cmd_header, i32, i16, i16, i32, i32, i16, i8, i8, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8 }
%struct.wl1251_cmd_ps_params = type { %struct.wl1251_cmd_header, i8, i8, i8, i8, i16, [2 x i8] }
%struct.cmd_read_write_memory = type { %struct.wl1251_cmd_header, i32, i32, [256 x i8] }
%struct.wl1251_cmd_packet_template = type { %struct.wl1251_cmd_header, i16, [0 x i8] }
%struct.wl1251_cmd_scan = type { %struct.wl1251_cmd_header, %struct.wl1251_scan_parameters, [16 x %struct.wl1251_scan_ch_parameters] }
%struct.wl1251_scan_parameters = type { i32, i32, i16, i8, i8, i16, i8, i8, [32 x i8] }
%struct.wl1251_scan_ch_parameters = type { i32, i32, i32, i16, i8, i8, i8, [3 x i8] }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.wl1251_cmd_trigger_scan_to = type { %struct.wl1251_cmd_header, i32 }

@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/wireless/ti/wl1251/cmd.c\00", [59 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@wl1251_cmd_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 44, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013wl1251: ERROR command complete timeout\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wl1251_cmd_send\00", [16 x i8] zeroinitializer }, align 32
@wl1251_cmd_send._entry_ptr = internal global ptr @wl1251_cmd_send._entry, section ".printk_index", align 4
@wl1251_cmd_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014wl1251: WARNING TEST command failed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wl1251_cmd_test\00", [16 x i8] zeroinitializer }, align 32
@wl1251_cmd_test._entry_ptr = internal global ptr @wl1251_cmd_test._entry, section ".printk_index", align 4
@wl1251_cmd_test._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013wl1251: ERROR TEST command answer error: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@wl1251_cmd_test._entry_ptr.7 = internal global ptr @wl1251_cmd_test._entry.5, section ".printk_index", align 4
@wl1251_cmd_interrogate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013wl1251: ERROR INTERROGATE command failed\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wl1251_cmd_interrogate\00", [41 x i8] zeroinitializer }, align 32
@wl1251_cmd_interrogate._entry_ptr = internal global ptr @wl1251_cmd_interrogate._entry, section ".printk_index", align 4
@wl1251_cmd_interrogate._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013wl1251: ERROR INTERROGATE command error: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@wl1251_cmd_interrogate._entry_ptr.12 = internal global ptr @wl1251_cmd_interrogate._entry.10, section ".printk_index", align 4
@wl1251_cmd_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014wl1251: WARNING CONFIGURE command NOK\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wl1251_cmd_configure\00", [43 x i8] zeroinitializer }, align 32
@wl1251_cmd_configure._entry_ptr = internal global ptr @wl1251_cmd_configure._entry, section ".printk_index", align 4
@wl1251_cmd_vbm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014wl1251: WARNING cmd vbm len is %d B, truncating to %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wl1251_cmd_vbm\00", [17 x i8] zeroinitializer }, align 32
@wl1251_cmd_vbm._entry_ptr = internal global ptr @wl1251_cmd_vbm._entry, section ".printk_index", align 4
@wl1251_cmd_vbm._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013wl1251: ERROR VBM command failed\0A\00", [60 x i8] zeroinitializer }, align 32
@wl1251_cmd_vbm._entry_ptr.19 = internal global ptr @wl1251_cmd_vbm._entry.17, section ".printk_index", align 4
@wl1251_cmd_data_path_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013wl1251: ERROR rx %s cmd for channel %d failed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wl1251_cmd_data_path_rx\00", [40 x i8] zeroinitializer }, align 32
@wl1251_cmd_data_path_rx._entry_ptr = internal global ptr @wl1251_cmd_data_path_rx._entry, section ".printk_index", align 4
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"start\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"stop\00", [27 x i8] zeroinitializer }, align 32
@wl1251_cmd_data_path_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013wl1251: ERROR tx %s cmd for channel %d failed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wl1251_cmd_data_path_tx\00", [40 x i8] zeroinitializer }, align 32
@wl1251_cmd_data_path_tx._entry_ptr = internal global ptr @wl1251_cmd_data_path_tx._entry, section ".printk_index", align 4
@wl1251_cmd_join._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str, i32 304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013wl1251: ERROR failed to initiate cmd join\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wl1251_cmd_join\00", [16 x i8] zeroinitializer }, align 32
@wl1251_cmd_join._entry_ptr = internal global ptr @wl1251_cmd_join._entry, section ".printk_index", align 4
@wl1251_cmd_ps_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013wl1251: ERROR cmd set_ps_mode failed\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wl1251_cmd_ps_mode\00", [45 x i8] zeroinitializer }, align 32
@wl1251_cmd_ps_mode._entry_ptr = internal global ptr @wl1251_cmd_ps_mode._entry, section ".printk_index", align 4
@wl1251_cmd_read_memory._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013wl1251: ERROR read memory command failed: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wl1251_cmd_read_memory\00", [41 x i8] zeroinitializer }, align 32
@wl1251_cmd_read_memory._entry_ptr = internal global ptr @wl1251_cmd_read_memory._entry, section ".printk_index", align 4
@wl1251_cmd_read_memory._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013wl1251: ERROR error in read command result: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@wl1251_cmd_read_memory._entry_ptr.34 = internal global ptr @wl1251_cmd_read_memory._entry.32, section ".printk_index", align 4
@wl1251_cmd_template_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str, i32 404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014wl1251: WARNING cmd set_template failed: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wl1251_cmd_template_set\00", [40 x i8] zeroinitializer }, align 32
@wl1251_cmd_template_set._entry_ptr = internal global ptr @wl1251_cmd_template_set._entry, section ".printk_index", align 4
@wl1251_cmd_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str, i32 466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013wl1251: ERROR cmd scan failed: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wl1251_cmd_scan\00", [16 x i8] zeroinitializer }, align 32
@wl1251_cmd_scan._entry_ptr = internal global ptr @wl1251_cmd_scan._entry, section ".printk_index", align 4
@wl1251_cmd_scan._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str, i32 474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013wl1251: ERROR cmd scan status wasn't success: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@wl1251_cmd_scan._entry_ptr.41 = internal global ptr @wl1251_cmd_scan._entry.39, section ".printk_index", align 4
@wl1251_cmd_trigger_scan_to._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str, i32 499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013wl1251: ERROR cmd trigger scan to failed: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wl1251_cmd_trigger_scan_to\00", [37 x i8] zeroinitializer }, align 32
@wl1251_cmd_trigger_scan_to._entry_ptr = internal global ptr @wl1251_cmd_trigger_scan_to._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 33, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 44, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 78, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 95, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 124, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 133, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 162, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 184, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 196, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 226, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 260, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 304, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 333, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 362, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 370, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 404, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 466, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 473, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.198 = private constant [40 x i8] c"../drivers/net/wireless/ti/wl1251/cmd.c\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 499, i32 3 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @wl1251_cmd_configure._entry, ptr @wl1251_cmd_configure._entry_ptr, ptr @wl1251_cmd_data_path_rx._entry, ptr @wl1251_cmd_data_path_rx._entry_ptr, ptr @wl1251_cmd_data_path_tx._entry, ptr @wl1251_cmd_data_path_tx._entry_ptr, ptr @wl1251_cmd_interrogate._entry, ptr @wl1251_cmd_interrogate._entry.10, ptr @wl1251_cmd_interrogate._entry_ptr, ptr @wl1251_cmd_interrogate._entry_ptr.12, ptr @wl1251_cmd_join._entry, ptr @wl1251_cmd_join._entry_ptr, ptr @wl1251_cmd_ps_mode._entry, ptr @wl1251_cmd_ps_mode._entry_ptr, ptr @wl1251_cmd_read_memory._entry, ptr @wl1251_cmd_read_memory._entry.32, ptr @wl1251_cmd_read_memory._entry_ptr, ptr @wl1251_cmd_read_memory._entry_ptr.34, ptr @wl1251_cmd_scan._entry, ptr @wl1251_cmd_scan._entry.39, ptr @wl1251_cmd_scan._entry_ptr, ptr @wl1251_cmd_scan._entry_ptr.41, ptr @wl1251_cmd_send._entry, ptr @wl1251_cmd_send._entry_ptr, ptr @wl1251_cmd_template_set._entry, ptr @wl1251_cmd_template_set._entry_ptr, ptr @wl1251_cmd_test._entry, ptr @wl1251_cmd_test._entry.5, ptr @wl1251_cmd_test._entry_ptr, ptr @wl1251_cmd_test._entry_ptr.7, ptr @wl1251_cmd_trigger_scan_to._entry, ptr @wl1251_cmd_trigger_scan_to._entry_ptr, ptr @wl1251_cmd_vbm._entry, ptr @wl1251_cmd_vbm._entry.17, ptr @wl1251_cmd_vbm._entry_ptr, ptr @wl1251_cmd_vbm._entry_ptr.19, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_cmd_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_cmd_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_cmd_test._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_cmd_interrogate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_cmd_interrogate._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_cmd_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_cmd_vbm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_cmd_vbm._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_cmd_data_path_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_cmd_data_path_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_cmd_join._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_cmd_ps_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_cmd_read_memory._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_cmd_read_memory._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_cmd_template_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_cmd_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_cmd_scan._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_cmd_trigger_scan_to._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_cmd_send(ptr noundef %wl, i16 noundef zeroext %id, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %0, i32 2)
  store i16 %id, ptr %buf, align 1
  %status = getelementptr inbounds %struct.wl1251_cmd_header, ptr %buf, i32 0, i32 1
  %1 = ptrtoint ptr %status to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 0, ptr %status, align 1
  %rem = and i32 %len, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !98

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 33, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %cmd_box_addr = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 15
  %2 = ptrtoint ptr %cmd_box_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmd_box_addr, align 4
  tail call void @wl1251_mem_write(ptr noundef %wl, i32 noundef %3, ptr noundef %buf, i32 noundef %len) #6
  tail call void @wl1251_reg_write32(ptr noundef %wl, i32 noundef 0, i32 noundef 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %4, 200
  %call20 = tail call i32 @wl1251_reg_read32(ptr noundef %wl, i32 noundef 5) #6
  %and42 = and i32 %call20, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool21.not43 = icmp eq i32 %and42, 0
  br i1 %tobool21.not43, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %if.end31.while.body_crit_edge, %if.end.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp24 = icmp slt i32 %sub, 0
  br i1 %cmp24, label %do.end28, label %if.end31

do.end28:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #9
  br label %out

if.end31:                                         ; preds = %while.body
  tail call void @msleep(i32 noundef 1) #6
  %call32 = tail call i32 @wl1251_reg_read32(ptr noundef %wl, i32 noundef 5) #6
  %and = and i32 %call32, 512
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %if.end31.while.body_crit_edge, label %if.end31.while.end_crit_edge

if.end31.while.end_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end31.while.body_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %if.end31.while.end_crit_edge, %if.end.while.end_crit_edge
  tail call void @wl1251_reg_write32(ptr noundef %wl, i32 noundef 7, i32 noundef 512) #6
  br label %out

out:                                              ; preds = %while.end, %do.end28
  %ret.0 = phi i32 [ -110, %do.end28 ], [ 0, %while.end ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl1251_mem_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl1251_reg_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_reg_read32(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_cmd_test(ptr noundef %wl, ptr noundef %buf, i32 noundef %buf_len, i8 noundef zeroext %answer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @wl1251_cmd_send(ptr noundef %wl, i16 noundef zeroext 23, ptr noundef %buf, i32 noundef %buf_len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end3, label %if.end

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %answer)
  %tobool.not = icmp eq i8 %answer, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5:                                         ; preds = %if.end
  %cmd_box_addr = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 15
  %0 = ptrtoint ptr %cmd_box_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd_box_addr, align 4
  tail call void @wl1251_mem_read(ptr noundef %wl, i32 noundef %1, ptr noundef %buf, i32 noundef %buf_len) #6
  %status = getelementptr inbounds %struct.wl1251_cmd_header, ptr %buf, i32 0, i32 1
  %2 = ptrtoint ptr %status to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp6.not = icmp eq i16 %3, 1
  br i1 %cmp6.not, label %if.then5.cleanup_crit_edge, label %do.end11

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end11:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %3 to i32
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %conv) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end3
  %retval.0 = phi i32 [ %call, %do.end3 ], [ 0, %if.then5.cleanup_crit_edge ], [ 0, %do.end11 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl1251_mem_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_cmd_interrogate(ptr noundef %wl, i16 noundef zeroext %id, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id1 = getelementptr inbounds %struct.acx_header, ptr %buf, i32 0, i32 1
  %0 = ptrtoint ptr %id1 to i32
  call void @__asan_storeN_noabort(i32 %0, i32 2)
  store i16 %id, ptr %id1, align 1
  %1 = trunc i32 %len to i16
  %conv = add i16 %1, -8
  %len2 = getelementptr inbounds %struct.acx_header, ptr %buf, i32 0, i32 2
  %2 = ptrtoint ptr %len2 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 %conv, ptr %len2, align 1
  %call = tail call i32 @wl1251_cmd_send(ptr noundef %wl, i16 noundef zeroext 1, ptr noundef %buf, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end6, label %if.end

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #9
  br label %out

if.end:                                           ; preds = %entry
  %cmd_box_addr = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 15
  %3 = ptrtoint ptr %cmd_box_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cmd_box_addr, align 4
  tail call void @wl1251_mem_read(ptr noundef %wl, i32 noundef %4, ptr noundef %buf, i32 noundef %len) #6
  %status = getelementptr inbounds %struct.wl1251_cmd_header, ptr %buf, i32 0, i32 1
  %5 = ptrtoint ptr %status to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %6)
  %cmp9.not = icmp eq i16 %6, 1
  br i1 %cmp9.not, label %if.end.out_crit_edge, label %do.end14

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv8 = zext i16 %6 to i32
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %conv8) #9
  br label %out

out:                                              ; preds = %do.end14, %if.end.out_crit_edge, %do.end6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_cmd_configure(ptr noundef %wl, i16 noundef zeroext %id, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id1 = getelementptr inbounds %struct.acx_header, ptr %buf, i32 0, i32 1
  %0 = ptrtoint ptr %id1 to i32
  call void @__asan_storeN_noabort(i32 %0, i32 2)
  store i16 %id, ptr %id1, align 1
  %1 = trunc i32 %len to i16
  %conv = add i16 %1, -8
  %len2 = getelementptr inbounds %struct.acx_header, ptr %buf, i32 0, i32 2
  %2 = ptrtoint ptr %len2 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 %conv, ptr %len2, align 1
  %call = tail call i32 @wl1251_cmd_send(ptr noundef %wl, i16 noundef zeroext 2, ptr noundef %buf, i32 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end6, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end6 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_cmd_vbm(ptr noundef %wl, i8 noundef zeroext %identity, ptr nocapture noundef readonly %bitmap, i16 noundef zeroext %bitmap_len, i8 noundef zeroext %bitmap_control) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 264) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tim = getelementptr inbounds %struct.wl1251_cmd_vbm_update, ptr %call7.i.i, i32 0, i32 3
  %bitmap_ctrl = getelementptr inbounds %struct.wl1251_cmd_vbm_update, ptr %call7.i.i, i32 0, i32 3, i32 4
  %1 = ptrtoint ptr %bitmap_ctrl to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %bitmap_control, ptr %bitmap_ctrl, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 251, i16 %bitmap_len)
  %cmp = icmp ugt i16 %bitmap_len, 251
  br i1 %cmp, label %do.end5, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %bitmap_len to i32
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %conv, i32 noundef 251) #9
  br label %if.end8

if.end8:                                          ; preds = %do.end5, %if.end.if.end8_crit_edge
  %bitmap_len.addr.0 = phi i16 [ 251, %do.end5 ], [ %bitmap_len, %if.end.if.end8_crit_edge ]
  %pvb_field = getelementptr inbounds %struct.wl1251_cmd_vbm_update, ptr %call7.i.i, i32 0, i32 3, i32 5
  %conv10 = zext i16 %bitmap_len.addr.0 to i32
  %2 = call ptr @memcpy(ptr %pvb_field, ptr %bitmap, i32 %conv10)
  %3 = ptrtoint ptr %tim to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %identity, ptr %tim, align 8
  %4 = trunc i16 %bitmap_len.addr.0 to i8
  %conv14 = add nuw i8 %4, 3
  %length = getelementptr inbounds %struct.wl1251_cmd_vbm_update, ptr %call7.i.i, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv14, ptr %length, align 1
  %add17 = add nuw nsw i16 %bitmap_len.addr.0, 5
  %6 = tail call i16 @llvm.bswap.i16(i16 %add17)
  %len = getelementptr inbounds %struct.wl1251_cmd_vbm_update, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %len, align 4
  %call19 = tail call i32 @wl1251_cmd_send(ptr noundef %wl, i16 noundef zeroext 10, ptr noundef nonnull %call7.i.i, i32 noundef 264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.end25, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end25:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #9
  br label %out

out:                                              ; preds = %do.end25, %if.end8.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_cmd_data_path_rx(ptr noundef %wl, i8 noundef zeroext %channel, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 8) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %channel1 = getelementptr inbounds %struct.cmd_enabledisable_path, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %channel1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %channel, ptr %channel1, align 4
  %. = select i1 %enable, i16 3, i16 5
  %call5 = tail call i32 @wl1251_cmd_send(ptr noundef %wl, i16 noundef zeroext %., ptr noundef nonnull %call7.i.i, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end9, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %cond = select i1 %enable, ptr @.str.22, ptr @.str.23
  %conv = zext i8 %channel to i32
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull %cond, i32 noundef %conv) #9
  br label %out

out:                                              ; preds = %do.end9, %if.end.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_cmd_data_path_tx(ptr noundef %wl, i8 noundef zeroext %channel, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 8) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %channel1 = getelementptr inbounds %struct.cmd_enabledisable_path, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %channel1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %channel, ptr %channel1, align 4
  %. = select i1 %enable, i16 4, i16 6
  %call5 = tail call i32 @wl1251_cmd_send(ptr noundef %wl, i16 noundef zeroext %., ptr noundef nonnull %call7.i.i, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end9, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %cond = select i1 %enable, ptr @.str.22, ptr @.str.23
  %conv = zext i8 %channel to i32
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull %cond, i32 noundef %conv) #9
  br label %if.end16

if.end16:                                         ; preds = %do.end9, %if.end.if.end16_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end16 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_cmd_join(ptr noundef %wl, i8 noundef zeroext %bss_type, i8 noundef zeroext %channel, i16 noundef zeroext %beacon_interval, i8 noundef zeroext %dtim_interval) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 64) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  %bssid_lsb = getelementptr inbounds %struct.cmd_join, ptr %call7.i.i, i32 0, i32 1
  %arrayidx = getelementptr %struct.wl1251, ptr %wl, i32 0, i32 22, i32 5
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %3 = ptrtoint ptr %bssid_lsb to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %bssid_lsb, align 4
  %arrayidx.1 = getelementptr %struct.wl1251, ptr %wl, i32 0, i32 22, i32 4
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.1, align 1
  %arrayidx3.1 = getelementptr i8, ptr %bssid_lsb, i32 1
  %6 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %arrayidx3.1, align 1
  %arrayidx.2 = getelementptr %struct.wl1251, ptr %wl, i32 0, i32 22, i32 3
  %7 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.2, align 1
  %arrayidx3.2 = getelementptr i8, ptr %bssid_lsb, i32 2
  %9 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx3.2, align 2
  %arrayidx.3 = getelementptr %struct.wl1251, ptr %wl, i32 0, i32 22, i32 2
  %10 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.3, align 1
  %arrayidx3.3 = getelementptr i8, ptr %bssid_lsb, i32 3
  %12 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx3.3, align 1
  %arrayidx.4 = getelementptr %struct.wl1251, ptr %wl, i32 0, i32 22, i32 1
  %13 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.4, align 1
  %arrayidx3.4 = getelementptr %struct.cmd_join, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %arrayidx3.4, align 8
  %arrayidx.5 = getelementptr %struct.wl1251, ptr %wl, i32 0, i32 22, i32 0
  %16 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.5, align 1
  %arrayidx3.5 = getelementptr i8, ptr %bssid_lsb, i32 5
  %18 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %arrayidx3.5, align 1
  %rx_config = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 49
  %19 = ptrtoint ptr %rx_config to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_config, align 4
  %rx_config_options = getelementptr inbounds %struct.cmd_join, ptr %call7.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %rx_config_options to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %rx_config_options, align 4
  %rx_filter = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 50
  %22 = ptrtoint ptr %rx_filter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_filter, align 4
  %rx_filter_options = getelementptr inbounds %struct.cmd_join, ptr %call7.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %rx_filter_options to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %rx_filter_options, align 8
  %basic_rate_set = getelementptr inbounds %struct.cmd_join, ptr %call7.i.i, i32 0, i32 6
  %25 = ptrtoint ptr %basic_rate_set to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 39, ptr %basic_rate_set, align 4
  %beacon_interval4 = getelementptr inbounds %struct.cmd_join, ptr %call7.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %beacon_interval4 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %beacon_interval, ptr %beacon_interval4, align 2
  %dtim_interval5 = getelementptr inbounds %struct.cmd_join, ptr %call7.i.i, i32 0, i32 7
  %27 = ptrtoint ptr %dtim_interval5 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %dtim_interval, ptr %dtim_interval5, align 2
  %bss_type6 = getelementptr inbounds %struct.cmd_join, ptr %call7.i.i, i32 0, i32 10
  %28 = ptrtoint ptr %bss_type6 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %bss_type, ptr %bss_type6, align 1
  %channel7 = getelementptr inbounds %struct.cmd_join, ptr %call7.i.i, i32 0, i32 11
  %29 = ptrtoint ptr %channel7 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %channel, ptr %channel7, align 2
  %ctrl = getelementptr inbounds %struct.cmd_join, ptr %call7.i.i, i32 0, i32 14
  %30 = ptrtoint ptr %ctrl to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -128, ptr %ctrl, align 4
  %call8 = tail call i32 @wl1251_cmd_send(ptr noundef %wl, i16 noundef zeroext 11, ptr noundef nonnull %call7.i.i, i32 noundef 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %do.end13, label %do.end.out_crit_edge

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end13:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #9
  br label %out

out:                                              ; preds = %do.end13, %do.end.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_cmd_ps_mode(ptr noundef %wl, i8 noundef zeroext %ps_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ps_mode1 = getelementptr inbounds %struct.wl1251_cmd_ps_params, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %ps_mode1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %ps_mode, ptr %ps_mode1, align 4
  %send_null_data = getelementptr inbounds %struct.wl1251_cmd_ps_params, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %send_null_data to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %send_null_data, align 1
  %retries = getelementptr inbounds %struct.wl1251_cmd_ps_params, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %retries to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 5, ptr %retries, align 2
  %hang_over_period = getelementptr inbounds %struct.wl1251_cmd_ps_params, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %hang_over_period to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -128, ptr %hang_over_period, align 1
  %null_data_rate = getelementptr inbounds %struct.wl1251_cmd_ps_params, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %null_data_rate to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %null_data_rate, align 8
  %call2 = tail call i32 @wl1251_cmd_send(ptr noundef %wl, i16 noundef zeroext 37, ptr noundef nonnull %call7.i.i, i32 noundef 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end6, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #9
  br label %out

out:                                              ; preds = %do.end6, %if.end.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_cmd_read_memory(ptr noundef %wl, i32 noundef %addr, ptr nocapture noundef writeonly %answer, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 268) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %len)
  %cmp = icmp ugt i32 %len, 256
  br i1 %cmp, label %do.end12, label %if.end.if.end18_crit_edge, !prof !99

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 354, i32 noundef 9, ptr noundef null) #6
  br label %if.end18

if.end18:                                         ; preds = %do.end12, %if.end.if.end18_crit_edge
  %1 = tail call i32 @llvm.umin.i32(i32 %len, i32 256)
  %addr27 = getelementptr inbounds %struct.cmd_read_write_memory, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %addr27 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %addr, ptr %addr27, align 4
  %size = getelementptr inbounds %struct.cmd_read_write_memory, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %1, ptr %size, align 8
  %call28 = tail call i32 @wl1251_cmd_send(ptr noundef %wl, i16 noundef zeroext 13, ptr noundef nonnull %call7.i.i, i32 noundef 268)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %do.end33, label %if.end36

do.end33:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %call28) #9
  br label %out

if.end36:                                         ; preds = %if.end18
  %cmd_box_addr = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 15
  %4 = ptrtoint ptr %cmd_box_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd_box_addr, align 4
  tail call void @wl1251_mem_read(ptr noundef %wl, i32 noundef %5, ptr noundef nonnull %call7.i.i, i32 noundef 268) #6
  %status = getelementptr inbounds %struct.wl1251_cmd_header, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %status, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %7)
  %cmp37.not = icmp eq i16 %7, 1
  br i1 %cmp37.not, label %if.end36.if.end48_crit_edge, label %do.end42

if.end36.if.end48_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

do.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %7 to i32
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv) #9
  br label %if.end48

if.end48:                                         ; preds = %do.end42, %if.end36.if.end48_crit_edge
  %value = getelementptr inbounds %struct.cmd_read_write_memory, ptr %call7.i.i, i32 0, i32 3
  %8 = call ptr @memcpy(ptr %answer, ptr %value, i32 %1)
  br label %out

out:                                              ; preds = %if.end48, %do.end33
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_cmd_template_set(ptr noundef %wl, i16 noundef zeroext %cmd_id, ptr noundef readonly %buf, i32 noundef %buf_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 300, i32 %buf_len)
  %cmp = icmp ugt i32 %buf_len, 300
  br i1 %cmp, label %do.end10, label %entry.if.end_crit_edge, !prof !99

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 389, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end10, %entry.if.end_crit_edge
  %0 = tail call i32 @llvm.umin.i32(i32 %buf_len, i32 300)
  %add24 = add nuw nsw i32 %0, 9
  %and = and i32 %add24, 1020
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %and, i32 noundef 3520) #11
  %tobool25.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool25.not, label %if.end.cleanup_crit_edge, label %if.end27

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %conv = trunc i32 %0 to i16
  %1 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %size = getelementptr inbounds %struct.wl1251_cmd_packet_template, ptr %call9.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %size, align 4
  %tobool28.not = icmp eq ptr %buf, null
  br i1 %tobool28.not, label %if.end27.if.end30_crit_edge, label %if.then29

if.end27.if.end30_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %data = getelementptr inbounds %struct.wl1251_cmd_packet_template, ptr %call9.i.i, i32 0, i32 2
  %3 = call ptr @memcpy(ptr %data, ptr %buf, i32 %0)
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end27.if.end30_crit_edge
  %call31 = tail call i32 @wl1251_cmd_send(ptr noundef %wl, i16 noundef zeroext %cmd_id, ptr noundef nonnull %call9.i.i, i32 noundef %and)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %do.end37, label %if.end30.out_crit_edge

if.end30.out_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end37:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %call31) #9
  br label %out

out:                                              ; preds = %do.end37, %if.end30.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call31, %out ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_cmd_scan(ptr noundef %wl, ptr noundef readonly %ssid, i32 noundef %ssid_len, ptr nocapture noundef readonly %channels, i32 noundef %n_channels, i32 noundef %n_probes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %n_channels)
  %cmp = icmp ugt i32 %n_channels, 16
  br i1 %cmp, label %do.end10, label %entry.if.end_crit_edge, !prof !99

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 422, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end10, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 372) #10
  %tobool22.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool22.not, label %if.end.cleanup_crit_edge, label %if.end24

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %if.end
  %params = getelementptr inbounds %struct.wl1251_cmd_scan, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 134217728, ptr %params, align 4
  %rx_filter_options = getelementptr inbounds %struct.wl1251_cmd_scan, ptr %call7.i.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %rx_filter_options to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 335675392, ptr %rx_filter_options, align 8
  %scan_options = getelementptr inbounds %struct.wl1251_cmd_scan, ptr %call7.i.i, i32 0, i32 1, i32 2
  %bssid = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 22
  %3 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bssid, align 4
  %add.ptr.i = getelementptr %struct.wl1251, ptr %wl, i32 0, i32 22, i32 4
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %6 to i32
  %or.i = or i32 %4, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  %spec.store.select = select i1 %cmp.i, i16 2048, i16 0
  %7 = ptrtoint ptr %scan_options to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %spec.store.select, ptr %scan_options, align 4
  %conv33 = trunc i32 %n_channels to i8
  %num_channels = getelementptr inbounds %struct.wl1251_cmd_scan, ptr %call7.i.i, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %num_channels to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv33, ptr %num_channels, align 2
  %conv35 = trunc i32 %n_probes to i8
  %num_probe_requests = getelementptr inbounds %struct.wl1251_cmd_scan, ptr %call7.i.i, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %num_probe_requests to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv35, ptr %num_probe_requests, align 1
  %tx_rate = getelementptr inbounds %struct.wl1251_cmd_scan, ptr %call7.i.i, i32 0, i32 1, i32 5
  %10 = ptrtoint ptr %tx_rate to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 512, ptr %tx_rate, align 8
  %tid_trigger = getelementptr inbounds %struct.wl1251_cmd_scan, ptr %call7.i.i, i32 0, i32 1, i32 6
  %11 = ptrtoint ptr %tid_trigger to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %tid_trigger, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_channels)
  %cmp39145.not = icmp eq i32 %n_channels, 0
  br i1 %cmp39145.not, label %if.end24.for.end_crit_edge, label %if.end24.for.body_crit_edge

if.end24.for.body_crit_edge:                      ; preds = %if.end24
  br label %for.body

if.end24.for.end_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end24.for.body_crit_edge
  %i.0146 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end24.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.wl1251_cmd_scan, ptr %call7.i.i, i32 0, i32 2, i32 %i.0146
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 812974080, ptr %arrayidx, align 4
  %max_duration = getelementptr %struct.wl1251_cmd_scan, ptr %call7.i.i, i32 0, i32 2, i32 %i.0146, i32 1
  %13 = ptrtoint ptr %max_duration to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1625948160, ptr %max_duration, align 4
  %bssid_lsb = getelementptr %struct.wl1251_cmd_scan, ptr %call7.i.i, i32 0, i32 2, i32 %i.0146, i32 2
  %14 = ptrtoint ptr %bssid_lsb to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %bssid_lsb, align 4
  %bssid_msb = getelementptr %struct.wl1251_cmd_scan, ptr %call7.i.i, i32 0, i32 2, i32 %i.0146, i32 3
  %15 = ptrtoint ptr %bssid_msb to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -1, ptr %bssid_msb, align 4
  %early_termination = getelementptr %struct.wl1251_cmd_scan, ptr %call7.i.i, i32 0, i32 2, i32 %i.0146, i32 4
  %16 = ptrtoint ptr %early_termination to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %early_termination, align 2
  %tx_power_att = getelementptr %struct.wl1251_cmd_scan, ptr %call7.i.i, i32 0, i32 2, i32 %i.0146, i32 5
  %17 = ptrtoint ptr %tx_power_att to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %tx_power_att, align 1
  %arrayidx52 = getelementptr ptr, ptr %channels, i32 %i.0146
  %18 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx52, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %hw_value, align 2
  %conv53 = trunc i16 %21 to i8
  %channel = getelementptr %struct.wl1251_cmd_scan, ptr %call7.i.i, i32 0, i32 2, i32 %i.0146, i32 6
  %22 = ptrtoint ptr %channel to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv53, ptr %channel, align 4
  %inc = add nuw i32 %i.0146, 1
  %exitcond.not = icmp eq i32 %inc, %n_channels
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end24.for.end_crit_edge
  %tobool56.not = icmp eq ptr %ssid, null
  br i1 %tobool56.not, label %for.end.if.end74_crit_edge, label %if.then57

for.end.if.end74_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74

if.then57:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %23 = tail call i32 @llvm.umin.i32(i32 %ssid_len, i32 32)
  %conv68 = trunc i32 %23 to i8
  %ssid_len70 = getelementptr inbounds %struct.wl1251_cmd_scan, ptr %call7.i.i, i32 0, i32 1, i32 7
  %24 = ptrtoint ptr %ssid_len70 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv68, ptr %ssid_len70, align 1
  %ssid72 = getelementptr inbounds %struct.wl1251_cmd_scan, ptr %call7.i.i, i32 0, i32 1, i32 8
  %25 = call ptr @memcpy(ptr %ssid72, ptr %ssid, i32 %23)
  br label %if.end74

if.end74:                                         ; preds = %if.then57, %for.end.if.end74_crit_edge
  %call75 = tail call i32 @wl1251_cmd_send(ptr noundef %wl, i16 noundef zeroext 8, ptr noundef nonnull %call7.i.i, i32 noundef 372)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %do.end81, label %if.end84

do.end81:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %call75) #9
  br label %out

if.end84:                                         ; preds = %if.end74
  %cmd_box_addr = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 15
  %26 = ptrtoint ptr %cmd_box_addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cmd_box_addr, align 4
  tail call void @wl1251_mem_read(ptr noundef %wl, i32 noundef %27, ptr noundef nonnull %call7.i.i, i32 noundef 372) #6
  %status = getelementptr inbounds %struct.wl1251_cmd_header, ptr %call7.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %status, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %29)
  %cmp86.not = icmp eq i16 %29, 1
  br i1 %cmp86.not, label %if.end84.out_crit_edge, label %do.end91

if.end84.out_crit_edge:                           ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end91:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  %conv85 = zext i16 %29 to i32
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv85) #9
  br label %out

out:                                              ; preds = %do.end91, %if.end84.out_crit_edge, %do.end81
  %ret.0 = phi i32 [ %call75, %do.end81 ], [ -5, %do.end91 ], [ 0, %if.end84.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_cmd_trigger_scan_to(ptr noundef %wl, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 8) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %timeout1 = getelementptr inbounds %struct.wl1251_cmd_trigger_scan_to, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %timeout1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %timeout, ptr %timeout1, align 4
  %call2 = tail call i32 @wl1251_cmd_send(ptr noundef %wl, i16 noundef zeroext 47, ptr noundef nonnull %call7.i.i, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end6, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %call2) #9
  br label %out

out:                                              ; preds = %do.end6, %if.end.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ti/wl1251/cmd.c", i32 33, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ti/wl1251/cmd.c", i32 44, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @wl1251_cmd_send._entry, !3, !"_entry", i1 false, i1 false}
!6 = !{ptr @wl1251_cmd_send._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ti/wl1251/cmd.c", i32 78, i32 3}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @wl1251_cmd_test._entry, !8, !"_entry", i1 false, i1 false}
!11 = !{ptr @wl1251_cmd_test._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ti/wl1251/cmd.c", i32 95, i32 4}
!14 = !{ptr @wl1251_cmd_test._entry.5, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @wl1251_cmd_test._entry_ptr.7, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ti/wl1251/cmd.c", i32 124, i32 3}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @wl1251_cmd_interrogate._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @wl1251_cmd_interrogate._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ti/wl1251/cmd.c", i32 133, i32 3}
!23 = !{ptr @wl1251_cmd_interrogate._entry.10, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @wl1251_cmd_interrogate._entry_ptr.12, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ti/wl1251/cmd.c", i32 162, i32 3}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @wl1251_cmd_configure._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @wl1251_cmd_configure._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ti/wl1251/cmd.c", i32 184, i32 3}
!32 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @wl1251_cmd_vbm._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @wl1251_cmd_vbm._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/ti/wl1251/cmd.c", i32 196, i32 3}
!37 = !{ptr @wl1251_cmd_vbm._entry.17, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @wl1251_cmd_vbm._entry_ptr.19, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/ti/wl1251/cmd.c", i32 226, i32 3}
!41 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @wl1251_cmd_data_path_rx._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @wl1251_cmd_data_path_rx._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ti/wl1251/cmd.c", i32 260, i32 3}
!48 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @wl1251_cmd_data_path_tx._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @wl1251_cmd_data_path_tx._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/ti/wl1251/cmd.c", i32 304, i32 3}
!53 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @wl1251_cmd_join._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @wl1251_cmd_join._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ti/wl1251/cmd.c", i32 333, i32 3}
!58 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @wl1251_cmd_ps_mode._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @wl1251_cmd_ps_mode._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/ti/wl1251/cmd.c", i32 362, i32 3}
!63 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @wl1251_cmd_read_memory._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @wl1251_cmd_read_memory._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ti/wl1251/cmd.c", i32 370, i32 3}
!68 = !{ptr @wl1251_cmd_read_memory._entry.32, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @wl1251_cmd_read_memory._entry_ptr.34, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ti/wl1251/cmd.c", i32 404, i32 3}
!72 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @wl1251_cmd_template_set._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @wl1251_cmd_template_set._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/ti/wl1251/cmd.c", i32 466, i32 3}
!77 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @wl1251_cmd_scan._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @wl1251_cmd_scan._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ti/wl1251/cmd.c", i32 473, i32 3}
!82 = !{ptr @wl1251_cmd_scan._entry.39, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @wl1251_cmd_scan._entry_ptr.41, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/ti/wl1251/cmd.c", i32 499, i32 3}
!86 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @wl1251_cmd_trigger_scan_to._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @wl1251_cmd_trigger_scan_to._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{!"branch_weights", i32 2000, i32 1}
!99 = !{!"branch_weights", i32 1, i32 2000}

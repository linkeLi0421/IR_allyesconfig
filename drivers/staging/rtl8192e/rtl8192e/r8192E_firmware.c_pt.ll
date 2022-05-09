; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8192e/rtl8192e/r8192E_firmware.c_pt.bc'
source_filename = "../drivers/staging/rtl8192e/rtl8192e/r8192E_firmware.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.113, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.113 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.rt_firmware = type { i32, [3 x %struct.rt_fw_blob] }
%struct.rt_fw_blob = type { i16, [64000 x i8] }
%struct.firmware = type { i32, ptr, ptr }

@rtl92e_init_fw.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"r8192e_pci\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rtl92e_init_fw\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/staging/rtl8192e/rtl8192e/r8192E_firmware.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c" PlatformInitFirmware()==>\0A\00", [36 x i8] zeroinitializer }, align 32
@rt_global_debug_component = external dso_local local_unnamed_addr global i32, align 4
@rtl92e_init_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017rtl819xE:PlatformInitFirmware: undefined firmware state\0A\0A\00", [36 x i8] zeroinitializer }, align 32
@rtl92e_init_fw._entry_ptr = internal global ptr @rtl92e_init_fw._entry, section ".printk_index", align 4
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RTL8192E/boot.img\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RTL8192E/main.img\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RTL8192E/data.img\00", [46 x i8] zeroinitializer }, align 32
@__const.rtl92e_init_fw.fw_name = private unnamed_addr constant [3 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.7], align 4
@rtl92e_init_fw.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 0, i8 47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Firmware Download Success\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Failed to initialize firmware.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Firmware image %s too big for the device.\0A\00", [53 x i8] zeroinitializer }, align 32
@_rtl92e_fw_check_ready.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"_rtl92e_fw_check_ready\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"_rtl92e_fw_boot_cpu fail!\0A\00", [37 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@_rtl92e_fw_check_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017rtl819xE:_rtl92e_is_fw_ready fail(%d)!\0A\0A\00", [53 x i8] zeroinitializer }, align 32
@_rtl92e_fw_check_ready._entry_ptr = internal global ptr @_rtl92e_fw_check_ready._entry, section ".printk_index", align 4
@_rtl92e_fw_check_ready.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.14, i8 0, i8 22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unknown firmware status\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Firmware download failed.\0A\00", [37 x i8] zeroinitializer }, align 32
@_rtl92e_fw_boot_cpu.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 8, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"_rtl92e_fw_boot_cpu\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Download Firmware: Put code ok!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Firmware boot failed.\0A\00", [41 x i8] zeroinitializer }, align 32
@_rtl92e_fw_boot_cpu.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.19, i8 0, i8 11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Download Firmware: Boot ready!\0A\00", [32 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 144, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 154, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 162, i32 6 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 163, i32 6 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 164, i32 6 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 191, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 195, i32 18 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 107, i32 19 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 70, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 82, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 88, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 31, i32 19 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 34, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 42, i32 19 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [55 x i8] c"../drivers/staging/rtl8192e/rtl8192e/r8192E_firmware.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 46, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @_rtl92e_fw_check_ready._entry, ptr @_rtl92e_fw_check_ready._entry_ptr, ptr @rtl92e_init_fw._entry, ptr @rtl92e_init_fw._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_init_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_fw_check_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92e_init_fw(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %fw.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pFirmware = getelementptr i8, ptr %dev, i32 31784
  %0 = ptrtoint ptr %pFirmware to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pFirmware, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl92e_init_fw.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl92e_init_fw, %if.then)) #5
          to label %do.end6 [label %if.then], !srcloc !54

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtl92e_init_fw.__UNIQUE_ID_ddebug347, ptr noundef %dev, ptr noundef nonnull @.str.3) #5
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.body12 [
    i32 0, label %do.end6.if.end24_crit_edge
    i32 5, label %if.then10
  ]

do.end6.if.end24_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then10:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

do.body12:                                        ; preds = %do.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %5 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %5, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %do.body12.if.end24_crit_edge, label %do.end17

do.body12.if.end24_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

do.end17:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  br label %if.end24

if.end24:                                         ; preds = %do.end17, %do.body12.if.end24_crit_edge, %if.then10, %do.end6.if.end24_crit_edge
  %starting_state.0 = phi i32 [ 2, %if.then10 ], [ 0, %do.end17 ], [ 0, %do.body12.if.end24_crit_edge ], [ %3, %do.end6.if.end24_crit_edge ]
  %cmp28 = phi i1 [ false, %if.then10 ], [ true, %do.end17 ], [ true, %do.body12.if.end24_crit_edge ], [ true, %do.end6.if.end24_crit_edge ]
  %dev1.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  %data.i = getelementptr %struct.rt_firmware, ptr %1, i32 0, i32 1, i32 1, i32 1
  br label %for.body

for.cond:                                         ; preds = %if.end64
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %indvars.iv)
  %cmp26 = icmp ult i32 %indvars.iv, 2
  %exitcond.not = icmp eq i32 %indvars.iv.next, 3
  br i1 %exitcond.not, label %do.body69, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end24
  %indvars.iv = phi i32 [ %starting_state.0, %if.end24 ], [ %indvars.iv.next, %for.cond.for.body_crit_edge ]
  %cmp26136 = phi i1 [ true, %if.end24 ], [ %cmp26, %for.cond.for.body_crit_edge ]
  br i1 %cmp28, label %if.then30, label %for.body.if.end51_crit_edge

for.body.if.end51_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

if.then30:                                        ; preds = %for.body
  %arrayidx = getelementptr %struct.rt_firmware, ptr %1, i32 0, i32 1, i32 %indvars.iv
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp32 = icmp eq i16 %7, 0
  br i1 %cmp32, label %if.then34, label %if.then30.if.end51_crit_edge

if.then30.if.end51_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

if.then34:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %indvars.iv)
  %cmp36 = icmp eq i32 %indvars.iv, 1
  %arrayidx44 = getelementptr [3 x ptr], ptr @__const.rtl92e_init_fw.fw_name, i32 0, i32 %indvars.iv
  %8 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx44, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #5
  %10 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i, align 4, !annotation !55
  %call.i = call i32 @request_firmware(ptr noundef nonnull %fw.i, ptr noundef %9, ptr noundef %dev1.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %_rtl92e_fw_prepare.exit.thread, label %if.end.i

_rtl92e_fw_prepare.exit.thread:                   ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #5
  br label %download_firmware_fail

if.end.i:                                         ; preds = %if.then34
  %conv45 = select i1 %cmp36, i32 128, i32 0
  %11 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fw.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %sub.i = add i32 %14, -1
  %or.i = or i32 %sub.i, 3
  %add.i = add i32 %or.i, 1
  %sub2.i = sub nuw nsw i32 64000, %conv45
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub2.i)
  %cmp3.i = icmp ugt i32 %add.i, %sub2.i
  br i1 %cmp3.i, label %_rtl92e_fw_prepare.exit.thread123, label %if.end6.i

_rtl92e_fw_prepare.exit.thread123:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef %9) #8
  %15 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %16) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #5
  br label %download_firmware_fail

if.end6.i:                                        ; preds = %if.end.i
  br i1 %cmp36, label %if.then7.i, label %if.end6.i.if.end9.i_crit_edge

if.end6.i.if.end9.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = call ptr @memset(ptr %data.i, i32 0, i32 %conv45)
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.end6.i.if.end9.i_crit_edge
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %12, align 4
  %rem.i = and i32 %19, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool11.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool11.not.i, label %if.end9.i.if.end18.i_crit_edge, label %if.then12.i

if.end9.i.if.end18.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %data13.i = getelementptr %struct.rt_firmware, ptr %1, i32 0, i32 1, i32 %indvars.iv, i32 1
  %add.ptr.i = getelementptr i8, ptr %data13.i, i32 %conv45
  %add.ptr17.i = getelementptr i8, ptr %add.ptr.i, i32 %19
  %20 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 0, ptr %add.ptr17.i, align 1
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then12.i, %if.end9.i.if.end18.i_crit_edge
  %data19.i = getelementptr %struct.rt_firmware, ptr %1, i32 0, i32 1, i32 %indvars.iv, i32 1
  %add.ptr22.i = getelementptr i8, ptr %data19.i, i32 %conv45
  %data23.i = getelementptr inbounds %struct.firmware, ptr %12, i32 0, i32 1
  %21 = ptrtoint ptr %data23.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data23.i, align 4
  %23 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %12, align 4
  %25 = call ptr @memcpy(ptr %add.ptr22.i, ptr %22, i32 %24)
  %26 = load i32, ptr %12, align 4
  %sub26.i = add i32 %26, 65535
  %or27.i = or i32 %sub26.i, 3
  %add28.i = or i32 %conv45, 1
  %add30.i = add i32 %or27.i, %add28.i
  %conv31.i = trunc i32 %add30.i to i16
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv31.i, ptr %arrayidx, align 2
  %conv3564.i = and i32 %add30.i, 65532
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3564.i, i32 %conv45)
  %cmp3665.i = icmp ugt i32 %conv3564.i, %conv45
  br i1 %cmp3665.i, label %if.end18.i.for.body.i_crit_edge, label %_rtl92e_fw_prepare.exit.thread122

if.end18.i.for.body.i_crit_edge:                  ; preds = %if.end18.i
  br label %for.body.i

_rtl92e_fw_prepare.exit.thread122:                ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %29) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #5
  br label %if.end51

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end18.i.for.body.i_crit_edge
  %i.066.i = phi i32 [ %add43.i, %for.body.i.for.body.i_crit_edge ], [ %conv45, %if.end18.i.for.body.i_crit_edge ]
  %add.ptr41.i = getelementptr i8, ptr %data19.i, i32 %i.066.i
  %30 = ptrtoint ptr %add.ptr41.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr41.i, align 4
  %32 = call i32 @llvm.bswap.i32(i32 %31) #5
  %33 = ptrtoint ptr %add.ptr41.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %add.ptr41.i, align 4
  %add43.i = add nuw nsw i32 %i.066.i, 4
  %cmp36.i = icmp ult i32 %add43.i, %conv3564.i
  br i1 %cmp36.i, label %for.body.i.for.body.i_crit_edge, label %_rtl92e_fw_prepare.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

_rtl92e_fw_prepare.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %35) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #5
  br label %if.end51

if.end51:                                         ; preds = %_rtl92e_fw_prepare.exit, %_rtl92e_fw_prepare.exit.thread122, %if.then30.if.end51_crit_edge, %for.body.if.end51_crit_edge
  %arrayidx54 = getelementptr %struct.rt_firmware, ptr %1, i32 0, i32 1, i32 %indvars.iv
  %data = getelementptr %struct.rt_firmware, ptr %1, i32 0, i32 1, i32 %indvars.iv, i32 1
  %36 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx54, align 2
  %conv59 = zext i16 %37 to i32
  %call60 = call zeroext i1 @rtl92e_send_cmd_pkt(ptr noundef %dev, i32 noundef 0, ptr noundef %data, i32 noundef %conv59) #5
  br i1 %call60, label %if.end64, label %if.end51.download_firmware_fail_crit_edge

if.end51.download_firmware_fail_crit_edge:        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %download_firmware_fail

if.end64:                                         ; preds = %if.end51
  %38 = trunc i32 %indvars.iv to i8
  %call65 = call fastcc zeroext i1 @_rtl92e_fw_check_ready(ptr noundef %dev, i8 noundef zeroext %38)
  br i1 %call65, label %for.cond, label %if.end64.download_firmware_fail_crit_edge

if.end64.download_firmware_fail_crit_edge:        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %download_firmware_fail

do.body69:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl92e_init_fw.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl92e_init_fw, %if.then81)) #5
          to label %cleanup88 [label %if.then81], !srcloc !54

if.then81:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtl92e_init_fw.__UNIQUE_ID_ddebug348, ptr noundef %dev, ptr noundef nonnull @.str.8) #5
  br label %cleanup88

download_firmware_fail:                           ; preds = %if.end64.download_firmware_fail_crit_edge, %if.end51.download_firmware_fail_crit_edge, %_rtl92e_fw_prepare.exit.thread123, %_rtl92e_fw_prepare.exit.thread
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1) #8
  br label %cleanup88

cleanup88:                                        ; preds = %download_firmware_fail, %if.then81, %do.body69
  %cmp26129 = phi i1 [ %cmp26, %do.body69 ], [ %cmp26, %if.then81 ], [ %cmp26136, %download_firmware_fail ]
  %39 = xor i1 %cmp26129, true
  ret i1 %39
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92e_send_cmd_pkt(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @_rtl92e_fw_check_ready(ptr noundef %dev, i8 noundef zeroext %load_fw_status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pFirmware = getelementptr i8, ptr %dev, i32 31784
  %0 = ptrtoint ptr %pFirmware to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pFirmware, align 4
  %2 = zext i8 %load_fw_status to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %load_fw_status, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb1
    i8 2, label %sw.bb15
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %1, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %1, align 4
  %call3 = tail call fastcc zeroext i1 @_rtl92e_fw_boot_cpu(ptr noundef %dev)
  br i1 %call3, label %if.then, label %do.body5

if.then:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %1, align 4
  br label %sw.epilog

do.body5:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_rtl92e_fw_check_ready.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_rtl92e_fw_check_ready, %if.then11)) #5
          to label %sw.epilog [label %if.then11], !srcloc !54

if.then11:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @_rtl92e_fw_check_ready.__UNIQUE_ID_ddebug345, ptr noundef %dev, ptr noundef nonnull @.str.12) #5
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %9 = add i32 %8, 2
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub2.i = sub i32 %10, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub2.i)
  %cmp3.i = icmp slt i32 %sub2.i, 0
  br i1 %cmp3.i, label %sw.bb15.while.body.i_crit_edge, label %sw.bb15.do.body23_crit_edge

sw.bb15.do.body23_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body23

sw.bb15.while.body.i_crit_edge:                   ; preds = %sw.bb15
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %sw.bb15.while.body.i_crit_edge
  %call1.i = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 256) #5
  %and.i = and i32 %call1.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then20

if.end.i:                                         ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 429496000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %12, %9
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.do.body23_crit_edge

if.end.i.do.body23_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body23

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.then20:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 5, ptr %1, align 4
  br label %sw.epilog

do.body23:                                        ; preds = %if.end.i.do.body23_crit_edge, %sw.bb15.do.body23_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %14 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %14, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %do.body23.sw.epilog_crit_edge, label %do.end28

do.body23.sw.epilog_crit_edge:                    ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end28:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #7
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 0) #8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_rtl92e_fw_check_ready.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_rtl92e_fw_check_ready, %if.then50)) #5
          to label %sw.epilog [label %if.then50], !srcloc !54

if.then50:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @_rtl92e_fw_check_ready.__UNIQUE_ID_ddebug346, ptr noundef %dev, ptr noundef nonnull @.str.14) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then50, %sw.default, %do.end28, %do.body23.sw.epilog_crit_edge, %if.then20, %if.then11, %do.body5, %if.then, %sw.bb
  %rt_status.0.shrunk = phi i1 [ false, %if.then50 ], [ true, %if.then20 ], [ false, %do.end28 ], [ false, %do.body23.sw.epilog_crit_edge ], [ true, %if.then ], [ false, %if.then11 ], [ true, %sw.bb ], [ false, %do.body5 ], [ false, %sw.default ]
  ret i1 %rt_status.0.shrunk
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @_rtl92e_fw_boot_cpu(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %1 = add i32 %0, 20
  %2 = load volatile i32, ptr @jiffies, align 128
  %sub2.i = sub i32 %2, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub2.i)
  %cmp3.i = icmp slt i32 %sub2.i, 0
  br i1 %cmp3.i, label %entry.while.body.i_crit_edge, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %call1.i = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 256) #5
  %and.i = and i32 %call1.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body1

if.end.i:                                         ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 429496000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %4, %1
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.if.then_crit_edge

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.then:                                          ; preds = %if.end.i.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #8
  br label %cleanup

do.body1:                                         ; preds = %while.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_rtl92e_fw_boot_cpu.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_rtl92e_fw_boot_cpu, %if.then5)) #5
          to label %do.end8 [label %if.then5], !srcloc !54

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @_rtl92e_fw_boot_cpu.__UNIQUE_ID_ddebug343, ptr noundef %dev, ptr noundef nonnull @.str.17) #5
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1
  %call9 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 256) #5
  %5 = trunc i32 %call9 to i8
  %conv = or i8 %5, 4
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 256, i8 noundef zeroext %conv) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %8 = add i32 %7, 20
  %9 = load volatile i32, ptr @jiffies, align 128
  %sub2.i42 = sub i32 %9, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub2.i42)
  %cmp3.i43 = icmp slt i32 %sub2.i42, 0
  br i1 %cmp3.i43, label %do.end8.while.body.i47_crit_edge, label %do.end8.if.then11_crit_edge

do.end8.if.then11_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11

do.end8.while.body.i47_crit_edge:                 ; preds = %do.end8
  br label %while.body.i47

while.body.i47:                                   ; preds = %if.end.i50.while.body.i47_crit_edge, %do.end8.while.body.i47_crit_edge
  %call1.i44 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 256) #5
  %and.i45 = and i32 %call1.i44, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45)
  %tobool.not.i46 = icmp eq i32 %and.i45, 0
  br i1 %tobool.not.i46, label %if.end.i50, label %do.body14

if.end.i50:                                       ; preds = %while.body.i47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 429496000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub.i48 = sub i32 %11, %8
  %cmp.i49 = icmp slt i32 %sub.i48, 0
  br i1 %cmp.i49, label %if.end.i50.while.body.i47_crit_edge, label %if.end.i50.if.then11_crit_edge

if.end.i50.if.then11_crit_edge:                   ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11

if.end.i50.while.body.i47_crit_edge:              ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i47

if.then11:                                        ; preds = %if.end.i50.if.then11_crit_edge, %do.end8.if.then11_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #8
  br label %cleanup

do.body14:                                        ; preds = %while.body.i47
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_rtl92e_fw_boot_cpu.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_rtl92e_fw_boot_cpu, %if.then26)) #5
          to label %cleanup [label %if.then26], !srcloc !54

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @_rtl92e_fw_boot_cpu.__UNIQUE_ID_ddebug344, ptr noundef %dev, ptr noundef nonnull @.str.19) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %do.body14, %if.then11, %if.then
  %retval.0 = phi i1 [ false, %if.then11 ], [ false, %if.then ], [ true, %if.then26 ], [ true, %do.body14 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl92e_readl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_writeb(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !16, !18, !19, !21, !23, !25, !26, !27, !29, !30, !31, !33, !34, !36, !38, !39, !40, !42, !44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_firmware.c", i32 144, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @rtl92e_init_fw.__UNIQUE_ID_ddebug347, !1, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_firmware.c", i32 154, i32 3}
!8 = !{ptr @rtl92e_init_fw._entry, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @rtl92e_init_fw._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_firmware.c", i32 162, i32 6}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_firmware.c", i32 163, i32 6}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_firmware.c", i32 164, i32 6}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_firmware.c", i32 191, i32 2}
!18 = !{ptr @rtl92e_init_fw.__UNIQUE_ID_ddebug348, !17, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_firmware.c", i32 195, i32 18}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_firmware.c", i32 107, i32 19}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_firmware.c", i32 70, i32 4}
!25 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @_rtl92e_fw_check_ready.__UNIQUE_ID_ddebug345, !24, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_firmware.c", i32 82, i32 4}
!29 = !{ptr @_rtl92e_fw_check_ready._entry, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @_rtl92e_fw_check_ready._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_firmware.c", i32 88, i32 3}
!33 = !{ptr @_rtl92e_fw_check_ready.__UNIQUE_ID_ddebug346, !32, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_firmware.c", i32 31, i32 19}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_firmware.c", i32 34, i32 2}
!38 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @_rtl92e_fw_boot_cpu.__UNIQUE_ID_ddebug343, !37, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_firmware.c", i32 42, i32 19}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_firmware.c", i32 46, i32 2}
!44 = !{ptr @_rtl92e_fw_boot_cpu.__UNIQUE_ID_ddebug344, !43, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{i64 2148970348, i64 2148970353, i64 2148970366, i64 2148970410, i64 2148970444, i64 2148970465}
!55 = !{!"auto-init"}

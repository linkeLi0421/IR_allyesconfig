; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/devlink_param.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/devlink_param.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.devlink_param = type { i32, ptr, i8, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nfp_devlink_param_u8_arg = type { ptr, ptr, i32, [4 x i8], [4 x i8], i8, i8 }
%struct.nfp_pf = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i32, %struct.mutex }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.99 = type { ptr }

@nfp_devlink_params = internal constant { [2 x %struct.devlink_param], [32 x i8] } { [2 x %struct.devlink_param] [%struct.devlink_param { i32 7, ptr @.str.5, i8 1, i32 0, i32 4, ptr @nfp_devlink_param_u8_get, ptr @nfp_devlink_param_u8_set, ptr @nfp_devlink_param_u8_validate }, %struct.devlink_param { i32 8, ptr @.str.6, i8 1, i32 0, i32 4, ptr @nfp_devlink_param_u8_get, ptr @nfp_devlink_param_u8_set, ptr @nfp_devlink_param_u8_validate }], [32 x i8] zeroinitializer }, align 32
@nfp_devlink_supports_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 216, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to access the NSP: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nfp_devlink_supports_params\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/ethernet/netronome/nfp/devlink_param.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nfp_devlink_supports_params._entry_ptr = internal global ptr @nfp_devlink_supports_params._entry, section ".printk_index", align 4
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fw_load_policy\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reset_dev_on_drv_probe\00", [41 x i8] zeroinitializer }, align 32
@nfp_devlink_u8_args = internal constant { [9 x %struct.nfp_devlink_param_u8_arg], [40 x i8] } { [9 x %struct.nfp_devlink_param_u8_arg] [%struct.nfp_devlink_param_u8_arg zeroinitializer, %struct.nfp_devlink_param_u8_arg zeroinitializer, %struct.nfp_devlink_param_u8_arg zeroinitializer, %struct.nfp_devlink_param_u8_arg zeroinitializer, %struct.nfp_devlink_param_u8_arg zeroinitializer, %struct.nfp_devlink_param_u8_arg zeroinitializer, %struct.nfp_devlink_param_u8_arg zeroinitializer, %struct.nfp_devlink_param_u8_arg { ptr @.str.16, ptr @.str.17, i32 3, [4 x i8] c"\02\01\00\00", [4 x i8] c"\02\01\00\00", i8 2, i8 2 }, %struct.nfp_devlink_param_u8_arg { ptr @.str.18, ptr @.str.19, i32 0, [4 x i8] c"\03\01\02\00", [4 x i8] c"\00\01\02\00", i8 3, i8 2 }], [40 x i8] zeroinitializer }, align 32
@nfp_devlink_param_u8_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 101, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nfp: can't access NSP: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nfp_devlink_param_u8_get\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@nfp_devlink_param_u8_get._entry_ptr = internal global ptr @nfp_devlink_param_u8_get._entry, section ".printk_index", align 4
@nfp_devlink_param_u8_get._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.2, i32 109, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"nfp: HWinfo lookup failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@nfp_devlink_param_u8_get._entry_ptr.12 = internal global ptr @nfp_devlink_param_u8_get._entry.10, section ".printk_index", align 4
@nfp_devlink_param_u8_get._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.8, ptr @.str.2, i32 116, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"nfp: HWinfo '%s' value %li invalid\0A\00", [60 x i8] zeroinitializer }, align 32
@nfp_devlink_param_u8_get._entry_ptr.15 = internal global ptr @nfp_devlink_param_u8_get._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"app_fw_from_flash\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"2\00", [30 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"abi_drv_reset\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@nfp_devlink_param_u8_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.20, ptr @.str.2, i32 151, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nfp_devlink_param_u8_set\00", [39 x i8] zeroinitializer }, align 32
@nfp_devlink_param_u8_set._entry_ptr = internal global ptr @nfp_devlink_param_u8_set._entry, section ".printk_index", align 4
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s=%u\00", [26 x i8] zeroinitializer }, align 32
@nfp_devlink_param_u8_set._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.20, ptr @.str.2, i32 160, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nfp: HWinfo set failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@nfp_devlink_param_u8_set._entry_ptr.24 = internal global ptr @nfp_devlink_param_u8_set._entry.22, section ".printk_index", align 4
@nfp_devlink_param_u8_validate.__msg = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nfp: parameter out of range\00", [36 x i8] zeroinitializer }, align 32
@nfp_devlink_param_u8_validate.__msg.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"nfp: unknown/invalid value specified\00", [59 x i8] zeroinitializer }, align 32
@___asan_gen_.26 = private unnamed_addr constant [19 x i8] c"nfp_devlink_params\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 194, i32 35 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 216, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 195, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 200, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [20 x i8] c"nfp_devlink_u8_args\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 31, i32 46 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 101, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 109, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 115, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 33, i32 18 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 34, i32 21 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 57, i32 18 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 58, i32 21 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 151, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 156, i32 35 }
@___asan_gen_.101 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 160, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 182, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.111 = private constant [54 x i8] c"../drivers/net/ethernet/netronome/nfp/devlink_param.c\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 187, i32 3 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @nfp_devlink_param_u8_get._entry, ptr @nfp_devlink_param_u8_get._entry.10, ptr @nfp_devlink_param_u8_get._entry.13, ptr @nfp_devlink_param_u8_get._entry_ptr, ptr @nfp_devlink_param_u8_get._entry_ptr.12, ptr @nfp_devlink_param_u8_get._entry_ptr.15, ptr @nfp_devlink_param_u8_set._entry, ptr @nfp_devlink_param_u8_set._entry.22, ptr @nfp_devlink_param_u8_set._entry_ptr, ptr @nfp_devlink_param_u8_set._entry_ptr.24, ptr @nfp_devlink_supports_params._entry, ptr @nfp_devlink_supports_params._entry_ptr, ptr @nfp_devlink_params, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @nfp_devlink_u8_args, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @nfp_devlink_param_u8_validate.__msg, ptr @nfp_devlink_param_u8_validate.__msg.25], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_devlink_params to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_devlink_supports_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_devlink_u8_args to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_devlink_param_u8_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_devlink_param_u8_get._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_devlink_param_u8_get._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_devlink_param_u8_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_devlink_param_u8_set._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_devlink_param_u8_validate.__msg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_devlink_param_u8_validate.__msg.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_devlink_params_register(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @priv_to_devlink(ptr noundef %pf) #5
  %cpp.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 1
  %0 = ptrtoint ptr %cpp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpp.i, align 4
  %call.i = tail call ptr @nfp_nsp_open(ptr noundef %1) #5
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call.i to i32
  %3 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pf, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str, i32 noundef %2) #8
  br label %nfp_devlink_supports_params.exit

if.end.i:                                         ; preds = %entry
  %call.i.i = tail call zeroext i16 @nfp_nsp_get_abi_ver_minor(ptr noundef %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %call.i.i)
  %cmp.i13.i = icmp ugt i16 %call.i.i, 24
  br i1 %cmp.i13.i, label %land.rhs.i, label %if.end.i.land.end.i_crit_edge

if.end.i.land.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end.i

land.rhs.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i14.i = tail call zeroext i16 @nfp_nsp_get_abi_ver_minor(ptr noundef %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 25, i16 %call.i14.i)
  %cmp.i15.i = icmp ugt i16 %call.i14.i, 25
  %phi.cast.i = zext i1 %cmp.i15.i to i32
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %if.end.i.land.end.i_crit_edge
  %5 = phi i32 [ 0, %if.end.i.land.end.i_crit_edge ], [ %phi.cast.i, %land.rhs.i ]
  tail call void @nfp_nsp_close(ptr noundef %call.i) #5
  br label %nfp_devlink_supports_params.exit

nfp_devlink_supports_params.exit:                 ; preds = %land.end.i, %if.then.i
  %retval.0.i = phi i32 [ %2, %if.then.i ], [ %5, %land.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 1
  br i1 %cmp, label %nfp_devlink_supports_params.exit.cleanup_crit_edge, label %if.end

nfp_devlink_supports_params.exit.cleanup_crit_edge: ; preds = %nfp_devlink_supports_params.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %nfp_devlink_supports_params.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @devlink_params_register(ptr noundef %call, ptr noundef nonnull @nfp_devlink_params, i32 noundef 2) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %nfp_devlink_supports_params.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %retval.0.i, %nfp_devlink_supports_params.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @priv_to_devlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_params_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_devlink_params_unregister(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cpp.i = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 1
  %0 = ptrtoint ptr %cpp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpp.i, align 4
  %call.i = tail call ptr @nfp_nsp_open(ptr noundef %1) #5
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call.i to i32
  %3 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pf, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str, i32 noundef %2) #8
  br label %nfp_devlink_supports_params.exit

if.end.i:                                         ; preds = %entry
  %call.i.i = tail call zeroext i16 @nfp_nsp_get_abi_ver_minor(ptr noundef %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %call.i.i)
  %cmp.i13.i = icmp ugt i16 %call.i.i, 24
  br i1 %cmp.i13.i, label %land.rhs.i, label %if.end.i.land.end.i_crit_edge

if.end.i.land.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end.i

land.rhs.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i14.i = tail call zeroext i16 @nfp_nsp_get_abi_ver_minor(ptr noundef %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 25, i16 %call.i14.i)
  %cmp.i15.i = icmp ugt i16 %call.i14.i, 25
  %phi.cast.i = zext i1 %cmp.i15.i to i32
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %if.end.i.land.end.i_crit_edge
  %5 = phi i32 [ 0, %if.end.i.land.end.i_crit_edge ], [ %phi.cast.i, %land.rhs.i ]
  tail call void @nfp_nsp_close(ptr noundef %call.i) #5
  br label %nfp_devlink_supports_params.exit

nfp_devlink_supports_params.exit:                 ; preds = %land.end.i, %if.then.i
  %retval.0.i = phi i32 [ %2, %if.then.i ], [ %5, %land.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 1
  br i1 %cmp, label %nfp_devlink_supports_params.exit.cleanup_crit_edge, label %if.end

nfp_devlink_supports_params.exit.cleanup_crit_edge: ; preds = %nfp_devlink_supports_params.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %nfp_devlink_supports_params.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call ptr @priv_to_devlink(ptr noundef %pf) #5
  tail call void @devlink_params_unregister(ptr noundef %call1, ptr noundef nonnull @nfp_devlink_params, i32 noundef 2) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %nfp_devlink_supports_params.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_params_unregister(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_nsp_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_nsp_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nfp_nsp_get_abi_ver_minor(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_devlink_param_u8_get(ptr noundef %devlink, i32 noundef %id, ptr nocapture noundef writeonly %ctx) #0 align 64 {
entry:
  %hwinfo = alloca [32 x i8], align 1
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %hwinfo) #5
  %0 = call ptr @memset(ptr %hwinfo, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #5
  %1 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %value, align 4, !annotation !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %id)
  %cmp = icmp ugt i32 %id, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %cpp = getelementptr inbounds %struct.nfp_pf, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpp, align 4
  %call1 = tail call ptr @nfp_nsp_open(ptr noundef %3) #5
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call1 to i32
  %5 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cpp, align 4
  %call6 = tail call ptr @nfp_cpp_device(ptr noundef %6) #5
  %parent = getelementptr inbounds %struct.device, ptr %call6, i32 0, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.7, i32 noundef %4) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %arrayidx = getelementptr [9 x %struct.nfp_devlink_param_u8_arg], ptr @nfp_devlink_u8_args, i32 0, i32 %id
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %call8 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %hwinfo, i32 noundef 32, ptr noundef %10)
  %default_hi_val = getelementptr [9 x %struct.nfp_devlink_param_u8_arg], ptr @nfp_devlink_u8_args, i32 0, i32 %id, i32 1
  %11 = ptrtoint ptr %default_hi_val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %default_hi_val, align 4
  %call10 = call i32 @nfp_nsp_hwinfo_lookup_optional(ptr noundef %call1, ptr noundef nonnull %hwinfo, i32 noundef 32, ptr noundef %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end18, label %do.end14

do.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cpp, align 4
  %call16 = call ptr @nfp_cpp_device(ptr noundef %14) #5
  %parent17 = getelementptr inbounds %struct.device, ptr %call16, i32 0, i32 1
  %15 = ptrtoint ptr %parent17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent17, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.11, i32 noundef %call10) #8
  br label %exit_close_nsp

if.end18:                                         ; preds = %if.end7
  %call.i = call i32 @_kstrtol(ptr noundef nonnull %hwinfo, i32 noundef 0, ptr noundef nonnull %value) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool21.not = icmp eq i32 %call.i, 0
  br i1 %tobool21.not, label %lor.lhs.false, label %if.end18.do.end29_crit_edge

if.end18.do.end29_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end29

lor.lhs.false:                                    ; preds = %if.end18
  %17 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp22 = icmp slt i32 %18, 0
  br i1 %cmp22, label %lor.lhs.false.do.end29_crit_edge, label %lor.lhs.false23

lor.lhs.false.do.end29_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end29

lor.lhs.false23:                                  ; preds = %lor.lhs.false
  %max_hi_val = getelementptr [9 x %struct.nfp_devlink_param_u8_arg], ptr @nfp_devlink_u8_args, i32 0, i32 %id, i32 6
  %19 = ptrtoint ptr %max_hi_val to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %max_hi_val, align 1
  %conv = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv)
  %cmp24 = icmp ugt i32 %18, %conv
  br i1 %cmp24, label %lor.lhs.false23.do.end29_crit_edge, label %if.end41

lor.lhs.false23.do.end29_crit_edge:               ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end29

do.end29:                                         ; preds = %lor.lhs.false23.do.end29_crit_edge, %lor.lhs.false.do.end29_crit_edge, %if.end18.do.end29_crit_edge
  %21 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cpp, align 4
  %call31 = call ptr @nfp_cpp_device(ptr noundef %22) #5
  %parent32 = getelementptr inbounds %struct.device, ptr %call31, i32 0, i32 1
  %23 = ptrtoint ptr %parent32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent32, align 8
  %25 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %value, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.14, ptr noundef %10, i32 noundef %26) #8
  %invalid_dl_val = getelementptr [9 x %struct.nfp_devlink_param_u8_arg], ptr @nfp_devlink_u8_args, i32 0, i32 %id, i32 2
  %27 = ptrtoint ptr %invalid_dl_val to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %invalid_dl_val, align 4
  %conv38 = trunc i32 %28 to i8
  %29 = ptrtoint ptr %ctx to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv38, ptr %ctx, align 4
  br label %exit_close_nsp

if.end41:                                         ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx42 = getelementptr [9 x %struct.nfp_devlink_param_u8_arg], ptr @nfp_devlink_u8_args, i32 0, i32 %id, i32 3, i32 %18
  %30 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx42, align 1
  %32 = ptrtoint ptr %ctx to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %ctx, align 4
  br label %exit_close_nsp

exit_close_nsp:                                   ; preds = %if.end41, %do.end29, %do.end14
  %err.0 = phi i32 [ %call10, %do.end14 ], [ %call.i, %do.end29 ], [ 0, %if.end41 ]
  call void @nfp_nsp_close(ptr noundef %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %exit_close_nsp, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then3 ], [ %err.0, %exit_close_nsp ], [ -95, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %hwinfo) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_devlink_param_u8_set(ptr noundef %devlink, i32 noundef %id, ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  %hwinfo = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %hwinfo) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %id)
  %cmp = icmp ugt i32 %id, 8
  %0 = call ptr @memset(ptr %hwinfo, i32 255, i32 32)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %cpp = getelementptr inbounds %struct.nfp_pf, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cpp, align 4
  %call1 = tail call ptr @nfp_nsp_open(ptr noundef %2) #5
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call1 to i32
  %4 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpp, align 4
  %call6 = tail call ptr @nfp_cpp_device(ptr noundef %5) #5
  %parent = getelementptr inbounds %struct.device, ptr %call6, i32 0, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.7, i32 noundef %3) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %arrayidx = getelementptr [9 x %struct.nfp_devlink_param_u8_arg], ptr @nfp_devlink_u8_args, i32 0, i32 %id
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ctx, align 4
  %idxprom = zext i8 %11 to i32
  %arrayidx8 = getelementptr [9 x %struct.nfp_devlink_param_u8_arg], ptr @nfp_devlink_u8_args, i32 0, i32 %id, i32 4, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx8, align 1
  %conv = zext i8 %13 to i32
  %call9 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %hwinfo, i32 noundef 32, ptr noundef nonnull @.str.21, ptr noundef %9, i32 noundef %conv)
  %call11 = call i32 @nfp_nsp_hwinfo_set(ptr noundef %call1, ptr noundef nonnull %hwinfo, i32 noundef 32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end7.exit_close_nsp_crit_edge, label %do.end15

if.end7.exit_close_nsp_crit_edge:                 ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_close_nsp

do.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cpp, align 4
  %call17 = call ptr @nfp_cpp_device(ptr noundef %15) #5
  %parent18 = getelementptr inbounds %struct.device, ptr %call17, i32 0, i32 1
  %16 = ptrtoint ptr %parent18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent18, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.23, i32 noundef %call11) #8
  br label %exit_close_nsp

exit_close_nsp:                                   ; preds = %do.end15, %if.end7.exit_close_nsp_crit_edge
  call void @nfp_nsp_close(ptr noundef %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %exit_close_nsp, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then3 ], [ %call11, %exit_close_nsp ], [ -95, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %hwinfo) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_devlink_param_u8_validate(ptr nocapture noundef readnone %devlink, i32 noundef %id, [8 x i32] %val.coerce, ptr noundef writeonly %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %id)
  %cmp = icmp ugt i32 %id, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %val.coerce.fca.0.extract = extractvalue [8 x i32] %val.coerce, 0
  %val.sroa.0.0.extract.shift = lshr i32 %val.coerce.fca.0.extract, 24
  %max_dl_val = getelementptr [9 x %struct.nfp_devlink_param_u8_arg], ptr @nfp_devlink_u8_args, i32 0, i32 %id, i32 5
  %0 = ptrtoint ptr %max_dl_val to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %max_dl_val, align 4
  %conv1 = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %val.sroa.0.0.extract.shift, i32 %conv1)
  %cmp2 = icmp ugt i32 %val.sroa.0.0.extract.shift, %conv1
  br i1 %cmp2, label %do.body, label %if.end7

do.body:                                          ; preds = %if.end
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_devlink_param_u8_validate.__msg) #5
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.body.cleanup.sink.split_crit_edge

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %invalid_dl_val = getelementptr [9 x %struct.nfp_devlink_param_u8_arg], ptr @nfp_devlink_u8_args, i32 0, i32 %id, i32 2
  %2 = ptrtoint ptr %invalid_dl_val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %invalid_dl_val, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %val.sroa.0.0.extract.shift, i32 %3)
  %cmp9 = icmp eq i32 %val.sroa.0.0.extract.shift, %3
  br i1 %cmp9, label %do.body12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body12:                                        ; preds = %if.end7
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_devlink_param_u8_validate.__msg.25) #5
  %tobool14.not = icmp eq ptr %extack, null
  br i1 %tobool14.not, label %do.body12.cleanup_crit_edge, label %do.body12.cleanup.sink.split_crit_edge

do.body12.cleanup.sink.split_crit_edge:           ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

do.body12.cleanup_crit_edge:                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body12.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge
  %nfp_devlink_param_u8_validate.__msg.25.sink = phi ptr [ @nfp_devlink_param_u8_validate.__msg, %do.body.cleanup.sink.split_crit_edge ], [ @nfp_devlink_param_u8_validate.__msg.25, %do.body12.cleanup.sink.split_crit_edge ]
  %4 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %nfp_devlink_param_u8_validate.__msg.25.sink, ptr %extack, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %do.body12.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ -22, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_cpp_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_nsp_hwinfo_lookup_optional(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_nsp_hwinfo_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !32, !34, !36, !38, !40, !41, !42, !44, !46, !47, !48, !50}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/devlink_param.c", i32 216, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nfp_devlink_supports_params._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nfp_devlink_supports_params._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/netronome/nfp/devlink_param.c", i32 195, i32 2}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/netronome/nfp/devlink_param.c", i32 200, i32 2}
!12 = !{ptr @nfp_devlink_params, !13, !"nfp_devlink_params", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/netronome/nfp/devlink_param.c", i32 194, i32 35}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/netronome/nfp/devlink_param.c", i32 101, i32 3}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @nfp_devlink_param_u8_get._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @nfp_devlink_param_u8_get._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/netronome/nfp/devlink_param.c", i32 109, i32 3}
!22 = !{ptr @nfp_devlink_param_u8_get._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @nfp_devlink_param_u8_get._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/netronome/nfp/devlink_param.c", i32 115, i32 3}
!26 = !{ptr @nfp_devlink_param_u8_get._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @nfp_devlink_param_u8_get._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/netronome/nfp/devlink_param.c", i32 33, i32 18}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/netronome/nfp/devlink_param.c", i32 34, i32 21}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/netronome/nfp/devlink_param.c", i32 57, i32 18}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/netronome/nfp/devlink_param.c", i32 58, i32 21}
!36 = !{ptr @nfp_devlink_u8_args, !37, !"nfp_devlink_u8_args", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/netronome/nfp/devlink_param.c", i32 31, i32 46}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/netronome/nfp/devlink_param.c", i32 151, i32 3}
!40 = !{ptr @nfp_devlink_param_u8_set._entry, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @nfp_devlink_param_u8_set._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/netronome/nfp/devlink_param.c", i32 156, i32 35}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/netronome/nfp/devlink_param.c", i32 160, i32 3}
!46 = !{ptr @nfp_devlink_param_u8_set._entry.22, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @nfp_devlink_param_u8_set._entry_ptr.24, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @nfp_devlink_param_u8_validate.__msg, !49, !"__msg", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/netronome/nfp/devlink_param.c", i32 182, i32 3}
!50 = !{ptr @nfp_devlink_param_u8_validate.__msg.25, !51, !"__msg", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/netronome/nfp/devlink_param.c", i32 187, i32 3}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{!"auto-init"}

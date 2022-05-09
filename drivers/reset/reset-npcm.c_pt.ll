; ModuleID = '/llk/IR_all_yes/drivers/reset/reset-npcm.c_pt.bc'
source_filename = "../drivers/reset/reset-npcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.npcm_rc_data = type { %struct.reset_controller_dev, %struct.notifier_block, i32, ptr, %struct.spinlock }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_reset_npcm__170_291_npcm_rc_driver_init6 = internal global ptr @npcm_rc_driver_init, section ".initcall6.init", align 4
@npcm_rc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @npcm_rc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @npcm_rc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"npcm-reset\00", [21 x i8] zeroinitializer }, align 32
@npcm_rc_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nuvoton,npcm750-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.str.24 }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@npcm_rc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&rc->lock\00", [22 x i8] zeroinitializer }, align 32
@npcm_rc_ops = internal constant { %struct.reset_control_ops, [16 x i8] } { %struct.reset_control_ops { ptr null, ptr @npcm_rc_assert, ptr @npcm_rc_deassert, ptr @npcm_rc_status }, [16 x i8] zeroinitializer }, align 32
@npcm_rc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 262, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to register device\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"npcm_rc_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/reset/reset-npcm.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@npcm_rc_probe._entry_ptr = internal global ptr @npcm_rc_probe._entry, section ".printk_index", align 4
@npcm_rc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 267, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"NPCM USB reset failed, can cause issues with UDC and USB host\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@npcm_rc_probe._entry_ptr.10 = internal global ptr @npcm_rc_probe._entry.7, section ".printk_index", align 4
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nuvoton,sw-reset-number\00", [40 x i8] zeroinitializer }, align 32
@npcm_rc_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 276, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to register restart handler\0A\00", [60 x i8] zeroinitializer }, align 32
@npcm_rc_probe._entry_ptr.14 = internal global ptr @npcm_rc_probe._entry.12, section ".printk_index", align 4
@npcm_reset_xlate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 128, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error reset register (0x%x)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"npcm_reset_xlate\00", [47 x i8] zeroinitializer }, align 32
@npcm_reset_xlate._entry_ptr = internal global ptr @npcm_reset_xlate._entry, section ".printk_index", align 4
@npcm_reset_xlate._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.4, i32 133, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error reset number (%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@npcm_reset_xlate._entry_ptr.19 = internal global ptr @npcm_reset_xlate._entry.17, section ".printk_index", align 4
@npcm_usb_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 165, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Failed to find %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"npcm_usb_reset\00", [17 x i8] zeroinitializer }, align 32
@npcm_usb_reset._entry_ptr = internal global ptr @npcm_usb_reset._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@npcm_rc_restart._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\010%s: unable to restart system\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"npcm_rc_restart\00", [16 x i8] zeroinitializer }, align 32
@npcm_rc_restart._entry_ptr = internal global ptr @npcm_rc_restart._entry, section ".printk_index", align 4
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nuvoton,npcm750-gcr\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 36, i64 52]
@___asan_gen_.25 = private unnamed_addr constant [15 x i8] c"npcm_rc_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 283, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 286, i32 13 }
@___asan_gen_.31 = private unnamed_addr constant [14 x i8] c"npcm_rc_match\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 140, i32 34 }
@___asan_gen_.34 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 250, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [12 x i8] c"npcm_rc_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 231, i32 39 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 262, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 267, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 269, i32 47 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 276, i32 5 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 128, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 133, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 165, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 74, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private constant [30 x i8] c"../drivers/reset/reset-npcm.c\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 142, i32 19 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__initcall__kmod_reset_npcm__170_291_npcm_rc_driver_init6, ptr @npcm_rc_probe._entry, ptr @npcm_rc_probe._entry.12, ptr @npcm_rc_probe._entry.7, ptr @npcm_rc_probe._entry_ptr, ptr @npcm_rc_probe._entry_ptr.10, ptr @npcm_rc_probe._entry_ptr.14, ptr @npcm_rc_restart._entry, ptr @npcm_rc_restart._entry_ptr, ptr @npcm_reset_xlate._entry, ptr @npcm_reset_xlate._entry.17, ptr @npcm_reset_xlate._entry_ptr, ptr @npcm_reset_xlate._entry_ptr.19, ptr @npcm_usb_reset._entry, ptr @npcm_usb_reset._entry_ptr, ptr @npcm_rc_driver, ptr @.str, ptr @npcm_rc_match, ptr @npcm_rc_probe.__key, ptr @.str.1, ptr @npcm_rc_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_rc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_rc_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_rc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_rc_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_rc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_rc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_rc_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_reset_xlate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_reset_xlate._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_usb_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_rc_restart._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm_rc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @npcm_rc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm_rc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %mdlr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 108, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %base = getelementptr inbounds %struct.npcm_rc_data, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %do.body

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

do.body:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.npcm_rc_data, ptr %call.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @npcm_rc_probe.__key, i16 noundef signext 3) #6
  %owner = getelementptr inbounds %struct.reset_controller_dev, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %owner, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @npcm_rc_ops, ptr %call.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %of_node12 = getelementptr inbounds %struct.reset_controller_dev, ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %of_node12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %of_node12, align 4
  %of_reset_n_cells = getelementptr inbounds %struct.reset_controller_dev, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %of_reset_n_cells to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %of_reset_n_cells, align 4
  %of_xlate = getelementptr inbounds %struct.reset_controller_dev, ptr %call.i, i32 0, i32 7
  %8 = ptrtoint ptr %of_xlate to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @npcm_reset_xlate, ptr %of_xlate, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call17 = tail call i32 @devm_reset_controller_register(ptr noundef %dev, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end24, label %do.end22

do.end22:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end24:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mdlr.i) #6
  %10 = ptrtoint ptr %mdlr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %mdlr.i, align 4, !annotation !62
  %driver.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 6
  %11 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver.i, align 4
  %of_match_table.i = getelementptr inbounds %struct.device_driver, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %of_match_table.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_match_table.i, align 4
  %call.i85 = tail call ptr @of_match_device(ptr noundef %14, ptr noundef %dev) #6
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %call.i85, i32 0, i32 3
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i, align 4
  %call2.i = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef %16) #6
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %npcm_usb_reset.exit, label %npcm_usb_reset.exit.thread

npcm_usb_reset.exit.thread:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = call i32 @regmap_read(ptr noundef %call2.i, i32 noundef 124, ptr noundef nonnull %mdlr.i) #6
  %17 = ptrtoint ptr %mdlr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mdlr.i, align 4
  %and.i = and i32 %18, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %19 = lshr exact i32 %and.i, 5
  %20 = xor i32 %19, 16
  %and9.i = lshr i32 %18, 3
  %21 = and i32 %and9.i, 32
  %22 = xor i32 %21, 32
  %and14.i = and i32 %18, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  %or17.i = or i32 %22, 37748992
  %ipsrst1_bits.1.i = select i1 %tobool15.not.i, i32 %or17.i, i32 %22
  %or22.i = or i32 %ipsrst1_bits.1.i, 25165824
  %or23.i = or i32 %20, 224
  %ipsrst3_bits.1.i = select i1 %tobool.not.i, i32 %or23.i, i32 %20
  %ipsrst1_bits.2.i = select i1 %tobool.not.i, i32 %or22.i, i32 %ipsrst1_bits.1.i
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 32
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !63
  %26 = call i32 @llvm.bswap.i32(i32 %25) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %add.ptr30.i = getelementptr i8, ptr %28, i32 36
  %29 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30.i) #6, !srcloc !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 4
  %add.ptr37.i = getelementptr i8, ptr %31, i32 52
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37.i) #6, !srcloc !63
  %33 = call i32 @llvm.bswap.i32(i32 %32) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %or41.i = or i32 %ipsrst1_bits.2.i, %26
  %34 = or i32 %29, 4
  %or44.i = or i32 %33, %ipsrst3_bits.1.i
  %or45.i = or i32 %or44.i, 50331648
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  call void @arm_heavy_mb() #6
  %35 = call i32 @llvm.bswap.i32(i32 %or41.i) #6
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base, align 4
  %add.ptr50.i = getelementptr i8, ptr %37, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50.i, i32 %35) #6, !srcloc !68
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  call void @arm_heavy_mb() #6
  %38 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base, align 4
  %add.ptr55.i = getelementptr i8, ptr %39, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55.i, i32 %34) #6, !srcloc !68
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  call void @arm_heavy_mb() #6
  %40 = call i32 @llvm.bswap.i32(i32 %or45.i) #6
  %41 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base, align 4
  %add.ptr60.i = getelementptr i8, ptr %42, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60.i, i32 %40) #6, !srcloc !68
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %call2.i, i32 noundef 320, i32 noundef 268435456, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %call.i137.i = call i32 @regmap_update_bits_base(ptr noundef %call2.i, i32 noundef 324, i32 noundef 268435456, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %and63.i = and i32 %or44.i, -50331649
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  call void @arm_heavy_mb() #6
  %43 = call i32 @llvm.bswap.i32(i32 %and63.i) #6
  %44 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base, align 4
  %add.ptr68.i = getelementptr i8, ptr %45, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68.i, i32 %43) #6, !srcloc !68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %46(i32 noundef 10737400) #6
  %call.i138.i = call i32 @regmap_update_bits_base(ptr noundef %call2.i, i32 noundef 320, i32 noundef 268435456, i32 noundef 268435456, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %call.i139.i = call i32 @regmap_update_bits_base(ptr noundef %call2.i, i32 noundef 324, i32 noundef 268435456, i32 noundef 268435456, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %neg.i = xor i32 %ipsrst1_bits.2.i, -1
  %and71.i = and i32 %26, %neg.i
  %47 = and i32 %29, -5
  %neg74.i = xor i32 %ipsrst3_bits.1.i, -1
  %and75.i = and i32 %and63.i, %neg74.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @arm_heavy_mb() #6
  %48 = call i32 @llvm.bswap.i32(i32 %and71.i) #6
  %49 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base, align 4
  %add.ptr80.i = getelementptr i8, ptr %50, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80.i, i32 %48) #6, !srcloc !68
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  call void @arm_heavy_mb() #6
  %51 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base, align 4
  %add.ptr85.i = getelementptr i8, ptr %52, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85.i, i32 %47) #6, !srcloc !68
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  call void @arm_heavy_mb() #6
  %53 = call i32 @llvm.bswap.i32(i32 %and75.i) #6
  %54 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base, align 4
  %add.ptr90.i = getelementptr i8, ptr %55, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90.i, i32 %53) #6, !srcloc !68
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mdlr.i) #6
  br label %if.end32

npcm_usb_reset.exit:                              ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef %16) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mdlr.i) #6
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  br label %if.end32

if.end32:                                         ; preds = %npcm_usb_reset.exit, %npcm_usb_reset.exit.thread
  %56 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %of_node, align 8
  %sw_reset_number = getelementptr inbounds %struct.npcm_rc_data, ptr %call.i, i32 0, i32 2
  %call.i.i86 = call i32 @of_property_read_variable_u32_array(ptr noundef %57, ptr noundef nonnull @.str.11, ptr noundef %sw_reset_number, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i86)
  %tobool36.not = icmp sgt i32 %call.i.i86, -1
  br i1 %tobool36.not, label %if.then37, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then37:                                        ; preds = %if.end32
  %58 = ptrtoint ptr %sw_reset_number to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sw_reset_number, align 4
  %60 = add i32 %59, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %60)
  %61 = icmp ult i32 %60, 4
  br i1 %61, label %if.then41, label %if.then37.cleanup_crit_edge

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then41:                                        ; preds = %if.then37
  %restart_nb = getelementptr inbounds %struct.npcm_rc_data, ptr %call.i, i32 0, i32 1
  %priority = getelementptr inbounds %struct.npcm_rc_data, ptr %call.i, i32 0, i32 1, i32 2
  %62 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 192, ptr %priority, align 4
  %63 = ptrtoint ptr %restart_nb to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @npcm_rc_restart, ptr %restart_nb, align 4
  %call44 = call i32 @register_restart_handler(ptr noundef %restart_nb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then41.cleanup_crit_edge, label %do.end49

if.then41.cleanup_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end49:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.13) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %if.then41.cleanup_crit_edge, %if.then37.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %do.end22, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then4 ], [ %call17, %do.end22 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end32.cleanup_crit_edge ], [ %call44, %do.end49 ], [ 0, %if.then41.cleanup_crit_edge ], [ 0, %if.then37.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm_reset_xlate(ptr nocapture noundef readonly %rcdev, ptr nocapture noundef readonly %reset_spec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %reset_spec, i32 0, i32 2
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.end [
    i32 32, label %entry.if.end_crit_edge
    i32 36, label %entry.if.end_crit_edge23
    i32 52, label %entry.if.end_crit_edge24
  ]

entry.if.end_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.reset_controller_dev, ptr %rcdev, i32 0, i32 4
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.15, i32 noundef %1) #9
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge23, %entry.if.end_crit_edge24
  %arrayidx5 = getelementptr %struct.of_phandle_args, ptr %reset_spec, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %6)
  %cmp6 = icmp ugt i32 %6, 31
  br i1 %cmp6, label %do.end10, label %if.end12

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev11 = getelementptr inbounds %struct.reset_controller_dev, ptr %rcdev, i32 0, i32 4
  %7 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.18, i32 noundef %6) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %shl = shl nuw nsw i32 %1, 8
  %or = or i32 %6, %shl
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end10, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end10 ], [ %or, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_reset_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm_rc_restart(ptr nocapture noundef readonly %nb, i32 noundef %mode, ptr nocapture noundef readnone %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %sw_reset_number = getelementptr i8, ptr %nb, i32 12
  %0 = ptrtoint ptr %sw_reset_number to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sw_reset_number, align 4
  %shl = shl i32 4, %1
  %2 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %base = getelementptr i8, ptr %nb, i32 16
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr1 = getelementptr i8, ptr %4, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %2) #6, !srcloc !68
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %__ms.07 = phi i32 [ 1000, %entry ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.07, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #6
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_restart_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm_rc_assert(ptr noundef %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %id, 31
  %shl.i = shl nuw i32 1, %and.i
  %shr.i = lshr i32 %id, 8
  %lock.i = getelementptr inbounds %struct.npcm_rc_data, ptr %rcdev, i32 0, i32 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %base.i = getelementptr inbounds %struct.npcm_rc_data, ptr %rcdev, i32 0, i32 3
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %1, i32 %shr.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #6, !srcloc !63
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %or.i = or i32 %3, %shl.i
  %4 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %6, i32 %shr.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %4) #6, !srcloc !68
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm_rc_deassert(ptr noundef %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %id, 31
  %shl.i = shl nuw i32 1, %and.i
  %shr.i = lshr i32 %id, 8
  %lock.i = getelementptr inbounds %struct.npcm_rc_data, ptr %rcdev, i32 0, i32 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %base.i = getelementptr inbounds %struct.npcm_rc_data, ptr %rcdev, i32 0, i32 3
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %1, i32 %shr.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #6, !srcloc !63
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %neg.i = xor i32 %shl.i, -1
  %and18.i = and i32 %3, %neg.i
  %4 = tail call i32 @llvm.bswap.i32(i32 %and18.i) #6
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %6, i32 %shr.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %4) #6, !srcloc !68
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm_rc_status(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %id, 31
  %shl = shl nuw i32 1, %and
  %shr = lshr i32 %id, 8
  %base = getelementptr inbounds %struct.npcm_rc_data, ptr %rcdev, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 %shr
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #6, !srcloc !63
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  %and4 = and i32 %3, %shl
  ret i32 %and4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !14, !15, !16, !17, !19, !20, !21, !22, !24, !26, !27, !28, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__initcall__kmod_reset_npcm__170_291_npcm_rc_driver_init6, !1, !"__initcall__kmod_reset_npcm__170_291_npcm_rc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/reset/reset-npcm.c", i32 291, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/reset/reset-npcm.c", i32 286, i32 13}
!4 = !{ptr @npcm_rc_driver, !5, !"npcm_rc_driver", i1 false, i1 false}
!5 = !{!"../drivers/reset/reset-npcm.c", i32 283, i32 31}
!6 = !{ptr @npcm_rc_probe.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/reset/reset-npcm.c", i32 250, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/reset/reset-npcm.c", i32 262, i32 3}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @npcm_rc_probe._entry, !10, !"_entry", i1 false, i1 false}
!16 = !{ptr @npcm_rc_probe._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/reset/reset-npcm.c", i32 267, i32 3}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @npcm_rc_probe._entry.7, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @npcm_rc_probe._entry_ptr.10, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/reset/reset-npcm.c", i32 269, i32 47}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/reset/reset-npcm.c", i32 276, i32 5}
!26 = !{ptr @npcm_rc_probe._entry.12, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @npcm_rc_probe._entry_ptr.14, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @npcm_rc_ops, !29, !"npcm_rc_ops", i1 false, i1 false}
!29 = !{!"../drivers/reset/reset-npcm.c", i32 231, i32 39}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/reset/reset-npcm.c", i32 128, i32 3}
!32 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @npcm_reset_xlate._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @npcm_reset_xlate._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/reset/reset-npcm.c", i32 133, i32 3}
!37 = !{ptr @npcm_reset_xlate._entry.17, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @npcm_reset_xlate._entry_ptr.19, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/reset/reset-npcm.c", i32 165, i32 3}
!41 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @npcm_usb_reset._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @npcm_usb_reset._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/reset/reset-npcm.c", i32 74, i32 2}
!46 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @npcm_rc_restart._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @npcm_rc_restart._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/reset/reset-npcm.c", i32 142, i32 19}
!51 = !{ptr @npcm_rc_match, !52, !"npcm_rc_match", i1 false, i1 false}
!52 = !{!"../drivers/reset/reset-npcm.c", i32 140, i32 34}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{!"auto-init"}
!63 = !{i64 2982232}
!64 = !{i64 2152617272}
!65 = !{i64 2152617755}
!66 = !{i64 2152618238}
!67 = !{i64 2152618626}
!68 = !{i64 2981814}
!69 = !{i64 2152619028}
!70 = !{i64 2152619430}
!71 = !{i64 2152620180}
!72 = !{i64 2152621472}
!73 = !{i64 2152621874}
!74 = !{i64 2152622276}
!75 = !{i64 2152600649}
!76 = !{i64 2152607014}
!77 = !{i64 2152610691}

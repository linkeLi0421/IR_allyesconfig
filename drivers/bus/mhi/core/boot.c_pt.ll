; ModuleID = '/llk/IR_all_yes/drivers/bus/mhi/core/boot.c_pt.bc'
source_filename = "../drivers/bus/mhi/core/boot.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mhi_download_rddm_image\22, \22a\22\09"
module asm "\09.weak\09__crc_mhi_download_rddm_image\09\09\09\09"
module asm "\09.long\09__crc_mhi_download_rddm_image\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mhi_download_rddm_image:\09\09\09\09\09"
module asm "\09.asciz \09\22mhi_download_rddm_image\22\09\09\09\09\09"
module asm "__kstrtabns_mhi_download_rddm_image:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mhi_controller = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], ptr, ptr, ptr, %struct.mutex, %struct.rwlock_t, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.mhi_link_info, %struct.work_struct, ptr, %struct.wait_queue_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mhi_link_info = type { i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mhi_device = type { ptr, ptr, ptr, ptr, ptr, %struct.device, i32, i32, i32, i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.image_info = type { ptr, ptr, i32 }
%struct.mhi_buf = type { ptr, ptr, i32, i32 }
%struct.bhi_vec_entry = type { i64, i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.firmware = type { i32, ptr, ptr }

@mhi_rddm_prepare.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 9, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mhi\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mhi_rddm_prepare\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/bus/mhi/core/boot.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"BHIe programming for RDDM\0A\00", [37 x i8] zeroinitializer }, align 32
@mhi_rddm_prepare.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Address: %p and len: 0x%zx sequence: %u\0A\00", [55 x i8] zeroinitializer }, align 32
@mhi_download_rddm_image.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mhi_download_rddm_image\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Waiting for RDDM image download via BHIe\0A\00", [54 x i8] zeroinitializer }, align 32
@__kstrtab_mhi_download_rddm_image = external dso_local constant [0 x i8], align 1
@__kstrtabns_mhi_download_rddm_image = external dso_local constant [0 x i8], align 1
@__ksymtab_mhi_download_rddm_image = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mhi_download_rddm_image to i32), ptr @__kstrtab_mhi_download_rddm_image, ptr @__kstrtabns_mhi_download_rddm_image }, section "___ksymtab_gpl+mhi_download_rddm_image", align 4
@mhi_fw_load_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 400, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Device MHI is not in valid state\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mhi_fw_load_handler\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mhi_fw_load_handler._entry_ptr = internal global ptr @mhi_fw_load_handler._entry, section ".printk_index", align 4
@mhi_fw_load_handler._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.8, ptr @.str.2, i32 408, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Could not capture serial number via BHI\0A\00", [55 x i8] zeroinitializer }, align 32
@mhi_fw_load_handler._entry_ptr.13 = internal global ptr @mhi_fw_load_handler._entry.11, section ".printk_index", align 4
@mhi_fw_load_handler._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.8, ptr @.str.2, i32 414, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Could not capture OEM PK HASH via BHI\0A\00", [57 x i8] zeroinitializer }, align 32
@mhi_fw_load_handler._entry_ptr.16 = internal global ptr @mhi_fw_load_handler._entry.14, section ".printk_index", align 4
@mhi_fw_load_handler._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.8, ptr @.str.2, i32 429, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"No firmware image defined or !sbl_size || !seg_len\0A\00", [44 x i8] zeroinitializer }, align 32
@mhi_fw_load_handler._entry_ptr.19 = internal global ptr @mhi_fw_load_handler._entry.17, section ".printk_index", align 4
@mhi_fw_load_handler._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.8, ptr @.str.2, i32 435, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Error loading firmware: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@mhi_fw_load_handler._entry_ptr.22 = internal global ptr @mhi_fw_load_handler._entry.20, section ".printk_index", align 4
@mhi_fw_load_handler._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.8, ptr @.str.2, i32 459, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"MHI did not load image over BHI, ret: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@mhi_fw_load_handler._entry_ptr.25 = internal global ptr @mhi_fw_load_handler._entry.23, section ".printk_index", align 4
@mhi_fw_load_handler._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.8, ptr @.str.2, i32 496, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"MHI did not enter READY state\0A\00", [33 x i8] zeroinitializer }, align 32
@mhi_fw_load_handler._entry_ptr.28 = internal global ptr @mhi_fw_load_handler._entry.26, section ".printk_index", align 4
@mhi_fw_load_handler._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.8, ptr @.str.2, i32 500, ptr @.str.31, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Wait for device to enter SBL or Mission mode\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mhi_fw_load_handler._entry_ptr.32 = internal global ptr @mhi_fw_load_handler._entry.29, section ".printk_index", align 4
@mhi_download_amss_image._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 527, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"MHI did not load AMSS, ret:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mhi_download_amss_image\00", [40 x i8] zeroinitializer }, align 32
@mhi_download_amss_image._entry_ptr = internal global ptr @mhi_download_amss_image._entry, section ".printk_index", align 4
@__mhi_download_rddm_in_panic.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"__mhi_download_rddm_in_panic\00", [35 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Entered with pm_state:%s dev_state:%s ee:%s\0A\00", [51 x i8] zeroinitializer }, align 32
@mhi_state_str = external dso_local local_unnamed_addr constant [256 x ptr], align 4
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"INVALID_STATE\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"INVALID_EE\00", [21 x i8] zeroinitializer }, align 32
@mhi_ee_str = external dso_local local_unnamed_addr constant [10 x ptr], align 4
@__mhi_download_rddm_in_panic.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.39, i8 0, i8 24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Trigger device into RDDM mode using SYS ERR\0A\00", [51 x i8] zeroinitializer }, align 32
@__mhi_download_rddm_in_panic.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.40, i8 0, i8 25, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Waiting for device to enter RDDM\0A\00", [62 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__mhi_download_rddm_in_panic.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.41, i8 0, i8 28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Did not enter RDDM, do a host req reset\0A\00", [55 x i8] zeroinitializer }, align 32
@__mhi_download_rddm_in_panic.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.42, i8 0, i8 31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Waiting for RDDM image download via BHIe, current EE:%s\0A\00", [39 x i8] zeroinitializer }, align 32
@__mhi_download_rddm_in_panic._entry = internal constant %struct.pi_entry { ptr @.str.43, ptr @.str.35, ptr @.str.2, i32 145, ptr @.str.9, ptr @.str.10 }, align 1
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RXVEC_STATUS: 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@__mhi_download_rddm_in_panic._entry_ptr = internal global ptr @__mhi_download_rddm_in_panic._entry, section ".printk_index", align 4
@__mhi_download_rddm_in_panic._entry.44 = internal constant %struct.pi_entry { ptr @.str.45, ptr @.str.35, ptr @.str.2, i32 149, ptr @.str.9, ptr @.str.10 }, align 1
@.str.45 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"RDDM transfer failed. Current EE: %s\0A\00", [58 x i8] zeroinitializer }, align 32
@__mhi_download_rddm_in_panic._entry_ptr.46 = internal global ptr @__mhi_download_rddm_in_panic._entry.44, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ERROR_CODE\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ERROR_DBG1\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ERROR_DBG2\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ERROR_DBG3\00", [21 x i8] zeroinitializer }, align 32
@mhi_fw_load_bhi.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.52, i8 0, i8 63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mhi_fw_load_bhi\00", [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Starting image download via BHI. Session ID: %u\0A\00", [47 x i8] zeroinitializer }, align 32
@mhi_fw_load_bhi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.2, i32 275, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Image transfer failed\0A\00", [41 x i8] zeroinitializer }, align 32
@mhi_fw_load_bhi._entry_ptr = internal global ptr @mhi_fw_load_bhi._entry, section ".printk_index", align 4
@mhi_fw_load_bhi._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.51, ptr @.str.2, i32 284, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Reg: %s value: 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@mhi_fw_load_bhi._entry_ptr.56 = internal global ptr @mhi_fw_load_bhi._entry.54, section ".printk_index", align 4
@mhi_fw_load_bhie.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.58, i8 0, i8 49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mhi_fw_load_bhie\00", [47 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Starting image download via BHIe. Sequence ID: %u\0A\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 10]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 6]
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 37, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 52, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 164, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 400, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 408, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 414, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 428, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 435, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 459, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 496, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 500, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 527, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 69, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 99, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 102, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 113, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 124, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 145, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 148, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 239, i32 5 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 240, i32 5 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 241, i32 5 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 242, i32 5 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 253, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 275, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 283, i32 5 }
@___asan_gen_.213 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.214 = private constant [31 x i8] c"../drivers/bus/mhi/core/boot.c\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 195, i32 2 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__ksymtab_mhi_download_rddm_image, ptr @__mhi_download_rddm_in_panic._entry, ptr @__mhi_download_rddm_in_panic._entry.44, ptr @__mhi_download_rddm_in_panic._entry_ptr, ptr @__mhi_download_rddm_in_panic._entry_ptr.46, ptr @mhi_download_amss_image._entry, ptr @mhi_download_amss_image._entry_ptr, ptr @mhi_fw_load_bhi._entry, ptr @mhi_fw_load_bhi._entry.54, ptr @mhi_fw_load_bhi._entry_ptr, ptr @mhi_fw_load_bhi._entry_ptr.56, ptr @mhi_fw_load_handler._entry, ptr @mhi_fw_load_handler._entry.11, ptr @mhi_fw_load_handler._entry.14, ptr @mhi_fw_load_handler._entry.17, ptr @mhi_fw_load_handler._entry.20, ptr @mhi_fw_load_handler._entry.23, ptr @mhi_fw_load_handler._entry.26, ptr @mhi_fw_load_handler._entry.29, ptr @mhi_fw_load_handler._entry_ptr, ptr @mhi_fw_load_handler._entry_ptr.13, ptr @mhi_fw_load_handler._entry_ptr.16, ptr @mhi_fw_load_handler._entry_ptr.19, ptr @mhi_fw_load_handler._entry_ptr.22, ptr @mhi_fw_load_handler._entry_ptr.25, ptr @mhi_fw_load_handler._entry_ptr.28, ptr @mhi_fw_load_handler._entry_ptr.32, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_fw_load_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_fw_load_handler._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_fw_load_handler._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_fw_load_handler._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_fw_load_handler._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_fw_load_handler._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_fw_load_handler._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_fw_load_handler._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_download_amss_image._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_fw_load_bhi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_fw_load_bhi._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mhi_rddm_prepare(ptr noundef %mhi_cntrl, ptr nocapture noundef readonly %img_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %img_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %img_info, align 4
  %bhie = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 5
  %2 = ptrtoint ptr %bhie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bhie, align 4
  %mhi_dev = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 1
  %4 = ptrtoint ptr %mhi_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mhi_dev, align 4
  %dev3 = getelementptr inbounds %struct.mhi_device, ptr %5, i32 0, i32 5
  %entries = getelementptr inbounds %struct.image_info, ptr %img_info, i32 0, i32 2
  %6 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp60.not = icmp eq i32 %7, 1
  br i1 %cmp60.not, label %entry.do.body_crit_edge, label %for.body.preheader

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.body.preheader:                               ; preds = %entry
  %bhi_vec2 = getelementptr inbounds %struct.image_info, ptr %img_info, i32 0, i32 1
  %8 = ptrtoint ptr %bhi_vec2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bhi_vec2, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %mhi_buf.063 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %1, %for.body.preheader ]
  %bhi_vec.062 = phi ptr [ %incdec.ptr6, %for.body.for.body_crit_edge ], [ %9, %for.body.preheader ]
  %i.061 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %dma_addr = getelementptr inbounds %struct.mhi_buf, ptr %mhi_buf.063, i32 0, i32 2
  %10 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_addr, align 4
  %conv = zext i32 %11 to i64
  %12 = ptrtoint ptr %bhi_vec.062 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv, ptr %bhi_vec.062, align 8
  %len = getelementptr inbounds %struct.mhi_buf, ptr %mhi_buf.063, i32 0, i32 3
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  %conv5 = zext i32 %14 to i64
  %size = getelementptr inbounds %struct.bhi_vec_entry, ptr %bhi_vec.062, i32 0, i32 1
  %15 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv5, ptr %size, align 8
  %inc = add nuw i32 %i.061, 1
  %incdec.ptr = getelementptr %struct.mhi_buf, ptr %mhi_buf.063, i32 1
  %incdec.ptr6 = getelementptr %struct.bhi_vec_entry, ptr %bhi_vec.062, i32 1
  %16 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %entries, align 4
  %sub = add i32 %17, -1
  %cmp = icmp ult i32 %inc, %sub
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.do.body_crit_edge

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.body:                                          ; preds = %for.body.do.body_crit_edge, %entry.do.body_crit_edge
  %mhi_buf.0.lcssa = phi ptr [ %1, %entry.do.body_crit_edge ], [ %incdec.ptr, %for.body.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mhi_rddm_prepare.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mhi_rddm_prepare, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !115

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mhi_rddm_prepare.__UNIQUE_ID_ddebug275, ptr noundef %dev3, ptr noundef nonnull @.str.3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %dma_addr9 = getelementptr inbounds %struct.mhi_buf, ptr %mhi_buf.0.lcssa, i32 0, i32 2
  tail call void @mhi_write_reg(ptr noundef %mhi_cntrl, ptr noundef %3, i32 noundef 100, i32 noundef 0) #7
  %18 = ptrtoint ptr %dma_addr9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_addr9, align 4
  tail call void @mhi_write_reg(ptr noundef %mhi_cntrl, ptr noundef %3, i32 noundef 96, i32 noundef %19) #7
  %len12 = getelementptr inbounds %struct.mhi_buf, ptr %mhi_buf.0.lcssa, i32 0, i32 3
  %20 = ptrtoint ptr %len12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len12, align 4
  tail call void @mhi_write_reg(ptr noundef %mhi_cntrl, ptr noundef %3, i32 noundef 104, i32 noundef %21) #7
  %call.i = tail call i32 @prandom_u32() #7
  %conv.i = zext i32 %call.i to i64
  %mul.i = mul nuw nsw i64 %conv.i, 1073741823
  %shr.i = lshr i64 %mul.i, 32
  %conv2.i = trunc i64 %shr.i to i32
  %add = add nuw nsw i32 %conv2.i, 1
  tail call void @mhi_write_reg_field(ptr noundef %mhi_cntrl, ptr noundef %3, i32 noundef 112, i32 noundef 1073741823, i32 noundef 0, i32 noundef %add) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mhi_rddm_prepare.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mhi_rddm_prepare, %if.then26)) #7
          to label %do.end31 [label %if.then26], !srcloc !115

if.then26:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %len12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len12, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mhi_rddm_prepare.__UNIQUE_ID_ddebug276, ptr noundef %dev3, ptr noundef nonnull @.str.4, ptr noundef %dma_addr9, i32 noundef %23, i32 noundef %add) #7
  br label %do.end31

do.end31:                                         ; preds = %if.then26, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mhi_write_reg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mhi_write_reg_field(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mhi_download_rddm_image(ptr noundef %mhi_cntrl, i1 noundef zeroext %in_panic) #0 align 64 {
entry:
  %rx_status = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bhie = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 5
  %0 = ptrtoint ptr %bhie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bhie, align 4
  %mhi_dev = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 1
  %2 = ptrtoint ptr %mhi_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mhi_dev, align 4
  %dev1 = getelementptr inbounds %struct.mhi_device, ptr %3, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_status) #7
  %4 = ptrtoint ptr %rx_status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %rx_status, align 4, !annotation !116
  br i1 %in_panic, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call fastcc i32 @__mhi_download_rddm_in_panic(ptr noundef %mhi_cntrl)
  br label %cleanup66

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mhi_download_rddm_image.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mhi_download_rddm_image, %if.then7)) #7
          to label %do.end [label %if.then7], !srcloc !115

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mhi_download_rddm_image.__UNIQUE_ID_ddebug282, ptr noundef %dev1, ptr noundef nonnull @.str.6) #7
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %timeout_ms = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 36
  %5 = ptrtoint ptr %timeout_ms to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %timeout_ms, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %6) #7
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 173) #7
  %call16 = call i32 @mhi_read_reg_field(ptr noundef %mhi_cntrl, ptr noundef %1, i32 noundef 120, i32 noundef -1073741824, i32 noundef 30, ptr noundef nonnull %rx_status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %lor.end, label %do.end.if.end64_crit_edge

do.end.if.end64_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

lor.end:                                          ; preds = %do.end
  %7 = ptrtoint ptr %rx_status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool18 = icmp ne i32 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool27.not = icmp eq i32 %call2.i, 0
  %or.cond = select i1 %tobool18, i1 true, i1 %tobool27.not
  br i1 %or.cond, label %lor.end.if.end64_crit_edge, label %if.then32

lor.end.if.end64_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.then32:                                        ; preds = %lor.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %9 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  %10 = ptrtoint ptr %timeout_ms to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %timeout_ms, align 4
  %call2.i92 = call i32 @__msecs_to_jiffies(i32 noundef %11) #7
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %state_event = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 52
  %call36110 = call i32 @prepare_to_wait_event(ptr noundef %state_event, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %call38111 = call i32 @mhi_read_reg_field(ptr noundef %mhi_cntrl, ptr noundef %1, i32 noundef 120, i32 noundef -1073741824, i32 noundef 30, ptr noundef nonnull %rx_status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38111)
  %tobool39.not112 = icmp eq i32 %call38111, 0
  br i1 %tobool39.not112, label %if.then32.lor.end42_crit_edge, label %if.then32.for.end_crit_edge

if.then32.for.end_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then32.lor.end42_crit_edge:                    ; preds = %if.then32
  br label %lor.end42

lor.end42:                                        ; preds = %cleanup.lor.end42_crit_edge, %if.then32.lor.end42_crit_edge
  %__ret33.0113 = phi i32 [ %call61, %cleanup.lor.end42_crit_edge ], [ %call2.i92, %if.then32.lor.end42_crit_edge ]
  %12 = ptrtoint ptr %rx_status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool41 = icmp ne i32 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret33.0113)
  %tobool53.not = icmp eq i32 %__ret33.0113, 0
  %or.cond109 = select i1 %tobool41, i1 true, i1 %tobool53.not
  br i1 %or.cond109, label %lor.end42.for.end_crit_edge, label %cleanup

lor.end42.for.end_crit_edge:                      ; preds = %lor.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cleanup:                                          ; preds = %lor.end42
  %call61 = call i32 @schedule_timeout(i32 noundef %__ret33.0113) #7
  %call36 = call i32 @prepare_to_wait_event(ptr noundef %state_event, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %call38 = call i32 @mhi_read_reg_field(ptr noundef %mhi_cntrl, ptr noundef %1, i32 noundef 120, i32 noundef -1073741824, i32 noundef 30, ptr noundef nonnull %rx_status) #7
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %cleanup.lor.end42_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cleanup.lor.end42_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end42

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.end42.for.end_crit_edge, %if.then32.for.end_crit_edge
  call void @finish_wait(ptr noundef %state_event, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %if.end64

if.end64:                                         ; preds = %for.end, %lor.end.if.end64_crit_edge, %do.end.if.end64_crit_edge
  %14 = ptrtoint ptr %rx_status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp = icmp eq i32 %15, 2
  %cond = select i1 %cmp, i32 0, i32 -5
  br label %cleanup66

cleanup66:                                        ; preds = %if.end64, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %cond, %if.end64 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_status) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__mhi_download_rddm_in_panic(ptr noundef %mhi_cntrl) unnamed_addr #0 align 64 {
entry:
  %rx_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_status) #7
  %0 = ptrtoint ptr %rx_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rx_status, align 4, !annotation !116
  %timeout_ms = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 36
  %1 = ptrtoint ptr %timeout_ms to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %timeout_ms, align 4
  %mul = mul i32 %2, 1000
  %div = udiv i32 %mul, 2000
  %bhie = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 5
  %3 = ptrtoint ptr %bhie to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bhie, align 4
  %mhi_dev = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 1
  %5 = ptrtoint ptr %mhi_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mhi_dev, align 4
  %dev1 = getelementptr inbounds %struct.mhi_device, ptr %6, i32 0, i32 5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__mhi_download_rddm_in_panic.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__mhi_download_rddm_in_panic, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !115

if.then:                                          ; preds = %entry
  %pm_state = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 37
  %7 = ptrtoint ptr %pm_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pm_state, align 4
  %call4 = tail call ptr @to_mhi_pm_state_str(i32 noundef %8) #7
  %dev_state = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 40
  %9 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dev_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %10)
  %cmp = icmp ugt i32 %10, 255
  br i1 %cmp, label %if.then.cond.end_crit_edge, label %lor.lhs.false

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

lor.lhs.false:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [256 x ptr], ptr @mhi_state_str, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %tobool6.not = icmp eq ptr %12, null
  %spec.select = select i1 %tobool6.not, ptr @.str.37, ptr %12
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false, %if.then.cond.end_crit_edge
  %cond = phi ptr [ @.str.37, %if.then.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false ]
  %ee9 = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 39
  %13 = ptrtoint ptr %ee9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ee9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %14)
  %cmp10 = icmp ugt i32 %14, 9
  br i1 %cmp10, label %cond.end.cond.end15_crit_edge, label %cond.false12

cond.end.cond.end15_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end15

cond.false12:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx14 = getelementptr [10 x ptr], ptr @mhi_ee_str, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx14, align 4
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false12, %cond.end.cond.end15_crit_edge
  %cond16 = phi ptr [ %16, %cond.false12 ], [ @.str.38, %cond.end.cond.end15_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__mhi_download_rddm_in_panic.__UNIQUE_ID_ddebug277, ptr noundef %dev1, ptr noundef nonnull @.str.36, ptr noundef %call4, ptr noundef nonnull %cond, ptr noundef %cond16) #7
  br label %do.end

do.end:                                           ; preds = %cond.end15, %entry
  %pm_state17 = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 37
  %17 = ptrtoint ptr %pm_state17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2048, ptr %pm_state17, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !117
  %call24 = tail call i32 @mhi_get_exec_env(ptr noundef %mhi_cntrl) #7
  %18 = zext i32 %call24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call24, label %do.body30 [
    i32 10, label %do.end.cond.end134_crit_edge
    i32 3, label %do.end.do.body88_crit_edge
  ]

do.end.do.body88_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body88

do.end.cond.end134_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end134

do.body30:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__mhi_download_rddm_in_panic.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__mhi_download_rddm_in_panic, %if.then42)) #7
          to label %do.end45 [label %if.then42], !srcloc !115

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__mhi_download_rddm_in_panic.__UNIQUE_ID_ddebug278, ptr noundef %dev1, ptr noundef nonnull @.str.39) #7
  br label %do.end45

do.end45:                                         ; preds = %if.then42, %do.body30
  tail call void @mhi_set_mhi_state(ptr noundef %mhi_cntrl, i32 noundef 255) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__mhi_download_rddm_in_panic.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__mhi_download_rddm_in_panic, %if.then58)) #7
          to label %while.body [label %if.then58], !srcloc !115

if.then58:                                        ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__mhi_download_rddm_in_panic.__UNIQUE_ID_ddebug279, ptr noundef %dev1, ptr noundef nonnull @.str.40) #7
  br label %while.body

while.body:                                       ; preds = %if.end66.while.body_crit_edge, %if.then58, %do.end45
  %dec199 = phi i32 [ %dec, %if.end66.while.body_crit_edge ], [ 99, %do.end45 ], [ 99, %if.then58 ]
  %call63 = tail call i32 @mhi_get_exec_env(ptr noundef %mhi_cntrl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call63)
  %cmp64 = icmp eq i32 %call63, 3
  br i1 %cmp64, label %while.end, label %if.end66

if.end66:                                         ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 429496000) #7
  %dec = add nsw i32 %dec199, -1
  %tobool62.not = icmp eq i32 %dec199, 0
  br i1 %tobool62.not, label %if.end66.do.body69_crit_edge, label %if.end66.while.body_crit_edge

if.end66.while.body_crit_edge:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end66.do.body69_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body69

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec199)
  %cmp67 = icmp slt i32 %dec199, 1
  br i1 %cmp67, label %while.end.do.body69_crit_edge, label %while.end.if.end85_crit_edge

while.end.if.end85_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

while.end.do.body69_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body69

do.body69:                                        ; preds = %while.end.do.body69_crit_edge, %if.end66.do.body69_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__mhi_download_rddm_in_panic.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__mhi_download_rddm_in_panic, %if.then81)) #7
          to label %do.end84 [label %if.then81], !srcloc !115

if.then81:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__mhi_download_rddm_in_panic.__UNIQUE_ID_ddebug280, ptr noundef %dev1, ptr noundef nonnull @.str.41) #7
  br label %do.end84

do.end84:                                         ; preds = %if.then81, %do.body69
  %regs = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 3
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  tail call void @mhi_write_reg(ptr noundef %mhi_cntrl, ptr noundef %21, i32 noundef 176, i32 noundef 1) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 429496000) #7
  br label %if.end85

if.end85:                                         ; preds = %do.end84, %while.end.if.end85_crit_edge
  %call86 = tail call i32 @mhi_get_exec_env(ptr noundef %mhi_cntrl) #7
  br label %do.body88

do.body88:                                        ; preds = %if.end85, %do.end.do.body88_crit_edge
  %ee.0 = phi i32 [ %call86, %if.end85 ], [ %call24, %do.end.do.body88_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__mhi_download_rddm_in_panic.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__mhi_download_rddm_in_panic, %if.then100)) #7
          to label %do.end109 [label %if.then100], !srcloc !115

if.then100:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %ee.0)
  %cmp101 = icmp ugt i32 %ee.0, 9
  br i1 %cmp101, label %if.then100.cond.end105_crit_edge, label %cond.false103

if.then100.cond.end105_crit_edge:                 ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end105

cond.false103:                                    ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx104 = getelementptr [10 x ptr], ptr @mhi_ee_str, i32 0, i32 %ee.0
  %23 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx104, align 4
  br label %cond.end105

cond.end105:                                      ; preds = %cond.false103, %if.then100.cond.end105_crit_edge
  %cond106 = phi ptr [ %24, %cond.false103 ], [ @.str.38, %if.then100.cond.end105_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__mhi_download_rddm_in_panic.__UNIQUE_ID_ddebug281, ptr noundef %dev1, ptr noundef nonnull @.str.42, ptr noundef %cond106) #7
  br label %do.end109

do.end109:                                        ; preds = %cond.end105, %do.body88
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %mul)
  %25 = icmp ult i32 %mul, 2000
  br i1 %25, label %do.end109.do.end129_crit_edge, label %do.end109.while.body113_crit_edge

do.end109.while.body113_crit_edge:                ; preds = %do.end109
  br label %while.body113

do.end109.do.end129_crit_edge:                    ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end129

while.body113:                                    ; preds = %if.end120.while.body113_crit_edge, %do.end109.while.body113_crit_edge
  %dec111202.in = phi i32 [ %dec111202, %if.end120.while.body113_crit_edge ], [ %div, %do.end109.while.body113_crit_edge ]
  %dec111202 = add i32 %dec111202.in, -1
  %call114 = call i32 @mhi_read_reg_field(ptr noundef %mhi_cntrl, ptr noundef %4, i32 noundef 120, i32 noundef -1073741824, i32 noundef 30, ptr noundef nonnull %rx_status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end117, label %while.body113.cleanup_crit_edge

while.body113.cleanup_crit_edge:                  ; preds = %while.body113
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end117:                                        ; preds = %while.body113
  %26 = ptrtoint ptr %rx_status to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp118 = icmp eq i32 %27, 2
  br i1 %cmp118, label %if.end117.cleanup_crit_edge, label %if.end120

if.end117.cleanup_crit_edge:                      ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end120:                                        ; preds = %if.end117
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %28(i32 noundef 429496000) #7
  %tobool112.not = icmp eq i32 %dec111202, 0
  br i1 %tobool112.not, label %if.end120.do.end129_crit_edge, label %if.end120.while.body113_crit_edge

if.end120.while.body113_crit_edge:                ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body113

if.end120.do.end129_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end129

do.end129:                                        ; preds = %if.end120.do.end129_crit_edge, %do.end109.do.end129_crit_edge
  %call122 = call i32 @mhi_get_exec_env(ptr noundef %mhi_cntrl) #7
  %call123 = call i32 @mhi_read_reg(ptr noundef %mhi_cntrl, ptr noundef %4, i32 noundef 120, ptr noundef nonnull %rx_status) #7
  %29 = ptrtoint ptr %rx_status to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_status, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.43, i32 noundef %30) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call122)
  %cmp130 = icmp ugt i32 %call122, 9
  br i1 %cmp130, label %do.end129.cond.end134_crit_edge, label %cond.false132

do.end129.cond.end134_crit_edge:                  ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end134

cond.false132:                                    ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx133 = getelementptr [10 x ptr], ptr @mhi_ee_str, i32 0, i32 %call122
  %31 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx133, align 4
  br label %cond.end134

cond.end134:                                      ; preds = %cond.false132, %do.end129.cond.end134_crit_edge, %do.end.cond.end134_crit_edge
  %cond135 = phi ptr [ %32, %cond.false132 ], [ @.str.38, %do.end129.cond.end134_crit_edge ], [ @.str.38, %do.end.cond.end134_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.45, ptr noundef %cond135) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end134, %if.end117.cleanup_crit_edge, %while.body113.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %cond.end134 ], [ 0, %if.end117.cleanup_crit_edge ], [ -5, %while.body113.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_status) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mhi_read_reg_field(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mhi_free_bhie_table(ptr nocapture noundef readonly %mhi_cntrl, ptr noundef %image_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %entries = getelementptr inbounds %struct.image_info, ptr %image_info, i32 0, i32 2
  %0 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp10.not = icmp eq i32 %1, 0
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %image_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %image_info, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %mhi_buf.012 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %3, %for.body.preheader ]
  %i.011 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %4 = ptrtoint ptr %mhi_cntrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mhi_cntrl, align 4
  %len = getelementptr inbounds %struct.mhi_buf, ptr %mhi_buf.012, i32 0, i32 3
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %8 = ptrtoint ptr %mhi_buf.012 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mhi_buf.012, align 4
  %dma_addr = getelementptr inbounds %struct.mhi_buf, ptr %mhi_buf.012, i32 0, i32 2
  %10 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %5, i32 noundef %7, ptr noundef %9, i32 noundef %11, i32 noundef 0) #7
  %inc = add nuw i32 %i.011, 1
  %incdec.ptr = getelementptr %struct.mhi_buf, ptr %mhi_buf.012, i32 1
  %12 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %entries, align 4
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %14 = ptrtoint ptr %image_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %image_info, align 4
  tail call void @kfree(ptr noundef %15) #7
  tail call void @kfree(ptr noundef %image_info) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mhi_alloc_bhie_table(ptr nocapture noundef readonly %mhi_cntrl, ptr nocapture noundef writeonly %image_info, i32 noundef %alloc_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %seg_len = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 13
  %0 = ptrtoint ptr %seg_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %seg_len, align 4
  %add = add i32 %alloc_size, -1
  %sub = add i32 %add, %1
  %div = udiv i32 %sub, %1
  %add1 = add i32 %div, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 12) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup33_crit_edge, label %if.end

entry.cleanup33_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup33

if.end:                                           ; preds = %entry
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add1, i32 16) #7
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !118

kcalloc.exit.thread:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %call7.i.i, align 8
  br label %error_alloc_mhi_buf

if.end7.i.i:                                      ; preds = %if.end
  %6 = extractvalue { i32, i1 } %3, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3520) #12
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call8.i.i, ptr %call7.i.i, align 8
  %tobool5.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool5.not, label %if.end7.i.i.error_alloc_mhi_buf_crit_edge, label %for.cond.preheader

if.end7.i.i.error_alloc_mhi_buf_crit_edge:        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_alloc_mhi_buf

for.cond.preheader:                               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %div)
  %cmp74 = icmp ult i32 %div, 2147483647
  br i1 %cmp74, label %for.body.preheader, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %smax = call i32 @llvm.smax.i32(i32 %add1, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %mhi_buf.076 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %call8.i.i, %for.body.preheader ]
  %i.075 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.075, i32 %div)
  %cmp10 = icmp eq i32 %i.075, %div
  %mul = shl i32 %i.075, 4
  %spec.select = select i1 %cmp10, i32 %mul, i32 %1
  %len = getelementptr inbounds %struct.mhi_buf, ptr %mhi_buf.076, i32 0, i32 3
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.select, ptr %len, align 4
  %9 = ptrtoint ptr %mhi_cntrl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mhi_cntrl, align 4
  %dma_addr = getelementptr inbounds %struct.mhi_buf, ptr %mhi_buf.076, i32 0, i32 2
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %10, i32 noundef %spec.select, ptr noundef %dma_addr, i32 noundef 3264, i32 noundef 0) #7
  %11 = ptrtoint ptr %mhi_buf.076 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %mhi_buf.076, align 4
  %tobool15.not = icmp eq ptr %call.i, null
  br i1 %tobool15.not, label %for.cond22.preheader, label %for.inc

for.cond22.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.075)
  %cmp2378.not = icmp eq i32 %i.075, 0
  br i1 %cmp2378.not, label %for.cond22.preheader.error_alloc_mhi_buf_crit_edge, label %for.cond22.preheader.for.body24_crit_edge

for.cond22.preheader.for.body24_crit_edge:        ; preds = %for.cond22.preheader
  br label %for.body24

for.cond22.preheader.error_alloc_mhi_buf_crit_edge: ; preds = %for.cond22.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_alloc_mhi_buf

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.075, 1
  %incdec.ptr = getelementptr %struct.mhi_buf, ptr %mhi_buf.076, i32 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call7.i.i, align 8
  %arrayidx = getelementptr %struct.mhi_buf, ptr %13, i32 %div
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %bhi_vec = getelementptr inbounds %struct.image_info, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %bhi_vec to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %bhi_vec, align 4
  %entries = getelementptr inbounds %struct.image_info, ptr %call7.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add1, ptr %entries, align 8
  %18 = ptrtoint ptr %image_info to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %image_info, align 4
  br label %cleanup33

for.body24:                                       ; preds = %for.body24.for.body24_crit_edge, %for.cond22.preheader.for.body24_crit_edge
  %i.180.in = phi i32 [ %i.180, %for.body24.for.body24_crit_edge ], [ %i.075, %for.cond22.preheader.for.body24_crit_edge ]
  %mhi_buf.0.pn79 = phi ptr [ %mhi_buf.1, %for.body24.for.body24_crit_edge ], [ %mhi_buf.076, %for.cond22.preheader.for.body24_crit_edge ]
  %i.180 = add nsw i32 %i.180.in, -1
  %mhi_buf.1 = getelementptr %struct.mhi_buf, ptr %mhi_buf.0.pn79, i32 -1
  %19 = ptrtoint ptr %mhi_cntrl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mhi_cntrl, align 4
  %len26 = getelementptr %struct.mhi_buf, ptr %mhi_buf.0.pn79, i32 -1, i32 3
  %21 = ptrtoint ptr %len26 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len26, align 4
  %23 = ptrtoint ptr %mhi_buf.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mhi_buf.1, align 4
  %dma_addr28 = getelementptr %struct.mhi_buf, ptr %mhi_buf.0.pn79, i32 -1, i32 2
  %25 = ptrtoint ptr %dma_addr28 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_addr28, align 4
  tail call void @dma_free_attrs(ptr noundef %20, i32 noundef %22, ptr noundef %24, i32 noundef %26, i32 noundef 0) #7
  %cmp23 = icmp sgt i32 %i.180.in, 1
  br i1 %cmp23, label %for.body24.for.body24_crit_edge, label %for.body24.error_alloc_mhi_buf_crit_edge

for.body24.error_alloc_mhi_buf_crit_edge:         ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_alloc_mhi_buf

for.body24.for.body24_crit_edge:                  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body24

error_alloc_mhi_buf:                              ; preds = %for.body24.error_alloc_mhi_buf_crit_edge, %for.cond22.preheader.error_alloc_mhi_buf_crit_edge, %if.end7.i.i.error_alloc_mhi_buf_crit_edge, %kcalloc.exit.thread
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup33

cleanup33:                                        ; preds = %error_alloc_mhi_buf, %for.end, %entry.cleanup33_crit_edge
  %retval.0 = phi i32 [ -12, %error_alloc_mhi_buf ], [ 0, %for.end ], [ -12, %entry.cleanup33_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mhi_fw_load_handler(ptr noundef %mhi_cntrl) local_unnamed_addr #0 align 64 {
entry:
  %firmware = alloca ptr, align 4
  %dma_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %firmware) #7
  %0 = ptrtoint ptr %firmware to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %firmware, align 4
  %mhi_dev = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 1
  %1 = ptrtoint ptr %mhi_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mhi_dev, align 4
  %dev1 = getelementptr inbounds %struct.mhi_device, ptr %2, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_addr) #7
  %3 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %dma_addr, align 4, !annotation !116
  %pm_state = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 37
  %4 = ptrtoint ptr %pm_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pm_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %5)
  %cmp = icmp ugt i32 %5, 127
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %bhi = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 4
  %6 = ptrtoint ptr %bhi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bhi, align 4
  %serial_number = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 29
  %call = tail call i32 @mhi_read_reg(ptr noundef %mhi_cntrl, ptr noundef %7, i32 noundef 64, ptr noundef %serial_number) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.for.body.preheader_crit_edge, label %do.end5

if.end.for.body.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #10
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.end5, %if.end.for.body.preheader_crit_edge
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0171, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.0171 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %8 = ptrtoint ptr %bhi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bhi, align 4
  %mul = shl nuw nsw i32 %i.0171, 2
  %add = add nuw nsw i32 %mul, 100
  %arrayidx = getelementptr %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 30, i32 %i.0171
  %call9 = tail call i32 @mhi_read_reg(ptr noundef %mhi_cntrl, ptr noundef %9, i32 noundef %add, ptr noundef %arrayidx) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %for.cond, label %do.end14

do.end14:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #10
  br label %for.end

for.end:                                          ; preds = %do.end14, %for.cond.for.end_crit_edge
  %ee = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 39
  %10 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ee, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %11, label %for.end.fw_load_ready_state_crit_edge [
    i32 0, label %for.end.if.end20_crit_edge
    i32 6, label %for.end.if.end20_crit_edge172
  ]

for.end.if.end20_crit_edge172:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

for.end.if.end20_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

for.end.fw_load_ready_state_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %fw_load_ready_state

if.end20:                                         ; preds = %for.end.if.end20_crit_edge, %for.end.if.end20_crit_edge172
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %11)
  %cmp22 = icmp eq i32 %11, 6
  %edl_image = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 10
  %fw_image = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 9
  %cond.in = select i1 %cmp22, ptr %edl_image, ptr %fw_image
  %13 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %cond = load ptr, ptr %cond.in, align 4
  %tobool23.not = icmp eq ptr %cond, null
  br i1 %tobool23.not, label %if.end20.do.end32_crit_edge, label %lor.lhs.false24

if.end20.do.end32_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32

lor.lhs.false24:                                  ; preds = %if.end20
  %fbc_download = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 67
  %14 = ptrtoint ptr %fbc_download to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fbc_download, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool25.not = icmp eq i8 %15, 0
  br i1 %tobool25.not, label %lor.lhs.false24.if.end33_crit_edge, label %land.lhs.true

lor.lhs.false24.if.end33_crit_edge:               ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

land.lhs.true:                                    ; preds = %lor.lhs.false24
  %sbl_size = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 12
  %16 = ptrtoint ptr %sbl_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sbl_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool26.not = icmp eq i32 %17, 0
  br i1 %tobool26.not, label %land.lhs.true.do.end32_crit_edge, label %lor.lhs.false27

land.lhs.true.do.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32

lor.lhs.false27:                                  ; preds = %land.lhs.true
  %seg_len = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 13
  %18 = ptrtoint ptr %seg_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %seg_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool28.not = icmp eq i32 %19, 0
  br i1 %tobool28.not, label %lor.lhs.false27.do.end32_crit_edge, label %lor.lhs.false27.if.end33_crit_edge

lor.lhs.false27.if.end33_crit_edge:               ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

lor.lhs.false27.do.end32_crit_edge:               ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32

do.end32:                                         ; preds = %lor.lhs.false27.do.end32_crit_edge, %land.lhs.true.do.end32_crit_edge, %if.end20.do.end32_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #10
  br label %error_fw_load

if.end33:                                         ; preds = %lor.lhs.false27.if.end33_crit_edge, %lor.lhs.false24.if.end33_crit_edge
  %call34 = call i32 @request_firmware(ptr noundef nonnull %firmware, ptr noundef nonnull %cond, ptr noundef %dev1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end40, label %do.end39

do.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %call34) #10
  br label %error_fw_load

if.end40:                                         ; preds = %if.end33
  %20 = ptrtoint ptr %fbc_download to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %fbc_download, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool42.not = icmp eq i8 %21, 0
  br i1 %tobool42.not, label %cond.false45, label %cond.true43

cond.true43:                                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %sbl_size44 = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 12
  br label %cond.end47

cond.false45:                                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %firmware, align 4
  br label %cond.end47

cond.end47:                                       ; preds = %cond.false45, %cond.true43
  %cond48.in = phi ptr [ %sbl_size44, %cond.true43 ], [ %23, %cond.false45 ]
  %24 = ptrtoint ptr %cond48.in to i32
  call void @__asan_load4_noabort(i32 %24)
  %cond48 = load i32, ptr %cond48.in, align 4
  %25 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %firmware, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %29 = call i32 @llvm.umin.i32(i32 %cond48, i32 %28)
  %30 = ptrtoint ptr %mhi_cntrl to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mhi_cntrl, align 4
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %31, i32 noundef %29, ptr noundef nonnull %dma_addr, i32 noundef 3264, i32 noundef 0) #7
  %tobool55.not = icmp eq ptr %call.i, null
  %32 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %firmware, align 4
  br i1 %tobool55.not, label %if.then56, label %if.end57

if.then56:                                        ; preds = %cond.end47
  call void @__sanitizer_cov_trace_pc() #9
  call void @release_firmware(ptr noundef %33) #7
  br label %error_fw_load

if.end57:                                         ; preds = %cond.end47
  %data = getelementptr inbounds %struct.firmware, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 4
  %36 = call ptr @memcpy(ptr %call.i, ptr %35, i32 %29)
  %37 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma_addr, align 4
  %call58 = call fastcc i32 @mhi_fw_load_bhi(ptr noundef %mhi_cntrl, i32 noundef %38, i32 noundef %29)
  %39 = ptrtoint ptr %mhi_cntrl to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mhi_cntrl, align 4
  %41 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dma_addr, align 4
  call void @dma_free_attrs(ptr noundef %40, i32 noundef %29, ptr noundef nonnull %call.i, i32 noundef %42, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool60.not = icmp eq i32 %call58, 0
  br i1 %tobool60.not, label %if.end65, label %do.end64

do.end64:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef %call58) #10
  %43 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %firmware, align 4
  call void @release_firmware(ptr noundef %44) #7
  br label %error_fw_load

if.end65:                                         ; preds = %if.end57
  %45 = ptrtoint ptr %edl_image to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %edl_image, align 4
  %cmp67 = icmp eq ptr %cond, %46
  br i1 %cmp67, label %if.end65.fw_load_ready_state.sink.split_crit_edge, label %if.end69

if.end65.fw_load_ready_state.sink.split_crit_edge: ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %fw_load_ready_state.sink.split

if.end69:                                         ; preds = %if.end65
  %pm_lock = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 35
  call void @_raw_write_lock_irq(ptr noundef %pm_lock) #7
  %dev_state = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 40
  %47 = ptrtoint ptr %dev_state to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %dev_state, align 4
  call void @_raw_write_unlock_irq(ptr noundef %pm_lock) #7
  %48 = ptrtoint ptr %fbc_download to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %fbc_download, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool72.not = icmp eq i8 %49, 0
  br i1 %tobool72.not, label %if.end69.fw_load_ready_state.sink.split_crit_edge, label %if.then73

if.end69.fw_load_ready_state.sink.split_crit_edge: ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %fw_load_ready_state.sink.split

if.then73:                                        ; preds = %if.end69
  %fbc_image = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 15
  %50 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %firmware, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %call75 = call i32 @mhi_alloc_bhie_table(ptr noundef %mhi_cntrl, ptr noundef %fbc_image, i32 noundef %53)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  %54 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %firmware, align 4
  br i1 %tobool76.not, label %if.end78, label %if.then77

if.then77:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #9
  call void @release_firmware(ptr noundef %55) #7
  br label %error_fw_load

if.end78:                                         ; preds = %if.then73
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not1.i = icmp eq i32 %57, 0
  br i1 %tobool.not1.i, label %if.end78.fw_load_ready_state.sink.split_crit_edge, label %while.body.preheader.i

if.end78.fw_load_ready_state.sink.split_crit_edge: ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %fw_load_ready_state.sink.split

while.body.preheader.i:                           ; preds = %if.end78
  %58 = ptrtoint ptr %fbc_image to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %fbc_image, align 4
  %bhi_vec2.i = getelementptr inbounds %struct.image_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %bhi_vec2.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bhi_vec2.i, align 4
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %59, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %55, i32 0, i32 1
  %64 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data.i, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %remainder.05.i = phi i32 [ %sub.i, %while.body.i.while.body.i_crit_edge ], [ %57, %while.body.preheader.i ]
  %bhi_vec.04.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %61, %while.body.preheader.i ]
  %mhi_buf.03.i = phi ptr [ %incdec.ptr7.i, %while.body.i.while.body.i_crit_edge ], [ %63, %while.body.preheader.i ]
  %buf.02.i = phi ptr [ %add.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %65, %while.body.preheader.i ]
  %len.i = getelementptr inbounds %struct.mhi_buf, ptr %mhi_buf.03.i, i32 0, i32 3
  %66 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %len.i, align 4
  %68 = call i32 @llvm.umin.i32(i32 %remainder.05.i, i32 %67) #7
  %69 = ptrtoint ptr %mhi_buf.03.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mhi_buf.03.i, align 4
  %71 = call ptr @memcpy(ptr %70, ptr %buf.02.i, i32 %68)
  %dma_addr.i = getelementptr inbounds %struct.mhi_buf, ptr %mhi_buf.03.i, i32 0, i32 2
  %72 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dma_addr.i, align 4
  %conv.i = zext i32 %73 to i64
  %74 = ptrtoint ptr %bhi_vec.04.i to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %conv.i, ptr %bhi_vec.04.i, align 8
  %conv5.i = zext i32 %68 to i64
  %size6.i = getelementptr inbounds %struct.bhi_vec_entry, ptr %bhi_vec.04.i, i32 0, i32 1
  %75 = ptrtoint ptr %size6.i to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %conv5.i, ptr %size6.i, align 8
  %add.ptr.i = getelementptr i8, ptr %buf.02.i, i32 %68
  %sub.i = sub i32 %remainder.05.i, %68
  %incdec.ptr.i = getelementptr %struct.bhi_vec_entry, ptr %bhi_vec.04.i, i32 1
  %incdec.ptr7.i = getelementptr %struct.mhi_buf, ptr %mhi_buf.03.i, i32 1
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %while.body.i.fw_load_ready_state.sink.split_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i.fw_load_ready_state.sink.split_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fw_load_ready_state.sink.split

fw_load_ready_state.sink.split:                   ; preds = %while.body.i.fw_load_ready_state.sink.split_crit_edge, %if.end78.fw_load_ready_state.sink.split_crit_edge, %if.end69.fw_load_ready_state.sink.split_crit_edge, %if.end65.fw_load_ready_state.sink.split_crit_edge
  %76 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %76)
  %.sink = load ptr, ptr %firmware, align 4
  call void @release_firmware(ptr noundef %.sink) #7
  br label %fw_load_ready_state

fw_load_ready_state:                              ; preds = %fw_load_ready_state.sink.split, %for.end.fw_load_ready_state_crit_edge
  %call81 = call i32 @mhi_ready_state_transition(ptr noundef %mhi_cntrl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %do.end90, label %do.end86

do.end86:                                         ; preds = %fw_load_ready_state
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27) #10
  %fbc_download91 = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 67
  %77 = ptrtoint ptr %fbc_download91 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %fbc_download91, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool92.not = icmp eq i8 %78, 0
  br i1 %tobool92.not, label %do.end86.error_fw_load_crit_edge, label %if.then93

do.end86.error_fw_load_crit_edge:                 ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_fw_load

do.end90:                                         ; preds = %fw_load_ready_state
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.30) #10
  br label %cleanup

if.then93:                                        ; preds = %do.end86
  %fbc_image94 = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 15
  %79 = ptrtoint ptr %fbc_image94 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %fbc_image94, align 4
  %entries.i = getelementptr inbounds %struct.image_info, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %entries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp10.not.i = icmp eq i32 %82, 0
  br i1 %cmp10.not.i, label %if.then93.mhi_free_bhie_table.exit_crit_edge, label %for.body.preheader.i

if.then93.mhi_free_bhie_table.exit_crit_edge:     ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #9
  br label %mhi_free_bhie_table.exit

for.body.preheader.i:                             ; preds = %if.then93
  %83 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %80, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %mhi_buf.012.i = phi ptr [ %incdec.ptr.i170, %for.body.i.for.body.i_crit_edge ], [ %84, %for.body.preheader.i ]
  %i.011.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %85 = ptrtoint ptr %mhi_cntrl to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mhi_cntrl, align 4
  %len.i168 = getelementptr inbounds %struct.mhi_buf, ptr %mhi_buf.012.i, i32 0, i32 3
  %87 = ptrtoint ptr %len.i168 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %len.i168, align 4
  %89 = ptrtoint ptr %mhi_buf.012.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %mhi_buf.012.i, align 4
  %dma_addr.i169 = getelementptr inbounds %struct.mhi_buf, ptr %mhi_buf.012.i, i32 0, i32 2
  %91 = ptrtoint ptr %dma_addr.i169 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %dma_addr.i169, align 4
  call void @dma_free_attrs(ptr noundef %86, i32 noundef %88, ptr noundef %90, i32 noundef %92, i32 noundef 0) #7
  %inc.i = add nuw i32 %i.011.i, 1
  %incdec.ptr.i170 = getelementptr %struct.mhi_buf, ptr %mhi_buf.012.i, i32 1
  %93 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %entries.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %94
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.mhi_free_bhie_table.exit_crit_edge

for.body.i.mhi_free_bhie_table.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mhi_free_bhie_table.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

mhi_free_bhie_table.exit:                         ; preds = %for.body.i.mhi_free_bhie_table.exit_crit_edge, %if.then93.mhi_free_bhie_table.exit_crit_edge
  %95 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %80, align 4
  call void @kfree(ptr noundef %96) #7
  call void @kfree(ptr noundef %80) #7
  %97 = ptrtoint ptr %fbc_image94 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %fbc_image94, align 4
  br label %error_fw_load

error_fw_load:                                    ; preds = %mhi_free_bhie_table.exit, %do.end86.error_fw_load_crit_edge, %if.then77, %do.end64, %if.then56, %do.end39, %do.end32
  %98 = ptrtoint ptr %pm_state to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 128, ptr %pm_state, align 4
  %state_event = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 52
  call void @__wake_up(ptr noundef %state_event, i32 noundef 3, i32 noundef 0, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %error_fw_load, %do.end90, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_addr) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %firmware) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mhi_read_reg(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mhi_fw_load_bhi(ptr noundef %mhi_cntrl, i32 noundef %dma_addr, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  %tx_status = alloca i32, align 4
  %val = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_status) #7
  %0 = ptrtoint ptr %tx_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tx_status, align 4, !annotation !116
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val, align 4, !annotation !116
  %bhi = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 4
  %2 = ptrtoint ptr %bhi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bhi, align 4
  %pm_lock1 = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 35
  %mhi_dev = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 1
  %4 = ptrtoint ptr %mhi_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mhi_dev, align 4
  %dev2 = getelementptr inbounds %struct.mhi_device, ptr %5, i32 0, i32 5
  tail call void @_raw_read_lock_bh(ptr noundef %pm_lock1) #7
  %pm_state = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 37
  %6 = ptrtoint ptr %pm_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pm_state, align 4
  %and = and i32 %7, 2014
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_read_unlock_bh(ptr noundef %pm_lock1) #7
  br label %cleanup103

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @prandom_u32() #7
  %conv.i = zext i32 %call.i to i64
  %mul.i = mul nuw nsw i64 %conv.i, 1073741823
  %shr.i = lshr i64 %mul.i, 32
  %conv2.i = trunc i64 %shr.i to i32
  %add = add nuw nsw i32 %conv2.i, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mhi_fw_load_bhi.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mhi_fw_load_bhi, %if.then7)) #7
          to label %do.end [label %if.then7], !srcloc !115

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mhi_fw_load_bhi.__UNIQUE_ID_ddebug284, ptr noundef %dev2, ptr noundef nonnull @.str.52, i32 noundef %add) #7
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.end
  tail call void @mhi_write_reg(ptr noundef %mhi_cntrl, ptr noundef %3, i32 noundef 44, i32 noundef 0) #7
  tail call void @mhi_write_reg(ptr noundef %mhi_cntrl, ptr noundef %3, i32 noundef 12, i32 noundef 0) #7
  tail call void @mhi_write_reg(ptr noundef %mhi_cntrl, ptr noundef %3, i32 noundef 8, i32 noundef %dma_addr) #7
  tail call void @mhi_write_reg(ptr noundef %mhi_cntrl, ptr noundef %3, i32 noundef 16, i32 noundef %size) #7
  tail call void @mhi_write_reg(ptr noundef %mhi_cntrl, ptr noundef %3, i32 noundef 24, i32 noundef %add) #7
  tail call void @_raw_read_unlock_bh(ptr noundef %pm_lock1) #7
  %timeout_ms = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 36
  %8 = ptrtoint ptr %timeout_ms to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %timeout_ms, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %9) #7
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 270) #7
  %10 = ptrtoint ptr %pm_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pm_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %11)
  %cmp = icmp ugt i32 %11, 127
  br i1 %cmp, label %do.end.lor.end.thread_crit_edge, label %lor.lhs.false

do.end.lor.end.thread_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end.thread

lor.lhs.false:                                    ; preds = %do.end
  %call19 = call i32 @mhi_read_reg_field(ptr noundef %mhi_cntrl, ptr noundef %3, i32 noundef 44, i32 noundef -1073741824, i32 noundef 30, ptr noundef nonnull %tx_status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %lor.end, label %lor.lhs.false.lor.end.thread_crit_edge

lor.lhs.false.lor.end.thread_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end.thread

lor.end.thread:                                   ; preds = %lor.lhs.false.lor.end.thread_crit_edge, %do.end.lor.end.thread_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool24.not169 = icmp eq i32 %call2.i, 0
  %spec.store.select170 = select i1 %tobool24.not169, i32 1, i32 %call2.i
  br label %if.end70

lor.end:                                          ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %tx_status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool21.not = icmp ne i32 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool24.not = icmp eq i32 %call2.i, 0
  %spec.store.select = select i1 %tobool24.not, i32 1, i32 %call2.i
  %brmerge = select i1 %tobool21.not, i1 true, i1 %tobool24.not
  %spec.store.select.mux = select i1 %tobool21.not, i32 %spec.store.select, i32 0
  br i1 %brmerge, label %lor.end.if.end70_crit_edge, label %if.then35

lor.end.if.end70_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.then35:                                        ; preds = %lor.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %14 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  %15 = ptrtoint ptr %timeout_ms to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %timeout_ms, align 4
  %call2.i164 = call i32 @__msecs_to_jiffies(i32 noundef %16) #7
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %state_event = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 52
  %call39190 = call i32 @prepare_to_wait_event(ptr noundef %state_event, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %17 = ptrtoint ptr %pm_state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pm_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %18)
  %cmp42191 = icmp ugt i32 %18, 127
  br i1 %cmp42191, label %if.then35.lor.end48.thread_crit_edge, label %if.then35.lor.lhs.false43_crit_edge

if.then35.lor.lhs.false43_crit_edge:              ; preds = %if.then35
  br label %lor.lhs.false43

if.then35.lor.end48.thread_crit_edge:             ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end48.thread

lor.lhs.false43:                                  ; preds = %cleanup.lor.lhs.false43_crit_edge, %if.then35.lor.lhs.false43_crit_edge
  %__ret36.0192 = phi i32 [ %call67, %cleanup.lor.lhs.false43_crit_edge ], [ %call2.i164, %if.then35.lor.lhs.false43_crit_edge ]
  %call44 = call i32 @mhi_read_reg_field(ptr noundef %mhi_cntrl, ptr noundef %3, i32 noundef 44, i32 noundef -1073741824, i32 noundef 30, ptr noundef nonnull %tx_status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %lor.end48, label %lor.lhs.false43.lor.end48.thread_crit_edge

lor.lhs.false43.lor.end48.thread_crit_edge:       ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end48.thread

lor.end48.thread:                                 ; preds = %cleanup.lor.end48.thread_crit_edge, %lor.lhs.false43.lor.end48.thread_crit_edge, %if.then35.lor.end48.thread_crit_edge
  %__ret36.0.lcssa = phi i32 [ %call2.i164, %if.then35.lor.end48.thread_crit_edge ], [ %__ret36.0192, %lor.lhs.false43.lor.end48.thread_crit_edge ], [ %call67, %cleanup.lor.end48.thread_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret36.0.lcssa)
  %tobool53.not173 = icmp eq i32 %__ret36.0.lcssa, 0
  %spec.store.select112174 = select i1 %tobool53.not173, i32 1, i32 %__ret36.0.lcssa
  br label %for.end

lor.end48:                                        ; preds = %lor.lhs.false43
  %19 = ptrtoint ptr %tx_status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool47.not = icmp eq i32 %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret36.0192)
  %tobool59.not = icmp eq i32 %__ret36.0192, 0
  br i1 %tobool47.not, label %21, label %for.end.loopexit.split.loop.exit185

21:                                               ; preds = %lor.end48
  br i1 %tobool59.not, label %.for.end_crit_edge, label %cleanup

.for.end_crit_edge:                               ; preds = %21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cleanup:                                          ; preds = %21
  %call67 = call i32 @schedule_timeout(i32 noundef %__ret36.0192) #7
  %call39 = call i32 @prepare_to_wait_event(ptr noundef %state_event, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %22 = ptrtoint ptr %pm_state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pm_state, align 4
  %cmp42 = icmp ugt i32 %23, 127
  br i1 %cmp42, label %cleanup.lor.end48.thread_crit_edge, label %cleanup.lor.lhs.false43_crit_edge

cleanup.lor.lhs.false43_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false43

cleanup.lor.end48.thread_crit_edge:               ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end48.thread

for.end.loopexit.split.loop.exit185:              ; preds = %lor.end48
  call void @__sanitizer_cov_trace_pc() #9
  %spec.store.select112.le = select i1 %tobool59.not, i32 1, i32 %__ret36.0192
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit.split.loop.exit185, %.for.end_crit_edge, %lor.end48.thread
  %__ret36.2.ph = phi i32 [ %spec.store.select112174, %lor.end48.thread ], [ %spec.store.select112.le, %for.end.loopexit.split.loop.exit185 ], [ 0, %.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %state_event, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %if.end70

if.end70:                                         ; preds = %for.end, %lor.end.if.end70_crit_edge, %lor.end.thread
  %__ret.1 = phi i32 [ %__ret36.2.ph, %for.end ], [ %spec.store.select170, %lor.end.thread ], [ %spec.store.select.mux, %lor.end.if.end70_crit_edge ]
  %24 = ptrtoint ptr %pm_state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pm_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %25)
  %cmp73 = icmp ugt i32 %25, 127
  br i1 %cmp73, label %if.end70.cleanup103_crit_edge, label %if.end75

if.end70.cleanup103_crit_edge:                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup103

if.end75:                                         ; preds = %if.end70
  %26 = ptrtoint ptr %tx_status to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp76 = icmp eq i32 %27, 3
  br i1 %cmp76, label %do.end80, label %if.end99

do.end80:                                         ; preds = %if.end75
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.53) #10
  call void @_raw_read_lock_bh(ptr noundef %pm_lock1) #7
  %28 = ptrtoint ptr %pm_state to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pm_state, align 4
  %and82 = and i32 %29, 2014
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %do.end80.if.end98_crit_edge, label %for.body.preheader

do.end80.if.end98_crit_edge:                      ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

for.body.preheader:                               ; preds = %do.end80
  %call88 = call i32 @mhi_read_reg(ptr noundef %mhi_cntrl, ptr noundef %3, i32 noundef 48, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %do.end94, label %for.body.preheader.if.end98_crit_edge

for.body.preheader.if.end98_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

do.end94:                                         ; preds = %for.body.preheader
  %30 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.47, i32 noundef %31) #10
  %call88.1 = call i32 @mhi_read_reg(ptr noundef %mhi_cntrl, ptr noundef %3, i32 noundef 52, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88.1)
  %tobool89.not.1 = icmp eq i32 %call88.1, 0
  br i1 %tobool89.not.1, label %do.end94.1, label %do.end94.if.end98_crit_edge

do.end94.if.end98_crit_edge:                      ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

do.end94.1:                                       ; preds = %do.end94
  %32 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.48, i32 noundef %33) #10
  %call88.2 = call i32 @mhi_read_reg(ptr noundef %mhi_cntrl, ptr noundef %3, i32 noundef 56, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88.2)
  %tobool89.not.2 = icmp eq i32 %call88.2, 0
  br i1 %tobool89.not.2, label %do.end94.2, label %do.end94.1.if.end98_crit_edge

do.end94.1.if.end98_crit_edge:                    ; preds = %do.end94.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

do.end94.2:                                       ; preds = %do.end94.1
  %34 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.49, i32 noundef %35) #10
  %call88.3 = call i32 @mhi_read_reg(ptr noundef %mhi_cntrl, ptr noundef %3, i32 noundef 60, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88.3)
  %tobool89.not.3 = icmp eq i32 %call88.3, 0
  br i1 %tobool89.not.3, label %do.end94.3, label %do.end94.2.if.end98_crit_edge

do.end94.2.if.end98_crit_edge:                    ; preds = %do.end94.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

do.end94.3:                                       ; preds = %do.end94.2
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.50, i32 noundef %37) #10
  br label %if.end98

if.end98:                                         ; preds = %do.end94.3, %do.end94.2.if.end98_crit_edge, %do.end94.1.if.end98_crit_edge, %do.end94.if.end98_crit_edge, %for.body.preheader.if.end98_crit_edge, %do.end80.if.end98_crit_edge
  call void @_raw_read_unlock_bh(ptr noundef %pm_lock1) #7
  br label %cleanup103

if.end99:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %tobool100.not = icmp eq i32 %__ret.1, 0
  %cond = select i1 %tobool100.not, i32 -110, i32 0
  br label %cleanup103

cleanup103:                                       ; preds = %if.end99, %if.end98, %if.end70.cleanup103_crit_edge, %if.then
  %retval.0 = phi i32 [ %cond, %if.end99 ], [ -5, %if.end70.cleanup103_crit_edge ], [ -5, %if.end98 ], [ -5, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_status) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mhi_ready_state_transition(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mhi_download_amss_image(ptr noundef %mhi_cntrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fbc_image = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 15
  %0 = ptrtoint ptr %fbc_image to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fbc_image, align 4
  %mhi_dev = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 1
  %2 = ptrtoint ptr %mhi_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mhi_dev, align 4
  %dev1 = getelementptr inbounds %struct.mhi_device, ptr %3, i32 0, i32 5
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %entries = getelementptr inbounds %struct.image_info, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %entries, align 4
  %sub = add i32 %7, -1
  %arrayidx = getelementptr %struct.mhi_buf, ptr %5, i32 %sub
  %call = tail call fastcc i32 @mhi_fw_load_bhie(ptr noundef %mhi_cntrl, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.33, i32 noundef %call) #10
  %pm_state = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 37
  %8 = ptrtoint ptr %pm_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 128, ptr %pm_state, align 4
  %state_event = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 52
  tail call void @__wake_up(ptr noundef %state_event, i32 noundef 3, i32 noundef 0, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ %call, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mhi_fw_load_bhie(ptr noundef %mhi_cntrl, ptr nocapture noundef readonly %mhi_buf) unnamed_addr #0 align 64 {
entry:
  %tx_status = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bhie = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 5
  %0 = ptrtoint ptr %bhie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bhie, align 4
  %mhi_dev = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 1
  %2 = ptrtoint ptr %mhi_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mhi_dev, align 4
  %dev1 = getelementptr inbounds %struct.mhi_device, ptr %3, i32 0, i32 5
  %pm_lock2 = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_status) #7
  %4 = ptrtoint ptr %tx_status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %tx_status, align 4, !annotation !116
  tail call void @_raw_read_lock_bh(ptr noundef %pm_lock2) #7
  %pm_state = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 37
  %5 = ptrtoint ptr %pm_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pm_state, align 4
  %and = and i32 %6, 2014
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_read_unlock_bh(ptr noundef %pm_lock2) #7
  br label %cleanup82

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @prandom_u32() #7
  %conv.i = zext i32 %call.i to i64
  %mul.i = mul nuw nsw i64 %conv.i, 1073741823
  %shr.i = lshr i64 %mul.i, 32
  %conv2.i = trunc i64 %shr.i to i32
  %add = add nuw nsw i32 %conv2.i, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mhi_fw_load_bhie.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mhi_fw_load_bhie, %if.then7)) #7
          to label %do.end [label %if.then7], !srcloc !115

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mhi_fw_load_bhie.__UNIQUE_ID_ddebug283, ptr noundef %dev1, ptr noundef nonnull @.str.58, i32 noundef %add) #7
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.end
  %dma_addr = getelementptr inbounds %struct.mhi_buf, ptr %mhi_buf, i32 0, i32 2
  tail call void @mhi_write_reg(ptr noundef %mhi_cntrl, ptr noundef %1, i32 noundef 48, i32 noundef 0) #7
  %7 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma_addr, align 4
  tail call void @mhi_write_reg(ptr noundef %mhi_cntrl, ptr noundef %1, i32 noundef 44, i32 noundef %8) #7
  %len = getelementptr inbounds %struct.mhi_buf, ptr %mhi_buf, i32 0, i32 3
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  tail call void @mhi_write_reg(ptr noundef %mhi_cntrl, ptr noundef %1, i32 noundef 52, i32 noundef %10) #7
  tail call void @mhi_write_reg_field(ptr noundef %mhi_cntrl, ptr noundef %1, i32 noundef 60, i32 noundef 1073741823, i32 noundef 0, i32 noundef %add) #7
  tail call void @_raw_read_unlock_bh(ptr noundef %pm_lock2) #7
  %timeout_ms = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 36
  %11 = ptrtoint ptr %timeout_ms to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %timeout_ms, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %12) #7
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 218) #7
  %13 = ptrtoint ptr %pm_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pm_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %14)
  %cmp = icmp ugt i32 %14, 127
  br i1 %cmp, label %do.end.lor.end.thread_crit_edge, label %lor.lhs.false

do.end.lor.end.thread_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end.thread

lor.lhs.false:                                    ; preds = %do.end
  %call20 = call i32 @mhi_read_reg_field(ptr noundef %mhi_cntrl, ptr noundef %1, i32 noundef 68, i32 noundef -1073741824, i32 noundef 30, ptr noundef nonnull %tx_status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %lor.end, label %lor.lhs.false.lor.end.thread_crit_edge

lor.lhs.false.lor.end.thread_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end.thread

lor.end.thread:                                   ; preds = %lor.lhs.false.lor.end.thread_crit_edge, %do.end.lor.end.thread_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool25.not133 = icmp eq i32 %call2.i, 0
  %spec.store.select134 = select i1 %tobool25.not133, i32 1, i32 %call2.i
  br label %if.end71

lor.end:                                          ; preds = %lor.lhs.false
  %15 = ptrtoint ptr %tx_status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool22.not = icmp ne i32 %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool25.not = icmp eq i32 %call2.i, 0
  %spec.store.select = select i1 %tobool25.not, i32 1, i32 %call2.i
  %brmerge = select i1 %tobool22.not, i1 true, i1 %tobool25.not
  %spec.store.select.mux = select i1 %tobool22.not, i32 %spec.store.select, i32 0
  br i1 %brmerge, label %lor.end.if.end71_crit_edge, label %if.then36

lor.end.if.end71_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.then36:                                        ; preds = %lor.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %17 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  %18 = ptrtoint ptr %timeout_ms to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %timeout_ms, align 4
  %call2.i128 = call i32 @__msecs_to_jiffies(i32 noundef %19) #7
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %state_event = getelementptr inbounds %struct.mhi_controller, ptr %mhi_cntrl, i32 0, i32 52
  %call40154 = call i32 @prepare_to_wait_event(ptr noundef %state_event, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %20 = ptrtoint ptr %pm_state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pm_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %21)
  %cmp43155 = icmp ugt i32 %21, 127
  br i1 %cmp43155, label %if.then36.lor.end49.thread_crit_edge, label %if.then36.lor.lhs.false44_crit_edge

if.then36.lor.lhs.false44_crit_edge:              ; preds = %if.then36
  br label %lor.lhs.false44

if.then36.lor.end49.thread_crit_edge:             ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end49.thread

lor.lhs.false44:                                  ; preds = %cleanup.lor.lhs.false44_crit_edge, %if.then36.lor.lhs.false44_crit_edge
  %__ret37.0156 = phi i32 [ %call68, %cleanup.lor.lhs.false44_crit_edge ], [ %call2.i128, %if.then36.lor.lhs.false44_crit_edge ]
  %call45 = call i32 @mhi_read_reg_field(ptr noundef %mhi_cntrl, ptr noundef %1, i32 noundef 68, i32 noundef -1073741824, i32 noundef 30, ptr noundef nonnull %tx_status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %lor.end49, label %lor.lhs.false44.lor.end49.thread_crit_edge

lor.lhs.false44.lor.end49.thread_crit_edge:       ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end49.thread

lor.end49.thread:                                 ; preds = %cleanup.lor.end49.thread_crit_edge, %lor.lhs.false44.lor.end49.thread_crit_edge, %if.then36.lor.end49.thread_crit_edge
  %__ret37.0.lcssa = phi i32 [ %call2.i128, %if.then36.lor.end49.thread_crit_edge ], [ %__ret37.0156, %lor.lhs.false44.lor.end49.thread_crit_edge ], [ %call68, %cleanup.lor.end49.thread_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret37.0.lcssa)
  %tobool54.not137 = icmp eq i32 %__ret37.0.lcssa, 0
  %spec.store.select88138 = select i1 %tobool54.not137, i32 1, i32 %__ret37.0.lcssa
  br label %for.end

lor.end49:                                        ; preds = %lor.lhs.false44
  %22 = ptrtoint ptr %tx_status to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool48.not = icmp eq i32 %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret37.0156)
  %tobool60.not = icmp eq i32 %__ret37.0156, 0
  br i1 %tobool48.not, label %24, label %for.end.loopexit.split.loop.exit149

24:                                               ; preds = %lor.end49
  br i1 %tobool60.not, label %.for.end_crit_edge, label %cleanup

.for.end_crit_edge:                               ; preds = %24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cleanup:                                          ; preds = %24
  %call68 = call i32 @schedule_timeout(i32 noundef %__ret37.0156) #7
  %call40 = call i32 @prepare_to_wait_event(ptr noundef %state_event, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %25 = ptrtoint ptr %pm_state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pm_state, align 4
  %cmp43 = icmp ugt i32 %26, 127
  br i1 %cmp43, label %cleanup.lor.end49.thread_crit_edge, label %cleanup.lor.lhs.false44_crit_edge

cleanup.lor.lhs.false44_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false44

cleanup.lor.end49.thread_crit_edge:               ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end49.thread

for.end.loopexit.split.loop.exit149:              ; preds = %lor.end49
  call void @__sanitizer_cov_trace_pc() #9
  %spec.store.select88.le = select i1 %tobool60.not, i32 1, i32 %__ret37.0156
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit.split.loop.exit149, %.for.end_crit_edge, %lor.end49.thread
  %__ret37.2.ph = phi i32 [ %spec.store.select88138, %lor.end49.thread ], [ %spec.store.select88.le, %for.end.loopexit.split.loop.exit149 ], [ 0, %.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %state_event, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %if.end71

if.end71:                                         ; preds = %for.end, %lor.end.if.end71_crit_edge, %lor.end.thread
  %__ret.1 = phi i32 [ %__ret37.2.ph, %for.end ], [ %spec.store.select134, %lor.end.thread ], [ %spec.store.select.mux, %lor.end.if.end71_crit_edge ]
  %27 = ptrtoint ptr %pm_state to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pm_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %28)
  %cmp74 = icmp ugt i32 %28, 127
  br i1 %cmp74, label %if.end71.cleanup82_crit_edge, label %lor.lhs.false75

if.end71.cleanup82_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup82

lor.lhs.false75:                                  ; preds = %if.end71
  %29 = ptrtoint ptr %tx_status to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp76.not = icmp eq i32 %30, 2
  br i1 %cmp76.not, label %if.end78, label %lor.lhs.false75.cleanup82_crit_edge

lor.lhs.false75.cleanup82_crit_edge:              ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup82

if.end78:                                         ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %tobool79.not = icmp eq i32 %__ret.1, 0
  %cond = select i1 %tobool79.not, i32 -110, i32 0
  br label %cleanup82

cleanup82:                                        ; preds = %if.end78, %lor.lhs.false75.cleanup82_crit_edge, %if.end71.cleanup82_crit_edge, %if.then
  %retval.0 = phi i32 [ %cond, %if.end78 ], [ -5, %if.then ], [ -5, %lor.lhs.false75.cleanup82_crit_edge ], [ -5, %if.end71.cleanup82_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_status) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @to_mhi_pm_state_str(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mhi_get_exec_env(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mhi_set_mhi_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !15, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !61, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !78, !80, !81, !82, !84, !86, !88, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105}
!llvm.module.flags = !{!106, !107, !108, !109, !110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/bus/mhi/core/boot.c", i32 37, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mhi_rddm_prepare.__UNIQUE_ID_ddebug275, !1, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/bus/mhi/core/boot.c", i32 52, i32 2}
!8 = !{ptr @mhi_rddm_prepare.__UNIQUE_ID_ddebug276, !7, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/bus/mhi/core/boot.c", i32 164, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @mhi_download_rddm_image.__UNIQUE_ID_ddebug282, !10, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!13 = !{ptr @__ksymtab_mhi_download_rddm_image, !14, !"__ksymtab_mhi_download_rddm_image", i1 false, i1 false}
!14 = !{!"../drivers/bus/mhi/core/boot.c", i32 177, i32 1}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/bus/mhi/core/boot.c", i32 400, i32 3}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mhi_fw_load_handler._entry, !16, !"_entry", i1 false, i1 false}
!21 = !{ptr @mhi_fw_load_handler._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/bus/mhi/core/boot.c", i32 408, i32 3}
!24 = !{ptr @mhi_fw_load_handler._entry.11, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @mhi_fw_load_handler._entry_ptr.13, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/bus/mhi/core/boot.c", i32 414, i32 4}
!28 = !{ptr @mhi_fw_load_handler._entry.14, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @mhi_fw_load_handler._entry_ptr.16, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/bus/mhi/core/boot.c", i32 428, i32 3}
!32 = !{ptr @mhi_fw_load_handler._entry.17, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @mhi_fw_load_handler._entry_ptr.19, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/bus/mhi/core/boot.c", i32 435, i32 3}
!36 = !{ptr @mhi_fw_load_handler._entry.20, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @mhi_fw_load_handler._entry_ptr.22, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.24, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/bus/mhi/core/boot.c", i32 459, i32 3}
!40 = !{ptr @mhi_fw_load_handler._entry.23, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @mhi_fw_load_handler._entry_ptr.25, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.27, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/bus/mhi/core/boot.c", i32 496, i32 3}
!44 = !{ptr @mhi_fw_load_handler._entry.26, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @mhi_fw_load_handler._entry_ptr.28, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.30, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/bus/mhi/core/boot.c", i32 500, i32 2}
!48 = !{ptr @.str.31, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @mhi_fw_load_handler._entry.29, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @mhi_fw_load_handler._entry_ptr.32, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.33, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/bus/mhi/core/boot.c", i32 527, i32 3}
!53 = !{ptr @.str.34, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @mhi_download_amss_image._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @mhi_download_amss_image._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.35, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/bus/mhi/core/boot.c", i32 69, i32 2}
!58 = !{ptr @.str.36, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @__mhi_download_rddm_in_panic.__UNIQUE_ID_ddebug277, !57, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!60 = !{ptr @.str.37, !57, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.38, !57, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.39, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/bus/mhi/core/boot.c", i32 99, i32 3}
!64 = !{ptr @__mhi_download_rddm_in_panic.__UNIQUE_ID_ddebug278, !63, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!65 = !{ptr @.str.40, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/bus/mhi/core/boot.c", i32 102, i32 3}
!67 = !{ptr @__mhi_download_rddm_in_panic.__UNIQUE_ID_ddebug279, !66, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!68 = !{ptr @.str.41, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/bus/mhi/core/boot.c", i32 113, i32 4}
!70 = !{ptr @__mhi_download_rddm_in_panic.__UNIQUE_ID_ddebug280, !69, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!71 = !{ptr @.str.42, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/bus/mhi/core/boot.c", i32 124, i32 2}
!73 = !{ptr @__mhi_download_rddm_in_panic.__UNIQUE_ID_ddebug281, !72, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!74 = !{ptr @.str.43, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/bus/mhi/core/boot.c", i32 145, i32 2}
!76 = !{ptr @__mhi_download_rddm_in_panic._entry, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @__mhi_download_rddm_in_panic._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.45, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/bus/mhi/core/boot.c", i32 148, i32 2}
!80 = !{ptr @__mhi_download_rddm_in_panic._entry.44, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @__mhi_download_rddm_in_panic._entry_ptr.46, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.47, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/bus/mhi/core/boot.c", i32 239, i32 5}
!84 = !{ptr @.str.48, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/bus/mhi/core/boot.c", i32 240, i32 5}
!86 = !{ptr @.str.49, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/bus/mhi/core/boot.c", i32 241, i32 5}
!88 = !{ptr @.str.50, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/bus/mhi/core/boot.c", i32 242, i32 5}
!90 = !{ptr @.str.51, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/bus/mhi/core/boot.c", i32 253, i32 2}
!92 = !{ptr @.str.52, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @mhi_fw_load_bhi.__UNIQUE_ID_ddebug284, !91, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!94 = !{ptr @.str.53, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/bus/mhi/core/boot.c", i32 275, i32 3}
!96 = !{ptr @mhi_fw_load_bhi._entry, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @mhi_fw_load_bhi._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.55, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/bus/mhi/core/boot.c", i32 283, i32 5}
!100 = !{ptr @mhi_fw_load_bhi._entry.54, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @mhi_fw_load_bhi._entry_ptr.56, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.57, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/bus/mhi/core/boot.c", i32 195, i32 2}
!104 = !{ptr @.str.58, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @mhi_fw_load_bhie.__UNIQUE_ID_ddebug283, !103, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!106 = !{i32 1, !"wchar_size", i32 2}
!107 = !{i32 1, !"min_enum_size", i32 4}
!108 = !{i32 8, !"branch-target-enforcement", i32 0}
!109 = !{i32 8, !"sign-return-address", i32 0}
!110 = !{i32 8, !"sign-return-address-all", i32 0}
!111 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!112 = !{i32 7, !"uwtable", i32 1}
!113 = !{i32 7, !"frame-pointer", i32 2}
!114 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!115 = !{i64 2148769636, i64 2148769641, i64 2148769654, i64 2148769698, i64 2148769732, i64 2148769753}
!116 = !{!"auto-init"}
!117 = !{i64 2154831943}
!118 = !{!"branch_weights", i32 1, i32 2000}
!119 = !{i8 0, i8 2}

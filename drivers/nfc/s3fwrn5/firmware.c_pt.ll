; ModuleID = '/llk/IR_all_yes/drivers/nfc/s3fwrn5/firmware.c_pt.bc'
source_filename = "../drivers/nfc/s3fwrn5/firmware.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.101 = type { [4 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.s3fwrn5_fw_info = type { ptr, %struct.s3fwrn5_fw_image, [33 x i8], ptr, i32, i32, i32, %struct.completion, ptr, i8 }
%struct.s3fwrn5_fw_image = type { ptr, [13 x i8], i32, ptr, i32, ptr, i32, ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nfc_dev = type { i32, i32, ptr, i32, i32, %struct.device, i8, i8, i8, i8, ptr, i8, %struct.nfc_genl_data, i32, %struct.list_head, i32, i32, %struct.timer_list, %struct.work_struct, i8, ptr, ptr, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.nfc_genl_data = type { i32, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.firmware = type { i32, ptr, ptr }
%struct.s3fwrn5_phy_ops = type { ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon.73, %union.anon.76, %union.anon.77, [48 x i8], %union.anon.78, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.80, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type { ptr, ptr, %union.anon.75 }
%union.anon.75 = type { ptr }
%union.anon.76 = type { ptr }
%union.anon.77 = type { i64 }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { i32, ptr }
%union.anon.80 = type { %struct.anon.81 }
%struct.anon.81 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.82, i32, i32, i32, i16, i16, %union.anon.84, i32, %union.anon.85, %union.anon.86, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.82 = type { i32 }
%union.anon.84 = type { i32 }
%union.anon.85 = type { i32 }
%union.anon.86 = type { i16 }
%struct.s3fwrn5_fw_header = type { i8, i8, i16 }
%struct.s3fwrn5_fw_version = type { i8, i8, i8, i8 }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.nci_dev = type { ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, %struct.atomic_t, i8, %struct.list_head, ptr, %struct.timer_list, %struct.timer_list, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.mutex, %struct.completion, i32, i32, ptr, i32, i32, [10 x %struct.nfc_target], i32, i8, i32, i8, [4 x i8], i8, i16, i8, i16, i8, i32, %struct.dest_spec_params, i8, ptr, [48 x i8], i8 }
%struct.sk_buff_head = type { %union.anon.93, i32, %struct.spinlock }
%union.anon.93 = type { %struct.anon.94 }
%struct.anon.94 = type { ptr, ptr }
%struct.nfc_target = type { i32, i32, i16, i8, i8, [10 x i8], i8, [8 x i8], i8, [12 x i8], i8, [18 x i8], i8, i8, i8, i8, [8 x i8] }
%struct.dest_spec_params = type { i8, i8 }
%struct.s3fwrn5_info = type { ptr, ptr, ptr, ptr, %struct.s3fwrn5_fw_info, %struct.mutex }

@s3fwrn5_fw_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 368, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to get bootinfo, ret=%02x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s3fwrn5_fw_setup\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/nfc/s3fwrn5/firmware.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s3fwrn5_fw_setup._entry_ptr = internal global ptr @s3fwrn5_fw_setup._entry, section ".printk_index", align 4
@s3fwrn5_fw_setup._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 376, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unknown hardware version\0A\00", [38 x i8] zeroinitializer }, align 32
@s3fwrn5_fw_setup._entry_ptr.7 = internal global ptr @s3fwrn5_fw_setup._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sha1\00", [27 x i8] zeroinitializer }, align 32
@s3fwrn5_fw_download._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 424, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Cannot allocate shash (code=%pe)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"s3fwrn5_fw_download\00", [44 x i8] zeroinitializer }, align 32
@s3fwrn5_fw_download._entry_ptr = internal global ptr @s3fwrn5_fw_download._entry, section ".printk_index", align 4
@s3fwrn5_fw_download._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 432, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cannot compute hash (code=%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@s3fwrn5_fw_download._entry_ptr.13 = internal global ptr @s3fwrn5_fw_download._entry.11, section ".printk_index", align 4
@s3fwrn5_fw_download._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.2, i32 438, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Firmware update: %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@s3fwrn5_fw_download._entry_ptr.17 = internal global ptr @s3fwrn5_fw_download._entry.14, section ".printk_index", align 4
@s3fwrn5_fw_download._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.10, ptr @.str.2, i32 443, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to enter update mode\0A\00", [35 x i8] zeroinitializer }, align 32
@s3fwrn5_fw_download._entry_ptr.20 = internal global ptr @s3fwrn5_fw_download._entry.18, section ".printk_index", align 4
@s3fwrn5_fw_download._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.10, ptr @.str.2, i32 451, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Firmware update error (code=%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@s3fwrn5_fw_download._entry_ptr.23 = internal global ptr @s3fwrn5_fw_download._entry.21, section ".printk_index", align 4
@s3fwrn5_fw_download._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.10, ptr @.str.2, i32 458, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to complete update mode\0A\00", [32 x i8] zeroinitializer }, align 32
@s3fwrn5_fw_download._entry_ptr.26 = internal global ptr @s3fwrn5_fw_download._entry.24, section ".printk_index", align 4
@s3fwrn5_fw_download._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.10, ptr @.str.2, i32 462, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Firmware update: success\0A\00", [38 x i8] zeroinitializer }, align 32
@s3fwrn5_fw_download._entry_ptr.29 = internal global ptr @s3fwrn5_fw_download._entry.27, section ".printk_index", align 4
@s3fwrn5_fw_get_base_addr.match = internal constant { [5 x %struct.anon.101], [56 x i8] } { [5 x %struct.anon.101] [%struct.anon.101 { [4 x i8] c"\05\00\00\00", i32 20480 }, %struct.anon.101 { [4 x i8] c"\05\00\00\01", i32 12288 }, %struct.anon.101 { [4 x i8] c"\05\00\00\02", i32 12288 }, %struct.anon.101 { [4 x i8] c"\05\00\00\03", i32 12288 }, %struct.anon.101 { [4 x i8] c"\05\00\00\05", i32 12288 }], [56 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@switch.table.s3fwrn5_fw_setup = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 1, i32 2, i32 3, i32 0, i32 4], [40 x i8] zeroinitializer }, align 32
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 368, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 376, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 422, i32 27 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 424, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 432, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 438, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 443, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 451, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 458, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 462, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [6 x i8] c"match\00", align 1
@___asan_gen_.107 = private constant [34 x i8] c"../drivers/nfc/s3fwrn5/firmware.c\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 333, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 87, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [30 x i8] c"switch.table.s3fwrn5_fw_setup\00", align 1
@llvm.compiler.used = appending global [38 x ptr] [ptr @s3fwrn5_fw_download._entry, ptr @s3fwrn5_fw_download._entry.11, ptr @s3fwrn5_fw_download._entry.14, ptr @s3fwrn5_fw_download._entry.18, ptr @s3fwrn5_fw_download._entry.21, ptr @s3fwrn5_fw_download._entry.24, ptr @s3fwrn5_fw_download._entry.27, ptr @s3fwrn5_fw_download._entry_ptr, ptr @s3fwrn5_fw_download._entry_ptr.13, ptr @s3fwrn5_fw_download._entry_ptr.17, ptr @s3fwrn5_fw_download._entry_ptr.20, ptr @s3fwrn5_fw_download._entry_ptr.23, ptr @s3fwrn5_fw_download._entry_ptr.26, ptr @s3fwrn5_fw_download._entry_ptr.29, ptr @s3fwrn5_fw_setup._entry, ptr @s3fwrn5_fw_setup._entry.5, ptr @s3fwrn5_fw_setup._entry_ptr, ptr @s3fwrn5_fw_setup._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @s3fwrn5_fw_get_base_addr.match, ptr @init_completion.__key, ptr @.str.30, ptr @switch.table.s3fwrn5_fw_setup], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3fwrn5_fw_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3fwrn5_fw_setup._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3fwrn5_fw_download._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3fwrn5_fw_download._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3fwrn5_fw_download._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3fwrn5_fw_download._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3fwrn5_fw_download._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3fwrn5_fw_download._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3fwrn5_fw_download._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3fwrn5_fw_get_base_addr.match to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.s3fwrn5_fw_setup to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s3fwrn5_fw_request_firmware(ptr noundef %fw_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fw1 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %fw_info, i32 0, i32 1
  %fw_name = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %fw_info, i32 0, i32 2
  %0 = ptrtoint ptr %fw_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_info, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.nfc_dev, ptr %3, i32 0, i32 5
  %call = tail call i32 @request_firmware(ptr noundef %fw1, ptr noundef %fw_name, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %fw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %7)
  %cmp4 = icmp ult i32 %7, 44
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @release_firmware(ptr noundef %5) #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %date = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %fw_info, i32 0, i32 1, i32 1
  %data = getelementptr inbounds %struct.firmware, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %10 = call ptr @memcpy(ptr %date, ptr %9, i32 12)
  %arrayidx = getelementptr %struct.s3fwrn5_fw_info, ptr %fw_info, i32 0, i32 1, i32 1, i32 12
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx, align 4
  %version = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %fw_info, i32 0, i32 1, i32 2
  %12 = load ptr, ptr %data, align 4
  %add.ptr13 = getelementptr i8, ptr %12, i32 16
  %13 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %add.ptr13, align 1
  %15 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %version, align 4
  %16 = load ptr, ptr %data, align 4
  %add.ptr16 = getelementptr i8, ptr %16, i32 20
  %17 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %sig_off.0.copyload = load i32, ptr %add.ptr16, align 1
  %add.ptr19 = getelementptr i8, ptr %16, i32 %sig_off.0.copyload
  %sig = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %fw_info, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %sig to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr19, ptr %sig, align 4
  %sig_size = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %fw_info, i32 0, i32 1, i32 4
  %19 = load ptr, ptr %data, align 4
  %add.ptr22 = getelementptr i8, ptr %19, i32 24
  %20 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %add.ptr22, align 1
  %22 = ptrtoint ptr %sig_size to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %sig_size, align 4
  %23 = load ptr, ptr %data, align 4
  %add.ptr25 = getelementptr i8, ptr %23, i32 28
  %24 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %image_off.0.copyload = load i32, ptr %add.ptr25, align 1
  %add.ptr28 = getelementptr i8, ptr %23, i32 %image_off.0.copyload
  %image = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %fw_info, i32 0, i32 1, i32 5
  %25 = ptrtoint ptr %image to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr28, ptr %image, align 4
  %image_sectors = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %fw_info, i32 0, i32 1, i32 6
  %26 = load ptr, ptr %data, align 4
  %add.ptr31 = getelementptr i8, ptr %26, i32 32
  %27 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %add.ptr31, align 1
  %29 = ptrtoint ptr %image_sectors to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %image_sectors, align 4
  %30 = load ptr, ptr %data, align 4
  %add.ptr34 = getelementptr i8, ptr %30, i32 36
  %31 = ptrtoint ptr %add.ptr34 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %custom_sig_off.0.copyload = load i32, ptr %add.ptr34, align 1
  %add.ptr37 = getelementptr i8, ptr %30, i32 %custom_sig_off.0.copyload
  %custom_sig = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %fw_info, i32 0, i32 1, i32 7
  %32 = ptrtoint ptr %custom_sig to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr37, ptr %custom_sig, align 4
  %custom_sig_size = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %fw_info, i32 0, i32 1, i32 8
  %33 = load ptr, ptr %data, align 4
  %add.ptr40 = getelementptr i8, ptr %33, i32 40
  %34 = ptrtoint ptr %add.ptr40 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %add.ptr40, align 1
  %36 = ptrtoint ptr %custom_sig_size to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %custom_sig_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then5 ], [ 0, %if.end7 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s3fwrn5_fw_setup(ptr noundef %fw_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fw_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_info, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev1 = getelementptr inbounds %struct.nfc_dev, ptr %3, i32 0, i32 5
  %parity.i.i = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %fw_info, i32 0, i32 9
  %4 = ptrtoint ptr %parity.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %parity.i.i, align 4
  %6 = xor i8 %5, -128
  store i8 %6, ptr %parity.i.i, align 4
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 4, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #6
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %entry.do.end_crit_edge, label %if.end.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call.i25.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 4) #6
  %7 = ptrtoint ptr %call.i25.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %5, ptr %call.i25.i.i, align 1
  %hdr.sroa.5.0.call.i25.sroa_idx.i.i = getelementptr inbounds i8, ptr %call.i25.i.i, i32 1
  %8 = ptrtoint ptr %hdr.sroa.5.0.call.i25.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %hdr.sroa.5.0.call.i25.sroa_idx.i.i, align 1
  %hdr.sroa.7.0.call.i25.sroa_idx.i.i = getelementptr inbounds i8, ptr %call.i25.i.i, i32 2
  %9 = ptrtoint ptr %hdr.sroa.7.0.call.i25.sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 0, ptr %hdr.sroa.7.0.call.i25.sroa_idx.i.i, align 1
  %completion.i.i = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %fw_info, i32 0, i32 7
  %10 = ptrtoint ptr %completion.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %completion.i.i, align 4
  %phy_ops.i.i.i = getelementptr i8, ptr %fw_info, i32 -4
  %11 = ptrtoint ptr %phy_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phy_ops.i.i.i, align 4
  %write.i.i.i = getelementptr inbounds %struct.s3fwrn5_phy_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i.i, label %if.end.i.s3fwrn5_fw_get_bootinfo.exit.thread55_crit_edge, label %s3fwrn5_write.exit.i.i

if.end.i.s3fwrn5_fw_get_bootinfo.exit.thread55_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3fwrn5_fw_get_bootinfo.exit.thread55

s3fwrn5_write.exit.i.i:                           ; preds = %if.end.i
  %phy_id.i.i.i = getelementptr i8, ptr %fw_info, i32 -12
  %15 = ptrtoint ptr %phy_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phy_id.i.i.i, align 4
  %call.i.i18.i = tail call i32 %14(ptr noundef %16, ptr noundef nonnull %call.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i18.i)
  %cmp.i.i = icmp slt i32 %call.i.i18.i, 0
  br i1 %cmp.i.i, label %s3fwrn5_write.exit.i.i.s3fwrn5_fw_get_bootinfo.exit.thread55_crit_edge, label %if.end.i19.i

s3fwrn5_write.exit.i.i.s3fwrn5_fw_get_bootinfo.exit.thread55_crit_edge: ; preds = %s3fwrn5_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3fwrn5_fw_get_bootinfo.exit.thread55

if.end.i19.i:                                     ; preds = %s3fwrn5_write.exit.i.i
  %call3.i.i = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %completion.i.i, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp4.i.i, label %if.end.i19.i.s3fwrn5_fw_get_bootinfo.exit.thread55_crit_edge, label %if.else.i.i

if.end.i19.i.s3fwrn5_fw_get_bootinfo.exit.thread55_crit_edge: ; preds = %if.end.i19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3fwrn5_fw_get_bootinfo.exit.thread55

if.else.i.i:                                      ; preds = %if.end.i19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp6.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %cmp6.i.i, label %if.else.i.i.s3fwrn5_fw_get_bootinfo.exit.thread55_crit_edge, label %if.end9.i.i

if.else.i.i.s3fwrn5_fw_get_bootinfo.exit.thread55_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3fwrn5_fw_get_bootinfo.exit.thread55

if.end9.i.i:                                      ; preds = %if.else.i.i
  %rsp10.i.i = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %fw_info, i32 0, i32 8
  %17 = ptrtoint ptr %rsp10.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rsp10.i.i, align 4
  %tobool.not.i20.i = icmp eq ptr %18, null
  br i1 %tobool.not.i20.i, label %if.end9.i.i.s3fwrn5_fw_get_bootinfo.exit.thread55_crit_edge, label %if.end4.i

if.end9.i.i.s3fwrn5_fw_get_bootinfo.exit.thread55_crit_edge: ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3fwrn5_fw_get_bootinfo.exit.thread55

if.end4.i:                                        ; preds = %if.end9.i.i
  %19 = ptrtoint ptr %rsp10.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %rsp10.i.i, align 4
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #6
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 19
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %code.i = getelementptr inbounds %struct.s3fwrn5_fw_header, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %code.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %code.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp5.not.i = icmp eq i8 %23, 0
  br i1 %cmp5.not.i, label %if.end, label %if.end4.i.s3fwrn5_fw_get_bootinfo.exit.thread55_crit_edge

if.end4.i.s3fwrn5_fw_get_bootinfo.exit.thread55_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3fwrn5_fw_get_bootinfo.exit.thread55

s3fwrn5_fw_get_bootinfo.exit.thread55:            ; preds = %if.end4.i.s3fwrn5_fw_get_bootinfo.exit.thread55_crit_edge, %if.end9.i.i.s3fwrn5_fw_get_bootinfo.exit.thread55_crit_edge, %if.else.i.i.s3fwrn5_fw_get_bootinfo.exit.thread55_crit_edge, %if.end.i19.i.s3fwrn5_fw_get_bootinfo.exit.thread55_crit_edge, %s3fwrn5_write.exit.i.i.s3fwrn5_fw_get_bootinfo.exit.thread55_crit_edge, %if.end.i.s3fwrn5_fw_get_bootinfo.exit.thread55_crit_edge
  %call.i.i.sink.i.ph = phi ptr [ %18, %if.end4.i.s3fwrn5_fw_get_bootinfo.exit.thread55_crit_edge ], [ %call.i.i.i, %if.end.i.s3fwrn5_fw_get_bootinfo.exit.thread55_crit_edge ], [ %call.i.i.i, %if.end9.i.i.s3fwrn5_fw_get_bootinfo.exit.thread55_crit_edge ], [ %call.i.i.i, %if.else.i.i.s3fwrn5_fw_get_bootinfo.exit.thread55_crit_edge ], [ %call.i.i.i, %if.end.i19.i.s3fwrn5_fw_get_bootinfo.exit.thread55_crit_edge ], [ %call.i.i.i, %s3fwrn5_write.exit.i.i.s3fwrn5_fw_get_bootinfo.exit.thread55_crit_edge ]
  %retval.0.ph.i.ph = phi i32 [ -22, %if.end4.i.s3fwrn5_fw_get_bootinfo.exit.thread55_crit_edge ], [ -95, %if.end.i.s3fwrn5_fw_get_bootinfo.exit.thread55_crit_edge ], [ -22, %if.end9.i.i.s3fwrn5_fw_get_bootinfo.exit.thread55_crit_edge ], [ -6, %if.else.i.i.s3fwrn5_fw_get_bootinfo.exit.thread55_crit_edge ], [ %call3.i.i, %if.end.i19.i.s3fwrn5_fw_get_bootinfo.exit.thread55_crit_edge ], [ %call.i.i18.i, %s3fwrn5_write.exit.i.i.s3fwrn5_fw_get_bootinfo.exit.thread55_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.sink.i.ph, i32 noundef 0) #6
  br label %do.end

do.end:                                           ; preds = %s3fwrn5_fw_get_bootinfo.exit.thread55, %entry.do.end_crit_edge
  %retval.0.i54 = phi i32 [ %retval.0.ph.i.ph, %s3fwrn5_fw_get_bootinfo.exit.thread55 ], [ -12, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str, i32 noundef %retval.0.i54) #9
  br label %err

if.end:                                           ; preds = %if.end4.i
  %add.ptr.i = getelementptr i8, ptr %21, i32 4
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bootinfo.sroa.0.0.copyload = load i8, ptr %add.ptr.i, align 1
  %bootinfo.sroa.5.0.add.ptr.i.sroa_idx = getelementptr i8, ptr %21, i32 5
  %25 = ptrtoint ptr %bootinfo.sroa.5.0.add.ptr.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %25)
  %bootinfo.sroa.5.0.copyload = load i8, ptr %bootinfo.sroa.5.0.add.ptr.i.sroa_idx, align 1
  %bootinfo.sroa.9.0.add.ptr.i.sroa_idx = getelementptr i8, ptr %21, i32 6
  %26 = ptrtoint ptr %bootinfo.sroa.9.0.add.ptr.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %26)
  %bootinfo.sroa.9.0.copyload = load i8, ptr %bootinfo.sroa.9.0.add.ptr.i.sroa_idx, align 1
  %bootinfo.sroa.12.0.add.ptr.i.sroa_idx = getelementptr i8, ptr %21, i32 7
  %27 = ptrtoint ptr %bootinfo.sroa.12.0.add.ptr.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %27)
  %bootinfo.sroa.12.0.copyload = load i8, ptr %bootinfo.sroa.12.0.add.ptr.i.sroa_idx, align 1
  %bootinfo.sroa.18.0.add.ptr.i.sroa_idx = getelementptr i8, ptr %21, i32 8
  %28 = ptrtoint ptr %bootinfo.sroa.18.0.add.ptr.i.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %bootinfo.sroa.18.0.copyload = load i16, ptr %bootinfo.sroa.18.0.add.ptr.i.sroa_idx, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %18, i32 noundef 0) #6
  %base_addr = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %fw_info, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %bootinfo.sroa.0.0.copyload)
  %cmp4.i = icmp eq i8 %bootinfo.sroa.0.0.copyload, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bootinfo.sroa.5.0.copyload)
  %cmp13.i = icmp eq i8 %bootinfo.sroa.5.0.copyload, 0
  %or.cond = select i1 %cmp4.i, i1 %cmp13.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %bootinfo.sroa.12.0.copyload)
  %29 = icmp ult i8 %bootinfo.sroa.12.0.copyload, 6
  %or.cond70 = select i1 %or.cond, i1 %29, i1 false
  br i1 %or.cond70, label %switch.hole_check, label %if.end.do.end7_crit_edge

if.end.do.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

do.end7:                                          ; preds = %switch.hole_check.do.end7_crit_edge, %if.end.do.end7_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6) #9
  br label %err

switch.hole_check:                                ; preds = %if.end
  %switch.shifted = lshr i8 47, %bootinfo.sroa.12.0.copyload
  %30 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %switch.lobit.not = icmp eq i8 %30, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end7_crit_edge, label %switch.lookup

switch.hole_check.do.end7_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  %31 = sext i8 %bootinfo.sroa.12.0.copyload to i32
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.s3fwrn5_fw_setup, i32 0, i32 %31
  %32 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %32)
  %switch.load = load i32, ptr %switch.gep, align 4
  %base_addr26.i = getelementptr [5 x %struct.anon.101], ptr @s3fwrn5_fw_get_base_addr.match, i32 0, i32 %switch.load, i32 1
  %33 = ptrtoint ptr %base_addr26.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %base_addr26.i, align 4
  %35 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %base_addr, align 4
  %conv = zext i16 %bootinfo.sroa.18.0.copyload to i32
  %sector_size9 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %fw_info, i32 0, i32 5
  %36 = ptrtoint ptr %sector_size9 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv, ptr %sector_size9, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bootinfo.sroa.9.0.copyload)
  %tobool.i.not = icmp eq i8 %bootinfo.sroa.9.0.copyload, 0
  %custom_sig_size = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %fw_info, i32 0, i32 1, i32 8
  %sig_size = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %fw_info, i32 0, i32 1, i32 4
  %cond.in = select i1 %tobool.i.not, ptr %sig_size, ptr %custom_sig_size
  %37 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %37)
  %cond = load i32, ptr %cond.in, align 4
  %sig_size13 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %fw_info, i32 0, i32 4
  %38 = ptrtoint ptr %sig_size13 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %cond, ptr %sig_size13, align 4
  %custom_sig = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %fw_info, i32 0, i32 1, i32 7
  %sig = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %fw_info, i32 0, i32 1, i32 3
  %cond21.in = select i1 %tobool.i.not, ptr %sig, ptr %custom_sig
  %39 = ptrtoint ptr %cond21.in to i32
  call void @__asan_load4_noabort(i32 %39)
  %cond21 = load ptr, ptr %cond21.in, align 4
  %sig22 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %fw_info, i32 0, i32 3
  %40 = ptrtoint ptr %sig22 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %cond21, ptr %sig22, align 4
  br label %cleanup

err:                                              ; preds = %do.end7, %do.end
  %ret.0 = phi i32 [ %retval.0.i54, %do.end ], [ -22, %do.end7 ]
  %fw.i = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %fw_info, i32 0, i32 1
  %41 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fw.i, align 4
  tail call void @release_firmware(ptr noundef %42) #6
  br label %cleanup

cleanup:                                          ; preds = %err, %switch.lookup
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @s3fwrn5_fw_check_version(ptr nocapture noundef readonly %fw_info, i32 noundef %version) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %version.addr.sroa.0.0.extract.shift = lshr i32 %version, 24
  %version.addr.sroa.3.0.extract.shift = lshr i32 %version, 8
  %version1 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %fw_info, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %version1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %version1, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %version.addr.sroa.0.0.extract.shift, i32 %conv)
  %cmp = icmp ult i32 %version.addr.sroa.0.0.extract.shift, %conv
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %version.addr.sroa.2.0.extract.shift = lshr i32 %version, 16
  %build1 = getelementptr inbounds %struct.s3fwrn5_fw_version, ptr %version1, i32 0, i32 1
  %2 = ptrtoint ptr %build1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %build1, align 1
  %conv5 = zext i8 %3 to i32
  %conv7 = and i32 %version.addr.sroa.2.0.extract.shift, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv7, i32 %conv5)
  %cmp8 = icmp ult i32 %conv7, %conv5
  br i1 %cmp8, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %build2 = getelementptr inbounds %struct.s3fwrn5_fw_version, ptr %version1, i32 0, i32 2
  %4 = ptrtoint ptr %build2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %build2, align 1
  %conv12 = zext i8 %5 to i32
  %conv14 = and i32 %version.addr.sroa.3.0.extract.shift, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv14, i32 %conv12)
  %cmp15 = icmp ult i32 %conv14, %conv12
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %entry.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ], [ %cmp15, %if.end11 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s3fwrn5_fw_download(ptr noundef %fw_info) local_unnamed_addr #0 align 64 {
entry:
  %rsp.i = alloca ptr, align 4
  %hash_data = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fw_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_info, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev1 = getelementptr inbounds %struct.nfc_dev, ptr %3, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %hash_data) #6
  %sector_size = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %fw_info, i32 0, i32 5
  %4 = call ptr @memset(ptr %hash_data, i32 255, i32 20)
  %5 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sector_size, align 4
  %image_sectors = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %fw_info, i32 0, i32 1, i32 6
  %7 = ptrtoint ptr %image_sectors to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %image_sectors, align 4
  %mul = mul i32 %8, %6
  %call = tail call ptr @crypto_alloc_shash(ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef 0) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, ptr noundef nonnull %call) #9
  %9 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %image = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %fw_info, i32 0, i32 1, i32 5
  %10 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %image, align 4
  %call5 = call i32 @crypto_shash_tfm_digest(ptr noundef %call, ptr noundef %11, i32 noundef %mul, ptr noundef nonnull %hash_data) #6
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call, i32 0, i32 2
  call void @crypto_destroy_tfm(ptr noundef %call, ptr noundef %base.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %do.end13, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %call5) #9
  br label %cleanup

do.end13:                                         ; preds = %if.end
  %fw_name = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %fw_info, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.15, ptr noundef %fw_name) #9
  %sig = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %fw_info, i32 0, i32 3
  %12 = ptrtoint ptr %sig to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sig, align 4
  %sig_size = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %fw_info, i32 0, i32 4
  %14 = ptrtoint ptr %sig_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sig_size, align 4
  %conv = trunc i32 %15 to i16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rsp.i) #6
  %parity.i.i = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %fw_info, i32 0, i32 9
  %16 = ptrtoint ptr %parity.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %parity.i.i, align 4
  %18 = xor i8 %17, -128
  store i8 %18, ptr %parity.i.i, align 4
  %call.i.i.i = call ptr @__alloc_skb(i32 noundef 8, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #6
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %do.end13.s3fwrn5_fw_enter_update_mode.exit.thread_crit_edge, label %if.end.i

do.end13.s3fwrn5_fw_enter_update_mode.exit.thread_crit_edge: ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3fwrn5_fw_enter_update_mode.exit.thread

if.end.i:                                         ; preds = %do.end13
  %call.i25.i.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 4) #6
  %19 = ptrtoint ptr %call.i25.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %17, ptr %call.i25.i.i, align 1
  %hdr.sroa.5.0.call.i25.sroa_idx.i.i = getelementptr inbounds i8, ptr %call.i25.i.i, i32 1
  %20 = ptrtoint ptr %hdr.sroa.5.0.call.i25.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %hdr.sroa.5.0.call.i25.sroa_idx.i.i, align 1
  %hdr.sroa.7.0.call.i25.sroa_idx.i.i = getelementptr inbounds i8, ptr %call.i25.i.i, i32 2
  %21 = ptrtoint ptr %hdr.sroa.7.0.call.i25.sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 4, ptr %hdr.sroa.7.0.call.i25.sroa_idx.i.i, align 1
  %call.i26.i.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 4) #6
  %22 = ptrtoint ptr %call.i26.i.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 20, ptr %call.i26.i.i, align 1
  %args.sroa.5.0.call.i26.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i26.i.i, i32 2
  %23 = ptrtoint ptr %args.sroa.5.0.call.i26.i.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %conv, ptr %args.sroa.5.0.call.i26.i.sroa_idx.i, align 1
  %completion.i.i = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %fw_info, i32 0, i32 7
  %24 = ptrtoint ptr %completion.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %completion.i.i, align 4
  %phy_ops.i.i.i = getelementptr i8, ptr %fw_info, i32 -4
  %25 = ptrtoint ptr %phy_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %phy_ops.i.i.i, align 4
  %write.i.i.i = getelementptr inbounds %struct.s3fwrn5_phy_ops, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i.i, label %if.end.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge, label %s3fwrn5_write.exit.i.i

if.end.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3fwrn5_fw_enter_update_mode.exit.thread.sink.split

s3fwrn5_write.exit.i.i:                           ; preds = %if.end.i
  %phy_id.i.i.i = getelementptr i8, ptr %fw_info, i32 -12
  %29 = ptrtoint ptr %phy_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %phy_id.i.i.i, align 4
  %call.i.i1.i = call i32 %28(ptr noundef %30, ptr noundef nonnull %call.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1.i)
  %cmp.i.i = icmp slt i32 %call.i.i1.i, 0
  br i1 %cmp.i.i, label %s3fwrn5_write.exit.i.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge, label %if.end.i2.i

s3fwrn5_write.exit.i.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge: ; preds = %s3fwrn5_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3fwrn5_fw_enter_update_mode.exit.thread.sink.split

if.end.i2.i:                                      ; preds = %s3fwrn5_write.exit.i.i
  %call3.i.i = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %completion.i.i, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp4.i.i, label %if.end.i2.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge, label %if.else.i.i

if.end.i2.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge: ; preds = %if.end.i2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3fwrn5_fw_enter_update_mode.exit.thread.sink.split

if.else.i.i:                                      ; preds = %if.end.i2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp6.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %cmp6.i.i, label %if.else.i.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge, label %if.end9.i.i

if.else.i.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3fwrn5_fw_enter_update_mode.exit.thread.sink.split

if.end9.i.i:                                      ; preds = %if.else.i.i
  %rsp10.i.i = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %fw_info, i32 0, i32 8
  %31 = ptrtoint ptr %rsp10.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rsp10.i.i, align 4
  %tobool.not.i3.i = icmp eq ptr %32, null
  br i1 %tobool.not.i3.i, label %if.end9.i.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge, label %if.end4.i

if.end9.i.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge: ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3fwrn5_fw_enter_update_mode.exit.thread.sink.split

if.end4.i:                                        ; preds = %if.end9.i.i
  %33 = ptrtoint ptr %rsp.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %rsp.i, align 4
  %34 = ptrtoint ptr %rsp10.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %rsp10.i.i, align 4
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #6
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 19
  %35 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i, align 4
  %code.i = getelementptr inbounds %struct.s3fwrn5_fw_header, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %code.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %code.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp5.not.i = icmp eq i8 %38, 0
  br i1 %cmp5.not.i, label %if.end8.i, label %if.end4.i.s3fwrn5_fw_enter_update_mode.exit.thread146_crit_edge

if.end4.i.s3fwrn5_fw_enter_update_mode.exit.thread146_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3fwrn5_fw_enter_update_mode.exit.thread146

if.end8.i:                                        ; preds = %if.end4.i
  call void @kfree_skb_reason(ptr noundef nonnull %32, i32 noundef 0) #6
  %39 = ptrtoint ptr %parity.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %parity.i.i, align 4
  %41 = xor i8 %40, -128
  store i8 %41, ptr %parity.i.i, align 4
  %call.i.i6.i = call ptr @__alloc_skb(i32 noundef 24, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #6
  %tobool.not.i7.i = icmp eq ptr %call.i.i6.i, null
  br i1 %tobool.not.i7.i, label %if.end8.i.s3fwrn5_fw_enter_update_mode.exit.thread_crit_edge, label %if.end13.i

if.end8.i.s3fwrn5_fw_enter_update_mode.exit.thread_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3fwrn5_fw_enter_update_mode.exit.thread

if.end13.i:                                       ; preds = %if.end8.i
  %or24.i.i = or i8 %40, 2
  %call.i25.i8.i = call ptr @skb_put(ptr noundef nonnull %call.i.i6.i, i32 noundef 4) #6
  %42 = ptrtoint ptr %call.i25.i8.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %or24.i.i, ptr %call.i25.i8.i, align 1
  %hdr.sroa.5.0.call.i25.sroa_idx.i9.i = getelementptr inbounds i8, ptr %call.i25.i8.i, i32 1
  %43 = ptrtoint ptr %hdr.sroa.5.0.call.i25.sroa_idx.i9.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %hdr.sroa.5.0.call.i25.sroa_idx.i9.i, align 1
  %hdr.sroa.7.0.call.i25.sroa_idx.i10.i = getelementptr inbounds i8, ptr %call.i25.i8.i, i32 2
  %44 = ptrtoint ptr %hdr.sroa.7.0.call.i25.sroa_idx.i10.i to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 20, ptr %hdr.sroa.7.0.call.i25.sroa_idx.i10.i, align 1
  %call.i26.i12.i = call ptr @skb_put(ptr noundef nonnull %call.i.i6.i, i32 noundef 20) #6
  %45 = call ptr @memcpy(ptr %call.i26.i12.i, ptr %hash_data, i32 20)
  %46 = ptrtoint ptr %completion.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %completion.i.i, align 4
  %47 = ptrtoint ptr %phy_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %phy_ops.i.i.i, align 4
  %write.i.i17.i = getelementptr inbounds %struct.s3fwrn5_phy_ops, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %write.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write.i.i17.i, align 4
  %tobool.not.i.i18.i = icmp eq ptr %50, null
  br i1 %tobool.not.i.i18.i, label %if.end13.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge, label %s3fwrn5_write.exit.i22.i

if.end13.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3fwrn5_fw_enter_update_mode.exit.thread.sink.split

s3fwrn5_write.exit.i22.i:                         ; preds = %if.end13.i
  %51 = ptrtoint ptr %phy_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %phy_id.i.i.i, align 4
  %call.i.i20.i = call i32 %50(ptr noundef %52, ptr noundef nonnull %call.i.i6.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i20.i)
  %cmp.i21.i = icmp slt i32 %call.i.i20.i, 0
  br i1 %cmp.i21.i, label %s3fwrn5_write.exit.i22.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge, label %if.end.i25.i

s3fwrn5_write.exit.i22.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge: ; preds = %s3fwrn5_write.exit.i22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3fwrn5_fw_enter_update_mode.exit.thread.sink.split

if.end.i25.i:                                     ; preds = %s3fwrn5_write.exit.i22.i
  %call3.i23.i = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %completion.i.i, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i23.i)
  %cmp4.i24.i = icmp slt i32 %call3.i23.i, 0
  br i1 %cmp4.i24.i, label %if.end.i25.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge, label %if.else.i27.i

if.end.i25.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge: ; preds = %if.end.i25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3fwrn5_fw_enter_update_mode.exit.thread.sink.split

if.else.i27.i:                                    ; preds = %if.end.i25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i23.i)
  %cmp6.i26.i = icmp eq i32 %call3.i23.i, 0
  br i1 %cmp6.i26.i, label %if.else.i27.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge, label %if.end9.i30.i

if.else.i27.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge: ; preds = %if.else.i27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3fwrn5_fw_enter_update_mode.exit.thread.sink.split

if.end9.i30.i:                                    ; preds = %if.else.i27.i
  %53 = ptrtoint ptr %rsp10.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rsp10.i.i, align 4
  %tobool.not.i29.i = icmp eq ptr %54, null
  br i1 %tobool.not.i29.i, label %if.end9.i30.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge, label %if.end18.i

if.end9.i30.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge: ; preds = %if.end9.i30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3fwrn5_fw_enter_update_mode.exit.thread.sink.split

if.end18.i:                                       ; preds = %if.end9.i30.i
  %55 = ptrtoint ptr %rsp.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %rsp.i, align 4
  %56 = ptrtoint ptr %rsp10.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %rsp10.i.i, align 4
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i6.i, i32 noundef 0) #6
  %data19.i = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 19
  %57 = ptrtoint ptr %data19.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data19.i, align 4
  %code20.i = getelementptr inbounds %struct.s3fwrn5_fw_header, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %code20.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %code20.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp22.not.i = icmp eq i8 %60, 0
  br i1 %cmp22.not.i, label %if.end25.i, label %if.end18.i.s3fwrn5_fw_enter_update_mode.exit.thread146_crit_edge

if.end18.i.s3fwrn5_fw_enter_update_mode.exit.thread146_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3fwrn5_fw_enter_update_mode.exit.thread146

if.end25.i:                                       ; preds = %if.end18.i
  call void @kfree_skb_reason(ptr noundef nonnull %54, i32 noundef 0) #6
  %61 = ptrtoint ptr %parity.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %parity.i.i, align 4
  %63 = xor i8 %62, -128
  store i8 %63, ptr %parity.i.i, align 4
  %conv9.i.i = and i32 %15, 65535
  %add.i.i = add nuw nsw i32 %conv9.i.i, 4
  %call.i.i35.i = call ptr @__alloc_skb(i32 noundef %add.i.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #6
  %tobool.not.i36.i = icmp eq ptr %call.i.i35.i, null
  br i1 %tobool.not.i36.i, label %if.end25.i.s3fwrn5_fw_enter_update_mode.exit.thread_crit_edge, label %if.end.i41.i

if.end25.i.s3fwrn5_fw_enter_update_mode.exit.thread_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3fwrn5_fw_enter_update_mode.exit.thread

if.end.i41.i:                                     ; preds = %if.end25.i
  %or24.i37.i = or i8 %62, 2
  %call.i25.i38.i = call ptr @skb_put(ptr noundef nonnull %call.i.i35.i, i32 noundef 4) #6
  %64 = ptrtoint ptr %call.i25.i38.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %or24.i37.i, ptr %call.i25.i38.i, align 1
  %hdr.sroa.5.0.call.i25.sroa_idx.i39.i = getelementptr inbounds i8, ptr %call.i25.i38.i, i32 1
  %65 = ptrtoint ptr %hdr.sroa.5.0.call.i25.sroa_idx.i39.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %hdr.sroa.5.0.call.i25.sroa_idx.i39.i, align 1
  %hdr.sroa.7.0.call.i25.sroa_idx.i40.i = getelementptr inbounds i8, ptr %call.i25.i38.i, i32 2
  %66 = ptrtoint ptr %hdr.sroa.7.0.call.i25.sroa_idx.i40.i to i32
  call void @__asan_storeN_noabort(i32 %66, i32 2)
  store i16 %conv, ptr %hdr.sroa.7.0.call.i25.sroa_idx.i40.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %tobool11.not.i.i = icmp eq i16 %conv, 0
  br i1 %tobool11.not.i.i, label %if.end.i41.i.if.end30.i_crit_edge, label %if.then12.i.i

if.end.i41.i.if.end30.i_crit_edge:                ; preds = %if.end.i41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30.i

if.then12.i.i:                                    ; preds = %if.end.i41.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i26.i42.i = call ptr @skb_put(ptr noundef nonnull %call.i.i35.i, i32 noundef %conv9.i.i) #6
  %67 = call ptr @memcpy(ptr %call.i26.i42.i, ptr %13, i32 %conv9.i.i)
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then12.i.i, %if.end.i41.i.if.end30.i_crit_edge
  %call31.i = call fastcc i32 @s3fwrn5_fw_send_msg(ptr noundef %fw_info, ptr noundef nonnull %call.i.i35.i, ptr noundef nonnull %rsp.i) #6
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i35.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp32.i = icmp slt i32 %call31.i, 0
  br i1 %cmp32.i, label %if.end30.i.s3fwrn5_fw_enter_update_mode.exit.thread_crit_edge, label %if.end35.i

if.end30.i.s3fwrn5_fw_enter_update_mode.exit.thread_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3fwrn5_fw_enter_update_mode.exit.thread

if.end35.i:                                       ; preds = %if.end30.i
  %68 = ptrtoint ptr %rsp.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rsp.i, align 4
  %data36.i = getelementptr inbounds %struct.sk_buff, ptr %69, i32 0, i32 19
  %70 = ptrtoint ptr %data36.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data36.i, align 4
  %code37.i = getelementptr inbounds %struct.s3fwrn5_fw_header, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %code37.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %code37.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %cmp39.not.i = icmp eq i8 %73, 0
  br i1 %cmp39.not.i, label %s3fwrn5_fw_enter_update_mode.exit, label %if.end35.i.s3fwrn5_fw_enter_update_mode.exit.thread146_crit_edge

if.end35.i.s3fwrn5_fw_enter_update_mode.exit.thread146_crit_edge: ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3fwrn5_fw_enter_update_mode.exit.thread146

s3fwrn5_fw_enter_update_mode.exit.thread.sink.split: ; preds = %if.end9.i30.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge, %if.else.i27.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge, %if.end.i25.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge, %s3fwrn5_write.exit.i22.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge, %if.end13.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge, %if.end9.i.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge, %if.else.i.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge, %if.end.i2.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge, %s3fwrn5_write.exit.i.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge, %if.end.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge
  %call.i.i.i.sink = phi ptr [ %call.i.i.i, %if.end9.i.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge ], [ %call.i.i.i, %if.else.i.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge ], [ %call.i.i.i, %if.end.i2.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge ], [ %call.i.i.i, %s3fwrn5_write.exit.i.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge ], [ %call.i.i.i, %if.end.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge ], [ %call.i.i6.i, %if.end9.i30.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge ], [ %call.i.i6.i, %if.else.i27.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge ], [ %call.i.i6.i, %if.end.i25.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge ], [ %call.i.i6.i, %s3fwrn5_write.exit.i22.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge ], [ %call.i.i6.i, %if.end13.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge ]
  %retval.0.i.ph.ph = phi i32 [ -22, %if.end9.i.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge ], [ -6, %if.else.i.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge ], [ %call3.i.i, %if.end.i2.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge ], [ %call.i.i1.i, %s3fwrn5_write.exit.i.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge ], [ -95, %if.end.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge ], [ -22, %if.end9.i30.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge ], [ -6, %if.else.i27.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge ], [ %call3.i23.i, %if.end.i25.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge ], [ %call.i.i20.i, %s3fwrn5_write.exit.i22.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge ], [ -95, %if.end13.i.s3fwrn5_fw_enter_update_mode.exit.thread.sink.split_crit_edge ]
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i.sink, i32 noundef 0) #6
  br label %s3fwrn5_fw_enter_update_mode.exit.thread

s3fwrn5_fw_enter_update_mode.exit.thread:         ; preds = %s3fwrn5_fw_enter_update_mode.exit.thread.sink.split, %if.end30.i.s3fwrn5_fw_enter_update_mode.exit.thread_crit_edge, %if.end25.i.s3fwrn5_fw_enter_update_mode.exit.thread_crit_edge, %if.end8.i.s3fwrn5_fw_enter_update_mode.exit.thread_crit_edge, %do.end13.s3fwrn5_fw_enter_update_mode.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end8.i.s3fwrn5_fw_enter_update_mode.exit.thread_crit_edge ], [ -12, %do.end13.s3fwrn5_fw_enter_update_mode.exit.thread_crit_edge ], [ -12, %if.end25.i.s3fwrn5_fw_enter_update_mode.exit.thread_crit_edge ], [ %call31.i, %if.end30.i.s3fwrn5_fw_enter_update_mode.exit.thread_crit_edge ], [ %retval.0.i.ph.ph, %s3fwrn5_fw_enter_update_mode.exit.thread.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rsp.i) #6
  br label %do.end21

s3fwrn5_fw_enter_update_mode.exit.thread146:      ; preds = %if.end35.i.s3fwrn5_fw_enter_update_mode.exit.thread146_crit_edge, %if.end18.i.s3fwrn5_fw_enter_update_mode.exit.thread146_crit_edge, %if.end4.i.s3fwrn5_fw_enter_update_mode.exit.thread146_crit_edge
  %74 = ptrtoint ptr %rsp.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rsp.i, align 4
  call void @kfree_skb_reason(ptr noundef %75, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rsp.i) #6
  br label %do.end21

s3fwrn5_fw_enter_update_mode.exit:                ; preds = %if.end35.i
  %76 = ptrtoint ptr %rsp.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rsp.i, align 4
  call void @kfree_skb_reason(ptr noundef %77, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rsp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp23164.not = icmp eq i32 %mul, 0
  br i1 %cmp23164.not, label %s3fwrn5_fw_enter_update_mode.exit.for.end_crit_edge, label %for.body.lr.ph

s3fwrn5_fw_enter_update_mode.exit.for.end_crit_edge: ; preds = %s3fwrn5_fw_enter_update_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %s3fwrn5_fw_enter_update_mode.exit
  %base_addr = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %fw_info, i32 0, i32 6
  br label %for.body

do.end21:                                         ; preds = %s3fwrn5_fw_enter_update_mode.exit.thread146, %s3fwrn5_fw_enter_update_mode.exit.thread
  %retval.0.i144 = phi i32 [ %retval.0.i.ph, %s3fwrn5_fw_enter_update_mode.exit.thread ], [ -71, %s3fwrn5_fw_enter_update_mode.exit.thread146 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %off.0165 = phi i32 [ 0, %for.body.lr.ph ], [ %add35, %for.inc.for.body_crit_edge ]
  %78 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %base_addr, align 4
  %80 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %image, align 4
  %add.ptr = getelementptr i8, ptr %81, i32 %off.0165
  %82 = ptrtoint ptr %parity.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %parity.i.i, align 4
  %84 = xor i8 %83, -128
  store i8 %84, ptr %parity.i.i, align 4
  %call.i.i.i90 = call ptr @__alloc_skb(i32 noundef 8, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #6
  %tobool.not.i.i91 = icmp eq ptr %call.i.i.i90, null
  br i1 %tobool.not.i.i91, label %for.body.do.end32_crit_edge, label %if.end.i100

for.body.do.end32_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end32

if.end.i100:                                      ; preds = %for.body
  %add = add i32 %79, %off.0165
  %call.i25.i.i92 = call ptr @skb_put(ptr noundef nonnull %call.i.i.i90, i32 noundef 4) #6
  %85 = ptrtoint ptr %call.i25.i.i92 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %83, ptr %call.i25.i.i92, align 1
  %hdr.sroa.5.0.call.i25.sroa_idx.i.i93 = getelementptr inbounds i8, ptr %call.i25.i.i92, i32 1
  %86 = ptrtoint ptr %hdr.sroa.5.0.call.i25.sroa_idx.i.i93 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 4, ptr %hdr.sroa.5.0.call.i25.sroa_idx.i.i93, align 1
  %hdr.sroa.7.0.call.i25.sroa_idx.i.i94 = getelementptr inbounds i8, ptr %call.i25.i.i92, i32 2
  %87 = ptrtoint ptr %hdr.sroa.7.0.call.i25.sroa_idx.i.i94 to i32
  call void @__asan_storeN_noabort(i32 %87, i32 2)
  store i16 4, ptr %hdr.sroa.7.0.call.i25.sroa_idx.i.i94, align 1
  %call.i26.i.i95 = call ptr @skb_put(ptr noundef nonnull %call.i.i.i90, i32 noundef 4) #6
  %88 = ptrtoint ptr %call.i26.i.i95 to i32
  call void @__asan_storeN_noabort(i32 %88, i32 4)
  store i32 %add, ptr %call.i26.i.i95, align 1
  %89 = ptrtoint ptr %completion.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %completion.i.i, align 4
  %90 = ptrtoint ptr %phy_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %phy_ops.i.i.i, align 4
  %write.i.i.i98 = getelementptr inbounds %struct.s3fwrn5_phy_ops, ptr %91, i32 0, i32 3
  %92 = ptrtoint ptr %write.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %write.i.i.i98, align 4
  %tobool.not.i.i.i99 = icmp eq ptr %93, null
  br i1 %tobool.not.i.i.i99, label %if.end.i100.cleanup.sink.split.i_crit_edge, label %s3fwrn5_write.exit.i.i103

if.end.i100.cleanup.sink.split.i_crit_edge:       ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

s3fwrn5_write.exit.i.i103:                        ; preds = %if.end.i100
  %94 = ptrtoint ptr %phy_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %phy_id.i.i.i, align 4
  %call.i.i47.i = call i32 %93(ptr noundef %95, ptr noundef nonnull %call.i.i.i90) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i47.i)
  %cmp.i.i102 = icmp slt i32 %call.i.i47.i, 0
  br i1 %cmp.i.i102, label %s3fwrn5_write.exit.i.i103.cleanup.sink.split.i_crit_edge, label %if.end.i48.i

s3fwrn5_write.exit.i.i103.cleanup.sink.split.i_crit_edge: ; preds = %s3fwrn5_write.exit.i.i103
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end.i48.i:                                     ; preds = %s3fwrn5_write.exit.i.i103
  %call3.i.i104 = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %completion.i.i, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i104)
  %cmp4.i.i105 = icmp slt i32 %call3.i.i104, 0
  br i1 %cmp4.i.i105, label %if.end.i48.i.cleanup.sink.split.i_crit_edge, label %if.else.i.i107

if.end.i48.i.cleanup.sink.split.i_crit_edge:      ; preds = %if.end.i48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.else.i.i107:                                   ; preds = %if.end.i48.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i104)
  %cmp6.i.i106 = icmp eq i32 %call3.i.i104, 0
  br i1 %cmp6.i.i106, label %if.else.i.i107.cleanup.sink.split.i_crit_edge, label %if.end9.i.i109

if.else.i.i107.cleanup.sink.split.i_crit_edge:    ; preds = %if.else.i.i107
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end9.i.i109:                                   ; preds = %if.else.i.i107
  %96 = ptrtoint ptr %rsp10.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rsp10.i.i, align 4
  %tobool.not.i49.i = icmp eq ptr %97, null
  br i1 %tobool.not.i49.i, label %if.end9.i.i109.cleanup.sink.split.i_crit_edge, label %if.end4.i111

if.end9.i.i109.cleanup.sink.split.i_crit_edge:    ; preds = %if.end9.i.i109
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end4.i111:                                     ; preds = %if.end9.i.i109
  %98 = ptrtoint ptr %rsp10.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %rsp10.i.i, align 4
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i90, i32 noundef 0) #6
  %data5.i = getelementptr inbounds %struct.sk_buff, ptr %97, i32 0, i32 19
  %99 = ptrtoint ptr %data5.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %data5.i, align 4
  %code.i110 = getelementptr inbounds %struct.s3fwrn5_fw_header, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %code.i110 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %code.i110, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %cmp6.not.i = icmp eq i8 %102, 0
  br i1 %cmp6.not.i, label %if.end9.i, label %if.end4.i111.cleanup.sink.split.i_crit_edge

if.end4.i111.cleanup.sink.split.i_crit_edge:      ; preds = %if.end4.i111
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end9.i:                                        ; preds = %if.end4.i111
  call void @kfree_skb_reason(ptr noundef nonnull %97, i32 noundef 0) #6
  br label %for.body.i

for.body.i:                                       ; preds = %if.end28.i.for.body.i_crit_edge, %if.end9.i
  %i.0102.i = phi i32 [ 0, %if.end9.i ], [ %inc.i, %if.end28.i.for.body.i_crit_edge ]
  %103 = ptrtoint ptr %parity.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %parity.i.i, align 4
  %105 = xor i8 %104, -128
  store i8 %105, ptr %parity.i.i, align 4
  %call.i.i52.i = call ptr @__alloc_skb(i32 noundef 260, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #6
  %tobool.not.i53.i = icmp eq ptr %call.i.i52.i, null
  br i1 %tobool.not.i53.i, label %for.body.i.do.end32_crit_edge, label %if.end16.i

for.body.i.do.end32_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end32

if.end16.i:                                       ; preds = %for.body.i
  %mul.i = shl i32 %i.0102.i, 8
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %mul.i
  %or24.i.i112 = or i8 %104, 2
  %call.i25.i54.i = call ptr @skb_put(ptr noundef nonnull %call.i.i52.i, i32 noundef 4) #6
  %106 = ptrtoint ptr %call.i25.i54.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %or24.i.i112, ptr %call.i25.i54.i, align 1
  %hdr.sroa.5.0.call.i25.sroa_idx.i55.i = getelementptr inbounds i8, ptr %call.i25.i54.i, i32 1
  %107 = ptrtoint ptr %hdr.sroa.5.0.call.i25.sroa_idx.i55.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %hdr.sroa.5.0.call.i25.sroa_idx.i55.i, align 1
  %hdr.sroa.7.0.call.i25.sroa_idx.i56.i = getelementptr inbounds i8, ptr %call.i25.i54.i, i32 2
  %108 = ptrtoint ptr %hdr.sroa.7.0.call.i25.sroa_idx.i56.i to i32
  call void @__asan_storeN_noabort(i32 %108, i32 2)
  store i16 256, ptr %hdr.sroa.7.0.call.i25.sroa_idx.i56.i, align 1
  %call.i26.i58.i = call ptr @skb_put(ptr noundef nonnull %call.i.i52.i, i32 noundef 256) #6
  %109 = call ptr @memcpy(ptr %call.i26.i58.i, ptr %add.ptr.i, i32 256)
  %110 = ptrtoint ptr %completion.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %completion.i.i, align 4
  %111 = ptrtoint ptr %phy_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %phy_ops.i.i.i, align 4
  %write.i.i63.i = getelementptr inbounds %struct.s3fwrn5_phy_ops, ptr %112, i32 0, i32 3
  %113 = ptrtoint ptr %write.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %write.i.i63.i, align 4
  %tobool.not.i.i64.i = icmp eq ptr %114, null
  br i1 %tobool.not.i.i64.i, label %if.end16.i.cleanup.sink.split.i_crit_edge, label %s3fwrn5_write.exit.i68.i

if.end16.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

s3fwrn5_write.exit.i68.i:                         ; preds = %if.end16.i
  %115 = ptrtoint ptr %phy_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %phy_id.i.i.i, align 4
  %call.i.i66.i = call i32 %114(ptr noundef %116, ptr noundef nonnull %call.i.i52.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i66.i)
  %cmp.i67.i = icmp slt i32 %call.i.i66.i, 0
  br i1 %cmp.i67.i, label %s3fwrn5_write.exit.i68.i.cleanup.sink.split.i_crit_edge, label %if.end.i71.i

s3fwrn5_write.exit.i68.i.cleanup.sink.split.i_crit_edge: ; preds = %s3fwrn5_write.exit.i68.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end.i71.i:                                     ; preds = %s3fwrn5_write.exit.i68.i
  %call3.i69.i = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %completion.i.i, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i69.i)
  %cmp4.i70.i = icmp slt i32 %call3.i69.i, 0
  br i1 %cmp4.i70.i, label %if.end.i71.i.cleanup.sink.split.i_crit_edge, label %if.else.i73.i

if.end.i71.i.cleanup.sink.split.i_crit_edge:      ; preds = %if.end.i71.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.else.i73.i:                                    ; preds = %if.end.i71.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i69.i)
  %cmp6.i72.i = icmp eq i32 %call3.i69.i, 0
  br i1 %cmp6.i72.i, label %if.else.i73.i.cleanup.sink.split.i_crit_edge, label %if.end9.i76.i

if.else.i73.i.cleanup.sink.split.i_crit_edge:     ; preds = %if.else.i73.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end9.i76.i:                                    ; preds = %if.else.i73.i
  %117 = ptrtoint ptr %rsp10.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %rsp10.i.i, align 4
  %tobool.not.i75.i = icmp eq ptr %118, null
  br i1 %tobool.not.i75.i, label %if.end9.i76.i.cleanup.sink.split.i_crit_edge, label %if.end21.i

if.end9.i76.i.cleanup.sink.split.i_crit_edge:     ; preds = %if.end9.i76.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end21.i:                                       ; preds = %if.end9.i76.i
  %119 = ptrtoint ptr %rsp10.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr null, ptr %rsp10.i.i, align 4
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i52.i, i32 noundef 0) #6
  %data22.i = getelementptr inbounds %struct.sk_buff, ptr %118, i32 0, i32 19
  %120 = ptrtoint ptr %data22.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %data22.i, align 4
  %code23.i = getelementptr inbounds %struct.s3fwrn5_fw_header, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %code23.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %code23.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %cmp25.not.i = icmp eq i8 %123, 0
  br i1 %cmp25.not.i, label %if.end28.i, label %if.end21.i.cleanup.sink.split.i_crit_edge

if.end21.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end28.i:                                       ; preds = %if.end21.i
  call void @kfree_skb_reason(ptr noundef nonnull %118, i32 noundef 0) #6
  %inc.i = add nuw nsw i32 %i.0102.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.inc, label %if.end28.i.for.body.i_crit_edge

if.end28.i.for.body.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

cleanup.sink.split.i:                             ; preds = %if.end21.i.cleanup.sink.split.i_crit_edge, %if.end9.i76.i.cleanup.sink.split.i_crit_edge, %if.else.i73.i.cleanup.sink.split.i_crit_edge, %if.end.i71.i.cleanup.sink.split.i_crit_edge, %s3fwrn5_write.exit.i68.i.cleanup.sink.split.i_crit_edge, %if.end16.i.cleanup.sink.split.i_crit_edge, %if.end4.i111.cleanup.sink.split.i_crit_edge, %if.end9.i.i109.cleanup.sink.split.i_crit_edge, %if.else.i.i107.cleanup.sink.split.i_crit_edge, %if.end.i48.i.cleanup.sink.split.i_crit_edge, %s3fwrn5_write.exit.i.i103.cleanup.sink.split.i_crit_edge, %if.end.i100.cleanup.sink.split.i_crit_edge
  %call.i.i52.lcssa105.sink.i = phi ptr [ %118, %if.end21.i.cleanup.sink.split.i_crit_edge ], [ %call.i.i52.i, %if.end16.i.cleanup.sink.split.i_crit_edge ], [ %call.i.i52.i, %if.end9.i76.i.cleanup.sink.split.i_crit_edge ], [ %call.i.i52.i, %if.else.i73.i.cleanup.sink.split.i_crit_edge ], [ %call.i.i52.i, %if.end.i71.i.cleanup.sink.split.i_crit_edge ], [ %call.i.i52.i, %s3fwrn5_write.exit.i68.i.cleanup.sink.split.i_crit_edge ], [ %97, %if.end4.i111.cleanup.sink.split.i_crit_edge ], [ %call.i.i.i90, %if.end.i100.cleanup.sink.split.i_crit_edge ], [ %call.i.i.i90, %if.end9.i.i109.cleanup.sink.split.i_crit_edge ], [ %call.i.i.i90, %if.else.i.i107.cleanup.sink.split.i_crit_edge ], [ %call.i.i.i90, %if.end.i48.i.cleanup.sink.split.i_crit_edge ], [ %call.i.i.i90, %s3fwrn5_write.exit.i.i103.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ -71, %if.end21.i.cleanup.sink.split.i_crit_edge ], [ -95, %if.end16.i.cleanup.sink.split.i_crit_edge ], [ -22, %if.end9.i76.i.cleanup.sink.split.i_crit_edge ], [ -6, %if.else.i73.i.cleanup.sink.split.i_crit_edge ], [ %call3.i69.i, %if.end.i71.i.cleanup.sink.split.i_crit_edge ], [ %call.i.i66.i, %s3fwrn5_write.exit.i68.i.cleanup.sink.split.i_crit_edge ], [ -71, %if.end4.i111.cleanup.sink.split.i_crit_edge ], [ -95, %if.end.i100.cleanup.sink.split.i_crit_edge ], [ -22, %if.end9.i.i109.cleanup.sink.split.i_crit_edge ], [ -6, %if.else.i.i107.cleanup.sink.split.i_crit_edge ], [ %call3.i.i104, %if.end.i48.i.cleanup.sink.split.i_crit_edge ], [ %call.i.i47.i, %s3fwrn5_write.exit.i.i103.cleanup.sink.split.i_crit_edge ]
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i52.lcssa105.sink.i, i32 noundef 0) #6
  br label %do.end32

do.end32:                                         ; preds = %cleanup.sink.split.i, %for.body.i.do.end32_crit_edge, %for.body.do.end32_crit_edge
  %retval.0.i113.ph = phi i32 [ %retval.0.ph.i, %cleanup.sink.split.i ], [ -12, %for.body.i.do.end32_crit_edge ], [ -12, %for.body.do.end32_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef %retval.0.i113.ph) #9
  br label %cleanup

for.inc:                                          ; preds = %if.end28.i
  %124 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %sector_size, align 4
  %add35 = add i32 %125, %off.0165
  %cmp23 = icmp ult i32 %add35, %mul
  br i1 %cmp23, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %s3fwrn5_fw_enter_update_mode.exit.for.end_crit_edge
  %126 = ptrtoint ptr %parity.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %parity.i.i, align 4
  %128 = xor i8 %127, -128
  store i8 %128, ptr %parity.i.i, align 4
  %call.i.i.i115 = call ptr @__alloc_skb(i32 noundef 4, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #6
  %tobool.not.i.i116 = icmp eq ptr %call.i.i.i115, null
  br i1 %tobool.not.i.i116, label %for.end.do.end42_crit_edge, label %if.end.i124

for.end.do.end42_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end42

if.end.i124:                                      ; preds = %for.end
  %call.i25.i.i117 = call ptr @skb_put(ptr noundef nonnull %call.i.i.i115, i32 noundef 4) #6
  %129 = ptrtoint ptr %call.i25.i.i117 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %127, ptr %call.i25.i.i117, align 1
  %hdr.sroa.5.0.call.i25.sroa_idx.i.i118 = getelementptr inbounds i8, ptr %call.i25.i.i117, i32 1
  %130 = ptrtoint ptr %hdr.sroa.5.0.call.i25.sroa_idx.i.i118 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 5, ptr %hdr.sroa.5.0.call.i25.sroa_idx.i.i118, align 1
  %hdr.sroa.7.0.call.i25.sroa_idx.i.i119 = getelementptr inbounds i8, ptr %call.i25.i.i117, i32 2
  %131 = ptrtoint ptr %hdr.sroa.7.0.call.i25.sroa_idx.i.i119 to i32
  call void @__asan_storeN_noabort(i32 %131, i32 2)
  store i16 0, ptr %hdr.sroa.7.0.call.i25.sroa_idx.i.i119, align 1
  %132 = ptrtoint ptr %completion.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %completion.i.i, align 4
  %133 = ptrtoint ptr %phy_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %phy_ops.i.i.i, align 4
  %write.i.i.i122 = getelementptr inbounds %struct.s3fwrn5_phy_ops, ptr %134, i32 0, i32 3
  %135 = ptrtoint ptr %write.i.i.i122 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %write.i.i.i122, align 4
  %tobool.not.i.i.i123 = icmp eq ptr %136, null
  br i1 %tobool.not.i.i.i123, label %if.end.i124.s3fwrn5_fw_complete_update_mode.exit.thread156_crit_edge, label %s3fwrn5_write.exit.i.i127

if.end.i124.s3fwrn5_fw_complete_update_mode.exit.thread156_crit_edge: ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3fwrn5_fw_complete_update_mode.exit.thread156

s3fwrn5_write.exit.i.i127:                        ; preds = %if.end.i124
  %137 = ptrtoint ptr %phy_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %phy_id.i.i.i, align 4
  %call.i.i17.i = call i32 %136(ptr noundef %138, ptr noundef nonnull %call.i.i.i115) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i17.i)
  %cmp.i.i126 = icmp slt i32 %call.i.i17.i, 0
  br i1 %cmp.i.i126, label %s3fwrn5_write.exit.i.i127.s3fwrn5_fw_complete_update_mode.exit.thread156_crit_edge, label %if.end.i18.i

s3fwrn5_write.exit.i.i127.s3fwrn5_fw_complete_update_mode.exit.thread156_crit_edge: ; preds = %s3fwrn5_write.exit.i.i127
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3fwrn5_fw_complete_update_mode.exit.thread156

if.end.i18.i:                                     ; preds = %s3fwrn5_write.exit.i.i127
  %call3.i.i128 = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %completion.i.i, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i128)
  %cmp4.i.i129 = icmp slt i32 %call3.i.i128, 0
  br i1 %cmp4.i.i129, label %if.end.i18.i.s3fwrn5_fw_complete_update_mode.exit.thread156_crit_edge, label %if.else.i.i131

if.end.i18.i.s3fwrn5_fw_complete_update_mode.exit.thread156_crit_edge: ; preds = %if.end.i18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3fwrn5_fw_complete_update_mode.exit.thread156

if.else.i.i131:                                   ; preds = %if.end.i18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i128)
  %cmp6.i.i130 = icmp eq i32 %call3.i.i128, 0
  br i1 %cmp6.i.i130, label %if.else.i.i131.s3fwrn5_fw_complete_update_mode.exit.thread156_crit_edge, label %if.end9.i.i133

if.else.i.i131.s3fwrn5_fw_complete_update_mode.exit.thread156_crit_edge: ; preds = %if.else.i.i131
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3fwrn5_fw_complete_update_mode.exit.thread156

if.end9.i.i133:                                   ; preds = %if.else.i.i131
  %139 = ptrtoint ptr %rsp10.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %rsp10.i.i, align 4
  %tobool.not.i19.i = icmp eq ptr %140, null
  br i1 %tobool.not.i19.i, label %if.end9.i.i133.s3fwrn5_fw_complete_update_mode.exit.thread156_crit_edge, label %if.end4.i138

if.end9.i.i133.s3fwrn5_fw_complete_update_mode.exit.thread156_crit_edge: ; preds = %if.end9.i.i133
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3fwrn5_fw_complete_update_mode.exit.thread156

if.end4.i138:                                     ; preds = %if.end9.i.i133
  %141 = ptrtoint ptr %rsp10.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr null, ptr %rsp10.i.i, align 4
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i115, i32 noundef 0) #6
  %data.i134 = getelementptr inbounds %struct.sk_buff, ptr %140, i32 0, i32 19
  %142 = ptrtoint ptr %data.i134 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %data.i134, align 4
  %code.i135 = getelementptr inbounds %struct.s3fwrn5_fw_header, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %code.i135 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %code.i135, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %cmp5.not.i136 = icmp eq i8 %145, 0
  br i1 %cmp5.not.i136, label %do.end46, label %if.end4.i138.s3fwrn5_fw_complete_update_mode.exit.thread156_crit_edge

if.end4.i138.s3fwrn5_fw_complete_update_mode.exit.thread156_crit_edge: ; preds = %if.end4.i138
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3fwrn5_fw_complete_update_mode.exit.thread156

s3fwrn5_fw_complete_update_mode.exit.thread156:   ; preds = %if.end4.i138.s3fwrn5_fw_complete_update_mode.exit.thread156_crit_edge, %if.end9.i.i133.s3fwrn5_fw_complete_update_mode.exit.thread156_crit_edge, %if.else.i.i131.s3fwrn5_fw_complete_update_mode.exit.thread156_crit_edge, %if.end.i18.i.s3fwrn5_fw_complete_update_mode.exit.thread156_crit_edge, %s3fwrn5_write.exit.i.i127.s3fwrn5_fw_complete_update_mode.exit.thread156_crit_edge, %if.end.i124.s3fwrn5_fw_complete_update_mode.exit.thread156_crit_edge
  %call.i.i.sink.i.ph = phi ptr [ %call.i.i.i115, %if.end.i124.s3fwrn5_fw_complete_update_mode.exit.thread156_crit_edge ], [ %call.i.i.i115, %if.end9.i.i133.s3fwrn5_fw_complete_update_mode.exit.thread156_crit_edge ], [ %call.i.i.i115, %if.else.i.i131.s3fwrn5_fw_complete_update_mode.exit.thread156_crit_edge ], [ %call.i.i.i115, %if.end.i18.i.s3fwrn5_fw_complete_update_mode.exit.thread156_crit_edge ], [ %call.i.i.i115, %s3fwrn5_write.exit.i.i127.s3fwrn5_fw_complete_update_mode.exit.thread156_crit_edge ], [ %140, %if.end4.i138.s3fwrn5_fw_complete_update_mode.exit.thread156_crit_edge ]
  %retval.0.ph.i139.ph = phi i32 [ -95, %if.end.i124.s3fwrn5_fw_complete_update_mode.exit.thread156_crit_edge ], [ -22, %if.end9.i.i133.s3fwrn5_fw_complete_update_mode.exit.thread156_crit_edge ], [ -6, %if.else.i.i131.s3fwrn5_fw_complete_update_mode.exit.thread156_crit_edge ], [ %call3.i.i128, %if.end.i18.i.s3fwrn5_fw_complete_update_mode.exit.thread156_crit_edge ], [ %call.i.i17.i, %s3fwrn5_write.exit.i.i127.s3fwrn5_fw_complete_update_mode.exit.thread156_crit_edge ], [ -71, %if.end4.i138.s3fwrn5_fw_complete_update_mode.exit.thread156_crit_edge ]
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.sink.i.ph, i32 noundef 0) #6
  br label %do.end42

do.end42:                                         ; preds = %s3fwrn5_fw_complete_update_mode.exit.thread156, %for.end.do.end42_crit_edge
  %retval.0.i141154 = phi i32 [ %retval.0.ph.i139.ph, %s3fwrn5_fw_complete_update_mode.exit.thread156 ], [ -12, %for.end.do.end42_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25) #9
  br label %cleanup

do.end46:                                         ; preds = %if.end4.i138
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree_skb_reason(ptr noundef nonnull %140, i32 noundef 0) #6
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.28) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end46, %do.end42, %do.end32, %do.end21, %do.end9, %do.end
  %retval.0 = phi i32 [ %9, %do.end ], [ %call5, %do.end9 ], [ %retval.0.i144, %do.end21 ], [ %retval.0.i113.ph, %do.end32 ], [ %retval.0.i141154, %do.end42 ], [ 0, %do.end46 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %hash_data) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_tfm_digest(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @s3fwrn5_fw_init(ptr noundef %fw_info, ptr nocapture noundef readonly %fw_name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parity = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %fw_info, i32 0, i32 9
  %0 = ptrtoint ptr %parity to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %parity, align 4
  %rsp = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %fw_info, i32 0, i32 8
  %1 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %rsp, align 4
  %fw = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %fw_info, i32 0, i32 1
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fw, align 4
  %fw_name2 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %fw_info, i32 0, i32 2
  %call = tail call ptr @strcpy(ptr noundef %fw_name2, ptr noundef %fw_name) #10
  %completion = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %fw_info, i32 0, i32 7
  %3 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %fw_info, i32 0, i32 7, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @init_completion.__key) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @s3fwrn5_fw_cleanup(ptr nocapture noundef readonly %fw_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fw.i = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %fw_info, i32 0, i32 1
  %0 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw.i, align 4
  tail call void @release_firmware(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s3fwrn5_fw_recv_frame(ptr nocapture noundef readonly %ndev, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 26
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rsp = getelementptr inbounds %struct.s3fwrn5_info, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rsp, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end23, label %do.end, !prof !58

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 486, i32 noundef 9, ptr noundef null) #6
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #6
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %skb, ptr %rsp, align 4
  %completion = getelementptr inbounds %struct.s3fwrn5_info, ptr %1, i32 0, i32 4, i32 7
  tail call void @complete(ptr noundef %completion) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s3fwrn5_fw_send_msg(ptr noundef %fw_info, ptr noundef %msg, ptr nocapture noundef writeonly %rsp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %completion = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %fw_info, i32 0, i32 7
  %0 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %completion, align 4
  %phy_ops.i = getelementptr i8, ptr %fw_info, i32 -4
  %1 = ptrtoint ptr %phy_ops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %phy_ops.i, align 4
  %write.i = getelementptr inbounds %struct.s3fwrn5_phy_ops, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %s3fwrn5_write.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

s3fwrn5_write.exit:                               ; preds = %entry
  %phy_id.i = getelementptr i8, ptr %fw_info, i32 -12
  %5 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phy_id.i, align 4
  %call.i = tail call i32 %4(ptr noundef %6, ptr noundef %msg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %s3fwrn5_write.exit.cleanup_crit_edge, label %if.end

s3fwrn5_write.exit.cleanup_crit_edge:             ; preds = %s3fwrn5_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %s3fwrn5_write.exit
  %call3 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %completion, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp6 = icmp eq i32 %call3, 0
  br i1 %cmp6, label %if.else.cleanup_crit_edge, label %if.end9

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.else
  %rsp10 = getelementptr inbounds %struct.s3fwrn5_fw_info, ptr %fw_info, i32 0, i32 8
  %7 = ptrtoint ptr %rsp10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rsp10, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %rsp, align 4
  %10 = ptrtoint ptr %rsp10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %rsp10, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end9.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %s3fwrn5_write.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ %call.i, %s3fwrn5_write.exit.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ -6, %if.else.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/nfc/s3fwrn5/firmware.c", i32 368, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @s3fwrn5_fw_setup._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @s3fwrn5_fw_setup._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/nfc/s3fwrn5/firmware.c", i32 376, i32 3}
!10 = !{ptr @s3fwrn5_fw_setup._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @s3fwrn5_fw_setup._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/nfc/s3fwrn5/firmware.c", i32 422, i32 27}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/nfc/s3fwrn5/firmware.c", i32 424, i32 3}
!16 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @s3fwrn5_fw_download._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @s3fwrn5_fw_download._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/nfc/s3fwrn5/firmware.c", i32 432, i32 3}
!21 = !{ptr @s3fwrn5_fw_download._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @s3fwrn5_fw_download._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/nfc/s3fwrn5/firmware.c", i32 438, i32 2}
!25 = !{ptr @.str.16, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @s3fwrn5_fw_download._entry.14, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @s3fwrn5_fw_download._entry_ptr.17, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.19, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/nfc/s3fwrn5/firmware.c", i32 443, i32 3}
!30 = !{ptr @s3fwrn5_fw_download._entry.18, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @s3fwrn5_fw_download._entry_ptr.20, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.22, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/nfc/s3fwrn5/firmware.c", i32 451, i32 4}
!34 = !{ptr @s3fwrn5_fw_download._entry.21, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @s3fwrn5_fw_download._entry_ptr.23, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.25, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/nfc/s3fwrn5/firmware.c", i32 458, i32 3}
!38 = !{ptr @s3fwrn5_fw_download._entry.24, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @s3fwrn5_fw_download._entry_ptr.26, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.28, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/nfc/s3fwrn5/firmware.c", i32 462, i32 2}
!42 = !{ptr @s3fwrn5_fw_download._entry.27, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @s3fwrn5_fw_download._entry_ptr.29, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @s3fwrn5_fw_get_base_addr.match, !45, !"match", i1 false, i1 false}
!45 = !{!"../drivers/nfc/s3fwrn5/firmware.c", i32 333, i32 4}
!46 = !{ptr @init_completion.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../include/linux/completion.h", i32 87, i32 2}
!48 = !{ptr @.str.30, !47, !"<string literal>", i1 false, i1 false}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{!"branch_weights", i32 2000, i32 1}

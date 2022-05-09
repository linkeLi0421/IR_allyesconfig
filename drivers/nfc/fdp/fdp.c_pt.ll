; ModuleID = '/llk/IR_all_yes/drivers/nfc/fdp/fdp.c_pt.bc'
source_filename = "../drivers/nfc/fdp/fdp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+fdp_nci_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_fdp_nci_probe\09\09\09\09"
module asm "\09.long\09__crc_fdp_nci_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fdp_nci_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22fdp_nci_probe\22\09\09\09\09\09"
module asm "__kstrtabns_fdp_nci_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fdp_nci_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_fdp_nci_remove\09\09\09\09"
module asm "\09.long\09__crc_fdp_nci_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fdp_nci_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22fdp_nci_remove\22\09\09\09\09\09"
module asm "__kstrtabns_fdp_nci_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nci_driver_ops = type { i16, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.fdp_nci_info = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i8, ptr, i8, i32, %struct.atomic_t, ptr, i8, i8, i8, i8, %struct.wait_queue_head }
%struct.nci_dev = type { ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, %struct.atomic_t, i8, %struct.list_head, ptr, %struct.timer_list, %struct.timer_list, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.mutex, %struct.completion, i32, i32, ptr, i32, i32, [10 x %struct.nfc_target], i32, i8, i32, i8, [4 x i8], i8, i16, i8, i16, i8, i32, %struct.dest_spec_params, i8, ptr, [48 x i8], i8 }
%struct.sk_buff_head = type { %union.anon.101, i32, %struct.spinlock }
%union.anon.101 = type { %struct.anon.102 }
%struct.anon.102 = type { ptr, ptr }
%struct.nfc_target = type { i32, i32, i16, i8, i8, [10 x i8], i8, [8 x i8], i8, [12 x i8], i8, [18 x i8], i8, i8, i8, i8, [8 x i8] }
%struct.dest_spec_params = type { i8, i8 }
%struct.nfc_phy_ops = type { ptr, ptr, ptr }
%struct.core_conn_create_dest_spec_params = type { i8, i8, [0 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.firmware = type { i32, ptr, ptr }
%struct.sk_buff = type { %union.anon.81, %union.anon.84, %union.anon.85, [48 x i8], %union.anon.86, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.88, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { ptr, ptr, %union.anon.83 }
%union.anon.83 = type { ptr }
%union.anon.84 = type { ptr }
%union.anon.85 = type { i64 }
%union.anon.86 = type { %struct.anon.87 }
%struct.anon.87 = type { i32, ptr }
%union.anon.88 = type { %struct.anon.89 }
%struct.anon.89 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.90, i32, i32, i32, i16, i16, %union.anon.92, i32, %union.anon.93, %union.anon.94, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.90 = type { i32 }
%union.anon.92 = type { i32 }
%union.anon.93 = type { i32 }
%union.anon.94 = type { i16 }
%struct.nci_core_get_config_rsp = type { i8, i8, [0 x i8] }

@fdp_nci_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&info->setup_wq\00", [16 x i8] zeroinitializer }, align 32
@nci_ops = internal constant { %struct.nci_ops, [52 x i8] } { %struct.nci_ops { ptr null, ptr @fdp_nci_open, ptr @fdp_nci_close, ptr @fdp_nci_send, ptr @fdp_nci_setup, ptr @fdp_nci_post_setup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fdp_prop_ops, i32 2, ptr @fdp_core_ops, i32 2 }, [52 x i8] zeroinitializer }, align 32
@fdp_nci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 726, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"NFC: Cannot allocate nfc ndev\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fdp_nci_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/nfc/fdp/fdp.c\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fdp_nci_probe._entry_ptr = internal global ptr @fdp_nci_probe._entry, section ".printk_index", align 4
@__kstrtab_fdp_nci_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_fdp_nci_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_fdp_nci_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fdp_nci_probe to i32), ptr @__kstrtab_fdp_nci_probe, ptr @__kstrtabns_fdp_nci_probe }, section "___ksymtab+fdp_nci_probe", align 4
@__kstrtab_fdp_nci_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_fdp_nci_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_fdp_nci_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fdp_nci_remove to i32), ptr @__kstrtab_fdp_nci_remove, ptr @__kstrtabns_fdp_nci_remove }, section "___ksymtab+fdp_nci_remove", align 4
@__UNIQUE_ID_file327 = internal constant [29 x i8] c"fdp.file=drivers/nfc/fdp/fdp\00", section ".modinfo", align 1
@__UNIQUE_ID_license328 = internal constant [16 x i8] c"fdp.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description329 = internal constant [68 x i8] c"fdp.description=NFC NCI driver for Intel Fields Peak NFC controller\00", section ".modinfo", align 1
@__UNIQUE_ID_author330 = internal constant [49 x i8] c"fdp.author=Robert Dolca <robert.dolca@intel.com>\00", section ".modinfo", align 1
@fdp_prop_ops = internal constant { [2 x %struct.nci_driver_ops], [40 x i8] } { [2 x %struct.nci_driver_ops] [%struct.nci_driver_ops { i16 3848, ptr @fdp_nci_prop_patch_rsp_packet, ptr @fdp_nci_prop_patch_ntf_packet }, %struct.nci_driver_ops { i16 3875, ptr @fdp_nci_prop_set_production_data_rsp_packet, ptr null }], [40 x i8] zeroinitializer }, align 32
@fdp_core_ops = internal constant { [2 x %struct.nci_driver_ops], [40 x i8] } { [2 x %struct.nci_driver_ops] [%struct.nci_driver_ops { i16 3, ptr @fdp_nci_core_get_config_rsp_packet, ptr null }, %struct.nci_driver_ops { i16 0, ptr null, ptr @fdp_nci_core_reset_ntf_packet }], [40 x i8] zeroinitializer }, align 32
@fdp_nci_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 501, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"NFC: Firmware update failed\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fdp_nci_setup\00", [18 x i8] zeroinitializer }, align 32
@fdp_nci_setup._entry_ptr = internal global ptr @fdp_nci_setup._entry, section ".printk_index", align 4
@fdp_nci_setup._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 515, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"NFC: Setup error %d\0A\00", [43 x i8] zeroinitializer }, align 32
@fdp_nci_setup._entry_ptr.10 = internal global ptr @fdp_nci_setup._entry.8, section ".printk_index", align 4
@nci_core_get_config_otp_ram_version = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\04\A0\A1\C5\C6", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ram.bin\00", [24 x i8] zeroinitializer }, align 32
@fdp_nci_request_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 268, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"NFC: RAM patch request error\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fdp_nci_request_firmware\00", [39 x i8] zeroinitializer }, align 32
@fdp_nci_request_firmware._entry_ptr = internal global ptr @fdp_nci_request_firmware._entry, section ".printk_index", align 4
@fdp_nci_request_firmware.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.13, ptr @.str.3, ptr @.str.15, i8 0, i8 70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fdp\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"RAM patch version: %d, size: %zu\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"otp.bin\00", [24 x i8] zeroinitializer }, align 32
@fdp_nci_request_firmware._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.3, i32 285, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"NFC: OTP patch request error\0A\00", [34 x i8] zeroinitializer }, align 32
@fdp_nci_request_firmware._entry_ptr.19 = internal global ptr @fdp_nci_request_firmware._entry.17, section ".printk_index", align 4
@fdp_nci_request_firmware.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.13, ptr @.str.3, ptr @.str.20, i8 0, i8 74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"OTP patch version: %d, size: %zu\0A\00", [62 x i8] zeroinitializer }, align 32
@fdp_nci_patch_otp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 359, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"NFC: OTP patch error 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fdp_nci_patch_otp\00", [46 x i8] zeroinitializer }, align 32
@fdp_nci_patch_otp._entry_ptr = internal global ptr @fdp_nci_patch_otp._entry, section ".printk_index", align 4
@fdp_nci_patch_otp._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 369, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@fdp_nci_patch_otp._entry_ptr.24 = internal global ptr @fdp_nci_patch_otp._entry.23, section ".printk_index", align 4
@fdp_nci_set_data_pkt_counter.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 0, i8 41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fdp_nci_set_data_pkt_counter\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"NCI data pkt counter %d\0A\00", [39 x i8] zeroinitializer }, align 32
@fdp_nci_patch_ram._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 425, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"NFC: RAM patch error 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fdp_nci_patch_ram\00", [46 x i8] zeroinitializer }, align 32
@fdp_nci_patch_ram._entry_ptr = internal global ptr @fdp_nci_patch_ram._entry, section ".printk_index", align 4
@fdp_nci_patch_ram._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 435, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@fdp_nci_patch_ram._entry_ptr.30 = internal global ptr @fdp_nci_patch_ram._entry.29, section ".printk_index", align 4
@fdp_nci_post_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 533, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"NFC: Vendor specific config set error %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fdp_nci_post_setup\00", [45 x i8] zeroinitializer }, align 32
@fdp_nci_post_setup._entry_ptr = internal global ptr @fdp_nci_post_setup._entry, section ".printk_index", align 4
@fdp_nci_post_setup._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.3, i32 541, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"NFC: Clock set error %d\0A\00", [39 x i8] zeroinitializer }, align 32
@fdp_nci_post_setup._entry_ptr.35 = internal global ptr @fdp_nci_post_setup._entry.33, section ".printk_index", align 4
@fdp_nci_prop_patch_rsp_packet.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.36, ptr @.str.3, ptr @.str.37, i8 0, i8 -109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fdp_nci_prop_patch_rsp_packet\00", [34 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: status 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@fdp_nci_prop_set_production_data_rsp_packet.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.38, ptr @.str.3, ptr @.str.37, i8 0, i8 -106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"fdp_nci_prop_set_production_data_rsp_packet\00", [52 x i8] zeroinitializer }, align 32
@fdp_nci_core_get_config_rsp_packet.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.39, ptr @.str.3, ptr @.str.40, i8 0, i8 -95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"fdp_nci_core_get_config_rsp_packet\00", [61 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"OTP version %d\0A\00", [16 x i8] zeroinitializer }, align 32
@fdp_nci_core_get_config_rsp_packet.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.39, ptr @.str.3, ptr @.str.41, i8 0, i8 -95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RAM version %d\0A\00", [16 x i8] zeroinitializer }, align 32
@fdp_nci_core_get_config_rsp_packet.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.39, ptr @.str.3, ptr @.str.42, i8 0, i8 -95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"key index %d\0A\00", [18 x i8] zeroinitializer }, align 32
@fdp_nci_core_get_config_rsp_packet.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.39, ptr @.str.3, ptr @.str.37, i8 0, i8 -94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 160, i64 161, i64 197, i64 198]
@__sancov_gen_cov_switch_values.43 = internal global [6 x i64] [i64 4, i64 8, i64 160, i64 161, i64 197, i64 198]
@__sancov_gen_cov_switch_values.44 = internal global [6 x i64] [i64 4, i64 8, i64 160, i64 161, i64 197, i64 198]
@__sancov_gen_cov_switch_values.45 = internal global [6 x i64] [i64 4, i64 8, i64 160, i64 161, i64 197, i64 198]
@___asan_gen_.46 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 712, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [8 x i8] c"nci_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 679, i32 29 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 726, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [13 x i8] c"fdp_prop_ops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 666, i32 36 }
@___asan_gen_.76 = private unnamed_addr constant [13 x i8] c"fdp_core_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 655, i32 36 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 501, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 515, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [36 x i8] c"nci_core_get_config_otp_ram_version\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 68, i32 17 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 266, i32 41 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 268, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 279, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 283, i32 41 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 285, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 296, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 359, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 369, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 165, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 425, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 435, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 532, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 541, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 589, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 602, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 645, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 646, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.191 = private constant [25 x i8] c"../drivers/nfc/fdp/fdp.c\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 647, i32 2 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @__UNIQUE_ID_author330, ptr @__UNIQUE_ID_description329, ptr @__UNIQUE_ID_file327, ptr @__UNIQUE_ID_license328, ptr @__ksymtab_fdp_nci_probe, ptr @__ksymtab_fdp_nci_remove, ptr @fdp_nci_patch_otp._entry, ptr @fdp_nci_patch_otp._entry.23, ptr @fdp_nci_patch_otp._entry_ptr, ptr @fdp_nci_patch_otp._entry_ptr.24, ptr @fdp_nci_patch_ram._entry, ptr @fdp_nci_patch_ram._entry.29, ptr @fdp_nci_patch_ram._entry_ptr, ptr @fdp_nci_patch_ram._entry_ptr.30, ptr @fdp_nci_post_setup._entry, ptr @fdp_nci_post_setup._entry.33, ptr @fdp_nci_post_setup._entry_ptr, ptr @fdp_nci_post_setup._entry_ptr.35, ptr @fdp_nci_probe._entry, ptr @fdp_nci_probe._entry_ptr, ptr @fdp_nci_request_firmware._entry, ptr @fdp_nci_request_firmware._entry.17, ptr @fdp_nci_request_firmware._entry_ptr, ptr @fdp_nci_request_firmware._entry_ptr.19, ptr @fdp_nci_setup._entry, ptr @fdp_nci_setup._entry.8, ptr @fdp_nci_setup._entry_ptr, ptr @fdp_nci_setup._entry_ptr.10, ptr @fdp_nci_probe.__key, ptr @.str, ptr @nci_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @fdp_prop_ops, ptr @fdp_core_ops, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @nci_core_get_config_otp_ram_version, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp_nci_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nci_ops to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp_nci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp_prop_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp_core_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp_nci_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp_nci_setup._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nci_core_get_config_otp_ram_version to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp_nci_request_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp_nci_request_firmware._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp_nci_patch_otp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp_nci_patch_otp._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp_nci_patch_ram._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp_nci_patch_ram._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp_nci_post_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp_nci_post_setup._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdp_nci_probe(ptr noundef %phy, ptr noundef %phy_ops, ptr nocapture noundef writeonly %ndevp, i32 noundef %tx_headroom, i32 noundef %tx_tailroom, i8 noundef zeroext %clock_type, i32 noundef %clock_freq, ptr noundef %fw_vsc_cfg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 120, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %phy2 = getelementptr inbounds %struct.fdp_nci_info, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %phy2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %phy, ptr %phy2, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %phy_ops, ptr %call.i, align 4
  %clock_type4 = getelementptr inbounds %struct.fdp_nci_info, ptr %call.i, i32 0, i32 12
  %4 = ptrtoint ptr %clock_type4 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %clock_type, ptr %clock_type4, align 4
  %clock_freq5 = getelementptr inbounds %struct.fdp_nci_info, ptr %call.i, i32 0, i32 13
  %5 = ptrtoint ptr %clock_freq5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %clock_freq, ptr %clock_freq5, align 4
  %fw_vsc_cfg6 = getelementptr inbounds %struct.fdp_nci_info, ptr %call.i, i32 0, i32 11
  %6 = ptrtoint ptr %fw_vsc_cfg6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %fw_vsc_cfg, ptr %fw_vsc_cfg6, align 4
  %setup_wq = getelementptr inbounds %struct.fdp_nci_info, ptr %call.i, i32 0, i32 20
  tail call void @__init_waitqueue_head(ptr noundef %setup_wq, ptr noundef nonnull @.str, ptr noundef nonnull @fdp_nci_probe.__key) #7
  %call10 = tail call ptr @nci_allocate_device(ptr noundef nonnull @nci_ops, i32 noundef 254, i32 noundef %tx_headroom, i32 noundef %tx_tailroom) #7
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %do.end15, label %if.end16

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %call17 = tail call i32 @nci_register_device(ptr noundef nonnull %call10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %err_regdev

if.end20:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %ndevp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call10, ptr %ndevp, align 4
  %ndev21 = getelementptr inbounds %struct.fdp_nci_info, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %ndev21 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call10, ptr %ndev21, align 4
  %driver_data.i = getelementptr inbounds %struct.nci_dev, ptr %call10, i32 0, i32 26
  %9 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i, align 4
  br label %cleanup

err_regdev:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nci_free_device(ptr noundef nonnull %call10) #7
  br label %cleanup

cleanup:                                          ; preds = %err_regdev, %if.end20, %do.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %err_regdev ], [ 0, %if.end20 ], [ -12, %do.end15 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nci_allocate_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nci_free_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fdp_nci_remove(ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nci_unregister_device(ptr noundef %ndev) #7
  tail call void @nci_free_device(ptr noundef %ndev) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nci_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdp_nci_open(ptr nocapture noundef readonly %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 26
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %enable = getelementptr inbounds %struct.nfc_phy_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enable, align 4
  %phy = getelementptr inbounds %struct.fdp_nci_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy, align 4
  %call1 = tail call i32 %5(ptr noundef %7) #7
  ret i32 %call1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fdp_nci_close(ptr nocapture noundef readnone %ndev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdp_nci_send(ptr noundef %ndev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 26
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %data_pkt_counter = getelementptr inbounds %struct.fdp_nci_info, ptr %1, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %data_pkt_counter, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @llvm.prefetch.p0(ptr %data_pkt_counter, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %data_pkt_counter, ptr %data_pkt_counter, i32 1, ptr elementtype(i32) %data_pkt_counter) #7, !srcloc !117
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %data_pkt_counter_cb = getelementptr inbounds %struct.fdp_nci_info, ptr %1, i32 0, i32 15
  %3 = ptrtoint ptr %data_pkt_counter_cb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data_pkt_counter_cb, align 4
  tail call void %4(ptr noundef %ndev) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %phy = getelementptr inbounds %struct.fdp_nci_info, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %phy, align 4
  %call2 = tail call i32 %8(ptr noundef %10, ptr noundef %skb) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdp_nci_setup(ptr noundef %ndev) #0 align 64 {
entry:
  %type.addr.i165.i77 = alloca i8, align 1
  %param.i.i78 = alloca %struct.core_conn_create_dest_spec_params, align 1
  %type.addr.i.i79 = alloca i8, align 1
  %__wq_entry.i80 = alloca %struct.wait_queue_entry, align 4
  %__wq_entry58.i81 = alloca %struct.wait_queue_entry, align 4
  %__wq_entry97.i82 = alloca %struct.wait_queue_entry, align 4
  %type.addr.i165.i = alloca i8, align 1
  %param.i.i = alloca %struct.core_conn_create_dest_spec_params, align 1
  %type.addr.i.i = alloca i8, align 1
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %__wq_entry58.i = alloca %struct.wait_queue_entry, align 4
  %__wq_entry97.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 26
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %phy = getelementptr inbounds %struct.fdp_nci_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %call2 = tail call i32 @nci_core_init(ptr noundef %ndev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.error_crit_edge

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @nci_core_cmd(ptr noundef %ndev, i16 noundef zeroext 3, i32 noundef 5, ptr noundef nonnull @nci_core_get_config_otp_ram_version) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.error_crit_edge

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end6:                                          ; preds = %if.end
  %call7 = tail call fastcc i32 @fdp_nci_request_firmware(ptr noundef %ndev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.error_crit_edge

if.end6.error_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end10:                                         ; preds = %if.end6
  %otp_version = getelementptr inbounds %struct.fdp_nci_info, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %otp_version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %otp_version, align 4
  %otp_patch_version = getelementptr inbounds %struct.fdp_nci_info, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %otp_patch_version to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %otp_patch_version, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp = icmp ult i32 %7, %9
  br i1 %cmp, label %if.then11, label %if.end10.if.end16_crit_edge

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then11:                                        ; preds = %if.end10
  %10 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i, align 4
  %phy.i = getelementptr inbounds %struct.fdp_nci_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  %otp_version.i = getelementptr inbounds %struct.fdp_nci_info, ptr %11, i32 0, i32 7
  %16 = ptrtoint ptr %otp_version.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %otp_version.i, align 4
  %otp_patch_version.i = getelementptr inbounds %struct.fdp_nci_info, ptr %11, i32 0, i32 5
  %18 = ptrtoint ptr %otp_patch_version.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %otp_patch_version.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp.not.i = icmp ult i32 %17, %19
  br i1 %cmp.not.i, label %if.end.i, label %if.then11.if.end16_crit_edge

if.then11.if.end16_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.end.i:                                         ; preds = %if.then11
  %setup_patch_sent.i = getelementptr inbounds %struct.fdp_nci_info, ptr %11, i32 0, i32 16
  %20 = ptrtoint ptr %setup_patch_sent.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %setup_patch_sent.i, align 4
  %setup_reset_ntf.i = getelementptr inbounds %struct.fdp_nci_info, ptr %11, i32 0, i32 19
  %21 = ptrtoint ptr %setup_reset_ntf.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %setup_reset_ntf.i, align 1
  %setup_patch_ntf.i = getelementptr inbounds %struct.fdp_nci_info, ptr %11, i32 0, i32 17
  %22 = ptrtoint ptr %setup_patch_ntf.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %setup_patch_ntf.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %type.addr.i.i) #7
  %23 = ptrtoint ptr %type.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %type.addr.i.i, align 1
  %call.i.i = call i32 @nci_prop_cmd(ptr noundef %ndev, i8 noundef zeroext 8, i32 noundef 1, ptr noundef nonnull %type.addr.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %type.addr.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.end.i.error_crit_edge

if.end.i.error_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end4.i:                                        ; preds = %if.end.i
  %24 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %param.i.i) #7
  %26 = getelementptr inbounds %struct.core_conn_create_dest_spec_params, ptr %param.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %param.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -96, ptr %param.i.i, align 1
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %26, align 1
  %ndev1.i.i = getelementptr inbounds %struct.fdp_nci_info, ptr %25, i32 0, i32 2
  %29 = ptrtoint ptr %ndev1.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ndev1.i.i, align 4
  %call2.i.i = call i32 @nci_core_conn_create(ptr noundef %30, i8 noundef zeroext -62, i8 noundef zeroext 1, i32 noundef 2, ptr noundef nonnull %param.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end4.i.fdp_nci_create_conn.exit.i_crit_edge

if.end4.i.fdp_nci_create_conn.exit.i_crit_edge:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fdp_nci_create_conn.exit.i

if.end.i.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i.i = call i32 @nci_get_conn_info_by_dest_type_params(ptr noundef %ndev, i8 noundef zeroext -62, ptr noundef null) #7
  br label %fdp_nci_create_conn.exit.i

fdp_nci_create_conn.exit.i:                       ; preds = %if.end.i.i, %if.end4.i.fdp_nci_create_conn.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.end.i.i ], [ %call2.i.i, %if.end4.i.fdp_nci_create_conn.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %param.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp6.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp6.i, label %fdp_nci_create_conn.exit.i.error_crit_edge, label %if.end8.i

fdp_nci_create_conn.exit.i.error_crit_edge:       ; preds = %fdp_nci_create_conn.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end8.i:                                        ; preds = %fdp_nci_create_conn.exit.i
  %conv.i = trunc i32 %retval.0.i.i to i8
  %call9.i = call fastcc i32 @fdp_nci_send_patch(ptr noundef %ndev, i8 noundef zeroext %conv.i, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end8.i.error_crit_edge

if.end8.i.error_crit_edge:                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end12.i:                                       ; preds = %if.end8.i
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 347) #7
  %31 = ptrtoint ptr %setup_patch_sent.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %setup_patch_sent.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cmp18.i = icmp eq i8 %32, 1
  br i1 %cmp18.i, label %if.end12.i.if.end33.i_crit_edge, label %if.then20.i

if.end12.i.if.end33.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i

if.then20.i:                                      ; preds = %if.end12.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  %33 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #7
  %setup_wq.i = getelementptr inbounds %struct.fdp_nci_info, ptr %11, i32 0, i32 20
  %call22185.i = call i32 @prepare_to_wait_event(ptr noundef %setup_wq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #7
  %34 = ptrtoint ptr %setup_patch_sent.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %setup_patch_sent.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %35)
  %cmp25186.i = icmp eq i8 %35, 1
  br i1 %cmp25186.i, label %if.then20.i.for.end.i_crit_edge, label %if.then20.i.if.end28.i_crit_edge

if.then20.i.if.end28.i_crit_edge:                 ; preds = %if.then20.i
  br label %if.end28.i

if.then20.i.for.end.i_crit_edge:                  ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end28.i:                                       ; preds = %cleanup.i.if.end28.i_crit_edge, %if.then20.i.if.end28.i_crit_edge
  %call22187.i = phi i32 [ %call22.i, %cleanup.i.if.end28.i_crit_edge ], [ %call22185.i, %if.then20.i.if.end28.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22187.i)
  %tobool29.not.i = icmp eq i32 %call22187.i, 0
  br i1 %tobool29.not.i, label %cleanup.i, label %if.end28.i.__out.i_crit_edge

if.end28.i.__out.i_crit_edge:                     ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__out.i

cleanup.i:                                        ; preds = %if.end28.i
  call void @schedule() #7
  %call22.i = call i32 @prepare_to_wait_event(ptr noundef %setup_wq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #7
  %36 = ptrtoint ptr %setup_patch_sent.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %setup_patch_sent.i, align 4
  %cmp25.i = icmp eq i8 %37, 1
  br i1 %cmp25.i, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.if.end28.i_crit_edge

cleanup.i.if.end28.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.then20.i.for.end.i_crit_edge
  call void @finish_wait(ptr noundef %setup_wq.i, ptr noundef nonnull %__wq_entry.i) #7
  br label %__out.i

__out.i:                                          ; preds = %for.end.i, %if.end28.i.__out.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  br label %if.end33.i

if.end33.i:                                       ; preds = %__out.i, %if.end12.i.if.end33.i_crit_edge
  call void @msleep(i32 noundef 1000) #7
  %ndev35.i = getelementptr inbounds %struct.fdp_nci_info, ptr %11, i32 0, i32 2
  %38 = ptrtoint ptr %ndev35.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ndev35.i, align 4
  %call37.i = call i32 @nci_core_conn_close(ptr noundef %39, i8 noundef zeroext %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.end40.i, label %if.end33.i.error_crit_edge

if.end33.i.error_crit_edge:                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end40.i:                                       ; preds = %if.end33.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %type.addr.i165.i) #7
  %40 = ptrtoint ptr %type.addr.i165.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -1, ptr %type.addr.i165.i, align 1
  %call.i166.i = call i32 @nci_prop_cmd(ptr noundef %ndev, i8 noundef zeroext 8, i32 noundef 1, ptr noundef nonnull %type.addr.i165.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %type.addr.i165.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i166.i)
  %tobool42.not.i = icmp eq i32 %call.i166.i, 0
  br i1 %tobool42.not.i, label %if.end47.i, label %do.end46.i

do.end46.i:                                       ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.21, i32 noundef 0) #10
  br label %error

if.end47.i:                                       ; preds = %if.end40.i
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 364) #7
  %41 = ptrtoint ptr %setup_patch_ntf.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %setup_patch_ntf.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool56.not.i = icmp eq i8 %42, 0
  br i1 %tobool56.not.i, label %if.then57.i, label %if.end47.i.if.end78.i_crit_edge

if.end47.i.if.end78.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78.i

if.then57.i:                                      ; preds = %if.end47.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry58.i) #7
  %43 = call ptr @memset(ptr %__wq_entry58.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry58.i, i32 noundef 0) #7
  %setup_wq62.i = getelementptr inbounds %struct.fdp_nci_info, ptr %11, i32 0, i32 20
  %call63188.i = call i32 @prepare_to_wait_event(ptr noundef %setup_wq62.i, ptr noundef nonnull %__wq_entry58.i, i32 noundef 1) #7
  %44 = ptrtoint ptr %setup_patch_ntf.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %setup_patch_ntf.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool65.not189.i = icmp eq i8 %45, 0
  br i1 %tobool65.not189.i, label %if.then57.i.if.end67.i_crit_edge, label %if.then57.i.for.end74.i_crit_edge

if.then57.i.for.end74.i_crit_edge:                ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end74.i

if.then57.i.if.end67.i_crit_edge:                 ; preds = %if.then57.i
  br label %if.end67.i

if.end67.i:                                       ; preds = %cleanup71.i.if.end67.i_crit_edge, %if.then57.i.if.end67.i_crit_edge
  %call63190.i = phi i32 [ %call63.i, %cleanup71.i.if.end67.i_crit_edge ], [ %call63188.i, %if.then57.i.if.end67.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63190.i)
  %tobool68.not.i = icmp eq i32 %call63190.i, 0
  br i1 %tobool68.not.i, label %cleanup71.i, label %if.end67.i.__out76.i_crit_edge

if.end67.i.__out76.i_crit_edge:                   ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__out76.i

cleanup71.i:                                      ; preds = %if.end67.i
  call void @schedule() #7
  %call63.i = call i32 @prepare_to_wait_event(ptr noundef %setup_wq62.i, ptr noundef nonnull %__wq_entry58.i, i32 noundef 1) #7
  %46 = ptrtoint ptr %setup_patch_ntf.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %setup_patch_ntf.i, align 1
  %tobool65.not.i = icmp eq i8 %47, 0
  br i1 %tobool65.not.i, label %cleanup71.i.if.end67.i_crit_edge, label %cleanup71.i.for.end74.i_crit_edge

cleanup71.i.for.end74.i_crit_edge:                ; preds = %cleanup71.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end74.i

cleanup71.i.if.end67.i_crit_edge:                 ; preds = %cleanup71.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67.i

for.end74.i:                                      ; preds = %cleanup71.i.for.end74.i_crit_edge, %if.then57.i.for.end74.i_crit_edge
  call void @finish_wait(ptr noundef %setup_wq62.i, ptr noundef nonnull %__wq_entry58.i) #7
  br label %__out76.i

__out76.i:                                        ; preds = %for.end74.i, %if.end67.i.__out76.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry58.i) #7
  br label %if.end78.i

if.end78.i:                                       ; preds = %__out76.i, %if.end47.i.if.end78.i_crit_edge
  %setup_patch_status.i = getelementptr inbounds %struct.fdp_nci_info, ptr %11, i32 0, i32 18
  %48 = ptrtoint ptr %setup_patch_status.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %setup_patch_status.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool81.not.i = icmp eq i8 %49, 0
  br i1 %tobool81.not.i, label %if.end86.i, label %do.end85.i

do.end85.i:                                       ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv80.i = zext i8 %49 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.21, i32 noundef %conv80.i) #10
  br label %error

if.end86.i:                                       ; preds = %if.end78.i
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 377) #7
  %50 = ptrtoint ptr %setup_reset_ntf.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %setup_reset_ntf.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool95.not.i = icmp eq i8 %51, 0
  br i1 %tobool95.not.i, label %if.then96.i, label %if.end86.i.if.end16_crit_edge

if.end86.i.if.end16_crit_edge:                    ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then96.i:                                      ; preds = %if.end86.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry97.i) #7
  %52 = call ptr @memset(ptr %__wq_entry97.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry97.i, i32 noundef 0) #7
  %setup_wq101.i = getelementptr inbounds %struct.fdp_nci_info, ptr %11, i32 0, i32 20
  %call102192.i = call i32 @prepare_to_wait_event(ptr noundef %setup_wq101.i, ptr noundef nonnull %__wq_entry97.i, i32 noundef 1) #7
  %53 = ptrtoint ptr %setup_reset_ntf.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %setup_reset_ntf.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool104.not193.i = icmp eq i8 %54, 0
  br i1 %tobool104.not193.i, label %if.then96.i.if.end106.i_crit_edge, label %if.then96.i.for.end113.i_crit_edge

if.then96.i.for.end113.i_crit_edge:               ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end113.i

if.then96.i.if.end106.i_crit_edge:                ; preds = %if.then96.i
  br label %if.end106.i

if.end106.i:                                      ; preds = %cleanup110.i.if.end106.i_crit_edge, %if.then96.i.if.end106.i_crit_edge
  %call102194.i = phi i32 [ %call102.i, %cleanup110.i.if.end106.i_crit_edge ], [ %call102192.i, %if.then96.i.if.end106.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102194.i)
  %tobool107.not.i = icmp eq i32 %call102194.i, 0
  br i1 %tobool107.not.i, label %cleanup110.i, label %if.end106.i.__out115.i_crit_edge

if.end106.i.__out115.i_crit_edge:                 ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__out115.i

cleanup110.i:                                     ; preds = %if.end106.i
  call void @schedule() #7
  %call102.i = call i32 @prepare_to_wait_event(ptr noundef %setup_wq101.i, ptr noundef nonnull %__wq_entry97.i, i32 noundef 1) #7
  %55 = ptrtoint ptr %setup_reset_ntf.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %setup_reset_ntf.i, align 1
  %tobool104.not.i = icmp eq i8 %56, 0
  br i1 %tobool104.not.i, label %cleanup110.i.if.end106.i_crit_edge, label %cleanup110.i.for.end113.i_crit_edge

cleanup110.i.for.end113.i_crit_edge:              ; preds = %cleanup110.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end113.i

cleanup110.i.if.end106.i_crit_edge:               ; preds = %cleanup110.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106.i

for.end113.i:                                     ; preds = %cleanup110.i.for.end113.i_crit_edge, %if.then96.i.for.end113.i_crit_edge
  call void @finish_wait(ptr noundef %setup_wq101.i, ptr noundef nonnull %__wq_entry97.i) #7
  br label %__out115.i

__out115.i:                                       ; preds = %for.end113.i, %if.end106.i.__out115.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry97.i) #7
  br label %if.end16

if.end16:                                         ; preds = %__out115.i, %if.end86.i.if.end16_crit_edge, %if.then11.if.end16_crit_edge, %if.end10.if.end16_crit_edge
  %patched.0 = phi i8 [ 0, %if.end10.if.end16_crit_edge ], [ 1, %if.then11.if.end16_crit_edge ], [ 1, %if.end86.i.if.end16_crit_edge ], [ 1, %__out115.i ]
  %ram_version = getelementptr inbounds %struct.fdp_nci_info, ptr %1, i32 0, i32 8
  %57 = ptrtoint ptr %ram_version to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ram_version, align 4
  %ram_patch_version = getelementptr inbounds %struct.fdp_nci_info, ptr %1, i32 0, i32 6
  %59 = ptrtoint ptr %ram_patch_version to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ram_patch_version, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp17 = icmp ult i32 %58, %60
  br i1 %cmp17, label %if.then18, label %if.end16.if.end23_crit_edge

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then18:                                        ; preds = %if.end16
  %61 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %driver_data.i, align 4
  %phy.i84 = getelementptr inbounds %struct.fdp_nci_info, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %phy.i84 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %phy.i84, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %dev1.i85 = getelementptr inbounds %struct.i2c_client, ptr %66, i32 0, i32 4
  %ram_version.i = getelementptr inbounds %struct.fdp_nci_info, ptr %62, i32 0, i32 8
  %67 = ptrtoint ptr %ram_version.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ram_version.i, align 4
  %ram_patch_version.i = getelementptr inbounds %struct.fdp_nci_info, ptr %62, i32 0, i32 6
  %69 = ptrtoint ptr %ram_patch_version.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ram_patch_version.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %70)
  %cmp.not.i86 = icmp ult i32 %68, %70
  br i1 %cmp.not.i86, label %if.end.i92, label %if.then18.if.end23_crit_edge

if.then18.if.end23_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.end.i92:                                       ; preds = %if.then18
  %setup_patch_sent.i87 = getelementptr inbounds %struct.fdp_nci_info, ptr %62, i32 0, i32 16
  %71 = ptrtoint ptr %setup_patch_sent.i87 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %setup_patch_sent.i87, align 4
  %setup_reset_ntf.i88 = getelementptr inbounds %struct.fdp_nci_info, ptr %62, i32 0, i32 19
  %72 = ptrtoint ptr %setup_reset_ntf.i88 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %setup_reset_ntf.i88, align 1
  %setup_patch_ntf.i89 = getelementptr inbounds %struct.fdp_nci_info, ptr %62, i32 0, i32 17
  %73 = ptrtoint ptr %setup_patch_ntf.i89 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %setup_patch_ntf.i89, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %type.addr.i.i79) #7
  %74 = ptrtoint ptr %type.addr.i.i79 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %type.addr.i.i79, align 1
  %call.i.i90 = call i32 @nci_prop_cmd(ptr noundef %ndev, i8 noundef zeroext 8, i32 noundef 1, ptr noundef nonnull %type.addr.i.i79) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %type.addr.i.i79) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i90)
  %tobool.not.i91 = icmp eq i32 %call.i.i90, 0
  br i1 %tobool.not.i91, label %if.end4.i96, label %if.end.i92.error_crit_edge

if.end.i92.error_crit_edge:                       ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end4.i96:                                      ; preds = %if.end.i92
  %75 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %param.i.i78) #7
  %77 = getelementptr inbounds %struct.core_conn_create_dest_spec_params, ptr %param.i.i78, i32 0, i32 1
  %78 = ptrtoint ptr %param.i.i78 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 -96, ptr %param.i.i78, align 1
  %79 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %77, align 1
  %ndev1.i.i93 = getelementptr inbounds %struct.fdp_nci_info, ptr %76, i32 0, i32 2
  %80 = ptrtoint ptr %ndev1.i.i93 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ndev1.i.i93, align 4
  %call2.i.i94 = call i32 @nci_core_conn_create(ptr noundef %81, i8 noundef zeroext -62, i8 noundef zeroext 1, i32 noundef 2, ptr noundef nonnull %param.i.i78) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i94)
  %tobool.not.i.i95 = icmp eq i32 %call2.i.i94, 0
  br i1 %tobool.not.i.i95, label %if.end.i.i98, label %if.end4.i96.fdp_nci_create_conn.exit.i101_crit_edge

if.end4.i96.fdp_nci_create_conn.exit.i101_crit_edge: ; preds = %if.end4.i96
  call void @__sanitizer_cov_trace_pc() #9
  br label %fdp_nci_create_conn.exit.i101

if.end.i.i98:                                     ; preds = %if.end4.i96
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i.i97 = call i32 @nci_get_conn_info_by_dest_type_params(ptr noundef %ndev, i8 noundef zeroext -62, ptr noundef null) #7
  br label %fdp_nci_create_conn.exit.i101

fdp_nci_create_conn.exit.i101:                    ; preds = %if.end.i.i98, %if.end4.i96.fdp_nci_create_conn.exit.i101_crit_edge
  %retval.0.i.i99 = phi i32 [ %call3.i.i97, %if.end.i.i98 ], [ %call2.i.i94, %if.end4.i96.fdp_nci_create_conn.exit.i101_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %param.i.i78) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i99)
  %cmp6.i100 = icmp slt i32 %retval.0.i.i99, 0
  br i1 %cmp6.i100, label %fdp_nci_create_conn.exit.i101.error_crit_edge, label %if.end8.i105

fdp_nci_create_conn.exit.i101.error_crit_edge:    ; preds = %fdp_nci_create_conn.exit.i101
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end8.i105:                                     ; preds = %fdp_nci_create_conn.exit.i101
  %conv.i102 = trunc i32 %retval.0.i.i99 to i8
  %call9.i103 = call fastcc i32 @fdp_nci_send_patch(ptr noundef %ndev, i8 noundef zeroext %conv.i102, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i103)
  %tobool10.not.i104 = icmp eq i32 %call9.i103, 0
  br i1 %tobool10.not.i104, label %if.end12.i107, label %if.end8.i105.error_crit_edge

if.end8.i105.error_crit_edge:                     ; preds = %if.end8.i105
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end12.i107:                                    ; preds = %if.end8.i105
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 413) #7
  %82 = ptrtoint ptr %setup_patch_sent.i87 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %setup_patch_sent.i87, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %83)
  %cmp18.i106 = icmp eq i8 %83, 1
  br i1 %cmp18.i106, label %if.end12.i107.if.end33.i123_crit_edge, label %if.then20.i111

if.end12.i107.if.end33.i123_crit_edge:            ; preds = %if.end12.i107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i123

if.then20.i111:                                   ; preds = %if.end12.i107
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i80) #7
  %84 = call ptr @memset(ptr %__wq_entry.i80, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i80, i32 noundef 0) #7
  %setup_wq.i108 = getelementptr inbounds %struct.fdp_nci_info, ptr %62, i32 0, i32 20
  %call22185.i109 = call i32 @prepare_to_wait_event(ptr noundef %setup_wq.i108, ptr noundef nonnull %__wq_entry.i80, i32 noundef 1) #7
  %85 = ptrtoint ptr %setup_patch_sent.i87 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %setup_patch_sent.i87, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %86)
  %cmp25186.i110 = icmp eq i8 %86, 1
  br i1 %cmp25186.i110, label %if.then20.i111.for.end.i118_crit_edge, label %if.then20.i111.if.end28.i114_crit_edge

if.then20.i111.if.end28.i114_crit_edge:           ; preds = %if.then20.i111
  br label %if.end28.i114

if.then20.i111.for.end.i118_crit_edge:            ; preds = %if.then20.i111
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i118

if.end28.i114:                                    ; preds = %cleanup.i117.if.end28.i114_crit_edge, %if.then20.i111.if.end28.i114_crit_edge
  %call22187.i112 = phi i32 [ %call22.i115, %cleanup.i117.if.end28.i114_crit_edge ], [ %call22185.i109, %if.then20.i111.if.end28.i114_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22187.i112)
  %tobool29.not.i113 = icmp eq i32 %call22187.i112, 0
  br i1 %tobool29.not.i113, label %cleanup.i117, label %if.end28.i114.__out.i119_crit_edge

if.end28.i114.__out.i119_crit_edge:               ; preds = %if.end28.i114
  call void @__sanitizer_cov_trace_pc() #9
  br label %__out.i119

cleanup.i117:                                     ; preds = %if.end28.i114
  call void @schedule() #7
  %call22.i115 = call i32 @prepare_to_wait_event(ptr noundef %setup_wq.i108, ptr noundef nonnull %__wq_entry.i80, i32 noundef 1) #7
  %87 = ptrtoint ptr %setup_patch_sent.i87 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %setup_patch_sent.i87, align 4
  %cmp25.i116 = icmp eq i8 %88, 1
  br i1 %cmp25.i116, label %cleanup.i117.for.end.i118_crit_edge, label %cleanup.i117.if.end28.i114_crit_edge

cleanup.i117.if.end28.i114_crit_edge:             ; preds = %cleanup.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i114

cleanup.i117.for.end.i118_crit_edge:              ; preds = %cleanup.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i118

for.end.i118:                                     ; preds = %cleanup.i117.for.end.i118_crit_edge, %if.then20.i111.for.end.i118_crit_edge
  call void @finish_wait(ptr noundef %setup_wq.i108, ptr noundef nonnull %__wq_entry.i80) #7
  br label %__out.i119

__out.i119:                                       ; preds = %for.end.i118, %if.end28.i114.__out.i119_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i80) #7
  br label %if.end33.i123

if.end33.i123:                                    ; preds = %__out.i119, %if.end12.i107.if.end33.i123_crit_edge
  call void @msleep(i32 noundef 1000) #7
  %ndev35.i120 = getelementptr inbounds %struct.fdp_nci_info, ptr %62, i32 0, i32 2
  %89 = ptrtoint ptr %ndev35.i120 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ndev35.i120, align 4
  %call37.i121 = call i32 @nci_core_conn_close(ptr noundef %90, i8 noundef zeroext %conv.i102) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i121)
  %tobool38.not.i122 = icmp eq i32 %call37.i121, 0
  br i1 %tobool38.not.i122, label %if.end40.i126, label %if.end33.i123.error_crit_edge

if.end33.i123.error_crit_edge:                    ; preds = %if.end33.i123
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end40.i126:                                    ; preds = %if.end33.i123
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %type.addr.i165.i77) #7
  %91 = ptrtoint ptr %type.addr.i165.i77 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 -1, ptr %type.addr.i165.i77, align 1
  %call.i166.i124 = call i32 @nci_prop_cmd(ptr noundef %ndev, i8 noundef zeroext 8, i32 noundef 1, ptr noundef nonnull %type.addr.i165.i77) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %type.addr.i165.i77) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i166.i124)
  %tobool42.not.i125 = icmp eq i32 %call.i166.i124, 0
  br i1 %tobool42.not.i125, label %if.end47.i129, label %do.end46.i127

do.end46.i127:                                    ; preds = %if.end40.i126
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i85, ptr noundef nonnull @.str.27, i32 noundef 0) #10
  br label %error

if.end47.i129:                                    ; preds = %if.end40.i126
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 430) #7
  %92 = ptrtoint ptr %setup_patch_ntf.i89 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %setup_patch_ntf.i89, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool56.not.i128 = icmp eq i8 %93, 0
  br i1 %tobool56.not.i128, label %if.then57.i133, label %if.end47.i129.if.end78.i144_crit_edge

if.end47.i129.if.end78.i144_crit_edge:            ; preds = %if.end47.i129
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78.i144

if.then57.i133:                                   ; preds = %if.end47.i129
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry58.i81) #7
  %94 = call ptr @memset(ptr %__wq_entry58.i81, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry58.i81, i32 noundef 0) #7
  %setup_wq62.i130 = getelementptr inbounds %struct.fdp_nci_info, ptr %62, i32 0, i32 20
  %call63188.i131 = call i32 @prepare_to_wait_event(ptr noundef %setup_wq62.i130, ptr noundef nonnull %__wq_entry58.i81, i32 noundef 1) #7
  %95 = ptrtoint ptr %setup_patch_ntf.i89 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %setup_patch_ntf.i89, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool65.not189.i132 = icmp eq i8 %96, 0
  br i1 %tobool65.not189.i132, label %if.then57.i133.if.end67.i136_crit_edge, label %if.then57.i133.for.end74.i140_crit_edge

if.then57.i133.for.end74.i140_crit_edge:          ; preds = %if.then57.i133
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end74.i140

if.then57.i133.if.end67.i136_crit_edge:           ; preds = %if.then57.i133
  br label %if.end67.i136

if.end67.i136:                                    ; preds = %cleanup71.i139.if.end67.i136_crit_edge, %if.then57.i133.if.end67.i136_crit_edge
  %call63190.i134 = phi i32 [ %call63.i137, %cleanup71.i139.if.end67.i136_crit_edge ], [ %call63188.i131, %if.then57.i133.if.end67.i136_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63190.i134)
  %tobool68.not.i135 = icmp eq i32 %call63190.i134, 0
  br i1 %tobool68.not.i135, label %cleanup71.i139, label %if.end67.i136.__out76.i141_crit_edge

if.end67.i136.__out76.i141_crit_edge:             ; preds = %if.end67.i136
  call void @__sanitizer_cov_trace_pc() #9
  br label %__out76.i141

cleanup71.i139:                                   ; preds = %if.end67.i136
  call void @schedule() #7
  %call63.i137 = call i32 @prepare_to_wait_event(ptr noundef %setup_wq62.i130, ptr noundef nonnull %__wq_entry58.i81, i32 noundef 1) #7
  %97 = ptrtoint ptr %setup_patch_ntf.i89 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %setup_patch_ntf.i89, align 1
  %tobool65.not.i138 = icmp eq i8 %98, 0
  br i1 %tobool65.not.i138, label %cleanup71.i139.if.end67.i136_crit_edge, label %cleanup71.i139.for.end74.i140_crit_edge

cleanup71.i139.for.end74.i140_crit_edge:          ; preds = %cleanup71.i139
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end74.i140

cleanup71.i139.if.end67.i136_crit_edge:           ; preds = %cleanup71.i139
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67.i136

for.end74.i140:                                   ; preds = %cleanup71.i139.for.end74.i140_crit_edge, %if.then57.i133.for.end74.i140_crit_edge
  call void @finish_wait(ptr noundef %setup_wq62.i130, ptr noundef nonnull %__wq_entry58.i81) #7
  br label %__out76.i141

__out76.i141:                                     ; preds = %for.end74.i140, %if.end67.i136.__out76.i141_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry58.i81) #7
  br label %if.end78.i144

if.end78.i144:                                    ; preds = %__out76.i141, %if.end47.i129.if.end78.i144_crit_edge
  %setup_patch_status.i142 = getelementptr inbounds %struct.fdp_nci_info, ptr %62, i32 0, i32 18
  %99 = ptrtoint ptr %setup_patch_status.i142 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %setup_patch_status.i142, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool81.not.i143 = icmp eq i8 %100, 0
  br i1 %tobool81.not.i143, label %if.end86.i148, label %do.end85.i146

do.end85.i146:                                    ; preds = %if.end78.i144
  call void @__sanitizer_cov_trace_pc() #9
  %conv80.i145 = zext i8 %100 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i85, ptr noundef nonnull @.str.27, i32 noundef %conv80.i145) #10
  br label %error

if.end86.i148:                                    ; preds = %if.end78.i144
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 443) #7
  %101 = ptrtoint ptr %setup_reset_ntf.i88 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %setup_reset_ntf.i88, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool95.not.i147 = icmp eq i8 %102, 0
  br i1 %tobool95.not.i147, label %if.then96.i152, label %if.end86.i148.if.end23_crit_edge

if.end86.i148.if.end23_crit_edge:                 ; preds = %if.end86.i148
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then96.i152:                                   ; preds = %if.end86.i148
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry97.i82) #7
  %103 = call ptr @memset(ptr %__wq_entry97.i82, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry97.i82, i32 noundef 0) #7
  %setup_wq101.i149 = getelementptr inbounds %struct.fdp_nci_info, ptr %62, i32 0, i32 20
  %call102192.i150 = call i32 @prepare_to_wait_event(ptr noundef %setup_wq101.i149, ptr noundef nonnull %__wq_entry97.i82, i32 noundef 1) #7
  %104 = ptrtoint ptr %setup_reset_ntf.i88 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %setup_reset_ntf.i88, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool104.not193.i151 = icmp eq i8 %105, 0
  br i1 %tobool104.not193.i151, label %if.then96.i152.if.end106.i155_crit_edge, label %if.then96.i152.for.end113.i159_crit_edge

if.then96.i152.for.end113.i159_crit_edge:         ; preds = %if.then96.i152
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end113.i159

if.then96.i152.if.end106.i155_crit_edge:          ; preds = %if.then96.i152
  br label %if.end106.i155

if.end106.i155:                                   ; preds = %cleanup110.i158.if.end106.i155_crit_edge, %if.then96.i152.if.end106.i155_crit_edge
  %call102194.i153 = phi i32 [ %call102.i156, %cleanup110.i158.if.end106.i155_crit_edge ], [ %call102192.i150, %if.then96.i152.if.end106.i155_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102194.i153)
  %tobool107.not.i154 = icmp eq i32 %call102194.i153, 0
  br i1 %tobool107.not.i154, label %cleanup110.i158, label %if.end106.i155.__out115.i160_crit_edge

if.end106.i155.__out115.i160_crit_edge:           ; preds = %if.end106.i155
  call void @__sanitizer_cov_trace_pc() #9
  br label %__out115.i160

cleanup110.i158:                                  ; preds = %if.end106.i155
  call void @schedule() #7
  %call102.i156 = call i32 @prepare_to_wait_event(ptr noundef %setup_wq101.i149, ptr noundef nonnull %__wq_entry97.i82, i32 noundef 1) #7
  %106 = ptrtoint ptr %setup_reset_ntf.i88 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %setup_reset_ntf.i88, align 1
  %tobool104.not.i157 = icmp eq i8 %107, 0
  br i1 %tobool104.not.i157, label %cleanup110.i158.if.end106.i155_crit_edge, label %cleanup110.i158.for.end113.i159_crit_edge

cleanup110.i158.for.end113.i159_crit_edge:        ; preds = %cleanup110.i158
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end113.i159

cleanup110.i158.if.end106.i155_crit_edge:         ; preds = %cleanup110.i158
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106.i155

for.end113.i159:                                  ; preds = %cleanup110.i158.for.end113.i159_crit_edge, %if.then96.i152.for.end113.i159_crit_edge
  call void @finish_wait(ptr noundef %setup_wq101.i149, ptr noundef nonnull %__wq_entry97.i82) #7
  br label %__out115.i160

__out115.i160:                                    ; preds = %for.end113.i159, %if.end106.i155.__out115.i160_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry97.i82) #7
  br label %if.end23

if.end23:                                         ; preds = %__out115.i160, %if.end86.i148.if.end23_crit_edge, %if.then18.if.end23_crit_edge, %if.end16.if.end23_crit_edge
  %patched.1 = phi i8 [ %patched.0, %if.end16.if.end23_crit_edge ], [ 1, %if.then18.if.end23_crit_edge ], [ 1, %if.end86.i148.if.end23_crit_edge ], [ 1, %__out115.i160 ]
  %108 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %driver_data.i, align 4
  %otp_patch.i = getelementptr inbounds %struct.fdp_nci_info, ptr %109, i32 0, i32 3
  %110 = ptrtoint ptr %otp_patch.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %otp_patch.i, align 4
  %tobool.not.i163 = icmp eq ptr %111, null
  br i1 %tobool.not.i163, label %if.end23.if.end.i164_crit_edge, label %if.then.i

if.end23.if.end.i164_crit_edge:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i164

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  call void @release_firmware(ptr noundef nonnull %111) #7
  %112 = ptrtoint ptr %otp_patch.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %otp_patch.i, align 4
  br label %if.end.i164

if.end.i164:                                      ; preds = %if.then.i, %if.end23.if.end.i164_crit_edge
  %ram_patch.i = getelementptr inbounds %struct.fdp_nci_info, ptr %109, i32 0, i32 4
  %113 = ptrtoint ptr %ram_patch.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ram_patch.i, align 4
  %tobool3.not.i = icmp eq ptr %114, null
  br i1 %tobool3.not.i, label %if.end.i164.fdp_nci_release_firmware.exit_crit_edge, label %if.then4.i

if.end.i164.fdp_nci_release_firmware.exit_crit_edge: ; preds = %if.end.i164
  call void @__sanitizer_cov_trace_pc() #9
  br label %fdp_nci_release_firmware.exit

if.then4.i:                                       ; preds = %if.end.i164
  call void @__sanitizer_cov_trace_pc() #9
  call void @release_firmware(ptr noundef nonnull %114) #7
  %115 = ptrtoint ptr %ram_patch.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %ram_patch.i, align 4
  br label %fdp_nci_release_firmware.exit

fdp_nci_release_firmware.exit:                    ; preds = %if.then4.i, %if.end.i164.fdp_nci_release_firmware.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %patched.1)
  %tobool24.not = icmp eq i8 %patched.1, 0
  br i1 %tobool24.not, label %fdp_nci_release_firmware.exit.if.end42_crit_edge, label %if.then25

fdp_nci_release_firmware.exit.if.end42_crit_edge: ; preds = %fdp_nci_release_firmware.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then25:                                        ; preds = %fdp_nci_release_firmware.exit
  %call26 = call i32 @nci_core_init(ptr noundef %ndev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.then25.error_crit_edge

if.then25.error_crit_edge:                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end29:                                         ; preds = %if.then25
  %call.i165 = call i32 @nci_core_cmd(ptr noundef %ndev, i16 noundef zeroext 3, i32 noundef 5, ptr noundef nonnull @nci_core_get_config_otp_ram_version) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i165)
  %tobool31.not = icmp eq i32 %call.i165, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.error_crit_edge

if.end29.error_crit_edge:                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end33:                                         ; preds = %if.end29
  %116 = ptrtoint ptr %otp_version to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %otp_version, align 4
  %118 = ptrtoint ptr %otp_patch_version to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %otp_patch_version, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %119)
  %cmp36.not = icmp eq i32 %117, %119
  br i1 %cmp36.not, label %lor.lhs.false, label %if.end33.do.end_crit_edge

if.end33.do.end_crit_edge:                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end33
  %120 = ptrtoint ptr %ram_version to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %ram_version, align 4
  %122 = ptrtoint ptr %ram_patch_version to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %ram_patch_version, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %123)
  %cmp39.not = icmp eq i32 %121, %123
  br i1 %cmp39.not, label %lor.lhs.false.if.end42_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false.if.end42_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end33.do.end_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6) #10
  br label %error

if.end42:                                         ; preds = %lor.lhs.false.if.end42_crit_edge, %fdp_nci_release_firmware.exit.if.end42_crit_edge
  %call43 = call i32 @nci_core_reset(ptr noundef %ndev) #7
  br label %cleanup

error:                                            ; preds = %do.end, %if.end29.error_crit_edge, %if.then25.error_crit_edge, %do.end85.i146, %do.end46.i127, %if.end33.i123.error_crit_edge, %if.end8.i105.error_crit_edge, %fdp_nci_create_conn.exit.i101.error_crit_edge, %if.end.i92.error_crit_edge, %do.end85.i, %do.end46.i, %if.end33.i.error_crit_edge, %if.end8.i.error_crit_edge, %fdp_nci_create_conn.exit.i.error_crit_edge, %if.end.i.error_crit_edge, %if.end6.error_crit_edge, %if.end.error_crit_edge, %entry.error_crit_edge
  %r.0 = phi i32 [ %call2, %entry.error_crit_edge ], [ %call.i, %if.end.error_crit_edge ], [ %call7, %if.end6.error_crit_edge ], [ %call26, %if.then25.error_crit_edge ], [ %call.i165, %if.end29.error_crit_edge ], [ -22, %do.end ], [ %call37.i, %if.end33.i.error_crit_edge ], [ %call9.i, %if.end8.i.error_crit_edge ], [ %retval.0.i.i, %fdp_nci_create_conn.exit.i.error_crit_edge ], [ %call.i.i, %if.end.i.error_crit_edge ], [ -22, %do.end85.i ], [ -22, %do.end46.i ], [ %call37.i121, %if.end33.i123.error_crit_edge ], [ %call9.i103, %if.end8.i105.error_crit_edge ], [ %retval.0.i.i99, %fdp_nci_create_conn.exit.i101.error_crit_edge ], [ %call.i.i90, %if.end.i92.error_crit_edge ], [ -22, %do.end85.i146 ], [ -22, %do.end46.i127 ]
  %124 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %driver_data.i, align 4
  %otp_patch.i167 = getelementptr inbounds %struct.fdp_nci_info, ptr %125, i32 0, i32 3
  %126 = ptrtoint ptr %otp_patch.i167 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %otp_patch.i167, align 4
  %tobool.not.i168 = icmp eq ptr %127, null
  br i1 %tobool.not.i168, label %error.if.end.i172_crit_edge, label %if.then.i169

error.if.end.i172_crit_edge:                      ; preds = %error
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i172

if.then.i169:                                     ; preds = %error
  call void @__sanitizer_cov_trace_pc() #9
  call void @release_firmware(ptr noundef nonnull %127) #7
  %128 = ptrtoint ptr %otp_patch.i167 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr null, ptr %otp_patch.i167, align 4
  br label %if.end.i172

if.end.i172:                                      ; preds = %if.then.i169, %error.if.end.i172_crit_edge
  %ram_patch.i170 = getelementptr inbounds %struct.fdp_nci_info, ptr %125, i32 0, i32 4
  %129 = ptrtoint ptr %ram_patch.i170 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ram_patch.i170, align 4
  %tobool3.not.i171 = icmp eq ptr %130, null
  br i1 %tobool3.not.i171, label %if.end.i172.fdp_nci_release_firmware.exit174_crit_edge, label %if.then4.i173

if.end.i172.fdp_nci_release_firmware.exit174_crit_edge: ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #9
  br label %fdp_nci_release_firmware.exit174

if.then4.i173:                                    ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #9
  call void @release_firmware(ptr noundef nonnull %130) #7
  %131 = ptrtoint ptr %ram_patch.i170 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr null, ptr %ram_patch.i170, align 4
  br label %fdp_nci_release_firmware.exit174

fdp_nci_release_firmware.exit174:                 ; preds = %if.then4.i173, %if.end.i172.fdp_nci_release_firmware.exit174_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %r.0) #10
  br label %cleanup

cleanup:                                          ; preds = %fdp_nci_release_firmware.exit174, %if.end42
  %retval.0 = phi i32 [ %r.0, %fdp_nci_release_firmware.exit174 ], [ %call43, %if.end42 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdp_nci_post_setup(ptr noundef %ndev) #0 align 64 {
entry:
  %data.i = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 26
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %phy = getelementptr inbounds %struct.fdp_nci_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %fw_vsc_cfg = getelementptr inbounds %struct.fdp_nci_info, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %fw_vsc_cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fw_vsc_cfg, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %land.lhs.true

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

land.lhs.true:                                    ; preds = %entry
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end11_crit_edge, label %if.then

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then:                                          ; preds = %land.lhs.true
  %arrayidx5 = getelementptr i8, ptr %7, i32 3
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx5, align 1
  %arrayidx7 = getelementptr i8, ptr %7, i32 4
  %conv.i = zext i8 %11 to i32
  %call.i = tail call i32 @nci_prop_cmd(ptr noundef %ndev, i8 noundef zeroext 35, i32 noundef %conv.i, ptr noundef %arrayidx7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.then.if.end11_crit_edge, label %do.end

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31, i32 noundef %call.i) #10
  br label %cleanup

if.end11:                                         ; preds = %if.then.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %entry.if.end11_crit_edge
  %clock_type = getelementptr inbounds %struct.fdp_nci_info, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %clock_type to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %clock_type, align 4
  %clock_freq = getelementptr inbounds %struct.fdp_nci_info, ptr %1, i32 0, i32 13
  %14 = ptrtoint ptr %clock_freq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %clock_freq, align 4
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %data.i) #7
  %16 = getelementptr inbounds [9 x i8], ptr %data.i, i32 0, i32 1
  %17 = getelementptr inbounds [9 x i8], ptr %data.i, i32 0, i32 2
  %18 = getelementptr inbounds [9 x i8], ptr %data.i, i32 0, i32 3
  %19 = getelementptr inbounds [9 x i8], ptr %data.i, i32 0, i32 4
  %20 = getelementptr inbounds [9 x i8], ptr %data.i, i32 0, i32 5
  %21 = getelementptr inbounds [9 x i8], ptr %data.i, i32 0, i32 6
  %22 = getelementptr inbounds [9 x i8], ptr %data.i, i32 0, i32 7
  %23 = getelementptr inbounds [9 x i8], ptr %data.i, i32 0, i32 8
  %div.i = udiv i32 325440, %15
  %mul2.i = mul i32 %15, -32768
  %.neg.i = mul i32 %mul2.i, %div.i
  %mul3.i = add i32 %.neg.i, 2074083328
  %div4.i = udiv i32 %mul3.i, %15
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %data.i, align 1
  %25 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %16, align 1
  %26 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %17, align 1
  %27 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 16, ptr %18, align 1
  %28 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 4, ptr %19, align 1
  %conv.i44 = trunc i32 %div4.i to i8
  %29 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv.i44, ptr %20, align 1
  %shr.i = lshr i32 %div4.i, 8
  %conv11.i = trunc i32 %shr.i to i8
  %30 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv11.i, ptr %21, align 1
  %conv13.i = trunc i32 %div.i to i8
  %31 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv13.i, ptr %22, align 1
  %32 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %13, ptr %23, align 1
  %call.i.i = call i32 @nci_prop_cmd(ptr noundef %ndev, i8 noundef zeroext 35, i32 noundef 9, ptr noundef nonnull %data.i) #7
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %data.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool13.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool13.not, label %if.end18, label %do.end17

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.34, i32 noundef %call.i.i) #10
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %call19 = call i32 @nci_core_reset(ptr noundef %ndev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %call23 = call i32 @nci_core_init(ptr noundef %ndev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end18.cleanup_crit_edge, %do.end17, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i.i, %do.end17 ], [ %call23, %if.end22 ], [ %call19, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_core_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fdp_nci_request_firmware(ptr nocapture noundef readonly %ndev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 26
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %phy = getelementptr inbounds %struct.fdp_nci_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %ram_patch = getelementptr inbounds %struct.fdp_nci_info, ptr %1, i32 0, i32 4
  %call2 = tail call i32 @request_firmware(ptr noundef %ram_patch, ptr noundef nonnull @.str.11, ptr noundef %dev1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %ram_patch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ram_patch, align 4
  %data4 = getelementptr inbounds %struct.firmware, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %data4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data4, align 4
  %arrayidx = getelementptr i8, ptr %9, i32 576
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %11 to i32
  %arrayidx5 = getelementptr i8, ptr %9, i32 577
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %13 to i32
  %shl = shl nuw nsw i32 %conv6, 8
  %or = or i32 %shl, %conv
  %arrayidx7 = getelementptr i8, ptr %9, i32 578
  %14 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %15 to i32
  %shl9 = shl nuw nsw i32 %conv8, 16
  %or10 = or i32 %or, %shl9
  %arrayidx11 = getelementptr i8, ptr %9, i32 579
  %16 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %17 to i32
  %shl13 = shl nuw i32 %conv12, 24
  %or14 = or i32 %or10, %shl13
  %ram_patch_version = getelementptr inbounds %struct.fdp_nci_info, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %ram_patch_version to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or14, ptr %ram_patch_version, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fdp_nci_request_firmware.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fdp_nci_request_firmware, %if.then19)) #7
          to label %do.end24 [label %if.then19], !srcloc !119

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %ram_patch_version to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ram_patch_version, align 4
  %21 = ptrtoint ptr %ram_patch to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ram_patch, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fdp_nci_request_firmware.__UNIQUE_ID_ddebug318, ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %20, i32 noundef %24) #7
  br label %do.end24

do.end24:                                         ; preds = %if.then19, %if.end
  %otp_patch = getelementptr inbounds %struct.fdp_nci_info, ptr %1, i32 0, i32 3
  %call25 = tail call i32 @request_firmware(ptr noundef %otp_patch, ptr noundef nonnull @.str.16, ptr noundef %dev1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %do.end31, label %if.end32

do.end31:                                         ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #10
  br label %cleanup

if.end32:                                         ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %otp_patch to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %otp_patch, align 4
  %data34 = getelementptr inbounds %struct.firmware, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %data34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data34, align 4
  %arrayidx35 = getelementptr i8, ptr %28, i32 576
  %29 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %30 to i32
  %arrayidx37 = getelementptr i8, ptr %28, i32 577
  %31 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %32 to i32
  %shl39 = shl nuw nsw i32 %conv38, 8
  %or40 = or i32 %shl39, %conv36
  %arrayidx41 = getelementptr i8, ptr %28, i32 578
  %33 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %34 to i32
  %shl43 = shl nuw nsw i32 %conv42, 16
  %or44 = or i32 %or40, %shl43
  %arrayidx45 = getelementptr i8, ptr %28, i32 579
  %35 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx45, align 1
  %conv46 = zext i8 %36 to i32
  %shl47 = shl nuw i32 %conv46, 24
  %or48 = or i32 %or44, %shl47
  %otp_patch_version = getelementptr inbounds %struct.fdp_nci_info, ptr %1, i32 0, i32 5
  %37 = ptrtoint ptr %otp_patch_version to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or48, ptr %otp_patch_version, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fdp_nci_request_firmware.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fdp_nci_request_firmware, %if.then61)) #7
          to label %cleanup [label %if.then61], !srcloc !119

if.then61:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %otp_patch_version to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %otp_patch_version, align 4
  %40 = ptrtoint ptr %otp_patch to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %otp_patch, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fdp_nci_request_firmware.__UNIQUE_ID_ddebug319, ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %39, i32 noundef %43) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %if.end32, %do.end31, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ 0, %do.end31 ], [ 0, %if.then61 ], [ 0, %if.end32 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_core_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_core_cmd(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fdp_nci_send_patch(ptr noundef %ndev, i8 noundef zeroext %conn_id, i8 noundef zeroext %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 26
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %type)
  %cmp = icmp eq i8 %type, 1
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %otp_patch = getelementptr inbounds %struct.fdp_nci_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %otp_patch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %otp_patch, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %type)
  %cmp3 = icmp eq i8 %type, 0
  br i1 %cmp3, label %land.lhs.true5, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true5:                                   ; preds = %lor.lhs.false
  %ram_patch = getelementptr inbounds %struct.fdp_nci_info, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %ram_patch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ram_patch, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true5.cleanup_crit_edge, label %land.lhs.true5.if.end_crit_edge

land.lhs.true5.if.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true5.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge, %land.lhs.true.if.end_crit_edge
  %otp_patch11 = getelementptr inbounds %struct.fdp_nci_info, ptr %1, i32 0, i32 3
  %ram_patch12 = getelementptr inbounds %struct.fdp_nci_info, ptr %1, i32 0, i32 4
  %fw.0.in = select i1 %cmp, ptr %otp_patch11, ptr %ram_patch12
  %6 = ptrtoint ptr %fw.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %fw.0 = load ptr, ptr %fw.0.in, align 4
  %call14 = tail call i32 @nci_conn_max_data_pkt_payload_size(ptr noundef %ndev, i8 noundef zeroext %conn_id) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 1
  br i1 %cmp15, label %if.end.cleanup_crit_edge, label %if.end18

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %7 = ptrtoint ptr %fw.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fw.0, align 4
  %add = add nsw i32 %call14, -1
  %sub = add i32 %add, %8
  %div = udiv i32 %sub, %call14
  %9 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i, align 4
  %phy.i = getelementptr inbounds %struct.fdp_nci_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phy.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fdp_nci_set_data_pkt_counter.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fdp_nci_send_patch, %if.then.i)) #7
          to label %fdp_nci_set_data_pkt_counter.exit [label %if.then.i], !srcloc !119

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fdp_nci_set_data_pkt_counter.__UNIQUE_ID_ddebug315, ptr noundef %dev1.i, ptr noundef nonnull @.str.26, i32 noundef %div) #7
  br label %fdp_nci_set_data_pkt_counter.exit

fdp_nci_set_data_pkt_counter.exit:                ; preds = %if.then.i, %if.end18
  %data_pkt_counter.i = getelementptr inbounds %struct.fdp_nci_info, ptr %10, i32 0, i32 14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %data_pkt_counter.i, i32 noundef 4) #7
  %15 = ptrtoint ptr %data_pkt_counter.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 %div, ptr %data_pkt_counter.i, align 4
  %data_pkt_counter_cb.i = getelementptr inbounds %struct.fdp_nci_info, ptr %10, i32 0, i32 15
  %16 = ptrtoint ptr %data_pkt_counter_cb.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @fdp_nci_send_patch_cb, ptr %data_pkt_counter_cb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool20.not90 = icmp eq i32 %8, 0
  br i1 %tobool20.not90, label %fdp_nci_set_data_pkt_counter.exit.cleanup_crit_edge, label %while.body.lr.ph

fdp_nci_set_data_pkt_counter.exit.cleanup_crit_edge: ; preds = %fdp_nci_set_data_pkt_counter.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.lr.ph:                                 ; preds = %fdp_nci_set_data_pkt_counter.exit
  %tx_headroom.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 3
  %tx_tailroom.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 4
  %data = getelementptr inbounds %struct.firmware, ptr %fw.0, i32 0, i32 1
  br label %while.body

while.cond:                                       ; preds = %if.end27
  %sub35 = sub i32 %len.091, %17
  %tobool20.not = icmp eq i32 %sub35, 0
  br i1 %tobool20.not, label %while.cond.cleanup_crit_edge, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.body.lr.ph
  %len.091 = phi i32 [ %8, %while.body.lr.ph ], [ %sub35, %while.cond.while.body_crit_edge ]
  %17 = tail call i32 @llvm.umin.i32(i32 %call14, i32 %len.091)
  %add23 = add i32 %17, 3
  %18 = ptrtoint ptr %tx_headroom.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_headroom.i, align 4
  %add.i = add i32 %add23, %19
  %20 = ptrtoint ptr %tx_tailroom.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_tailroom.i, align 4
  %add1.i = add i32 %add.i, %21
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add1.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then26, label %if.end27

if.then26:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i, align 4
  %phy.i74 = getelementptr inbounds %struct.fdp_nci_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %phy.i74 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %phy.i74, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fdp_nci_set_data_pkt_counter.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fdp_nci_send_patch, %cleanup.sink.split.sink.split)) #7
          to label %cleanup.sink.split [label %cleanup.sink.split.sink.split], !srcloc !119

if.end27:                                         ; preds = %while.body
  %28 = ptrtoint ptr %tx_headroom.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_headroom.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %30 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 3
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %32 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %33, i32 3
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 %29
  store ptr %add.ptr.i, ptr %data.i.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %add.ptr1.i.i, i32 %29
  store ptr %add.ptr1.i, ptr %tail.i.i, align 8
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 4
  %36 = ptrtoint ptr %fw.0 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fw.0, align 4
  %sub29 = sub i32 %37, %len.091
  %add.ptr = getelementptr i8, ptr %35, i32 %sub29
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %17) #7
  %38 = call ptr @memcpy(ptr %call.i, ptr %add.ptr, i32 %17)
  %call31 = tail call i32 @nci_send_data(ptr noundef %ndev, i8 noundef zeroext %conn_id, ptr noundef nonnull %call.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %while.cond, label %if.then33

if.then33:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %driver_data.i, align 4
  %phy.i82 = getelementptr inbounds %struct.fdp_nci_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %phy.i82 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %phy.i82, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fdp_nci_set_data_pkt_counter.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fdp_nci_send_patch, %cleanup.sink.split.sink.split)) #7
          to label %cleanup.sink.split [label %cleanup.sink.split.sink.split], !srcloc !119

cleanup.sink.split.sink.split:                    ; preds = %if.then33, %if.then26
  %.sink = phi ptr [ %27, %if.then26 ], [ %44, %if.then33 ]
  %.sink95.ph = phi ptr [ %23, %if.then26 ], [ %40, %if.then33 ]
  %retval.0.ph.ph = phi i32 [ -12, %if.then26 ], [ %call31, %if.then33 ]
  call void @__sanitizer_cov_trace_pc() #9
  %dev1.i83 = getelementptr inbounds %struct.i2c_client, ptr %.sink, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fdp_nci_set_data_pkt_counter.__UNIQUE_ID_ddebug315, ptr noundef %dev1.i83, ptr noundef nonnull @.str.26, i32 noundef 0) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.then33, %if.then26
  %.sink95 = phi ptr [ %23, %if.then26 ], [ %40, %if.then33 ], [ %.sink95.ph, %cleanup.sink.split.sink.split ]
  %retval.0.ph = phi i32 [ -12, %if.then26 ], [ %call31, %if.then33 ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  %data_pkt_counter.i77 = getelementptr inbounds %struct.fdp_nci_info, ptr %.sink95, i32 0, i32 14
  %call.i.i.i86 = tail call zeroext i1 @__kasan_check_write(ptr noundef %data_pkt_counter.i77, i32 noundef 4) #7
  %45 = ptrtoint ptr %data_pkt_counter.i77 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 0, ptr %data_pkt_counter.i77, align 4
  %data_pkt_counter_cb.i87 = getelementptr inbounds %struct.fdp_nci_info, ptr %.sink95, i32 0, i32 15
  %46 = ptrtoint ptr %data_pkt_counter_cb.i87 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %data_pkt_counter_cb.i87, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.cond.cleanup_crit_edge, %fdp_nci_set_data_pkt_counter.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true5.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %land.lhs.true5.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %fdp_nci_set_data_pkt_counter.exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ 0, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_core_conn_close(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_prop_cmd(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_core_conn_create(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_get_conn_info_by_dest_type_params(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_conn_max_data_pkt_payload_size(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fdp_nci_send_patch_cb(ptr nocapture noundef readonly %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 26
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %setup_patch_sent = getelementptr inbounds %struct.fdp_nci_info, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %setup_patch_sent to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %setup_patch_sent, align 4
  %setup_wq = getelementptr inbounds %struct.fdp_nci_info, ptr %1, i32 0, i32 20
  tail call void @__wake_up(ptr noundef %setup_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_send_data(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdp_nci_prop_patch_rsp_packet(ptr noundef %ndev, ptr nocapture noundef readonly %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 26
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %phy = getelementptr inbounds %struct.fdp_nci_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fdp_nci_prop_patch_rsp_packet.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fdp_nci_prop_patch_rsp_packet, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !119

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %conv = zext i8 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fdp_nci_prop_patch_rsp_packet.__UNIQUE_ID_ddebug320, ptr noundef %dev1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.36, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv5 = zext i8 %9 to i32
  tail call void @nci_req_complete(ptr noundef %ndev, i32 noundef %conv5) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdp_nci_prop_patch_ntf_packet(ptr nocapture noundef readonly %ndev, ptr nocapture noundef readonly %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 26
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %setup_patch_ntf = getelementptr inbounds %struct.fdp_nci_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %setup_patch_ntf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %setup_patch_ntf, align 1
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 1
  %setup_patch_status = getelementptr inbounds %struct.fdp_nci_info, ptr %1, i32 0, i32 18
  %7 = ptrtoint ptr %setup_patch_status to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %setup_patch_status, align 2
  %setup_wq = getelementptr inbounds %struct.fdp_nci_info, ptr %1, i32 0, i32 20
  tail call void @__wake_up(ptr noundef %setup_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdp_nci_prop_set_production_data_rsp_packet(ptr noundef %ndev, ptr nocapture noundef readonly %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 26
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %phy = getelementptr inbounds %struct.fdp_nci_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fdp_nci_prop_set_production_data_rsp_packet.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fdp_nci_prop_set_production_data_rsp_packet, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !119

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %conv = zext i8 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fdp_nci_prop_set_production_data_rsp_packet.__UNIQUE_ID_ddebug321, ptr noundef %dev1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv5 = zext i8 %9 to i32
  tail call void @nci_req_complete(ptr noundef %ndev, i32 noundef %conv5) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nci_req_complete(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdp_nci_core_get_config_rsp_packet(ptr noundef %ndev, ptr nocapture noundef readonly %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 26
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %phy = getelementptr inbounds %struct.fdp_nci_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp = icmp eq i8 %9, 0
  br i1 %cmp, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then:                                          ; preds = %entry
  %data3 = getelementptr inbounds %struct.nci_core_get_config_rsp, ptr %7, i32 0, i32 2
  %key_index = getelementptr inbounds %struct.fdp_nci_info, ptr %1, i32 0, i32 10
  %otp_version16 = getelementptr inbounds %struct.fdp_nci_info, ptr %1, i32 0, i32 7
  %ram_version = getelementptr inbounds %struct.fdp_nci_info, ptr %1, i32 0, i32 8
  %incdec.ptr = getelementptr %struct.nci_core_get_config_rsp, ptr %7, i32 1, i32 1
  %10 = ptrtoint ptr %data3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data3, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i8 %11, label %if.then.for.inc_crit_edge [
    i8 -96, label %sw.bb
    i8 -95, label %sw.bb9
    i8 -59, label %sw.bb13
    i8 -58, label %sw.bb18
  ]

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr7 = getelementptr %struct.nci_core_get_config_rsp, ptr %7, i32 2
  %13 = ptrtoint ptr %incdec.ptr7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %incdec.ptr7, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  %16 = ptrtoint ptr %ram_version to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %ram_version, align 4
  %add.ptr = getelementptr %struct.nci_core_get_config_rsp, ptr %7, i32 4
  br label %for.inc

sw.bb9:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr10 = getelementptr %struct.nci_core_get_config_rsp, ptr %7, i32 2
  %17 = ptrtoint ptr %incdec.ptr10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %incdec.ptr10, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  %20 = ptrtoint ptr %otp_version16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %otp_version16, align 4
  %add.ptr12 = getelementptr %struct.nci_core_get_config_rsp, ptr %7, i32 4
  br label %for.inc

sw.bb13:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr14 = getelementptr %struct.nci_core_get_config_rsp, ptr %7, i32 2
  %21 = ptrtoint ptr %incdec.ptr14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %incdec.ptr14, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #7
  %24 = ptrtoint ptr %otp_version16 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %otp_version16, align 4
  %add.ptr17 = getelementptr %struct.nci_core_get_config_rsp, ptr %7, i32 4
  br label %for.inc

sw.bb18:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr19 = getelementptr %struct.nci_core_get_config_rsp, ptr %7, i32 2
  %incdec.ptr20 = getelementptr %struct.nci_core_get_config_rsp, ptr %7, i32 2, i32 1
  %25 = ptrtoint ptr %incdec.ptr19 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %incdec.ptr19, align 1
  %27 = ptrtoint ptr %key_index to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %key_index, align 4
  br label %for.inc

for.inc:                                          ; preds = %sw.bb18, %sw.bb13, %sw.bb9, %sw.bb, %if.then.for.inc_crit_edge
  %p.1 = phi ptr [ %incdec.ptr, %if.then.for.inc_crit_edge ], [ %incdec.ptr20, %sw.bb18 ], [ %add.ptr17, %sw.bb13 ], [ %add.ptr12, %sw.bb9 ], [ %add.ptr, %sw.bb ]
  %incdec.ptr.1 = getelementptr i8, ptr %p.1, i32 1
  %28 = ptrtoint ptr %p.1 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %p.1, align 1
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %29, label %for.inc.for.inc.1_crit_edge [
    i8 -96, label %sw.bb.1
    i8 -95, label %sw.bb9.1
    i8 -59, label %sw.bb13.1
    i8 -58, label %sw.bb18.1
  ]

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

sw.bb18.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr19.1 = getelementptr i8, ptr %p.1, i32 2
  %incdec.ptr20.1 = getelementptr i8, ptr %p.1, i32 3
  %31 = ptrtoint ptr %incdec.ptr19.1 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %incdec.ptr19.1, align 1
  %33 = ptrtoint ptr %key_index to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %key_index, align 4
  br label %for.inc.1

sw.bb13.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr14.1 = getelementptr i8, ptr %p.1, i32 2
  %34 = ptrtoint ptr %incdec.ptr14.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %incdec.ptr14.1, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #7
  %37 = ptrtoint ptr %otp_version16 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %otp_version16, align 4
  %add.ptr17.1 = getelementptr i8, ptr %p.1, i32 6
  br label %for.inc.1

sw.bb9.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr10.1 = getelementptr i8, ptr %p.1, i32 2
  %38 = ptrtoint ptr %incdec.ptr10.1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %incdec.ptr10.1, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #7
  %41 = ptrtoint ptr %otp_version16 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %otp_version16, align 4
  %add.ptr12.1 = getelementptr i8, ptr %p.1, i32 6
  br label %for.inc.1

sw.bb.1:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr7.1 = getelementptr i8, ptr %p.1, i32 2
  %42 = ptrtoint ptr %incdec.ptr7.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %incdec.ptr7.1, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #7
  %45 = ptrtoint ptr %ram_version to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %ram_version, align 4
  %add.ptr.1 = getelementptr i8, ptr %p.1, i32 6
  br label %for.inc.1

for.inc.1:                                        ; preds = %sw.bb.1, %sw.bb9.1, %sw.bb13.1, %sw.bb18.1, %for.inc.for.inc.1_crit_edge
  %p.1.1 = phi ptr [ %incdec.ptr.1, %for.inc.for.inc.1_crit_edge ], [ %incdec.ptr20.1, %sw.bb18.1 ], [ %add.ptr17.1, %sw.bb13.1 ], [ %add.ptr12.1, %sw.bb9.1 ], [ %add.ptr.1, %sw.bb.1 ]
  %incdec.ptr.2 = getelementptr i8, ptr %p.1.1, i32 1
  %46 = ptrtoint ptr %p.1.1 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %p.1.1, align 1
  %48 = zext i8 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.44)
  switch i8 %47, label %for.inc.1.for.inc.2_crit_edge [
    i8 -96, label %sw.bb.2
    i8 -95, label %sw.bb9.2
    i8 -59, label %sw.bb13.2
    i8 -58, label %sw.bb18.2
  ]

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

sw.bb18.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr19.2 = getelementptr i8, ptr %p.1.1, i32 2
  %incdec.ptr20.2 = getelementptr i8, ptr %p.1.1, i32 3
  %49 = ptrtoint ptr %incdec.ptr19.2 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %incdec.ptr19.2, align 1
  %51 = ptrtoint ptr %key_index to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %key_index, align 4
  br label %for.inc.2

sw.bb13.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr14.2 = getelementptr i8, ptr %p.1.1, i32 2
  %52 = ptrtoint ptr %incdec.ptr14.2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %incdec.ptr14.2, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #7
  %55 = ptrtoint ptr %otp_version16 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %otp_version16, align 4
  %add.ptr17.2 = getelementptr i8, ptr %p.1.1, i32 6
  br label %for.inc.2

sw.bb9.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr10.2 = getelementptr i8, ptr %p.1.1, i32 2
  %56 = ptrtoint ptr %incdec.ptr10.2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %incdec.ptr10.2, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #7
  %59 = ptrtoint ptr %otp_version16 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %otp_version16, align 4
  %add.ptr12.2 = getelementptr i8, ptr %p.1.1, i32 6
  br label %for.inc.2

sw.bb.2:                                          ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr7.2 = getelementptr i8, ptr %p.1.1, i32 2
  %60 = ptrtoint ptr %incdec.ptr7.2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %incdec.ptr7.2, align 4
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #7
  %63 = ptrtoint ptr %ram_version to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %ram_version, align 4
  %add.ptr.2 = getelementptr i8, ptr %p.1.1, i32 6
  br label %for.inc.2

for.inc.2:                                        ; preds = %sw.bb.2, %sw.bb9.2, %sw.bb13.2, %sw.bb18.2, %for.inc.1.for.inc.2_crit_edge
  %p.1.2 = phi ptr [ %incdec.ptr.2, %for.inc.1.for.inc.2_crit_edge ], [ %incdec.ptr20.2, %sw.bb18.2 ], [ %add.ptr17.2, %sw.bb13.2 ], [ %add.ptr12.2, %sw.bb9.2 ], [ %add.ptr.2, %sw.bb.2 ]
  %64 = ptrtoint ptr %p.1.2 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %p.1.2, align 1
  %66 = zext i8 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.45)
  switch i8 %65, label %for.inc.2.do.body_crit_edge [
    i8 -96, label %sw.bb.3
    i8 -95, label %sw.bb9.3
    i8 -59, label %sw.bb13.3
    i8 -58, label %sw.bb18.3
  ]

for.inc.2.do.body_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

sw.bb18.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr19.3 = getelementptr i8, ptr %p.1.2, i32 2
  %67 = ptrtoint ptr %incdec.ptr19.3 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %incdec.ptr19.3, align 1
  %69 = ptrtoint ptr %key_index to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %key_index, align 4
  br label %do.body

sw.bb13.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr14.3 = getelementptr i8, ptr %p.1.2, i32 2
  %70 = ptrtoint ptr %incdec.ptr14.3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %incdec.ptr14.3, align 4
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #7
  %73 = ptrtoint ptr %otp_version16 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %otp_version16, align 4
  br label %do.body

sw.bb9.3:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr10.3 = getelementptr i8, ptr %p.1.2, i32 2
  %74 = ptrtoint ptr %incdec.ptr10.3 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %incdec.ptr10.3, align 4
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #7
  %77 = ptrtoint ptr %otp_version16 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %otp_version16, align 4
  br label %do.body

sw.bb.3:                                          ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr7.3 = getelementptr i8, ptr %p.1.2, i32 2
  %78 = ptrtoint ptr %incdec.ptr7.3 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %incdec.ptr7.3, align 4
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #7
  %81 = ptrtoint ptr %ram_version to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %ram_version, align 4
  br label %do.body

do.body:                                          ; preds = %sw.bb.3, %sw.bb9.3, %sw.bb13.3, %sw.bb18.3, %for.inc.2.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fdp_nci_core_get_config_rsp_packet.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fdp_nci_core_get_config_rsp_packet, %if.then24)) #7
          to label %do.body27 [label %if.then24], !srcloc !119

if.then24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %otp_version25 = getelementptr inbounds %struct.fdp_nci_info, ptr %1, i32 0, i32 7
  %82 = ptrtoint ptr %otp_version25 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %otp_version25, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fdp_nci_core_get_config_rsp_packet.__UNIQUE_ID_ddebug322, ptr noundef %dev1, ptr noundef nonnull @.str.40, i32 noundef %83) #7
  br label %do.body27

do.body27:                                        ; preds = %if.then24, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fdp_nci_core_get_config_rsp_packet.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fdp_nci_core_get_config_rsp_packet, %if.then39)) #7
          to label %do.body44 [label %if.then39], !srcloc !119

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #9
  %ram_version40 = getelementptr inbounds %struct.fdp_nci_info, ptr %1, i32 0, i32 8
  %84 = ptrtoint ptr %ram_version40 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %ram_version40, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fdp_nci_core_get_config_rsp_packet.__UNIQUE_ID_ddebug323, ptr noundef %dev1, ptr noundef nonnull @.str.41, i32 noundef %85) #7
  br label %do.body44

do.body44:                                        ; preds = %if.then39, %do.body27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fdp_nci_core_get_config_rsp_packet.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fdp_nci_core_get_config_rsp_packet, %if.then56)) #7
          to label %do.body62 [label %if.then56], !srcloc !119

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #9
  %key_index57 = getelementptr inbounds %struct.fdp_nci_info, ptr %1, i32 0, i32 10
  %86 = ptrtoint ptr %key_index57 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %key_index57, align 4
  %conv58 = zext i8 %87 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fdp_nci_core_get_config_rsp_packet.__UNIQUE_ID_ddebug324, ptr noundef %dev1, ptr noundef nonnull @.str.42, i32 noundef %conv58) #7
  br label %do.body62

do.body62:                                        ; preds = %if.then56, %do.body44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fdp_nci_core_get_config_rsp_packet.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fdp_nci_core_get_config_rsp_packet, %if.then74)) #7
          to label %do.end79 [label %if.then74], !srcloc !119

if.then74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #9
  %88 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %7, align 1
  %conv76 = zext i8 %89 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fdp_nci_core_get_config_rsp_packet.__UNIQUE_ID_ddebug325, ptr noundef %dev1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.39, i32 noundef %conv76) #7
  br label %do.end79

do.end79:                                         ; preds = %if.then74, %do.body62
  %90 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %7, align 1
  %conv81 = zext i8 %91 to i32
  tail call void @nci_req_complete(ptr noundef %ndev, i32 noundef %conv81) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdp_nci_core_reset_ntf_packet(ptr nocapture noundef readonly %ndev, ptr nocapture noundef readnone %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 26
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %setup_reset_ntf = getelementptr inbounds %struct.fdp_nci_info, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %setup_reset_ntf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %setup_reset_ntf, align 1
  %setup_wq = getelementptr inbounds %struct.fdp_nci_info, ptr %1, i32 0, i32 20
  tail call void @__wake_up(ptr noundef %setup_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !11, !13, !15, !17, !18, !20, !22, !24, !26, !27, !28, !29, !31, !32, !33, !35, !37, !39, !40, !41, !42, !44, !45, !46, !48, !50, !51, !52, !54, !55, !57, !58, !59, !60, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !75, !77, !78, !79, !80, !82, !83, !84, !86, !88, !89, !90, !92, !93, !95, !97, !98, !99, !101, !102, !104, !105}
!llvm.module.flags = !{!107, !108, !109, !110, !111, !112, !113, !114}
!llvm.ident = !{!115}

!0 = !{ptr @fdp_nci_probe.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/nfc/fdp/fdp.c", i32 712, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/nfc/fdp/fdp.c", i32 726, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @fdp_nci_probe._entry, !4, !"_entry", i1 false, i1 false}
!10 = !{ptr @fdp_nci_probe._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @__ksymtab_fdp_nci_probe, !12, !"__ksymtab_fdp_nci_probe", i1 false, i1 false}
!12 = !{!"../drivers/nfc/fdp/fdp.c", i32 745, i32 1}
!13 = !{ptr @__ksymtab_fdp_nci_remove, !14, !"__ksymtab_fdp_nci_remove", i1 false, i1 false}
!14 = !{!"../drivers/nfc/fdp/fdp.c", i32 752, i32 1}
!15 = !{ptr @__UNIQUE_ID_file327, !16, !"__UNIQUE_ID_file327", i1 false, i1 false}
!16 = !{!"../drivers/nfc/fdp/fdp.c", i32 754, i32 1}
!17 = !{ptr @__UNIQUE_ID_license328, !16, !"__UNIQUE_ID_license328", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_description329, !19, !"__UNIQUE_ID_description329", i1 false, i1 false}
!19 = !{!"../drivers/nfc/fdp/fdp.c", i32 755, i32 1}
!20 = !{ptr @__UNIQUE_ID_author330, !21, !"__UNIQUE_ID_author330", i1 false, i1 false}
!21 = !{!"../drivers/nfc/fdp/fdp.c", i32 756, i32 1}
!22 = !{ptr @nci_ops, !23, !"nci_ops", i1 false, i1 false}
!23 = !{!"../drivers/nfc/fdp/fdp.c", i32 679, i32 29}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/nfc/fdp/fdp.c", i32 501, i32 4}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @fdp_nci_setup._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @fdp_nci_setup._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/nfc/fdp/fdp.c", i32 515, i32 2}
!31 = !{ptr @fdp_nci_setup._entry.8, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @fdp_nci_setup._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @nci_core_get_config_otp_ram_version, !34, !"nci_core_get_config_otp_ram_version", i1 false, i1 false}
!34 = !{!"../drivers/nfc/fdp/fdp.c", i32 68, i32 17}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/nfc/fdp/fdp.c", i32 266, i32 41}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/nfc/fdp/fdp.c", i32 268, i32 3}
!39 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @fdp_nci_request_firmware._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @fdp_nci_request_firmware._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/nfc/fdp/fdp.c", i32 279, i32 2}
!44 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @fdp_nci_request_firmware.__UNIQUE_ID_ddebug318, !43, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/nfc/fdp/fdp.c", i32 283, i32 41}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/nfc/fdp/fdp.c", i32 285, i32 3}
!50 = !{ptr @fdp_nci_request_firmware._entry.17, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @fdp_nci_request_firmware._entry_ptr.19, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/nfc/fdp/fdp.c", i32 296, i32 2}
!54 = !{ptr @fdp_nci_request_firmware.__UNIQUE_ID_ddebug319, !53, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/nfc/fdp/fdp.c", i32 359, i32 3}
!57 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @fdp_nci_patch_otp._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @fdp_nci_patch_otp._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @fdp_nci_patch_otp._entry.23, !61, !"_entry", i1 false, i1 false}
!61 = !{!"../drivers/nfc/fdp/fdp.c", i32 369, i32 3}
!62 = !{ptr @fdp_nci_patch_otp._entry_ptr.24, !61, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/nfc/fdp/fdp.c", i32 165, i32 2}
!65 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @fdp_nci_set_data_pkt_counter.__UNIQUE_ID_ddebug315, !64, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/nfc/fdp/fdp.c", i32 425, i32 3}
!69 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @fdp_nci_patch_ram._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @fdp_nci_patch_ram._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @fdp_nci_patch_ram._entry.29, !73, !"_entry", i1 false, i1 false}
!73 = !{!"../drivers/nfc/fdp/fdp.c", i32 435, i32 3}
!74 = !{ptr @fdp_nci_patch_ram._entry_ptr.30, !73, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/nfc/fdp/fdp.c", i32 532, i32 4}
!77 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @fdp_nci_post_setup._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @fdp_nci_post_setup._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/nfc/fdp/fdp.c", i32 541, i32 3}
!82 = !{ptr @fdp_nci_post_setup._entry.33, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @fdp_nci_post_setup._entry_ptr.35, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @fdp_prop_ops, !85, !"fdp_prop_ops", i1 false, i1 false}
!85 = !{!"../drivers/nfc/fdp/fdp.c", i32 666, i32 36}
!86 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/nfc/fdp/fdp.c", i32 589, i32 2}
!88 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @fdp_nci_prop_patch_rsp_packet.__UNIQUE_ID_ddebug320, !87, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!90 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/nfc/fdp/fdp.c", i32 602, i32 2}
!92 = !{ptr @fdp_nci_prop_set_production_data_rsp_packet.__UNIQUE_ID_ddebug321, !91, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!93 = !{ptr @fdp_core_ops, !94, !"fdp_core_ops", i1 false, i1 false}
!94 = !{!"../drivers/nfc/fdp/fdp.c", i32 655, i32 36}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/nfc/fdp/fdp.c", i32 645, i32 2}
!97 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @fdp_nci_core_get_config_rsp_packet.__UNIQUE_ID_ddebug322, !96, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/nfc/fdp/fdp.c", i32 646, i32 2}
!101 = !{ptr @fdp_nci_core_get_config_rsp_packet.__UNIQUE_ID_ddebug323, !100, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/nfc/fdp/fdp.c", i32 647, i32 2}
!104 = !{ptr @fdp_nci_core_get_config_rsp_packet.__UNIQUE_ID_ddebug324, !103, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!105 = !{ptr @fdp_nci_core_get_config_rsp_packet.__UNIQUE_ID_ddebug325, !106, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!106 = !{!"../drivers/nfc/fdp/fdp.c", i32 648, i32 2}
!107 = !{i32 1, !"wchar_size", i32 2}
!108 = !{i32 1, !"min_enum_size", i32 4}
!109 = !{i32 8, !"branch-target-enforcement", i32 0}
!110 = !{i32 8, !"sign-return-address", i32 0}
!111 = !{i32 8, !"sign-return-address-all", i32 0}
!112 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!113 = !{i32 7, !"uwtable", i32 1}
!114 = !{i32 7, !"frame-pointer", i32 2}
!115 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!116 = !{i64 2148444586}
!117 = !{i64 2148359295, i64 2148359327, i64 2148359356, i64 2148359390, i64 2148359421, i64 2148359444}
!118 = !{i64 2148444815}
!119 = !{i64 2148969487, i64 2148969492, i64 2148969505, i64 2148969549, i64 2148969583, i64 2148969604}

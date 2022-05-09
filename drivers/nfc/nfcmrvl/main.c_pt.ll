; ModuleID = '/llk/IR_all_yes/drivers/nfc/nfcmrvl/main.c_pt.bc'
source_filename = "../drivers/nfc/nfcmrvl/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nfcmrvl_nci_register_dev\22, \22a\22\09"
module asm "\09.weak\09__crc_nfcmrvl_nci_register_dev\09\09\09\09"
module asm "\09.long\09__crc_nfcmrvl_nci_register_dev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfcmrvl_nci_register_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22nfcmrvl_nci_register_dev\22\09\09\09\09\09"
module asm "__kstrtabns_nfcmrvl_nci_register_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nfcmrvl_nci_unregister_dev\22, \22a\22\09"
module asm "\09.weak\09__crc_nfcmrvl_nci_unregister_dev\09\09\09\09"
module asm "\09.long\09__crc_nfcmrvl_nci_unregister_dev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfcmrvl_nci_unregister_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22nfcmrvl_nci_unregister_dev\22\09\09\09\09\09"
module asm "__kstrtabns_nfcmrvl_nci_unregister_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nfcmrvl_nci_recv_frame\22, \22a\22\09"
module asm "\09.weak\09__crc_nfcmrvl_nci_recv_frame\09\09\09\09"
module asm "\09.long\09__crc_nfcmrvl_nci_recv_frame\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfcmrvl_nci_recv_frame:\09\09\09\09\09"
module asm "\09.asciz \09\22nfcmrvl_nci_recv_frame\22\09\09\09\09\09"
module asm "__kstrtabns_nfcmrvl_nci_recv_frame:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nfcmrvl_parse_dt\22, \22a\22\09"
module asm "\09.weak\09__crc_nfcmrvl_parse_dt\09\09\09\09"
module asm "\09.long\09__crc_nfcmrvl_parse_dt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfcmrvl_parse_dt:\09\09\09\09\09"
module asm "\09.asciz \09\22nfcmrvl_parse_dt\22\09\09\09\09\09"
module asm "__kstrtabns_nfcmrvl_parse_dt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nfcmrvl_private = type { i32, %struct.nfcmrvl_platform_data, ptr, %struct.nfcmrvl_fw_dnld, i8, ptr, ptr, i32, ptr }
%struct.nfcmrvl_platform_data = type { i32, i32, i32, i32, i32, i32 }
%struct.nfcmrvl_fw_dnld = type { [33 x i8], ptr, ptr, ptr, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.timer_list }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff_head = type { %union.anon.93, i32, %struct.spinlock }
%union.anon.93 = type { %struct.anon.94 }
%struct.anon.94 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.nci_dev = type { ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, %struct.atomic_t, i8, %struct.list_head, ptr, %struct.timer_list, %struct.timer_list, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.mutex, %struct.completion, i32, i32, ptr, i32, i32, [10 x %struct.nfc_target], i32, i8, i32, i8, [4 x i8], i8, i16, i8, i16, i8, i32, %struct.dest_spec_params, i8, ptr, [48 x i8], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nfc_target = type { i32, i32, i16, i8, i8, [10 x i8], i8, [8 x i8], i8, [12 x i8], i8, [18 x i8], i8, i8, i8, i8, [8 x i8] }
%struct.dest_spec_params = type { i8, i8 }
%struct.nfc_dev = type { i32, i32, ptr, i32, i32, %struct.device, i8, i8, i8, i8, ptr, i8, %struct.nfc_genl_data, i32, %struct.list_head, i32, i32, %struct.timer_list, %struct.work_struct, i8, ptr, ptr, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.nfc_genl_data = type { i32, %struct.mutex }
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
%struct.nfcmrvl_if_ops = type { ptr, ptr, ptr, ptr }

@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nfcmrvl_reset_n\00", [16 x i8] zeroinitializer }, align 32
@nfcmrvl_nci_register_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 121, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"NFC: failed to request reset_n io\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nfcmrvl_nci_register_dev\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/nfc/nfcmrvl/main.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nfcmrvl_nci_register_dev._entry_ptr = internal global ptr @nfcmrvl_nci_register_dev._entry, section ".printk_index", align 4
@nfcmrvl_nci_ops = internal constant { %struct.nci_ops, [52 x i8] } { %struct.nci_ops { ptr null, ptr @nfcmrvl_nci_open, ptr @nfcmrvl_nci_close, ptr @nfcmrvl_nci_send, ptr @nfcmrvl_nci_setup, ptr null, ptr @nfcmrvl_nci_fw_download, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, i32 0 }, [52 x i8] zeroinitializer }, align 32
@nfcmrvl_nci_register_dev._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 145, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"NFC: nci_allocate_device failed\0A\00", [63 x i8] zeroinitializer }, align 32
@nfcmrvl_nci_register_dev._entry_ptr.8 = internal global ptr @nfcmrvl_nci_register_dev._entry.6, section ".printk_index", align 4
@nfcmrvl_nci_register_dev._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 152, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"NFC: failed to initialize FW download %d\0A\00", [54 x i8] zeroinitializer }, align 32
@nfcmrvl_nci_register_dev._entry_ptr.11 = internal global ptr @nfcmrvl_nci_register_dev._entry.9, section ".printk_index", align 4
@nfcmrvl_nci_register_dev._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 160, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"NFC: nci_register_device failed %d\0A\00", [60 x i8] zeroinitializer }, align 32
@nfcmrvl_nci_register_dev._entry_ptr.14 = internal global ptr @nfcmrvl_nci_register_dev._entry.12, section ".printk_index", align 4
@nfcmrvl_nci_register_dev._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 167, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"NFC: registered with nci successfully\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nfcmrvl_nci_register_dev._entry_ptr.18 = internal global ptr @nfcmrvl_nci_register_dev._entry.15, section ".printk_index", align 4
@__kstrtab_nfcmrvl_nci_register_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfcmrvl_nci_register_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_nfcmrvl_nci_register_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfcmrvl_nci_register_dev to i32), ptr @__kstrtab_nfcmrvl_nci_register_dev, ptr @__kstrtabns_nfcmrvl_nci_register_dev }, section "___ksymtab_gpl+nfcmrvl_nci_register_dev", align 4
@__kstrtab_nfcmrvl_nci_unregister_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfcmrvl_nci_unregister_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_nfcmrvl_nci_unregister_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfcmrvl_nci_unregister_dev to i32), ptr @__kstrtab_nfcmrvl_nci_unregister_dev, ptr @__kstrtabns_nfcmrvl_nci_unregister_dev }, section "___ksymtab_gpl+nfcmrvl_nci_unregister_dev", align 4
@__kstrtab_nfcmrvl_nci_recv_frame = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfcmrvl_nci_recv_frame = external dso_local constant [0 x i8], align 1
@__ksymtab_nfcmrvl_nci_recv_frame = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfcmrvl_nci_recv_frame to i32), ptr @__kstrtab_nfcmrvl_nci_recv_frame, ptr @__kstrtabns_nfcmrvl_nci_recv_frame }, section "___ksymtab_gpl+nfcmrvl_nci_recv_frame", align 4
@nfcmrvl_chip_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 237, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"NFC: reset the chip\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfcmrvl_chip_reset\00", [45 x i8] zeroinitializer }, align 32
@nfcmrvl_chip_reset._entry_ptr = internal global ptr @nfcmrvl_chip_reset._entry, section ".printk_index", align 4
@nfcmrvl_chip_reset._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 242, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"NFC: no reset available on this interface\0A\00", [53 x i8] zeroinitializer }, align 32
@nfcmrvl_chip_reset._entry_ptr.23 = internal global ptr @nfcmrvl_chip_reset._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"reset-n-io\00", [21 x i8] zeroinitializer }, align 32
@nfcmrvl_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016no reset-n-io config\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nfcmrvl_parse_dt\00", [47 x i8] zeroinitializer }, align 32
@nfcmrvl_parse_dt._entry_ptr = internal global ptr @nfcmrvl_parse_dt._entry, section ".printk_index", align 4
@nfcmrvl_parse_dt._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.3, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013invalid reset-n-io GPIO\0A\00", [37 x i8] zeroinitializer }, align 32
@nfcmrvl_parse_dt._entry_ptr.29 = internal global ptr @nfcmrvl_parse_dt._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hci-muxed\00", [22 x i8] zeroinitializer }, align 32
@__kstrtab_nfcmrvl_parse_dt = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfcmrvl_parse_dt = external dso_local constant [0 x i8], align 1
@__ksymtab_nfcmrvl_parse_dt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfcmrvl_parse_dt to i32), ptr @__kstrtab_nfcmrvl_parse_dt, ptr @__kstrtabns_nfcmrvl_parse_dt }, section "___ksymtab_gpl+nfcmrvl_parse_dt", align 4
@__UNIQUE_ID_author275 = internal constant [42 x i8] c"nfcmrvl.author=Marvell International Ltd.\00", section ".modinfo", align 1
@__UNIQUE_ID_description276 = internal constant [39 x i8] c"nfcmrvl.description=Marvell NFC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file277 = internal constant [41 x i8] c"nfcmrvl.file=drivers/nfc/nfcmrvl/nfcmrvl\00", section ".modinfo", align 1
@__UNIQUE_ID_license278 = internal constant [23 x i8] c"nfcmrvl.license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nfcmrvl_nci_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 52, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"NFC: send entry, len %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nfcmrvl_nci_send\00", [47 x i8] zeroinitializer }, align 32
@nfcmrvl_nci_send._entry_ptr = internal global ptr @nfcmrvl_nci_send._entry, section ".printk_index", align 4
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 118, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 121, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant [16 x i8] c"nfcmrvl_nci_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 84, i32 29 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 145, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 152, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 160, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 167, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 237, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 242, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 256, i32 39 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 258, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 260, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 265, i32 29 }
@___asan_gen_.120 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.127 = private constant [30 x i8] c"../drivers/nfc/nfcmrvl/main.c\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 52, i32 2 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author275, ptr @__UNIQUE_ID_description276, ptr @__UNIQUE_ID_file277, ptr @__UNIQUE_ID_license278, ptr @__ksymtab_nfcmrvl_nci_recv_frame, ptr @__ksymtab_nfcmrvl_nci_register_dev, ptr @__ksymtab_nfcmrvl_nci_unregister_dev, ptr @__ksymtab_nfcmrvl_parse_dt, ptr @nfcmrvl_chip_reset._entry, ptr @nfcmrvl_chip_reset._entry.21, ptr @nfcmrvl_chip_reset._entry_ptr, ptr @nfcmrvl_chip_reset._entry_ptr.23, ptr @nfcmrvl_nci_register_dev._entry, ptr @nfcmrvl_nci_register_dev._entry.12, ptr @nfcmrvl_nci_register_dev._entry.15, ptr @nfcmrvl_nci_register_dev._entry.6, ptr @nfcmrvl_nci_register_dev._entry.9, ptr @nfcmrvl_nci_register_dev._entry_ptr, ptr @nfcmrvl_nci_register_dev._entry_ptr.11, ptr @nfcmrvl_nci_register_dev._entry_ptr.14, ptr @nfcmrvl_nci_register_dev._entry_ptr.18, ptr @nfcmrvl_nci_register_dev._entry_ptr.8, ptr @nfcmrvl_nci_send._entry, ptr @nfcmrvl_nci_send._entry_ptr, ptr @nfcmrvl_parse_dt._entry, ptr @nfcmrvl_parse_dt._entry.27, ptr @nfcmrvl_parse_dt._entry_ptr, ptr @nfcmrvl_parse_dt._entry_ptr.29, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @nfcmrvl_nci_ops, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_nci_register_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_nci_ops to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_nci_register_dev._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_nci_register_dev._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_nci_register_dev._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_nci_register_dev._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_chip_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_chip_reset._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_parse_dt._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_nci_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfcmrvl_nci_register_dev(i32 noundef %phy, ptr noundef %drv_data, ptr noundef %ops, ptr noundef %dev, ptr nocapture noundef readonly %pdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 268) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %drv_data2 = getelementptr inbounds %struct.nfcmrvl_private, ptr %call7.i.i, i32 0, i32 5
  %1 = ptrtoint ptr %drv_data2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %drv_data, ptr %drv_data2, align 4
  %if_ops = getelementptr inbounds %struct.nfcmrvl_private, ptr %call7.i.i, i32 0, i32 8
  %2 = ptrtoint ptr %if_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ops, ptr %if_ops, align 8
  %dev3 = getelementptr inbounds %struct.nfcmrvl_private, ptr %call7.i.i, i32 0, i32 6
  %3 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %dev3, align 8
  %phy4 = getelementptr inbounds %struct.nfcmrvl_private, ptr %call7.i.i, i32 0, i32 7
  %4 = ptrtoint ptr %phy4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %phy, ptr %phy4, align 4
  %config = getelementptr inbounds %struct.nfcmrvl_private, ptr %call7.i.i, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %config, ptr %pdata, i32 24)
  %6 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %7)
  %8 = icmp ult i32 %7, 2048
  br i1 %8, label %if.then7, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then7:                                         ; preds = %if.end
  %call10 = tail call i32 @gpio_request_one(i32 noundef %7, i32 noundef 0, ptr noundef nonnull @.str) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.then11, label %if.then7.if.end15_crit_edge

if.then7.if.end15_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then11:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -22, ptr %config, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.then7.if.end15_crit_edge, %if.end.if.end15_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %phy)
  %cmp16 = icmp eq i32 %phy, 3
  %. = select i1 %cmp16, i32 4, i32 0
  %.97 = zext i1 %cmp16 to i32
  %hci_muxed = getelementptr inbounds %struct.nfcmrvl_private, ptr %call7.i.i, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %hci_muxed to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hci_muxed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool20.not = icmp eq i32 %11, 0
  %add = add nuw nsw i32 %., 4
  %headroom.1 = select i1 %tobool20.not, i32 %., i32 %add
  %call23 = tail call ptr @nci_allocate_device(ptr noundef nonnull @nfcmrvl_nci_ops, i32 noundef 254, i32 noundef %headroom.1, i32 noundef %.97) #5
  %ndev = getelementptr inbounds %struct.nfcmrvl_private, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %ndev to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call23, ptr %ndev, align 4
  %tobool25.not = icmp eq ptr %call23, null
  br i1 %tobool25.not, label %do.end29, label %if.end30

do.end29:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %error_free_gpio

if.end30:                                         ; preds = %if.end15
  %call31 = tail call i32 @nfcmrvl_fw_dnld_init(ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end37, label %do.end36

do.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call31) #9
  br label %error_free_dev

if.end37:                                         ; preds = %if.end30
  %13 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ndev, align 4
  %driver_data.i = getelementptr inbounds %struct.nci_dev, ptr %14, i32 0, i32 26
  %15 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  %16 = load ptr, ptr %ndev, align 4
  %call40 = tail call i32 @nci_register_device(ptr noundef %16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end46, label %do.end45

do.end45:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call40) #9
  tail call void @nfcmrvl_fw_dnld_deinit(ptr noundef nonnull %call7.i.i) #5
  br label %error_free_dev

if.end46:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @nfcmrvl_chip_halt(ptr noundef nonnull %call7.i.i)
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.16) #9
  br label %cleanup

error_free_dev:                                   ; preds = %do.end45, %do.end36
  %rc.0 = phi i32 [ %call31, %do.end36 ], [ %call40, %do.end45 ]
  %17 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ndev, align 4
  tail call void @nci_free_device(ptr noundef %18) #5
  br label %error_free_gpio

error_free_gpio:                                  ; preds = %error_free_dev, %do.end29
  %rc.1 = phi i32 [ %rc.0, %error_free_dev ], [ -12, %do.end29 ]
  %19 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %20)
  %21 = icmp ult i32 %20, 2048
  br i1 %21, label %if.then54, label %error_free_gpio.if.end57_crit_edge

error_free_gpio.if.end57_crit_edge:               ; preds = %error_free_gpio
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

if.then54:                                        ; preds = %error_free_gpio
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpio_free(i32 noundef %20) #5
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %error_free_gpio.if.end57_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  %22 = inttoptr i32 %rc.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.end46, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %22, %if.end57 ], [ %call7.i.i, %if.end46 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpio_request_one(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nci_allocate_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfcmrvl_fw_dnld_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfcmrvl_chip_halt(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.nfcmrvl_private, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %1)
  %2 = icmp ult i32 %1, 2048
  br i1 %2, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %1) #5
  tail call void @gpiod_set_raw_value(ptr noundef %call.i, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfcmrvl_fw_dnld_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nci_free_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpio_free(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfcmrvl_nci_unregister_dev(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev1 = getelementptr inbounds %struct.nfcmrvl_private, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %fw_download_in_progress = getelementptr inbounds %struct.nfc_dev, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %fw_download_in_progress to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fw_download_in_progress, align 1, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @nfcmrvl_fw_dnld_abort(ptr noundef %priv) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @nfcmrvl_fw_dnld_deinit(ptr noundef %priv) #5
  %config = getelementptr inbounds %struct.nfcmrvl_private, ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %7)
  %8 = icmp ult i32 %7, 2048
  br i1 %8, label %if.then3, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpio_free(i32 noundef %7) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  tail call void @nci_unregister_device(ptr noundef %1) #5
  tail call void @nci_free_device(ptr noundef %1) #5
  tail call void @kfree(ptr noundef %priv) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfcmrvl_fw_dnld_abort(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nci_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfcmrvl_nci_recv_frame(ptr noundef %priv, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hci_muxed = getelementptr inbounds %struct.nfcmrvl_private, ptr %priv, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %hci_muxed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hci_muxed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %5)
  %cmp = icmp eq i8 %5, 4
  br i1 %cmp, label %land.lhs.true, label %if.then.if.else_crit_edge

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %if.then
  %arrayidx3 = getelementptr i8, ptr %3, i32 1
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp5 = icmp eq i8 %7, -1
  br i1 %cmp5, label %if.then7, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 4) #5
  br label %if.end8

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then.if.else_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %return

if.end8:                                          ; preds = %if.then7, %entry.if.end8_crit_edge
  %ndev = getelementptr inbounds %struct.nfcmrvl_private, ptr %priv, i32 0, i32 2
  %8 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ndev, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %fw_download_in_progress = getelementptr inbounds %struct.nfc_dev, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %fw_download_in_progress to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %fw_download_in_progress, align 1, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool9.not = icmp eq i8 %13, 0
  br i1 %tobool9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @nfcmrvl_fw_dnld_recv_frame(ptr noundef %priv, ptr noundef %skb) #5
  br label %return

if.end11:                                         ; preds = %if.end8
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %priv, align 4
  %16 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool13.not = icmp eq i32 %16, 0
  br i1 %tobool13.not, label %if.else17, label %if.then14

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %call16 = tail call i32 @nci_recv_frame(ptr noundef %9, ptr noundef %skb) #5
  br label %return

if.else17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %return

return:                                           ; preds = %if.else17, %if.then14, %if.then10, %if.else
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfcmrvl_fw_dnld_recv_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_recv_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfcmrvl_chip_reset(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %priv) #5
  %config = getelementptr inbounds %struct.nfcmrvl_private, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %1)
  %2 = icmp ult i32 %1, 2048
  %dev = getelementptr inbounds %struct.nfcmrvl_private, ptr %priv, i32 0, i32 6
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  br i1 %2, label %do.end, label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.19) #9
  %5 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %config, align 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %6) #5
  tail call void @gpiod_set_raw_value(ptr noundef %call.i, i32 noundef 0) #5
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #5
  %7 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %config, align 4
  %call.i13 = tail call ptr @gpio_to_desc(i32 noundef %8) #5
  tail call void @gpiod_set_raw_value(ptr noundef %call.i13, i32 noundef 1) #5
  br label %if.end

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.22) #9
  br label %if.end

if.end:                                           ; preds = %do.end6, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfcmrvl_parse_dt(ptr noundef %node, ptr nocapture noundef writeonly %pdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @of_get_named_gpio_flags(ptr noundef %node, ptr noundef nonnull @.str.24, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #9
  br label %if.end9

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call.i)
  %0 = icmp ult i32 %call.i, 2048
  br i1 %0, label %if.else.if.end9_crit_edge, label %do.end6

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

do.end6:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #9
  br label %cleanup

if.end9:                                          ; preds = %if.else.if.end9_crit_edge, %do.end
  %1 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call.i, ptr %pdata, align 4
  %call11 = tail call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.30, ptr noundef null) #5
  %tobool.not = icmp eq ptr %call11, null
  %hci_muxed14 = getelementptr inbounds %struct.nfcmrvl_platform_data, ptr %pdata, i32 0, i32 1
  br i1 %tobool.not, label %if.else13, label %if.then12

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %hci_muxed14 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %hci_muxed14, align 4
  br label %cleanup

if.else13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %hci_muxed14 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %hci_muxed14, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else13, %if.then12, %do.end6
  %retval.0 = phi i32 [ %call.i, %do.end6 ], [ 0, %if.else13 ], [ 0, %if.then12 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfcmrvl_nci_open(ptr nocapture noundef readonly %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 26
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %1) #5
  %if_ops = getelementptr inbounds %struct.nfcmrvl_private, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %if_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %if_ops, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call3 = tail call i32 %5(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call3, %if.then5 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfcmrvl_nci_close(ptr nocapture noundef readonly %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 26
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %if_ops = getelementptr inbounds %struct.nfcmrvl_private, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %if_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %if_ops, align 4
  %nci_close = getelementptr inbounds %struct.nfcmrvl_if_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %nci_close to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nci_close, align 4
  %call2 = tail call i32 %5(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfcmrvl_nci_send(ptr noundef %ndev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 26
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev = getelementptr inbounds %struct.nfcmrvl_private, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.31, i32 noundef %5) #9
  %6 = getelementptr inbounds %struct.anon.74, ptr %skb, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ndev, ptr %6, align 8
  %hci_muxed = getelementptr inbounds %struct.nfcmrvl_private, ptr %1, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %hci_muxed to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hci_muxed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %conv = trunc i32 %11 to i8
  %call3 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 4) #5
  %12 = ptrtoint ptr %call3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %call3, align 1
  %arrayidx4 = getelementptr i8, ptr %call3, i32 1
  %13 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -127, ptr %arrayidx4, align 1
  %arrayidx5 = getelementptr i8, ptr %call3, i32 2
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -2, ptr %arrayidx5, align 1
  %arrayidx6 = getelementptr i8, ptr %call3, i32 3
  %15 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %arrayidx6, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %if_ops = getelementptr inbounds %struct.nfcmrvl_private, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %if_ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %if_ops, align 4
  %nci_send = getelementptr inbounds %struct.nfcmrvl_if_ops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %nci_send to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nci_send, align 4
  %call7 = tail call i32 %19(ptr noundef %1, ptr noundef %skb) #5
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfcmrvl_nci_setup(ptr noundef %ndev) #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %val, align 1
  %call = call i32 @nci_set_config(ptr noundef %ndev, i8 noundef zeroext 17, i32 noundef 1, ptr noundef nonnull %val) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfcmrvl_nci_fw_download(ptr noundef %ndev, ptr noundef %firmware_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nfcmrvl_fw_dnld_start(ptr noundef %ndev, ptr noundef %firmware_name) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_set_config(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfcmrvl_fw_dnld_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !27, !29, !31, !33, !35, !36, !37, !38, !40, !41, !42, !44, !46, !47, !48, !49, !51, !52, !53, !55, !57, !59, !61, !63, !64, !66, !68, !69, !70}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/nfc/nfcmrvl/main.c", i32 118, i32 11}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/nfc/nfcmrvl/main.c", i32 121, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @nfcmrvl_nci_register_dev._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @nfcmrvl_nci_register_dev._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/nfc/nfcmrvl/main.c", i32 145, i32 3}
!12 = !{ptr @nfcmrvl_nci_register_dev._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @nfcmrvl_nci_register_dev._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/nfc/nfcmrvl/main.c", i32 152, i32 3}
!16 = !{ptr @nfcmrvl_nci_register_dev._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @nfcmrvl_nci_register_dev._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/nfc/nfcmrvl/main.c", i32 160, i32 3}
!20 = !{ptr @nfcmrvl_nci_register_dev._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @nfcmrvl_nci_register_dev._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/nfc/nfcmrvl/main.c", i32 167, i32 2}
!24 = !{ptr @.str.17, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @nfcmrvl_nci_register_dev._entry.15, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @nfcmrvl_nci_register_dev._entry_ptr.18, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @__ksymtab_nfcmrvl_nci_register_dev, !28, !"__ksymtab_nfcmrvl_nci_register_dev", i1 false, i1 false}
!28 = !{!"../drivers/nfc/nfcmrvl/main.c", i32 180, i32 1}
!29 = !{ptr @__ksymtab_nfcmrvl_nci_unregister_dev, !30, !"__ksymtab_nfcmrvl_nci_unregister_dev", i1 false, i1 false}
!30 = !{!"../drivers/nfc/nfcmrvl/main.c", i32 198, i32 1}
!31 = !{ptr @__ksymtab_nfcmrvl_nci_recv_frame, !32, !"__ksymtab_nfcmrvl_nci_recv_frame", i1 false, i1 false}
!32 = !{!"../drivers/nfc/nfcmrvl/main.c", i32 229, i32 1}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/nfc/nfcmrvl/main.c", i32 237, i32 3}
!35 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @nfcmrvl_chip_reset._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @nfcmrvl_chip_reset._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/nfc/nfcmrvl/main.c", i32 242, i32 3}
!40 = !{ptr @nfcmrvl_chip_reset._entry.21, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @nfcmrvl_chip_reset._entry_ptr.23, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/nfc/nfcmrvl/main.c", i32 256, i32 39}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/nfc/nfcmrvl/main.c", i32 258, i32 3}
!46 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @nfcmrvl_parse_dt._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @nfcmrvl_parse_dt._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/nfc/nfcmrvl/main.c", i32 260, i32 3}
!51 = !{ptr @nfcmrvl_parse_dt._entry.27, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @nfcmrvl_parse_dt._entry_ptr.29, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/nfc/nfcmrvl/main.c", i32 265, i32 29}
!55 = !{ptr @__ksymtab_nfcmrvl_parse_dt, !56, !"__ksymtab_nfcmrvl_parse_dt", i1 false, i1 false}
!56 = !{!"../drivers/nfc/nfcmrvl/main.c", i32 272, i32 1}
!57 = !{ptr @__UNIQUE_ID_author275, !58, !"__UNIQUE_ID_author275", i1 false, i1 false}
!58 = !{!"../drivers/nfc/nfcmrvl/main.c", i32 274, i32 1}
!59 = !{ptr @__UNIQUE_ID_description276, !60, !"__UNIQUE_ID_description276", i1 false, i1 false}
!60 = !{!"../drivers/nfc/nfcmrvl/main.c", i32 275, i32 1}
!61 = !{ptr @__UNIQUE_ID_file277, !62, !"__UNIQUE_ID_file277", i1 false, i1 false}
!62 = !{!"../drivers/nfc/nfcmrvl/main.c", i32 276, i32 1}
!63 = !{ptr @__UNIQUE_ID_license278, !62, !"__UNIQUE_ID_license278", i1 false, i1 false}
!64 = !{ptr @nfcmrvl_nci_ops, !65, !"nfcmrvl_nci_ops", i1 false, i1 false}
!65 = !{!"../drivers/nfc/nfcmrvl/main.c", i32 84, i32 29}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/nfc/nfcmrvl/main.c", i32 52, i32 2}
!68 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @nfcmrvl_nci_send._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @nfcmrvl_nci_send._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{i8 0, i8 2}

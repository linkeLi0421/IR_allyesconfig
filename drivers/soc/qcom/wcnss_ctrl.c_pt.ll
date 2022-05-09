; ModuleID = '/llk/IR_all_yes/drivers/soc/qcom/wcnss_ctrl.c_pt.bc'
source_filename = "../drivers/soc/qcom/wcnss_ctrl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+qcom_wcnss_open_channel\22, \22a\22\09"
module asm "\09.weak\09__crc_qcom_wcnss_open_channel\09\09\09\09"
module asm "\09.long\09__crc_qcom_wcnss_open_channel\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_wcnss_open_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_wcnss_open_channel\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_wcnss_open_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rpmsg_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rpmsg_channel_info = type { [32 x i8], i32, i32 }
%struct.wcnss_ctrl = type { ptr, ptr, %struct.completion, %struct.completion, i32, %struct.work_struct }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rpmsg_device = type { %struct.device, %struct.rpmsg_device_id, ptr, i32, i32, ptr, i8, i8, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.rpmsg_device_id = type { [32 x i8], i32 }
%struct.wcnss_version_resp = type { %struct.wcnss_msg_hdr, i8, i8, i8, i8 }
%struct.wcnss_msg_hdr = type { i32, i32 }
%struct.wcnss_download_nv_resp = type <{ %struct.wcnss_msg_hdr, i8 }>
%struct.firmware = type { i32, ptr, ptr }
%struct.wcnss_download_nv_req = type { %struct.wcnss_msg_hdr, i16, i16, i32, [0 x i8] }

@__kstrtab_qcom_wcnss_open_channel = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_wcnss_open_channel = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_wcnss_open_channel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_wcnss_open_channel to i32), ptr @__kstrtab_qcom_wcnss_open_channel, ptr @__kstrtabns_qcom_wcnss_open_channel }, section "___ksymtab+qcom_wcnss_open_channel", align 4
@__initcall__kmod_wcnss_ctrl__224_362_wcnss_ctrl_driver_init6 = internal global ptr @wcnss_ctrl_driver_init, section ".initcall6.init", align 4
@wcnss_ctrl_driver = internal global { %struct.rpmsg_driver, [36 x i8] } { %struct.rpmsg_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @wcnss_ctrl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr @wcnss_ctrl_probe, ptr @wcnss_ctrl_remove, ptr @wcnss_ctrl_smd_callback }, [36 x i8] zeroinitializer }, align 32
@__exitcall_wcnss_ctrl_driver_exit = internal global ptr @wcnss_ctrl_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description225 = internal constant [53 x i8] c"wcnss_ctrl.description=Qualcomm WCNSS control driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file226 = internal constant [44 x i8] c"wcnss_ctrl.file=drivers/soc/qcom/wcnss_ctrl\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [26 x i8] c"wcnss_ctrl.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom_wcnss_ctrl\00", [16 x i8] zeroinitializer }, align 32
@wcnss_ctrl_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,wcnss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@wcnss_ctrl_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&wcnss->probe_work)\00", [58 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@wcnss_async_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 309, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"expected cold boot completion\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wcnss_async_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/soc/qcom/wcnss_ctrl.c\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wcnss_async_probe._entry_ptr = internal global ptr @wcnss_async_probe._entry, section ".printk_index", align 4
@wcnss_request_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.5, i32 184, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"timeout waiting for version response\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wcnss_request_version\00", [42 x i8] zeroinitializer }, align 32
@wcnss_request_version._entry_ptr = internal global ptr @wcnss_request_version._entry, section ".printk_index", align 4
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"wlan/prima/WCNSS_qcom_wlan_nv.bin\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"firmware-name\00", [18 x i8] zeroinitializer }, align 32
@wcnss_download_nv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.5, i32 218, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to load nv file %s: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wcnss_download_nv\00", [46 x i8] zeroinitializer }, align 32
@wcnss_download_nv._entry_ptr = internal global ptr @wcnss_download_nv._entry, section ".printk_index", align 4
@wcnss_download_nv._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.5, i32 243, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to send smd packet\0A\00", [37 x i8] zeroinitializer }, align 32
@wcnss_download_nv._entry_ptr.16 = internal global ptr @wcnss_download_nv._entry.14, section ".printk_index", align 4
@wcnss_download_nv._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.5, i32 256, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"timeout waiting for nv upload ack\0A\00", [61 x i8] zeroinitializer }, align 32
@wcnss_download_nv._entry_ptr.19 = internal global ptr @wcnss_download_nv._entry.17, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@wcnss_ctrl_smd_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.5, i32 133, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"invalid size of version response\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wcnss_ctrl_smd_callback\00", [40 x i8] zeroinitializer }, align 32
@wcnss_ctrl_smd_callback._entry_ptr = internal global ptr @wcnss_ctrl_smd_callback._entry, section ".printk_index", align 4
@wcnss_ctrl_smd_callback._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.5, i32 140, ptr @.str.24, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"WCNSS Version %d.%d %d.%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@wcnss_ctrl_smd_callback._entry_ptr.25 = internal global ptr @wcnss_ctrl_smd_callback._entry.22, section ".printk_index", align 4
@wcnss_ctrl_smd_callback._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.21, ptr @.str.5, i32 147, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"invalid size of download response\0A\00", [61 x i8] zeroinitializer }, align 32
@wcnss_ctrl_smd_callback._entry_ptr.28 = internal global ptr @wcnss_ctrl_smd_callback._entry.26, section ".printk_index", align 4
@wcnss_ctrl_smd_callback.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.21, ptr @.str.5, ptr @.str.30, i8 0, i8 39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wcnss_ctrl\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cold boot complete\0A\00", [44 x i8] zeroinitializer }, align 32
@wcnss_ctrl_smd_callback._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.21, ptr @.str.5, i32 160, ptr @.str.24, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unknown message type %d\0A\00", [39 x i8] zeroinitializer }, align 32
@wcnss_ctrl_smd_callback._entry_ptr.33 = internal global ptr @wcnss_ctrl_smd_callback._entry.31, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 16777217, i64 16777219, i64 16777228]
@___asan_gen_.34 = private unnamed_addr constant [18 x i8] c"wcnss_ctrl_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 351, i32 28 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 356, i32 12 }
@___asan_gen_.40 = private unnamed_addr constant [20 x i8] c"wcnss_ctrl_of_match\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 345, i32 34 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 328, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 87, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 309, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 184, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 203, i32 22 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 212, i32 46 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 218, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 243, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 256, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 132, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 138, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 146, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 156, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.143 = private constant [33 x i8] c"../drivers/soc/qcom/wcnss_ctrl.c\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 160, i32 3 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_description225, ptr @__UNIQUE_ID_file226, ptr @__UNIQUE_ID_license227, ptr @__exitcall_wcnss_ctrl_driver_exit, ptr @__initcall__kmod_wcnss_ctrl__224_362_wcnss_ctrl_driver_init6, ptr @__ksymtab_qcom_wcnss_open_channel, ptr @wcnss_async_probe._entry, ptr @wcnss_async_probe._entry_ptr, ptr @wcnss_ctrl_driver_exit, ptr @wcnss_ctrl_smd_callback._entry, ptr @wcnss_ctrl_smd_callback._entry.22, ptr @wcnss_ctrl_smd_callback._entry.26, ptr @wcnss_ctrl_smd_callback._entry.31, ptr @wcnss_ctrl_smd_callback._entry_ptr, ptr @wcnss_ctrl_smd_callback._entry_ptr.25, ptr @wcnss_ctrl_smd_callback._entry_ptr.28, ptr @wcnss_ctrl_smd_callback._entry_ptr.33, ptr @wcnss_download_nv._entry, ptr @wcnss_download_nv._entry.14, ptr @wcnss_download_nv._entry.17, ptr @wcnss_download_nv._entry_ptr, ptr @wcnss_download_nv._entry_ptr.16, ptr @wcnss_download_nv._entry_ptr.19, ptr @wcnss_request_version._entry, ptr @wcnss_request_version._entry_ptr, ptr @wcnss_ctrl_driver, ptr @.str, ptr @wcnss_ctrl_of_match, ptr @wcnss_ctrl_probe.__key, ptr @.str.1, ptr @init_completion.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcnss_ctrl_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcnss_ctrl_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcnss_ctrl_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcnss_async_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcnss_request_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcnss_download_nv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcnss_download_nv._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcnss_download_nv._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcnss_ctrl_smd_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcnss_ctrl_smd_callback._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcnss_ctrl_smd_callback._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcnss_ctrl_smd_callback._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qcom_wcnss_open_channel(ptr nocapture noundef readonly %wcnss, ptr noundef %name, ptr noundef %cb, ptr noundef %priv) #0 align 64 {
entry:
  %chinfo = alloca %struct.rpmsg_channel_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %chinfo) #6
  %0 = call ptr @memset(ptr %chinfo, i32 255, i32 40)
  %call = call i32 @strscpy(ptr noundef nonnull %chinfo, ptr noundef %name, i32 noundef 32) #6
  %src = getelementptr inbounds %struct.rpmsg_channel_info, ptr %chinfo, i32 0, i32 1
  %1 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %src, align 4
  %dst = getelementptr inbounds %struct.rpmsg_channel_info, ptr %chinfo, i32 0, i32 2
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %dst, align 4
  %channel = getelementptr inbounds %struct.wcnss_ctrl, ptr %wcnss, i32 0, i32 1
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %channel, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %7 = ptrtoint ptr %chinfo to i32
  call void @__asan_load4_noabort(i32 %7)
  %.fca.0.load = load i32, ptr %chinfo, align 4
  %.fca.0.insert = insertvalue [10 x i32] poison, i32 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds [10 x i32], ptr %chinfo, i32 0, i32 1
  %8 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.1.insert = insertvalue [10 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %.fca.2.gep = getelementptr inbounds [10 x i32], ptr %chinfo, i32 0, i32 2
  %9 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %.fca.2.load = load i32, ptr %.fca.2.gep, align 4
  %.fca.2.insert = insertvalue [10 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %.fca.3.gep = getelementptr inbounds [10 x i32], ptr %chinfo, i32 0, i32 3
  %10 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %.fca.3.load = load i32, ptr %.fca.3.gep, align 4
  %.fca.3.insert = insertvalue [10 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  %.fca.4.gep = getelementptr inbounds [10 x i32], ptr %chinfo, i32 0, i32 4
  %11 = ptrtoint ptr %.fca.4.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %.fca.4.load = load i32, ptr %.fca.4.gep, align 4
  %.fca.4.insert = insertvalue [10 x i32] %.fca.3.insert, i32 %.fca.4.load, 4
  %.fca.5.gep = getelementptr inbounds [10 x i32], ptr %chinfo, i32 0, i32 5
  %12 = ptrtoint ptr %.fca.5.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %.fca.5.load = load i32, ptr %.fca.5.gep, align 4
  %.fca.5.insert = insertvalue [10 x i32] %.fca.4.insert, i32 %.fca.5.load, 5
  %.fca.6.gep = getelementptr inbounds [10 x i32], ptr %chinfo, i32 0, i32 6
  %13 = ptrtoint ptr %.fca.6.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %.fca.6.load = load i32, ptr %.fca.6.gep, align 4
  %.fca.6.insert = insertvalue [10 x i32] %.fca.5.insert, i32 %.fca.6.load, 6
  %.fca.7.gep = getelementptr inbounds [10 x i32], ptr %chinfo, i32 0, i32 7
  %14 = ptrtoint ptr %.fca.7.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %.fca.7.load = load i32, ptr %.fca.7.gep, align 4
  %.fca.7.insert = insertvalue [10 x i32] %.fca.6.insert, i32 %.fca.7.load, 7
  %.fca.8.insert = insertvalue [10 x i32] %.fca.7.insert, i32 -1, 8
  %.fca.9.insert = insertvalue [10 x i32] %.fca.8.insert, i32 -1, 9
  %call2 = call ptr @rpmsg_create_ept(ptr noundef %6, ptr noundef %cb, ptr noundef %priv, [10 x i32] %.fca.9.insert) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %chinfo) #6
  ret ptr %call2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpmsg_create_ept(ptr noundef, ptr noundef, ptr noundef, [10 x i32]) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wcnss_ctrl_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__register_rpmsg_driver(ptr noundef nonnull @wcnss_ctrl_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wcnss_ctrl_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @unregister_rpmsg_driver(ptr noundef nonnull @wcnss_ctrl_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_rpmsg_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_rpmsg_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcnss_ctrl_probe(ptr noundef %rpdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %rpdev, i32 noundef 168, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %rpdev, ptr %call.i, align 4
  %ept = getelementptr inbounds %struct.rpmsg_device, ptr %rpdev, i32 0, i32 5
  %1 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ept, align 8
  %channel = getelementptr inbounds %struct.wcnss_ctrl, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %channel, align 4
  %ack = getelementptr inbounds %struct.wcnss_ctrl, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %ack to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ack, align 4
  %wait.i = getelementptr inbounds %struct.wcnss_ctrl, ptr %call.i, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @init_completion.__key) #6
  %cbc = getelementptr inbounds %struct.wcnss_ctrl, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %cbc to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %cbc, align 4
  %wait.i25 = getelementptr inbounds %struct.wcnss_ctrl, ptr %call.i, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i25, ptr noundef nonnull @.str.2, ptr noundef nonnull @init_completion.__key) #6
  %probe_work = getelementptr inbounds %struct.wcnss_ctrl, ptr %call.i, i32 0, i32 5
  tail call void @__init_work(ptr noundef %probe_work, i32 noundef 0) #6
  %6 = ptrtoint ptr %probe_work to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %probe_work, align 4
  %lockdep_map = getelementptr inbounds %struct.wcnss_ctrl, ptr %call.i, i32 0, i32 5, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @wcnss_ctrl_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry6 = getelementptr inbounds %struct.wcnss_ctrl, ptr %call.i, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %entry6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry6, ptr %entry6, align 4
  %prev.i = getelementptr inbounds %struct.wcnss_ctrl, ptr %call.i, i32 0, i32 5, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry6, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.wcnss_ctrl, ptr %call.i, i32 0, i32 5, i32 2
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @wcnss_async_probe, ptr %func, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %rpdev, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %driver_data.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %11 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %probe_work) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wcnss_ctrl_remove(ptr noundef %rpdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %rpdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %probe_work = getelementptr inbounds %struct.wcnss_ctrl, ptr %1, i32 0, i32 5
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %probe_work) #6
  tail call void @of_platform_depopulate(ptr noundef %rpdev) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcnss_ctrl_smd_callback(ptr nocapture noundef readonly %rpdev, ptr nocapture noundef readonly %data, i32 noundef %count, ptr nocapture noundef readnone %priv, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %rpdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %data, align 1
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end33 [
    i32 16777217, label %sw.bb
    i32 16777219, label %sw.bb10
    i32 16777228, label %do.body22
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %count)
  %cmp.not = icmp eq i32 %count, 12
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.20) #9
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %major = getelementptr inbounds %struct.wcnss_version_resp, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %major to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %major, align 1
  %conv = zext i8 %8 to i32
  %minor = getelementptr inbounds %struct.wcnss_version_resp, ptr %data, i32 0, i32 2
  %9 = ptrtoint ptr %minor to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %minor, align 1
  %conv6 = zext i8 %10 to i32
  %version7 = getelementptr inbounds %struct.wcnss_version_resp, ptr %data, i32 0, i32 3
  %11 = ptrtoint ptr %version7 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %version7, align 1
  %conv8 = zext i8 %12 to i32
  %revision = getelementptr inbounds %struct.wcnss_version_resp, ptr %data, i32 0, i32 4
  %13 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %revision, align 1
  %conv9 = zext i8 %14 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.23, i32 noundef %conv, i32 noundef %conv6, i32 noundef %conv8, i32 noundef %conv9) #9
  %ack = getelementptr inbounds %struct.wcnss_ctrl, ptr %1, i32 0, i32 2
  tail call void @complete(ptr noundef %ack) #6
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %count)
  %cmp11.not = icmp eq i32 %count, 9
  br i1 %cmp11.not, label %if.end18, label %do.end16

do.end16:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.27) #9
  br label %sw.epilog

if.end18:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  %status = getelementptr inbounds %struct.wcnss_download_nv_resp, ptr %data, i32 0, i32 1
  %17 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %status, align 1
  %conv19 = zext i8 %18 to i32
  %ack_status = getelementptr inbounds %struct.wcnss_ctrl, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %ack_status to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv19, ptr %ack_status, align 4
  %ack20 = getelementptr inbounds %struct.wcnss_ctrl, ptr %1, i32 0, i32 2
  tail call void @complete(ptr noundef %ack20) #6
  br label %sw.epilog

do.body22:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wcnss_ctrl_smd_callback.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wcnss_ctrl_smd_callback, %if.then26)) #6
          to label %do.end30 [label %if.then26], !srcloc !83

if.then26:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wcnss_ctrl_smd_callback.__UNIQUE_ID_ddebug223, ptr noundef %21, ptr noundef nonnull @.str.30) #6
  br label %do.end30

do.end30:                                         ; preds = %if.then26, %do.body22
  %cbc = getelementptr inbounds %struct.wcnss_ctrl, ptr %1, i32 0, i32 3
  tail call void @complete(ptr noundef %cbc) #6
  br label %sw.epilog

do.end33:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.32, i32 noundef %3) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end33, %do.end30, %if.end18, %do.end16, %if.end, %do.end
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wcnss_async_probe(ptr noundef %work) #0 align 64 {
entry:
  %fw.i = alloca ptr, align 4
  %nvbin.i = alloca ptr, align 4
  %msg.i = alloca %struct.wcnss_msg_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -124
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg.i) #6
  %0 = getelementptr inbounds %struct.wcnss_msg_hdr, ptr %msg.i, i32 0, i32 1
  %1 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 16777216, ptr %msg.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8, ptr %0, align 4
  %channel.i = getelementptr i8, ptr %work, i32 -120
  %3 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %channel.i, align 4
  %call.i = call i32 @rpmsg_send(ptr noundef %4, ptr noundef nonnull %msg.i, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wcnss_request_version.exit.thread_crit_edge, label %if.end.i

entry.wcnss_request_version.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %wcnss_request_version.exit.thread

if.end.i:                                         ; preds = %entry
  %ack.i = getelementptr i8, ptr %work, i32 -116
  %call1.i = call i32 @wait_for_completion_timeout(ptr noundef %ack.i, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.8) #9
  br label %wcnss_request_version.exit.thread

wcnss_request_version.exit.thread:                ; preds = %do.end.i, %entry.wcnss_request_version.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg.i) #6
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #6
  %7 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i, align 4, !annotation !84
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nvbin.i) #6
  %10 = ptrtoint ptr %nvbin.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.10, ptr %nvbin.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 3088) #10
  %tobool.not.i23 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i23, label %wcnss_download_nv.exit.thread, label %if.end.i25

wcnss_download_nv.exit.thread:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nvbin.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #6
  br label %cleanup

if.end.i25:                                       ; preds = %if.end
  %of_node.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 27
  %12 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node.i, align 8
  %call2.i = call i32 @of_property_read_string(ptr noundef %13, ptr noundef nonnull @.str.11, ptr noundef nonnull %nvbin.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp.i24 = icmp sgt i32 %call2.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call2.i)
  %cmp3.not.i = icmp eq i32 %call2.i, -22
  %or.cond.i = or i1 %cmp.i24, %cmp3.not.i
  br i1 %or.cond.i, label %if.end5.i, label %if.end.i25.wcnss_download_nv.exit.thread35_crit_edge

if.end.i25.wcnss_download_nv.exit.thread35_crit_edge: ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #8
  br label %wcnss_download_nv.exit.thread35

if.end5.i:                                        ; preds = %if.end.i25
  %14 = ptrtoint ptr %nvbin.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nvbin.i, align 4
  %call6.i = call i32 @request_firmware(ptr noundef nonnull %fw.i, ptr noundef %15, ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %do.end.i26, label %if.end9.i

do.end.i26:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %nvbin.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nvbin.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.12, ptr noundef %17, i32 noundef %call6.i) #9
  br label %wcnss_download_nv.exit.thread35

if.end9.i:                                        ; preds = %if.end5.i
  %18 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fw.i, align 4
  %data10.i = getelementptr inbounds %struct.firmware, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %data10.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data10.i, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %19, align 4
  %24 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 16777218, ptr %call7.i.i.i, align 8
  %len.i = getelementptr inbounds %struct.wcnss_msg_hdr, ptr %call7.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 3088, ptr %len.i, align 4
  %last.i = getelementptr inbounds %struct.wcnss_download_nv_req, ptr %call7.i.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %last.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %last.i, align 2
  %frag_size.i = getelementptr inbounds %struct.wcnss_download_nv_req, ptr %call7.i.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %frag_size.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 3072, ptr %frag_size.i, align 4
  %seq.i = getelementptr inbounds %struct.wcnss_download_nv_req, ptr %call7.i.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %seq.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %seq.i, align 8
  %fragment.i = getelementptr inbounds %struct.wcnss_download_nv_req, ptr %call7.i.i.i, i32 0, i32 4
  br label %do.body12.i

do.body12.i:                                      ; preds = %if.end29.i.do.body12.i_crit_edge, %if.end9.i
  %data.0.i = phi ptr [ %21, %if.end9.i ], [ %add.ptr.i, %if.end29.i.do.body12.i_crit_edge ]
  %left.0.i = phi i32 [ %23, %if.end9.i ], [ %sub.i, %if.end29.i.do.body12.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3073, i32 %left.0.i)
  %cmp13.i = icmp slt i32 %left.0.i, 3073
  br i1 %cmp13.i, label %if.then14.i, label %do.body12.i.if.end19.i_crit_edge

do.body12.i.if.end19.i_crit_edge:                 ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

if.then14.i:                                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %last.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 1, ptr %last.i, align 2
  %30 = ptrtoint ptr %frag_size.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %left.0.i, ptr %frag_size.i, align 4
  %add.i = add nsw i32 %left.0.i, 16
  %31 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add.i, ptr %len.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then14.i, %do.body12.i.if.end19.i_crit_edge
  %32 = ptrtoint ptr %frag_size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %frag_size.i, align 4
  %34 = call ptr @memcpy(ptr %fragment.i, ptr %data.0.i, i32 %33)
  %35 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %channel.i, align 4
  %37 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len.i, align 4
  %call23.i = call i32 @rpmsg_send(ptr noundef %36, ptr noundef nonnull %call7.i.i.i, i32 noundef %38) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp24.i = icmp slt i32 %call23.i, 0
  br i1 %cmp24.i, label %do.end28.i, label %if.end29.i

do.end28.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.15) #9
  br label %wcnss_download_nv.exit

if.end29.i:                                       ; preds = %if.end19.i
  %39 = ptrtoint ptr %seq.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %seq.i, align 8
  %inc.i = add i16 %40, 1
  store i16 %inc.i, ptr %seq.i, align 8
  %add.ptr.i = getelementptr i8, ptr %data.0.i, i32 3072
  %sub.i = add i32 %left.0.i, -3072
  %cmp32.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp32.i, label %if.end29.i.do.body12.i_crit_edge, label %do.end33.i

if.end29.i.do.body12.i_crit_edge:                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body12.i

do.end33.i:                                       ; preds = %if.end29.i
  %call34.i = call i32 @wait_for_completion_timeout(ptr noundef %ack.i, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %do.end39.i, label %if.else.i

do.end39.i:                                       ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.18) #9
  br label %wcnss_download_nv.exit

if.else.i:                                        ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  %ack_status.i = getelementptr i8, ptr %work, i32 -4
  %41 = ptrtoint ptr %ack_status.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ack_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %cmp40.i = icmp eq i32 %42, 2
  %frombool.i = zext i1 %cmp40.i to i8
  br label %wcnss_download_nv.exit

wcnss_download_nv.exit.thread35:                  ; preds = %do.end.i26, %if.end.i25.wcnss_download_nv.exit.thread35_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nvbin.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #6
  br label %cleanup

wcnss_download_nv.exit:                           ; preds = %if.else.i, %do.end39.i, %do.end28.i
  %expect_cbc.0 = phi i8 [ -1, %do.end28.i ], [ -1, %do.end39.i ], [ %frombool.i, %if.else.i ]
  %ret.0.i = phi i1 [ true, %do.end28.i ], [ true, %do.end39.i ], [ false, %if.else.i ]
  %43 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %44) #6
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nvbin.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #6
  br i1 %ret.0.i, label %wcnss_download_nv.exit.cleanup_crit_edge, label %if.end4

wcnss_download_nv.exit.cleanup_crit_edge:         ; preds = %wcnss_download_nv.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %wcnss_download_nv.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %expect_cbc.0)
  %tobool.not = icmp eq i8 %expect_cbc.0, 0
  br i1 %tobool.not, label %if.end4.if.end10_crit_edge, label %if.then5

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then5:                                         ; preds = %if.end4
  %cbc = getelementptr i8, ptr %work, i32 -60
  %call6 = call i32 @wait_for_completion_timeout(ptr noundef %cbc, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.end, label %if.then5.if.end10_crit_edge

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.3) #9
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.then5.if.end10_crit_edge, %if.end4.if.end10_crit_edge
  %47 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %48, i32 0, i32 27
  %49 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %of_node, align 8
  %call13 = call i32 @of_platform_populate(ptr noundef %50, ptr noundef null, ptr noundef null, ptr noundef %48) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %wcnss_download_nv.exit.cleanup_crit_edge, %wcnss_download_nv.exit.thread35, %wcnss_download_nv.exit.thread, %wcnss_request_version.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpmsg_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_platform_depopulate(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !35, !37, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__ksymtab_qcom_wcnss_open_channel, !1, !"__ksymtab_qcom_wcnss_open_channel", i1 false, i1 false}
!1 = !{!"../drivers/soc/qcom/wcnss_ctrl.c", i32 289, i32 1}
!2 = !{ptr @__initcall__kmod_wcnss_ctrl__224_362_wcnss_ctrl_driver_init6, !3, !"__initcall__kmod_wcnss_ctrl__224_362_wcnss_ctrl_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/soc/qcom/wcnss_ctrl.c", i32 362, i32 1}
!4 = !{ptr @__exitcall_wcnss_ctrl_driver_exit, !3, !"__exitcall_wcnss_ctrl_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description225, !6, !"__UNIQUE_ID_description225", i1 false, i1 false}
!6 = !{!"../drivers/soc/qcom/wcnss_ctrl.c", i32 364, i32 1}
!7 = !{ptr @__UNIQUE_ID_file226, !8, !"__UNIQUE_ID_file226", i1 false, i1 false}
!8 = !{!"../drivers/soc/qcom/wcnss_ctrl.c", i32 365, i32 1}
!9 = !{ptr @__UNIQUE_ID_license227, !8, !"__UNIQUE_ID_license227", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/soc/qcom/wcnss_ctrl.c", i32 356, i32 12}
!12 = !{ptr @wcnss_ctrl_driver, !13, !"wcnss_ctrl_driver", i1 false, i1 false}
!13 = !{!"../drivers/soc/qcom/wcnss_ctrl.c", i32 351, i32 28}
!14 = !{ptr @wcnss_ctrl_of_match, !15, !"wcnss_ctrl_of_match", i1 false, i1 false}
!15 = !{!"../drivers/soc/qcom/wcnss_ctrl.c", i32 345, i32 34}
!16 = !{ptr @wcnss_ctrl_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/soc/qcom/wcnss_ctrl.c", i32 328, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @init_completion.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../include/linux/completion.h", i32 87, i32 2}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/soc/qcom/wcnss_ctrl.c", i32 309, i32 4}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @wcnss_async_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @wcnss_async_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/soc/qcom/wcnss_ctrl.c", i32 184, i32 3}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @wcnss_request_version._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @wcnss_request_version._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/soc/qcom/wcnss_ctrl.c", i32 203, i32 22}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/soc/qcom/wcnss_ctrl.c", i32 212, i32 46}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/soc/qcom/wcnss_ctrl.c", i32 218, i32 3}
!41 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @wcnss_download_nv._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @wcnss_download_nv._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/soc/qcom/wcnss_ctrl.c", i32 243, i32 4}
!46 = !{ptr @wcnss_download_nv._entry.14, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @wcnss_download_nv._entry_ptr.16, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/soc/qcom/wcnss_ctrl.c", i32 256, i32 3}
!50 = !{ptr @wcnss_download_nv._entry.17, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @wcnss_download_nv._entry_ptr.19, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/soc/qcom/wcnss_ctrl.c", i32 132, i32 4}
!54 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @wcnss_ctrl_smd_callback._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @wcnss_ctrl_smd_callback._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/soc/qcom/wcnss_ctrl.c", i32 138, i32 3}
!59 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @wcnss_ctrl_smd_callback._entry.22, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @wcnss_ctrl_smd_callback._entry_ptr.25, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/soc/qcom/wcnss_ctrl.c", i32 146, i32 4}
!64 = !{ptr @wcnss_ctrl_smd_callback._entry.26, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @wcnss_ctrl_smd_callback._entry_ptr.28, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/soc/qcom/wcnss_ctrl.c", i32 156, i32 3}
!68 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @wcnss_ctrl_smd_callback.__UNIQUE_ID_ddebug223, !67, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/soc/qcom/wcnss_ctrl.c", i32 160, i32 3}
!72 = !{ptr @wcnss_ctrl_smd_callback._entry.31, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @wcnss_ctrl_smd_callback._entry_ptr.33, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{i64 2148187081, i64 2148187086, i64 2148187099, i64 2148187143, i64 2148187177, i64 2148187198}
!84 = !{!"auto-init"}

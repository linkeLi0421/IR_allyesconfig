; ModuleID = '/llk/IR_all_yes/sound/soc/qcom/qdsp6/q6adm.c_pt.bc'
source_filename = "../sound/soc/qcom/qdsp6/q6adm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+q6adm_open\22, \22a\22\09"
module asm "\09.weak\09__crc_q6adm_open\09\09\09\09"
module asm "\09.long\09__crc_q6adm_open\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_q6adm_open:\09\09\09\09\09"
module asm "\09.asciz \09\22q6adm_open\22\09\09\09\09\09"
module asm "__kstrtabns_q6adm_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+q6adm_get_copp_id\22, \22a\22\09"
module asm "\09.weak\09__crc_q6adm_get_copp_id\09\09\09\09"
module asm "\09.long\09__crc_q6adm_get_copp_id\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_q6adm_get_copp_id:\09\09\09\09\09"
module asm "\09.asciz \09\22q6adm_get_copp_id\22\09\09\09\09\09"
module asm "__kstrtabns_q6adm_get_copp_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+q6adm_matrix_map\22, \22a\22\09"
module asm "\09.weak\09__crc_q6adm_matrix_map\09\09\09\09"
module asm "\09.long\09__crc_q6adm_matrix_map\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_q6adm_matrix_map:\09\09\09\09\09"
module asm "\09.asciz \09\22q6adm_matrix_map\22\09\09\09\09\09"
module asm "__kstrtabns_q6adm_matrix_map:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+q6adm_close\22, \22a\22\09"
module asm "\09.weak\09__crc_q6adm_close\09\09\09\09"
module asm "\09.long\09__crc_q6adm_close\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_q6adm_close:\09\09\09\09\09"
module asm "\09.asciz \09\22q6adm_close\22\09\09\09\09\09"
module asm "__kstrtabns_q6adm_close:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.apr_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.q6adm = type { ptr, ptr, %struct.q6core_svc_api_info, [129 x i32], %struct.list_head, %struct.spinlock, %struct.aprv2_ibasic_rsp_result_t, %struct.mutex, %struct.wait_queue_head }
%struct.q6core_svc_api_info = type { i32, i32, i32 }
%struct.aprv2_ibasic_rsp_result_t = type { i32, i32 }
%struct.q6copp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.aprv2_ibasic_rsp_result_t, %struct.kref, %struct.wait_queue_head, %struct.list_head, ptr }
%struct.apr_hdr = type { i16, i16, i8, i8, i16, i8, i8, i16, i32, i32 }
%struct.route_payload = type { i32, i32, [8 x i32], [8 x i32] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.apr_pkt = type { %struct.apr_hdr, [0 x i8] }
%struct.apr_device = type { %struct.device, i16, i16, i32, [32 x i8], ptr, %struct.pkt_router_svc, %struct.list_head }
%struct.pkt_router_svc = type { ptr, ptr, ptr, %struct.spinlock, i32, ptr }
%struct.apr_resp_pkt = type { %struct.apr_hdr, ptr, i32 }
%struct.adm_cmd_rsp_device_open_v5 = type { i32, i16, i16 }

@q6adm_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 393, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid port_id %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"q6adm_open\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sound/soc/qcom/qdsp6/q6adm.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@q6adm_open._entry_ptr = internal global ptr @q6adm_open._entry, section ".printk_index", align 4
@q6adm_open._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 400, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Found Matching Copp 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@q6adm_open._entry_ptr.7 = internal global ptr @q6adm_open._entry.5, section ".printk_index", align 4
@__kstrtab_q6adm_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_q6adm_open = external dso_local constant [0 x i8], align 1
@__ksymtab_q6adm_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @q6adm_open to i32), ptr @__kstrtab_q6adm_open, ptr @__kstrtabns_q6adm_open }, section "___ksymtab_gpl+q6adm_open", align 4
@__kstrtab_q6adm_get_copp_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_q6adm_get_copp_id = external dso_local constant [0 x i8], align 1
@__ksymtab_q6adm_get_copp_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @q6adm_get_copp_id to i32), ptr @__kstrtab_q6adm_get_copp_id, ptr @__kstrtabns_q6adm_get_copp_id }, section "___ksymtab_gpl+q6adm_get_copp_id", align 4
@q6adm_matrix_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 500, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Wrong path set[%d]\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"q6adm_matrix_map\00", [47 x i8] zeroinitializer }, align 32
@q6adm_matrix_map._entry_ptr = internal global ptr @q6adm_matrix_map._entry, section ".printk_index", align 4
@q6adm_matrix_map._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.9, ptr @.str.2, i32 512, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@q6adm_matrix_map._entry_ptr.11 = internal global ptr @q6adm_matrix_map._entry.10, section ".printk_index", align 4
@q6adm_matrix_map._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.9, ptr @.str.2, i32 535, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"routing for stream %d failed ret %d\0A\00", [59 x i8] zeroinitializer }, align 32
@q6adm_matrix_map._entry_ptr.14 = internal global ptr @q6adm_matrix_map._entry.12, section ".printk_index", align 4
@q6adm_matrix_map._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.9, ptr @.str.2, i32 543, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"routing for stream %d failed\0A\00", [34 x i8] zeroinitializer }, align 32
@q6adm_matrix_map._entry_ptr.17 = internal global ptr @q6adm_matrix_map._entry.15, section ".printk_index", align 4
@q6adm_matrix_map._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.9, ptr @.str.2, i32 548, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DSP returned error[%d]\0A\00", [40 x i8] zeroinitializer }, align 32
@q6adm_matrix_map._entry_ptr.20 = internal global ptr @q6adm_matrix_map._entry.18, section ".printk_index", align 4
@__kstrtab_q6adm_matrix_map = external dso_local constant [0 x i8], align 1
@__kstrtabns_q6adm_matrix_map = external dso_local constant [0 x i8], align 1
@__ksymtab_q6adm_matrix_map = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @q6adm_matrix_map to i32), ptr @__kstrtab_q6adm_matrix_map, ptr @__kstrtabns_q6adm_matrix_map }, section "___ksymtab_gpl+q6adm_matrix_map", align 4
@q6adm_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 575, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to close copp %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"q6adm_close\00", [20 x i8] zeroinitializer }, align 32
@q6adm_close._entry_ptr = internal global ptr @q6adm_close._entry, section ".printk_index", align 4
@__kstrtab_q6adm_close = external dso_local constant [0 x i8], align 1
@__kstrtabns_q6adm_close = external dso_local constant [0 x i8], align 1
@__ksymtab_q6adm_close = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @q6adm_close to i32), ptr @__kstrtab_q6adm_close, ptr @__kstrtabns_q6adm_close }, section "___ksymtab_gpl+q6adm_close", align 4
@__initcall__kmod_q6adm__183_624_qcom_q6adm_driver_init6 = internal global ptr @qcom_q6adm_driver_init, section ".initcall6.init", align 4
@qcom_q6adm_driver = internal global { %struct.apr_driver, [32 x i8] } { %struct.apr_driver { ptr @q6adm_probe, ptr null, ptr @q6adm_callback, ptr null, %struct.device_driver { ptr @.str.31, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @q6adm_device_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null }, [32 x i8] zeroinitializer }, align 32
@__exitcall_qcom_q6adm_driver_exit = internal global ptr @qcom_q6adm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description184 = internal constant [42 x i8] c"q6adm.description=Q6 Audio Device Manager\00", section ".modinfo", align 1
@__UNIQUE_ID_file185 = internal constant [38 x i8] c"q6adm.file=sound/soc/qcom/qdsp6/q6adm\00", section ".modinfo", align 1
@__UNIQUE_ID_license186 = internal constant [21 x i8] c"q6adm.license=GPL v2\00", section ".modinfo", align 1
@q6adm_alloc_copp.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&c->wait\00", [23 x i8] zeroinitializer }, align 32
@q6adm_apr_send_copp_pkt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 249, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to send APR packet\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"q6adm_apr_send_copp_pkt\00", [40 x i8] zeroinitializer }, align 32
@q6adm_apr_send_copp_pkt._entry_ptr = internal global ptr @q6adm_apr_send_copp_pkt._entry, section ".printk_index", align 4
@q6adm_apr_send_copp_pkt._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 266, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ADM copp cmd timedout\0A\00", [41 x i8] zeroinitializer }, align 32
@q6adm_apr_send_copp_pkt._entry_ptr.28 = internal global ptr @q6adm_apr_send_copp_pkt._entry.26, section ".printk_index", align 4
@q6adm_apr_send_copp_pkt._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.25, ptr @.str.2, i32 270, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@q6adm_apr_send_copp_pkt._entry_ptr.30 = internal global ptr @q6adm_apr_send_copp_pkt._entry.29, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qcom-q6adm\00", [21 x i8] zeroinitializer }, align 32
@q6adm_device_id = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,q6adm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@q6adm_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&adm->lock\00", [21 x i8] zeroinitializer }, align 32
@q6adm_probe.__key.33 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&adm->matrix_map_wait\00", [42 x i8] zeroinitializer }, align 32
@q6adm_probe.__key.35 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&adm->copps_list_lock\00", [42 x i8] zeroinitializer }, align 32
@q6adm_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 140, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid port idx %d token %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"q6adm_callback\00", [17 x i8] zeroinitializer }, align 32
@q6adm_callback._entry_ptr = internal global ptr @q6adm_callback._entry, section ".printk_index", align 4
@q6adm_callback._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 145, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid copp idx %d token %d\0A\00", [34 x i8] zeroinitializer }, align 32
@q6adm_callback._entry_ptr.41 = internal global ptr @q6adm_callback._entry.39, section ".printk_index", align 4
@q6adm_callback._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.2, i32 153, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cmd = 0x%x return error = 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@q6adm_callback._entry_ptr.44 = internal global ptr @q6adm_callback._entry.42, section ".printk_index", align 4
@q6adm_callback._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.38, ptr @.str.2, i32 173, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Unknown Cmd: 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@q6adm_callback._entry_ptr.47 = internal global ptr @q6adm_callback._entry.45, section ".printk_index", align 4
@q6adm_callback._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.2, i32 191, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid coppid rxed %d\0A\00", [40 x i8] zeroinitializer }, align 32
@q6adm_callback._entry_ptr.50 = internal global ptr @q6adm_callback._entry.48, section ".printk_index", align 4
@q6adm_callback._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.38, ptr @.str.2, i32 205, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Unknown cmd:0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@q6adm_callback._entry_ptr.53 = internal global ptr @q6adm_callback._entry.51, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 66345, i64 69864]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 32, i64 66341, i64 66342, i64 66343]
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 393, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 400, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 500, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 511, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 534, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 542, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 547, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 575, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [18 x i8] c"qcom_q6adm_driver\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 615, i32 26 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 232, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 249, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 266, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 269, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 619, i32 11 }
@___asan_gen_.149 = private unnamed_addr constant [16 x i8] c"q6adm_device_id\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 608, i32 34 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 598, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 599, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 602, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 139, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 144, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 152, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 172, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 190, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.207 = private constant [32 x i8] c"../sound/soc/qcom/qdsp6/q6adm.c\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 204, i32 3 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @__UNIQUE_ID_description184, ptr @__UNIQUE_ID_file185, ptr @__UNIQUE_ID_license186, ptr @__exitcall_qcom_q6adm_driver_exit, ptr @__initcall__kmod_q6adm__183_624_qcom_q6adm_driver_init6, ptr @__ksymtab_q6adm_close, ptr @__ksymtab_q6adm_get_copp_id, ptr @__ksymtab_q6adm_matrix_map, ptr @__ksymtab_q6adm_open, ptr @q6adm_apr_send_copp_pkt._entry, ptr @q6adm_apr_send_copp_pkt._entry.26, ptr @q6adm_apr_send_copp_pkt._entry.29, ptr @q6adm_apr_send_copp_pkt._entry_ptr, ptr @q6adm_apr_send_copp_pkt._entry_ptr.28, ptr @q6adm_apr_send_copp_pkt._entry_ptr.30, ptr @q6adm_callback._entry, ptr @q6adm_callback._entry.39, ptr @q6adm_callback._entry.42, ptr @q6adm_callback._entry.45, ptr @q6adm_callback._entry.48, ptr @q6adm_callback._entry.51, ptr @q6adm_callback._entry_ptr, ptr @q6adm_callback._entry_ptr.41, ptr @q6adm_callback._entry_ptr.44, ptr @q6adm_callback._entry_ptr.47, ptr @q6adm_callback._entry_ptr.50, ptr @q6adm_callback._entry_ptr.53, ptr @q6adm_close._entry, ptr @q6adm_close._entry_ptr, ptr @q6adm_matrix_map._entry, ptr @q6adm_matrix_map._entry.10, ptr @q6adm_matrix_map._entry.12, ptr @q6adm_matrix_map._entry.15, ptr @q6adm_matrix_map._entry.18, ptr @q6adm_matrix_map._entry_ptr, ptr @q6adm_matrix_map._entry_ptr.11, ptr @q6adm_matrix_map._entry_ptr.14, ptr @q6adm_matrix_map._entry_ptr.17, ptr @q6adm_matrix_map._entry_ptr.20, ptr @q6adm_open._entry, ptr @q6adm_open._entry.5, ptr @q6adm_open._entry_ptr, ptr @q6adm_open._entry_ptr.7, ptr @qcom_q6adm_driver_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @qcom_q6adm_driver, ptr @q6adm_alloc_copp.__key, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.31, ptr @q6adm_device_id, ptr @q6adm_probe.__key, ptr @.str.32, ptr @q6adm_probe.__key.33, ptr @.str.34, ptr @q6adm_probe.__key.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6adm_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6adm_open._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6adm_matrix_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6adm_matrix_map._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6adm_matrix_map._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6adm_matrix_map._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6adm_matrix_map._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6adm_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_q6adm_driver to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6adm_alloc_copp.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6adm_apr_send_copp_pkt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6adm_apr_send_copp_pkt._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6adm_apr_send_copp_pkt._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6adm_device_id to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6adm_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6adm_probe.__key.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6adm_probe.__key.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6adm_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6adm_callback._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6adm_callback._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6adm_callback._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6adm_callback._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6adm_callback._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @q6adm_open(ptr noundef %dev, i32 noundef %port_id, i32 noundef %path, i32 noundef %rate, i32 noundef %channel_mode, i32 noundef %topology, i32 noundef %perf_mode, i16 noundef zeroext %bit_width, i32 noundef %app_type, i32 %acdb_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port_id)
  %cmp = icmp slt i32 %port_id, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %port_id) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %bit_width to i32
  %copps_list_lock.i = getelementptr inbounds %struct.q6adm, ptr %3, i32 0, i32 5
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %copps_list_lock.i) #10
  %copps_list.i = getelementptr inbounds %struct.q6adm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %copps_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn1.i = load ptr, ptr %copps_list.i, align 4
  %cmp7.not3.i = icmp eq ptr %.pn1.i, %copps_list.i
  br i1 %cmp7.not3.i, label %q6adm_find_matching_copp.exit.thread, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

q6adm_find_matching_copp.exit.thread:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %copps_list_lock.i, i32 noundef %call2.i) #10
  br label %do.body9

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %.pn5.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn1.i, %if.end.for.body.i_crit_edge ]
  %ret.04.i = phi ptr [ %ret.1.i, %for.inc.i.for.body.i_crit_edge ], [ null, %if.end.for.body.i_crit_edge ]
  %c.06.i = getelementptr i8, ptr %.pn5.i, i32 -104
  %5 = ptrtoint ptr %c.06.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %c.06.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %port_id)
  %cmp9.i = icmp eq i32 %6, %port_id
  br i1 %cmp9.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %topology11.i = getelementptr i8, ptr %.pn5.i, i32 -92
  %7 = ptrtoint ptr %topology11.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %topology11.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %topology)
  %cmp12.i = icmp eq i32 %8, %topology
  br i1 %cmp12.i, label %land.lhs.true14.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true14.i:                                ; preds = %land.lhs.true.i
  %mode15.i = getelementptr i8, ptr %.pn5.i, i32 -88
  %9 = ptrtoint ptr %mode15.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode15.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %perf_mode)
  %cmp16.i = icmp eq i32 %10, %perf_mode
  br i1 %cmp16.i, label %land.lhs.true18.i, label %land.lhs.true14.i.for.inc.i_crit_edge

land.lhs.true14.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true18.i:                                ; preds = %land.lhs.true14.i
  %rate19.i = getelementptr i8, ptr %.pn5.i, i32 -84
  %11 = ptrtoint ptr %rate19.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rate19.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %rate)
  %cmp20.i = icmp eq i32 %12, %rate
  br i1 %cmp20.i, label %land.lhs.true22.i, label %land.lhs.true18.i.for.inc.i_crit_edge

land.lhs.true18.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true22.i:                                ; preds = %land.lhs.true18.i
  %bit_width23.i = getelementptr i8, ptr %.pn5.i, i32 -80
  %13 = ptrtoint ptr %bit_width23.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bit_width23.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv)
  %cmp24.i = icmp eq i32 %14, %conv
  br i1 %cmp24.i, label %land.lhs.true26.i, label %land.lhs.true22.i.for.inc.i_crit_edge

land.lhs.true22.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true26.i:                                ; preds = %land.lhs.true22.i
  %app_type27.i = getelementptr i8, ptr %.pn5.i, i32 -72
  %15 = ptrtoint ptr %app_type27.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %app_type27.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %app_type)
  %cmp28.i = icmp eq i32 %16, %app_type
  br i1 %cmp28.i, label %if.then.i, label %land.lhs.true26.i.for.inc.i_crit_edge

land.lhs.true26.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true26.i
  %refcount.i = getelementptr i8, ptr %.pn5.i, i32 -56
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !117
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !118

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %18 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %.not.i.i.i.i.i = icmp sgt i32 %18, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.for.inc.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !119

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.for.inc.i_crit_edge:            ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.for.inc.i_crit_edge, %land.lhs.true26.i.for.inc.i_crit_edge, %land.lhs.true22.i.for.inc.i_crit_edge, %land.lhs.true18.i.for.inc.i_crit_edge, %land.lhs.true14.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %ret.1.i = phi ptr [ %ret.04.i, %land.lhs.true26.i.for.inc.i_crit_edge ], [ %ret.04.i, %land.lhs.true22.i.for.inc.i_crit_edge ], [ %ret.04.i, %land.lhs.true18.i.for.inc.i_crit_edge ], [ %ret.04.i, %land.lhs.true14.i.for.inc.i_crit_edge ], [ %ret.04.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %ret.04.i, %for.body.i.for.inc.i_crit_edge ], [ %c.06.i, %if.else.i.i.i.i.i.for.inc.i_crit_edge ], [ %c.06.i, %if.end15.sink.split.i.i.i.i.i ]
  %19 = ptrtoint ptr %.pn5.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn.i = load ptr, ptr %.pn5.i, align 4
  %cmp7.not.i = icmp eq ptr %.pn.i, %copps_list.i
  br i1 %cmp7.not.i, label %q6adm_find_matching_copp.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

q6adm_find_matching_copp.exit:                    ; preds = %for.inc.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %copps_list_lock.i, i32 noundef %call2.i) #10
  %tobool.not = icmp eq ptr %ret.1.i, null
  br i1 %tobool.not, label %q6adm_find_matching_copp.exit.do.body9_crit_edge, label %do.end6

q6adm_find_matching_copp.exit.do.body9_crit_edge: ; preds = %q6adm_find_matching_copp.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body9

do.end6:                                          ; preds = %q6adm_find_matching_copp.exit
  call void @__sanitizer_cov_trace_pc() #12
  %copp_idx = getelementptr inbounds %struct.q6copp, ptr %ret.1.i, i32 0, i32 1
  %20 = ptrtoint ptr %copp_idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %copp_idx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %21) #13
  br label %cleanup

do.body9:                                         ; preds = %q6adm_find_matching_copp.exit.do.body9_crit_edge, %q6adm_find_matching_copp.exit.thread
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %copps_list_lock.i) #10
  %arrayidx.i = getelementptr %struct.q6adm, ptr %3, i32 0, i32 3, i32 %port_id
  %call.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %arrayidx.i, i32 noundef 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 8
  br i1 %cmp.i, label %do.body9.if.then20_crit_edge, label %if.end.i

do.body9.if.then20_crit_edge:                     ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.end.i:                                         ; preds = %do.body9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 2848, i32 noundef 116) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.i.if.then20_crit_edge, label %q6adm_alloc_copp.exit

if.end.i.if.then20_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

q6adm_alloc_copp.exit:                            ; preds = %if.end.i
  tail call void @_set_bit(i32 noundef %call.i, ptr noundef %arrayidx.i) #10
  %copp_idx.i = getelementptr inbounds %struct.q6copp, ptr %call7.i.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %copp_idx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call.i, ptr %copp_idx.i, align 4
  %24 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %port_id, ptr %call7.i.i.i, align 8
  %adm8.i = getelementptr inbounds %struct.q6copp, ptr %call7.i.i.i, i32 0, i32 14
  %25 = ptrtoint ptr %adm8.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %3, ptr %adm8.i, align 8
  %wait.i = getelementptr inbounds %struct.q6copp, ptr %call7.i.i.i, i32 0, i32 12
  tail call void @__init_waitqueue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @q6adm_alloc_copp.__key) #10
  %cmp.i81 = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i81, label %q6adm_alloc_copp.exit.if.then20_crit_edge, label %if.end23

q6adm_alloc_copp.exit.if.then20_crit_edge:        ; preds = %q6adm_alloc_copp.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.then20:                                        ; preds = %q6adm_alloc_copp.exit.if.then20_crit_edge, %if.end.i.if.then20_crit_edge, %do.body9.if.then20_crit_edge
  %retval.0.i92 = phi ptr [ %call7.i.i.i, %q6adm_alloc_copp.exit.if.then20_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.if.then20_crit_edge ], [ inttoptr (i32 -16 to ptr), %do.body9.if.then20_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %copps_list_lock.i, i32 noundef %call13) #10
  br label %cleanup

if.end23:                                         ; preds = %q6adm_alloc_copp.exit
  %node = getelementptr inbounds %struct.q6copp, ptr %call7.i.i.i, i32 0, i32 13
  %prev.i = getelementptr inbounds %struct.q6adm, ptr %3, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %27, ptr noundef %copps_list.i) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end23.list_add_tail.exit_crit_edge

if.end23.list_add_tail.exit_crit_edge:            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %node, ptr %prev.i, align 4
  %29 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %copps_list.i, ptr %node, align 8
  %prev3.i.i = getelementptr inbounds %struct.q6copp, ptr %call7.i.i.i, i32 0, i32 13, i32 1
  %30 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %node, ptr %27, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end23.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %copps_list_lock.i, i32 noundef %call13) #10
  %refcount = getelementptr inbounds %struct.q6copp, ptr %call7.i.i.i, i32 0, i32 11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  %32 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 1, ptr %refcount, align 8
  %topology25 = getelementptr inbounds %struct.q6copp, ptr %call7.i.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %topology25 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %topology, ptr %topology25, align 4
  %mode = getelementptr inbounds %struct.q6copp, ptr %call7.i.i.i, i32 0, i32 4
  %34 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %perf_mode, ptr %mode, align 8
  %rate26 = getelementptr inbounds %struct.q6copp, ptr %call7.i.i.i, i32 0, i32 5
  %35 = ptrtoint ptr %rate26 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %rate, ptr %rate26, align 4
  %channels = getelementptr inbounds %struct.q6copp, ptr %call7.i.i.i, i32 0, i32 7
  %36 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %channel_mode, ptr %channels, align 4
  %bit_width28 = getelementptr inbounds %struct.q6copp, ptr %call7.i.i.i, i32 0, i32 6
  %37 = ptrtoint ptr %bit_width28 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv, ptr %bit_width28, align 8
  %app_type29 = getelementptr inbounds %struct.q6copp, ptr %call7.i.i.i, i32 0, i32 8
  %38 = ptrtoint ptr %app_type29 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %app_type, ptr %app_type29, align 8
  %call.i82 = tail call i32 @q6afe_get_port_id(i32 noundef %port_id) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %39 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i83 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3520, i32 noundef 48) #14
  %tobool.not.i84 = icmp eq ptr %call7.i.i.i83, null
  br i1 %tobool.not.i84, label %list_add_tail.exit.if.then34_crit_edge, label %if.end.i86

list_add_tail.exit.if.then34_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then34

if.end.i86:                                       ; preds = %list_add_tail.exit
  %add.ptr.i = getelementptr i8, ptr %call7.i.i.i83, i32 20
  %40 = ptrtoint ptr %call7.i.i.i83 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 592, ptr %call7.i.i.i83, align 8
  %pkt_size3.i = getelementptr inbounds %struct.apr_hdr, ptr %call7.i.i.i83, i32 0, i32 1
  %41 = ptrtoint ptr %pkt_size3.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 48, ptr %pkt_size3.i, align 2
  %conv4.i = trunc i32 %call.i82 to i16
  %src_port.i = getelementptr inbounds %struct.apr_hdr, ptr %call7.i.i.i83, i32 0, i32 4
  %42 = ptrtoint ptr %src_port.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv4.i, ptr %src_port.i, align 2
  %dest_port.i = getelementptr inbounds %struct.apr_hdr, ptr %call7.i.i.i83, i32 0, i32 7
  %43 = ptrtoint ptr %dest_port.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv4.i, ptr %dest_port.i, align 2
  %shl.i = shl i32 %port_id, 16
  %44 = ptrtoint ptr %copp_idx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %copp_idx.i, align 4
  %or.i = or i32 %45, %shl.i
  %token.i = getelementptr inbounds %struct.apr_hdr, ptr %call7.i.i.i83, i32 0, i32 8
  %46 = ptrtoint ptr %token.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or.i, ptr %token.i, align 4
  %opcode.i = getelementptr inbounds %struct.apr_hdr, ptr %call7.i.i.i83, i32 0, i32 9
  %47 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 66342, ptr %opcode.i, align 8
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %add.ptr.i, align 4
  %conv10.i = trunc i32 %path to i16
  %mode_of_operation.i = getelementptr i8, ptr %call7.i.i.i83, i32 22
  %49 = ptrtoint ptr %mode_of_operation.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv10.i, ptr %mode_of_operation.i, align 2
  %endpoint_id_1.i = getelementptr i8, ptr %call7.i.i.i83, i32 24
  %50 = ptrtoint ptr %endpoint_id_1.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv4.i, ptr %endpoint_id_1.i, align 8
  %topology_id.i = getelementptr i8, ptr %call7.i.i.i83, i32 28
  %51 = ptrtoint ptr %topology_id.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %topology, ptr %topology_id.i, align 4
  %52 = trunc i32 %channel_mode to i16
  %conv12.i = and i16 %52, 255
  %dev_num_channel.i = getelementptr i8, ptr %call7.i.i.i83, i32 32
  %53 = ptrtoint ptr %dev_num_channel.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv12.i, ptr %dev_num_channel.i, align 8
  %bit_width14.i = getelementptr i8, ptr %call7.i.i.i83, i32 34
  %54 = ptrtoint ptr %bit_width14.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %bit_width, ptr %bit_width14.i, align 2
  %sample_rate.i = getelementptr i8, ptr %call7.i.i.i83, i32 36
  %55 = ptrtoint ptr %sample_rate.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %rate, ptr %sample_rate.i, align 4
  %dev_channel_mapping.i = getelementptr i8, ptr %call7.i.i.i83, i32 40
  %call15.i = tail call i32 @q6dsp_map_channels(ptr noundef %dev_channel_mapping.i, i32 noundef %channel_mode) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end.i86.q6adm_device_open.exit_crit_edge

if.end.i86.q6adm_device_open.exit_crit_edge:      ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6adm_device_open.exit

if.end18.i:                                       ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #12
  %call19.i = tail call fastcc i32 @q6adm_apr_send_copp_pkt(ptr noundef %3, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %call7.i.i.i83, i32 noundef 66345) #10
  br label %q6adm_device_open.exit

q6adm_device_open.exit:                           ; preds = %if.end18.i, %if.end.i86.q6adm_device_open.exit_crit_edge
  %ret.0.i = phi i32 [ %call15.i, %if.end.i86.q6adm_device_open.exit_crit_edge ], [ %call19.i, %if.end18.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i83) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp32 = icmp slt i32 %ret.0.i, 0
  br i1 %cmp32, label %q6adm_device_open.exit.if.then34_crit_edge, label %q6adm_device_open.exit.cleanup_crit_edge

q6adm_device_open.exit.cleanup_crit_edge:         ; preds = %q6adm_device_open.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

q6adm_device_open.exit.if.then34_crit_edge:       ; preds = %q6adm_device_open.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then34

if.then34:                                        ; preds = %q6adm_device_open.exit.if.then34_crit_edge, %list_add_tail.exit.if.then34_crit_edge
  %retval.0.i8795 = phi i32 [ %ret.0.i, %q6adm_device_open.exit.if.then34_crit_edge ], [ -12, %list_add_tail.exit.if.then34_crit_edge ]
  tail call fastcc void @kref_put(ptr noundef %refcount)
  %56 = inttoptr i32 %retval.0.i8795 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %q6adm_device_open.exit.cleanup_crit_edge, %if.then20, %do.end6, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %ret.1.i, %do.end6 ], [ %retval.0.i92, %if.then20 ], [ %56, %if.then34 ], [ %call7.i.i.i, %q6adm_device_open.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kref_put(ptr noundef %kref) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !120
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #10, !srcloc !121
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !119

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #10
  br label %return

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !122
  %add.ptr.i = getelementptr i8, ptr %kref, i32 -48
  %adm1.i = getelementptr i8, ptr %kref, i32 64
  %1 = ptrtoint ptr %adm1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adm1.i, align 4
  %copps_list_lock.i = getelementptr inbounds %struct.q6adm, ptr %2, i32 0, i32 5
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %copps_list_lock.i) #10
  %copp_idx.i = getelementptr i8, ptr %kref, i32 -44
  %3 = ptrtoint ptr %copp_idx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %copp_idx.i, align 4
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i, align 4
  %arrayidx.i = getelementptr %struct.q6adm, ptr %2, i32 0, i32 3, i32 %6
  tail call void @_clear_bit(i32 noundef %4, ptr noundef %arrayidx.i) #10
  %node.i = getelementptr i8, ptr %kref, i32 56
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.q6adm_free_copp.exit_crit_edge

if.then.q6adm_free_copp.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %q6adm_free_copp.exit

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr i8, ptr %kref, i32 60
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %node.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %q6adm_free_copp.exit

q6adm_free_copp.exit:                             ; preds = %if.end.i.i.i, %if.then.q6adm_free_copp.exit_crit_edge
  %13 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %node.i, align 4
  %prev.i.i = getelementptr i8, ptr %kref, i32 60
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %copps_list_lock.i, i32 noundef %call4.i) #10
  tail call void @kfree(ptr noundef %add.ptr.i) #10
  br label %return

return:                                           ; preds = %q6adm_free_copp.exit, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @q6adm_get_copp_id(ptr noundef readonly %copp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %copp, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %copp_idx = getelementptr inbounds %struct.q6copp, ptr %copp, i32 0, i32 1
  %0 = ptrtoint ptr %copp_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %copp_idx, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %1, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @q6adm_matrix_map(ptr noundef %dev, i32 noundef %path, ptr nocapture noundef readonly byval(%struct.route_payload) align 4 %payload_map, i32 %perf_mode) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %payload_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %payload_map, align 4
  %mul = shl i32 %5, 2
  %add = add i32 %mul, 32
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #15
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup129_crit_edge, label %if.end

entry.cleanup129_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup129

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 20
  %add.ptr3 = getelementptr i8, ptr %call9.i.i, i32 28
  %add.ptr6 = getelementptr i8, ptr %call9.i.i, i32 32
  %6 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 592, ptr %call9.i.i, align 128
  %conv = trunc i32 %add to i16
  %pkt_size8 = getelementptr inbounds %struct.apr_hdr, ptr %call9.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %pkt_size8 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %pkt_size8, align 2
  %token = getelementptr inbounds %struct.apr_hdr, ptr %call9.i.i, i32 0, i32 8
  %8 = ptrtoint ptr %token to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %token, align 4
  %opcode = getelementptr inbounds %struct.apr_hdr, ptr %call9.i.i, i32 0, i32 9
  %9 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 66341, ptr %opcode, align 16
  %num_sessions = getelementptr i8, ptr %call9.i.i, i32 24
  %10 = ptrtoint ptr %num_sessions to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %num_sessions, align 8
  %11 = zext i32 %path to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %path, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb11
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %add.ptr, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %add.ptr, align 4
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %path) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb11, %sw.bb
  %session_id = getelementptr inbounds %struct.route_payload, ptr %payload_map, i32 0, i32 1
  %14 = ptrtoint ptr %session_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %session_id, align 4
  %conv13 = trunc i32 %15 to i16
  %16 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv13, ptr %add.ptr3, align 4
  %conv16 = trunc i32 %5 to i16
  %num_copps17 = getelementptr i8, ptr %call9.i.i, i32 30
  %17 = ptrtoint ptr %num_copps17 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv16, ptr %num_copps17, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp206 = icmp sgt i32 %5, 0
  br i1 %cmp206, label %sw.epilog.for.body_crit_edge, label %sw.epilog.for.end_crit_edge

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  br label %for.body

for.body:                                         ; preds = %if.end34.for.body_crit_edge, %sw.epilog.for.body_crit_edge
  %i.0207 = phi i32 [ %inc, %if.end34.for.body_crit_edge ], [ 0, %sw.epilog.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.route_payload, ptr %payload_map, i32 0, i32 3, i32 %i.0207
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp20 = icmp slt i32 %19, 0
  br i1 %cmp20, label %do.end25, label %if.end28

do.end25:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %19) #13
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #10
  br label %cleanup129

if.end28:                                         ; preds = %for.body
  %arrayidx30 = getelementptr %struct.route_payload, ptr %payload_map, i32 0, i32 2, i32 %i.0207
  %20 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx30, align 4
  %call31 = tail call fastcc ptr @q6adm_find_copp(ptr noundef %3, i32 noundef %19, i32 noundef %21)
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #10
  br label %cleanup129

if.end34:                                         ; preds = %if.end28
  %id = getelementptr inbounds %struct.q6copp, ptr %call31, i32 0, i32 2
  %22 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id, align 4
  %conv35 = trunc i32 %23 to i16
  %arrayidx36 = getelementptr i16, ptr %add.ptr6, i32 %i.0207
  %24 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv35, ptr %arrayidx36, align 2
  %refcount = getelementptr inbounds %struct.q6copp, ptr %call31, i32 0, i32 11
  tail call fastcc void @kref_put(ptr noundef %refcount)
  %inc = add nuw nsw i32 %i.0207, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %if.end34.for.end_crit_edge, label %if.end34.for.body_crit_edge

if.end34.for.body_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end34.for.end_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end34.for.end_crit_edge, %sw.epilog.for.end_crit_edge
  %lock = getelementptr inbounds %struct.q6adm, ptr %3, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %result = getelementptr inbounds %struct.q6adm, ptr %3, i32 0, i32 6
  %status = getelementptr inbounds %struct.q6adm, ptr %3, i32 0, i32 6, i32 1
  %25 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %status, align 4
  %26 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %result, align 4
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 4
  %call40 = tail call i32 @apr_send_pkt(ptr noundef %28, ptr noundef nonnull %call9.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %do.end46, label %if.end48

do.end46:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %15, i32 noundef %call40) #13
  br label %fail_cmd

if.end48:                                         ; preds = %for.end
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 540) #10
  %29 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %result, align 4
  %31 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %opcode, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp60 = icmp eq i32 %30, %32
  br i1 %cmp60, label %if.end48.if.else_crit_edge, label %if.then71

if.end48.if.else_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then71:                                        ; preds = %if.end48
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %33 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %matrix_map_wait = getelementptr inbounds %struct.q6adm, ptr %3, i32 0, i32 8
  %call75208 = call i32 @prepare_to_wait_event(ptr noundef %matrix_map_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %34 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %result, align 4
  %36 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %opcode, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp81209 = icmp eq i32 %35, %37
  br i1 %cmp81209, label %if.end108.thread, label %if.then71.cleanup102_crit_edge

if.then71.cleanup102_crit_edge:                   ; preds = %if.then71
  br label %cleanup102

if.end108.thread:                                 ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #12
  call void @finish_wait(ptr noundef %matrix_map_wait, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.else

cleanup102:                                       ; preds = %cleanup102.cleanup102_crit_edge, %if.then71.cleanup102_crit_edge
  %__ret72.1210 = phi i32 [ %__ret72.1, %cleanup102.cleanup102_crit_edge ], [ 100, %if.then71.cleanup102_crit_edge ]
  %call101 = call i32 @schedule_timeout(i32 noundef %__ret72.1210) #10
  %call75 = call i32 @prepare_to_wait_event(ptr noundef %matrix_map_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %38 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %result, align 4
  %40 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %opcode, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp81 = icmp eq i32 %39, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool87.not = icmp eq i32 %call101, 0
  %42 = select i1 %cmp81, i1 %tobool87.not, i1 false
  %__ret72.1 = select i1 %42, i32 1, i32 %call101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret72.1)
  %tobool94.not = icmp eq i32 %__ret72.1, 0
  %43 = select i1 %cmp81, i1 true, i1 %tobool94.not
  br i1 %43, label %if.end108, label %cleanup102.cleanup102_crit_edge

cleanup102.cleanup102_crit_edge:                  ; preds = %cleanup102
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup102

if.end108:                                        ; preds = %cleanup102
  call void @finish_wait(ptr noundef %matrix_map_wait, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret72.1)
  %tobool110.not = icmp eq i32 %__ret72.1, 0
  br i1 %tobool110.not, label %do.end114, label %if.end108.if.else_crit_edge

if.end108.if.else_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

do.end114:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %15) #13
  br label %fail_cmd

if.else:                                          ; preds = %if.end108.if.else_crit_edge, %if.end108.thread, %if.end48.if.else_crit_edge
  %__ret.1204 = phi i32 [ %__ret72.1, %if.end108.if.else_crit_edge ], [ 100, %if.end48.if.else_crit_edge ], [ 100, %if.end108.thread ]
  %44 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp118.not = icmp eq i32 %45, 0
  br i1 %cmp118.not, label %if.else.fail_cmd_crit_edge, label %do.end123

if.else.fail_cmd_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_cmd

do.end123:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %45) #13
  br label %fail_cmd

fail_cmd:                                         ; preds = %do.end123, %if.else.fail_cmd_crit_edge, %do.end114, %do.end46
  %ret.0 = phi i32 [ %call40, %do.end46 ], [ -22, %do.end123 ], [ %__ret.1204, %if.else.fail_cmd_crit_edge ], [ -110, %do.end114 ]
  call void @mutex_unlock(ptr noundef %lock) #10
  call void @kfree(ptr noundef nonnull %call9.i.i) #10
  br label %cleanup129

cleanup129:                                       ; preds = %fail_cmd, %if.then33, %do.end25, %entry.cleanup129_crit_edge
  %retval.2 = phi i32 [ %ret.0, %fail_cmd ], [ -12, %entry.cleanup129_crit_edge ], [ -22, %if.then33 ], [ -22, %do.end25 ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @q6adm_find_copp(ptr noundef %adm, i32 noundef %port_idx, i32 noundef %copp_idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %copps_list_lock = getelementptr inbounds %struct.q6adm, ptr %adm, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %copps_list_lock) #10
  %copps_list = getelementptr inbounds %struct.q6adm, ptr %adm, i32 0, i32 4
  %0 = ptrtoint ptr %copps_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn30 = load ptr, ptr %copps_list, align 4
  %cmp7.not32 = icmp eq ptr %.pn30, %copps_list
  br i1 %cmp7.not32, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn33 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn30, %entry.for.body_crit_edge ]
  %c.034 = getelementptr i8, ptr %.pn33, i32 -104
  %1 = ptrtoint ptr %c.034 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %c.034, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %port_idx)
  %cmp9 = icmp eq i32 %2, %port_idx
  br i1 %cmp9, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %copp_idx11 = getelementptr i8, ptr %.pn33, i32 -100
  %3 = ptrtoint ptr %copp_idx11 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %copp_idx11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %copp_idx)
  %cmp12 = icmp eq i32 %4, %copp_idx
  br i1 %cmp12, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %c.034.le = getelementptr i8, ptr %.pn33, i32 -104
  %refcount = getelementptr i8, ptr %.pn33, i32 -56
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !117
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !118

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.for.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !119

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.for.end_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #10
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %7 = ptrtoint ptr %.pn33 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %.pn33, align 4
  %cmp7.not = icmp eq ptr %.pn, %copps_list
  br i1 %cmp7.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.0 = phi ptr [ %c.034.le, %if.else.i.i.i.i.for.end_crit_edge ], [ %c.034.le, %if.end15.sink.split.i.i.i.i ], [ null, %entry.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %copps_list_lock, i32 noundef %call2) #10
  ret ptr %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @apr_send_pkt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @q6adm_close(ptr nocapture noundef readonly %dev, ptr noundef %copp) #0 align 64 {
entry:
  %close.i = alloca %struct.apr_pkt, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %copp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %copp, align 4
  %copp_idx = getelementptr inbounds %struct.q6copp, ptr %copp, i32 0, i32 1
  %6 = ptrtoint ptr %copp_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %copp_idx, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %close.i) #10
  %8 = getelementptr inbounds %struct.apr_hdr, ptr %close.i, i32 0, i32 1
  %9 = getelementptr inbounds %struct.apr_hdr, ptr %close.i, i32 0, i32 4
  %10 = getelementptr inbounds %struct.apr_hdr, ptr %close.i, i32 0, i32 7
  %11 = getelementptr inbounds %struct.apr_hdr, ptr %close.i, i32 0, i32 8
  %12 = getelementptr inbounds %struct.apr_hdr, ptr %close.i, i32 0, i32 9
  %13 = getelementptr inbounds i8, ptr %close.i, i32 4
  %14 = call ptr @memset(ptr %13, i32 255, i32 6)
  %15 = ptrtoint ptr %close.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 592, ptr %close.i, align 2
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 20, ptr %8, align 2
  %conv.i = trunc i32 %5 to i16
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i, ptr %9, align 2
  %id.i = getelementptr inbounds %struct.q6copp, ptr %copp, i32 0, i32 2
  %18 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id.i, align 4
  %conv3.i = trunc i32 %19 to i16
  %20 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv3.i, ptr %10, align 2
  %shl.i = shl i32 %5, 16
  %or.i = or i32 %shl.i, %7
  %21 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %or.i, ptr %11, align 2
  %22 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 66343, ptr %12, align 2
  %call.i = call fastcc i32 @q6adm_apr_send_copp_pkt(ptr noundef %3, ptr noundef %copp, ptr noundef nonnull %close.i, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %close.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev2 = getelementptr inbounds %struct.q6adm, ptr %3, i32 0, i32 1
  %23 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.21, i32 noundef %call.i) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %refcount = getelementptr inbounds %struct.q6copp, ptr %copp, i32 0, i32 11
  call fastcc void @kref_put(ptr noundef %refcount)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_q6adm_driver_init() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__apr_driver_register(ptr noundef nonnull @qcom_q6adm_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qcom_q6adm_driver_exit() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @apr_driver_unregister(ptr noundef nonnull @qcom_q6adm_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @apr_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @q6afe_get_port_id(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @q6dsp_map_channels(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @q6adm_apr_send_copp_pkt(ptr noundef %adm, ptr noundef %copp, ptr noundef %pkt, i32 noundef %rsp_opcode) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry90 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.q6adm, ptr %adm, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %opcode2 = getelementptr inbounds %struct.apr_hdr, ptr %pkt, i32 0, i32 9
  %2 = ptrtoint ptr %opcode2 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %opcode2, align 1
  %lock = getelementptr inbounds %struct.q6adm, ptr %adm, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %result = getelementptr inbounds %struct.q6copp, ptr %copp, i32 0, i32 10
  %4 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %result, align 4
  %status = getelementptr inbounds %struct.q6copp, ptr %copp, i32 0, i32 10, i32 1
  %5 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %status, align 4
  %6 = ptrtoint ptr %adm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adm, align 4
  %call = tail call i32 @apr_send_pkt(ptr noundef %7, ptr noundef %pkt) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.24) #13
  br label %err

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rsp_opcode)
  %tobool.not = icmp eq i32 %rsp_opcode, 0
  br i1 %tobool.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 259) #10
  %8 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %result, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %3)
  %cmp15 = icmp eq i32 %9, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %rsp_opcode)
  %cmp18 = icmp eq i32 %9, %rsp_opcode
  %spec.select = or i1 %cmp15, %cmp18
  br i1 %spec.select, label %if.then5.if.else133_crit_edge, label %if.then28

if.then5.if.else133_crit_edge:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else133

if.then28:                                        ; preds = %if.then5
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %10 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %wait = getelementptr inbounds %struct.q6copp, ptr %copp, i32 0, i32 12
  %call31208 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %11 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %result, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %3)
  %cmp35209 = icmp eq i32 %12, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %rsp_opcode)
  %cmp39210 = icmp eq i32 %12, %rsp_opcode
  %spec.select195211 = or i1 %cmp35209, %cmp39210
  br i1 %spec.select195211, label %if.then28.for.end_crit_edge, label %if.then28.cleanup_crit_edge

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  br label %cleanup

if.then28.for.end_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then28.cleanup_crit_edge
  %__ret29.1212 = phi i32 [ %__ret29.1, %cleanup.cleanup_crit_edge ], [ 100, %if.then28.cleanup_crit_edge ]
  %call58 = call i32 @schedule_timeout(i32 noundef %__ret29.1212) #10
  %call31 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %13 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %result, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %3)
  %cmp35 = icmp eq i32 %14, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %rsp_opcode)
  %cmp39 = icmp eq i32 %14, %rsp_opcode
  %spec.select195 = or i1 %cmp35, %cmp39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool45.not = icmp eq i32 %call58, 0
  %15 = select i1 %spec.select195, i1 %tobool45.not, i1 false
  %__ret29.1 = select i1 %15, i32 1, i32 %call58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret29.1)
  %tobool51.not = icmp eq i32 %__ret29.1, 0
  %or.cond = select i1 %spec.select195, i1 true, i1 %tobool51.not
  br i1 %or.cond, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then28.for.end_crit_edge
  %__ret29.1.lcssa = phi i32 [ 100, %if.then28.for.end_crit_edge ], [ %__ret29.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end127

if.else:                                          ; preds = %if.end
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 263) #10
  %16 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %result, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %3)
  %cmp74 = icmp eq i32 %17, %3
  br i1 %cmp74, label %if.else.if.else133_crit_edge, label %if.then89

if.else.if.else133_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else133

if.then89:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry90) #10
  %18 = call ptr @memset(ptr %__wq_entry90, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry90, i32 noundef 0) #10
  %wait95 = getelementptr inbounds %struct.q6copp, ptr %copp, i32 0, i32 12
  %call96214 = call i32 @prepare_to_wait_event(ptr noundef %wait95, ptr noundef nonnull %__wq_entry90, i32 noundef 2) #10
  %19 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %result, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %3)
  %cmp100215 = icmp eq i32 %20, %3
  br i1 %cmp100215, label %if.then89.for.end121_crit_edge, label %if.then89.cleanup118_crit_edge

if.then89.cleanup118_crit_edge:                   ; preds = %if.then89
  br label %cleanup118

if.then89.for.end121_crit_edge:                   ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end121

cleanup118:                                       ; preds = %cleanup118.cleanup118_crit_edge, %if.then89.cleanup118_crit_edge
  %__ret91.1216 = phi i32 [ %__ret91.1, %cleanup118.cleanup118_crit_edge ], [ 100, %if.then89.cleanup118_crit_edge ]
  %call117 = call i32 @schedule_timeout(i32 noundef %__ret91.1216) #10
  %call96 = call i32 @prepare_to_wait_event(ptr noundef %wait95, ptr noundef nonnull %__wq_entry90, i32 noundef 2) #10
  %21 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %result, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %3)
  %cmp100 = icmp eq i32 %22, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool104.not = icmp eq i32 %call117, 0
  %23 = select i1 %cmp100, i1 %tobool104.not, i1 false
  %__ret91.1 = select i1 %23, i32 1, i32 %call117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret91.1)
  %tobool110.not = icmp eq i32 %__ret91.1, 0
  %24 = select i1 %cmp100, i1 true, i1 %tobool110.not
  br i1 %24, label %cleanup118.for.end121_crit_edge, label %cleanup118.cleanup118_crit_edge

cleanup118.cleanup118_crit_edge:                  ; preds = %cleanup118
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup118

cleanup118.for.end121_crit_edge:                  ; preds = %cleanup118
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end121

for.end121:                                       ; preds = %cleanup118.for.end121_crit_edge, %if.then89.for.end121_crit_edge
  %__ret91.1.lcssa = phi i32 [ 100, %if.then89.for.end121_crit_edge ], [ %__ret91.1, %cleanup118.for.end121_crit_edge ]
  call void @finish_wait(ptr noundef %wait95, ptr noundef nonnull %__wq_entry90) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry90) #10
  br label %if.end127

if.end127:                                        ; preds = %for.end121, %for.end
  %ret.0 = phi i32 [ %__ret29.1.lcssa, %for.end ], [ %__ret91.1.lcssa, %for.end121 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool128.not = icmp eq i32 %ret.0, 0
  br i1 %tobool128.not, label %do.end132, label %if.end127.if.else133_crit_edge

if.end127.if.else133_crit_edge:                   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else133

do.end132:                                        ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.27) #13
  br label %err

if.else133:                                       ; preds = %if.end127.if.else133_crit_edge, %if.else.if.else133_crit_edge, %if.then5.if.else133_crit_edge
  %ret.0207 = phi i32 [ %ret.0, %if.end127.if.else133_crit_edge ], [ 100, %if.then5.if.else133_crit_edge ], [ 100, %if.else.if.else133_crit_edge ]
  %25 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp136.not = icmp eq i32 %26, 0
  br i1 %cmp136.not, label %if.else133.err_crit_edge, label %do.end140

if.else133.err_crit_edge:                         ; preds = %if.else133
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

do.end140:                                        ; preds = %if.else133
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef %26) #13
  br label %err

err:                                              ; preds = %do.end140, %if.else133.err_crit_edge, %do.end132, %do.end
  %ret.1 = phi i32 [ -22, %do.end ], [ -22, %do.end140 ], [ %ret.0207, %if.else133.err_crit_edge ], [ -110, %do.end132 ]
  call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__apr_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6adm_probe(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %adev, i32 noundef 740, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %adev, ptr %call.i, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i, align 4
  %dev2 = getelementptr inbounds %struct.q6adm, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %adev, ptr %dev2, align 4
  %svc_id = getelementptr inbounds %struct.apr_device, ptr %adev, i32 0, i32 1
  %3 = ptrtoint ptr %svc_id to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %svc_id, align 8
  %conv = zext i16 %4 to i32
  %ainfo = getelementptr inbounds %struct.q6adm, ptr %call.i, i32 0, i32 2
  %call3 = tail call i32 @q6core_get_svc_api_info(i32 noundef %conv, ptr noundef %ainfo) #10
  %lock = getelementptr inbounds %struct.q6adm, ptr %call.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.32, ptr noundef nonnull @q6adm_probe.__key) #10
  %matrix_map_wait = getelementptr inbounds %struct.q6adm, ptr %call.i, i32 0, i32 8
  tail call void @__init_waitqueue_head(ptr noundef %matrix_map_wait, ptr noundef nonnull @.str.34, ptr noundef nonnull @q6adm_probe.__key.33) #10
  %copps_list = getelementptr inbounds %struct.q6adm, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %copps_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %copps_list, ptr %copps_list, align 4
  %prev.i = getelementptr inbounds %struct.q6adm, ptr %call.i, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %copps_list, ptr %prev.i, align 4
  %copps_list_lock = getelementptr inbounds %struct.q6adm, ptr %call.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %copps_list_lock, ptr noundef nonnull @.str.36, ptr noundef nonnull @q6adm_probe.__key.35, i16 noundef signext 3) #10
  %call11 = tail call i32 @devm_of_platform_populate(ptr noundef %adev) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6adm_callback(ptr noundef %adev, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %payload = getelementptr inbounds %struct.apr_resp_pkt, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %payload, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %payload_size = getelementptr inbounds %struct.apr_resp_pkt, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %payload_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %payload_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup79_crit_edge, label %if.end

entry.cleanup79_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup79

if.end:                                           ; preds = %entry
  %token = getelementptr inbounds %struct.apr_hdr, ptr %data, i32 0, i32 8
  %6 = ptrtoint ptr %token to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %token, align 1
  %and = and i32 %7, 255
  %shr = lshr i32 %7, 16
  %and3 = and i32 %shr, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %and3)
  %cmp4 = icmp ugt i32 %and3, 128
  br i1 %cmp4, label %do.end, label %lor.lhs.false10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.37, i32 noundef %and3, i32 noundef %7) #13
  br label %cleanup79

lor.lhs.false10:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and)
  %cmp11 = icmp ugt i32 %and, 7
  br i1 %cmp11, label %do.end15, label %if.end18

do.end15:                                         ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.40, i32 noundef %and, i32 noundef %7) #13
  br label %cleanup79

if.end18:                                         ; preds = %lor.lhs.false10
  %opcode = getelementptr inbounds %struct.apr_hdr, ptr %data, i32 0, i32 9
  %8 = ptrtoint ptr %opcode to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %opcode, align 1
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %9, label %do.end75 [
    i32 69864, label %sw.bb
    i32 66345, label %sw.bb43
  ]

sw.bb:                                            ; preds = %if.end18
  %status = getelementptr inbounds %struct.aprv2_ibasic_rsp_result_t, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp19.not = icmp eq i32 %12, 0
  br i1 %cmp19.not, label %sw.bb.if.end27_crit_edge, label %do.end23

sw.bb.if.end27_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

do.end23:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.43, i32 noundef %14, i32 noundef %12) #13
  br label %if.end27

if.end27:                                         ; preds = %do.end23, %sw.bb.if.end27_crit_edge
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %16, label %do.end40 [
    i32 66342, label %if.end27.sw.bb29_crit_edge
    i32 66343, label %if.end27.sw.bb29_crit_edge130
    i32 66341, label %sw.bb36
  ]

if.end27.sw.bb29_crit_edge130:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb29

if.end27.sw.bb29_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb29

sw.bb29:                                          ; preds = %if.end27.sw.bb29_crit_edge, %if.end27.sw.bb29_crit_edge130
  %call30 = tail call fastcc ptr @q6adm_find_copp(ptr noundef %3, i32 noundef %and3, i32 noundef %and)
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %sw.bb29.cleanup79_crit_edge, label %if.end33

sw.bb29.cleanup79_crit_edge:                      ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup79

if.end33:                                         ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #12
  %result34 = getelementptr inbounds %struct.q6copp, ptr %call30, i32 0, i32 10
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %1, align 4
  %20 = ptrtoint ptr %result34 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %19, ptr %result34, align 4
  %wait = getelementptr inbounds %struct.q6copp, ptr %call30, i32 0, i32 12
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  %refcount = getelementptr inbounds %struct.q6copp, ptr %call30, i32 0, i32 11
  tail call fastcc void @kref_put(ptr noundef %refcount)
  br label %cleanup79

sw.bb36:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %result37 = getelementptr inbounds %struct.q6adm, ptr %3, i32 0, i32 6
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %1, align 4
  %23 = ptrtoint ptr %result37 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 %22, ptr %result37, align 4
  %matrix_map_wait = getelementptr inbounds %struct.q6adm, ptr %3, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %matrix_map_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %cleanup79

do.end40:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.46, i32 noundef %16) #13
  br label %cleanup79

sw.bb43:                                          ; preds = %if.end18
  %call45 = tail call fastcc ptr @q6adm_find_copp(ptr noundef %3, i32 noundef %and3, i32 noundef %and)
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %sw.bb43.cleanup79_crit_edge, label %if.end48

sw.bb43.cleanup79_crit_edge:                      ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup79

if.end48:                                         ; preds = %sw.bb43
  %copp_id = getelementptr inbounds %struct.adm_cmd_rsp_device_open_v5, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %copp_id to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %copp_id, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %25)
  %cmp49 = icmp eq i16 %25, 255
  br i1 %cmp49, label %do.end54, label %if.end63

do.end54:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.49, i32 noundef 255) #13
  %status59 = getelementptr inbounds %struct.q6copp, ptr %call45, i32 0, i32 10, i32 1
  %26 = ptrtoint ptr %status59 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %status59, align 4
  %wait60 = getelementptr inbounds %struct.q6copp, ptr %call45, i32 0, i32 12
  tail call void @__wake_up(ptr noundef %wait60, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  %refcount61 = getelementptr inbounds %struct.q6copp, ptr %call45, i32 0, i32 11
  tail call fastcc void @kref_put(ptr noundef %refcount61)
  br label %cleanup79

if.end63:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %opcode to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %opcode, align 1
  %result65 = getelementptr inbounds %struct.q6copp, ptr %call45, i32 0, i32 10
  %29 = ptrtoint ptr %result65 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %result65, align 4
  %30 = ptrtoint ptr %copp_id to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %copp_id, align 1
  %conv68 = zext i16 %31 to i32
  %id = getelementptr inbounds %struct.q6copp, ptr %call45, i32 0, i32 2
  %32 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv68, ptr %id, align 4
  %wait69 = getelementptr inbounds %struct.q6copp, ptr %call45, i32 0, i32 12
  tail call void @__wake_up(ptr noundef %wait69, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  %refcount70 = getelementptr inbounds %struct.q6copp, ptr %call45, i32 0, i32 11
  tail call fastcc void @kref_put(ptr noundef %refcount70)
  br label %cleanup79

do.end75:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.52, i32 noundef %9) #13
  br label %cleanup79

cleanup79:                                        ; preds = %do.end75, %if.end63, %do.end54, %sw.bb43.cleanup79_crit_edge, %do.end40, %sw.bb36, %if.end33, %sw.bb29.cleanup79_crit_edge, %do.end15, %do.end, %entry.cleanup79_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @q6core_get_svc_api_info(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_platform_populate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !19, !20, !21, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !40, !41, !42, !43, !45, !47, !48, !50, !52, !53, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !70, !72, !74, !75, !77, !78, !80, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/qcom/qdsp6/q6adm.c", i32 393, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @q6adm_open._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @q6adm_open._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/qcom/qdsp6/q6adm.c", i32 400, i32 3}
!10 = !{ptr @q6adm_open._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @q6adm_open._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @__ksymtab_q6adm_open, !13, !"__ksymtab_q6adm_open", i1 false, i1 false}
!13 = !{!"../sound/soc/qcom/qdsp6/q6adm.c", i32 431, i32 1}
!14 = !{ptr @__ksymtab_q6adm_get_copp_id, !15, !"__ksymtab_q6adm_get_copp_id", i1 false, i1 false}
!15 = !{!"../sound/soc/qcom/qdsp6/q6adm.c", i32 447, i32 1}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/qcom/qdsp6/q6adm.c", i32 500, i32 3}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @q6adm_matrix_map._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @q6adm_matrix_map._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @q6adm_matrix_map._entry.10, !22, !"_entry", i1 false, i1 false}
!22 = !{!"../sound/soc/qcom/qdsp6/q6adm.c", i32 511, i32 4}
!23 = !{ptr @q6adm_matrix_map._entry_ptr.11, !22, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/qcom/qdsp6/q6adm.c", i32 534, i32 3}
!26 = !{ptr @q6adm_matrix_map._entry.12, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @q6adm_matrix_map._entry_ptr.14, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/qcom/qdsp6/q6adm.c", i32 542, i32 3}
!30 = !{ptr @q6adm_matrix_map._entry.15, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @q6adm_matrix_map._entry_ptr.17, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/qcom/qdsp6/q6adm.c", i32 547, i32 3}
!34 = !{ptr @q6adm_matrix_map._entry.18, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @q6adm_matrix_map._entry_ptr.20, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @__ksymtab_q6adm_matrix_map, !37, !"__ksymtab_q6adm_matrix_map", i1 false, i1 false}
!37 = !{!"../sound/soc/qcom/qdsp6/q6adm.c", i32 558, i32 1}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/qcom/qdsp6/q6adm.c", i32 575, i32 3}
!40 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @q6adm_close._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @q6adm_close._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @__ksymtab_q6adm_close, !44, !"__ksymtab_q6adm_close", i1 false, i1 false}
!44 = !{!"../sound/soc/qcom/qdsp6/q6adm.c", i32 583, i32 1}
!45 = !{ptr @__initcall__kmod_q6adm__183_624_qcom_q6adm_driver_init6, !46, !"__initcall__kmod_q6adm__183_624_qcom_q6adm_driver_init6", i1 false, i1 false}
!46 = !{!"../sound/soc/qcom/qdsp6/q6adm.c", i32 624, i32 1}
!47 = !{ptr @__exitcall_qcom_q6adm_driver_exit, !46, !"__exitcall_qcom_q6adm_driver_exit", i1 false, i1 false}
!48 = !{ptr @__UNIQUE_ID_description184, !49, !"__UNIQUE_ID_description184", i1 false, i1 false}
!49 = !{!"../sound/soc/qcom/qdsp6/q6adm.c", i32 625, i32 1}
!50 = !{ptr @__UNIQUE_ID_file185, !51, !"__UNIQUE_ID_file185", i1 false, i1 false}
!51 = !{!"../sound/soc/qcom/qdsp6/q6adm.c", i32 626, i32 1}
!52 = !{ptr @__UNIQUE_ID_license186, !51, !"__UNIQUE_ID_license186", i1 false, i1 false}
!53 = !{ptr @q6adm_alloc_copp.__key, !54, !"__key", i1 false, i1 false}
!54 = !{!"../sound/soc/qcom/qdsp6/q6adm.c", i32 232, i32 2}
!55 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/qcom/qdsp6/q6adm.c", i32 249, i32 3}
!58 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @q6adm_apr_send_copp_pkt._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @q6adm_apr_send_copp_pkt._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/qcom/qdsp6/q6adm.c", i32 266, i32 3}
!63 = !{ptr @q6adm_apr_send_copp_pkt._entry.26, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @q6adm_apr_send_copp_pkt._entry_ptr.28, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @q6adm_apr_send_copp_pkt._entry.29, !66, !"_entry", i1 false, i1 false}
!66 = !{!"../sound/soc/qcom/qdsp6/q6adm.c", i32 269, i32 3}
!67 = !{ptr @q6adm_apr_send_copp_pkt._entry_ptr.30, !66, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/qcom/qdsp6/q6adm.c", i32 619, i32 11}
!70 = !{ptr @qcom_q6adm_driver, !71, !"qcom_q6adm_driver", i1 false, i1 false}
!71 = !{!"../sound/soc/qcom/qdsp6/q6adm.c", i32 615, i32 26}
!72 = !{ptr @q6adm_probe.__key, !73, !"__key", i1 false, i1 false}
!73 = !{!"../sound/soc/qcom/qdsp6/q6adm.c", i32 598, i32 2}
!74 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @q6adm_probe.__key.33, !76, !"__key", i1 false, i1 false}
!76 = !{!"../sound/soc/qcom/qdsp6/q6adm.c", i32 599, i32 2}
!77 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @q6adm_probe.__key.35, !79, !"__key", i1 false, i1 false}
!79 = !{!"../sound/soc/qcom/qdsp6/q6adm.c", i32 602, i32 2}
!80 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/qcom/qdsp6/q6adm.c", i32 139, i32 3}
!83 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @q6adm_callback._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @q6adm_callback._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/qcom/qdsp6/q6adm.c", i32 144, i32 3}
!88 = !{ptr @q6adm_callback._entry.39, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @q6adm_callback._entry_ptr.41, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/qcom/qdsp6/q6adm.c", i32 152, i32 4}
!92 = !{ptr @q6adm_callback._entry.42, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @q6adm_callback._entry_ptr.44, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/qcom/qdsp6/q6adm.c", i32 172, i32 4}
!96 = !{ptr @q6adm_callback._entry.45, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @q6adm_callback._entry_ptr.47, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/qcom/qdsp6/q6adm.c", i32 190, i32 4}
!100 = !{ptr @q6adm_callback._entry.48, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @q6adm_callback._entry_ptr.50, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/qcom/qdsp6/q6adm.c", i32 204, i32 3}
!104 = !{ptr @q6adm_callback._entry.51, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @q6adm_callback._entry_ptr.53, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @q6adm_device_id, !107, !"q6adm_device_id", i1 false, i1 false}
!107 = !{!"../sound/soc/qcom/qdsp6/q6adm.c", i32 608, i32 34}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = !{i64 2148478947, i64 2148478979, i64 2148479008, i64 2148479042, i64 2148479073, i64 2148479096}
!118 = !{!"branch_weights", i32 1, i32 2000}
!119 = !{!"branch_weights", i32 2000, i32 1}
!120 = !{i64 2148566948}
!121 = !{i64 2148481412, i64 2148481444, i64 2148481473, i64 2148481507, i64 2148481538, i64 2148481561}
!122 = !{i64 2149612918}

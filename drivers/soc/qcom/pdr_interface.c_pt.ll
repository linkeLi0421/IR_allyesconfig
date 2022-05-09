; ModuleID = '/llk/IR_all_yes/drivers/soc/qcom/pdr_interface.c_pt.bc'
source_filename = "../drivers/soc/qcom/pdr_interface.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+pdr_add_lookup\22, \22a\22\09"
module asm "\09.weak\09__crc_pdr_add_lookup\09\09\09\09"
module asm "\09.long\09__crc_pdr_add_lookup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pdr_add_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22pdr_add_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_pdr_add_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pdr_restart_pd\22, \22a\22\09"
module asm "\09.weak\09__crc_pdr_restart_pd\09\09\09\09"
module asm "\09.long\09__crc_pdr_restart_pd\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pdr_restart_pd:\09\09\09\09\09"
module asm "\09.asciz \09\22pdr_restart_pd\22\09\09\09\09\09"
module asm "__kstrtabns_pdr_restart_pd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pdr_handle_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_pdr_handle_alloc\09\09\09\09"
module asm "\09.long\09__crc_pdr_handle_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pdr_handle_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22pdr_handle_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_pdr_handle_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pdr_handle_release\22, \22a\22\09"
module asm "\09.weak\09__crc_pdr_handle_release\09\09\09\09"
module asm "\09.long\09__crc_pdr_handle_release\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pdr_handle_release:\09\09\09\09\09"
module asm "\09.asciz \09\22pdr_handle_release\22\09\09\09\09\09"
module asm "__kstrtabns_pdr_handle_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.qmi_elem_info = type { i32, i32, i32, i32, i8, i32, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.qmi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qmi_msg_handler = type { i32, i32, ptr, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.pdr_service = type { [65 x i8], [65 x i8], %struct.sockaddr_qrtr, i32, i32, i8, i32, i32, i8, i8, i8, i8, %struct.list_head }
%struct.sockaddr_qrtr = type { i16, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pdr_handle = type { %struct.qmi_handle, %struct.qmi_handle, %struct.sockaddr_qrtr, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.mutex, i8, %struct.work_struct, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, ptr }
%struct.qmi_handle = type { ptr, %struct.mutex, %struct.sockaddr_qrtr, %struct.work_struct, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.qmi_ops, %struct.idr, %struct.mutex, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.servreg_restart_pd_resp = type { %struct.qmi_response_type_v01 }
%struct.qmi_response_type_v01 = type { i16, i16 }
%struct.servreg_restart_pd_req = type { [65 x i8] }
%struct.qmi_txn = type { ptr, i16, %struct.mutex, %struct.completion, i32, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.servreg_get_domain_list_req = type { [65 x i8], i8, i32 }
%struct.servreg_get_domain_list_resp = type { %struct.qmi_response_type_v01, i8, i16, i8, i16, i8, i32, [32 x %struct.servreg_location_entry] }
%struct.servreg_location_entry = type { [65 x i8], i8, i32, i32 }
%struct.servreg_register_listener_resp = type { %struct.qmi_response_type_v01, i8, i32 }
%struct.servreg_register_listener_req = type { i8, [65 x i8] }
%struct.servreg_set_ack_resp = type { %struct.qmi_response_type_v01 }
%struct.servreg_set_ack_req = type { [65 x i8], i16 }
%struct.qmi_service = type { i32, i32, i32, i32, i32, ptr, %struct.list_head }
%struct.servreg_state_updated_ind = type { i32, [65 x i8], i16 }
%struct.pdr_list_node = type { i32, i16, ptr, %struct.list_head }

@servreg_location_entry_ei = dso_local global { [5 x %struct.qmi_elem_info], [52 x i8] } { [5 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 10, i32 65, i32 1, i32 0, i8 0, i32 0, ptr null }, %struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 0, i32 72, ptr null }, %struct.qmi_elem_info { i32 3, i32 1, i32 1, i32 0, i8 0, i32 65, ptr null }, %struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 0, i32 68, ptr null }, %struct.qmi_elem_info zeroinitializer], [52 x i8] zeroinitializer }, align 32
@servreg_get_domain_list_req_ei = dso_local global { [4 x %struct.qmi_elem_info], [48 x i8] } { [4 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 10, i32 65, i32 1, i32 0, i8 1, i32 0, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 16, i32 65, ptr null }, %struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 16, i32 68, ptr null }, %struct.qmi_elem_info zeroinitializer], [48 x i8] zeroinitializer }, align 32
@qmi_response_type_v01_ei = external dso_local global [0 x %struct.qmi_elem_info], align 4
@servreg_get_domain_list_resp_ei = dso_local global { [9 x %struct.qmi_elem_info], [36 x i8] } { [9 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 9, i32 1, i32 4, i32 0, i8 2, i32 0, ptr @qmi_response_type_v01_ei }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 16, i32 4, ptr null }, %struct.qmi_elem_info { i32 4, i32 1, i32 2, i32 0, i8 16, i32 6, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 17, i32 8, ptr null }, %struct.qmi_elem_info { i32 4, i32 1, i32 2, i32 0, i8 17, i32 10, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 18, i32 12, ptr null }, %struct.qmi_elem_info { i32 2, i32 1, i32 1, i32 0, i8 18, i32 16, ptr null }, %struct.qmi_elem_info { i32 9, i32 32, i32 76, i32 2, i8 18, i32 20, ptr @servreg_location_entry_ei }, %struct.qmi_elem_info zeroinitializer], [36 x i8] zeroinitializer }, align 32
@servreg_register_listener_req_ei = dso_local global { [3 x %struct.qmi_elem_info], [44 x i8] } { [3 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 3, i32 1, i32 1, i32 0, i8 1, i32 0, ptr null }, %struct.qmi_elem_info { i32 10, i32 65, i32 1, i32 0, i8 2, i32 1, ptr null }, %struct.qmi_elem_info zeroinitializer], [44 x i8] zeroinitializer }, align 32
@servreg_register_listener_resp_ei = dso_local global { [4 x %struct.qmi_elem_info], [48 x i8] } { [4 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 9, i32 1, i32 4, i32 0, i8 2, i32 0, ptr @qmi_response_type_v01_ei }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 16, i32 4, ptr null }, %struct.qmi_elem_info { i32 8, i32 1, i32 4, i32 0, i8 16, i32 8, ptr null }, %struct.qmi_elem_info zeroinitializer], [48 x i8] zeroinitializer }, align 32
@servreg_restart_pd_req_ei = dso_local global { [2 x %struct.qmi_elem_info], [40 x i8] } { [2 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 10, i32 65, i32 1, i32 0, i8 1, i32 0, ptr null }, %struct.qmi_elem_info zeroinitializer], [40 x i8] zeroinitializer }, align 32
@servreg_restart_pd_resp_ei = dso_local global { [2 x %struct.qmi_elem_info], [40 x i8] } { [2 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 9, i32 1, i32 4, i32 0, i8 2, i32 0, ptr @qmi_response_type_v01_ei }, %struct.qmi_elem_info zeroinitializer], [40 x i8] zeroinitializer }, align 32
@servreg_state_updated_ind_ei = dso_local global { [4 x %struct.qmi_elem_info], [48 x i8] } { [4 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 8, i32 1, i32 4, i32 0, i8 1, i32 0, ptr null }, %struct.qmi_elem_info { i32 10, i32 65, i32 1, i32 0, i8 2, i32 4, ptr null }, %struct.qmi_elem_info { i32 4, i32 1, i32 2, i32 0, i8 3, i32 70, ptr null }, %struct.qmi_elem_info zeroinitializer], [48 x i8] zeroinitializer }, align 32
@servreg_set_ack_req_ei = dso_local global { [3 x %struct.qmi_elem_info], [44 x i8] } { [3 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 10, i32 65, i32 1, i32 0, i8 1, i32 0, ptr null }, %struct.qmi_elem_info { i32 4, i32 1, i32 2, i32 0, i8 2, i32 66, ptr null }, %struct.qmi_elem_info zeroinitializer], [44 x i8] zeroinitializer }, align 32
@servreg_set_ack_resp_ei = dso_local global { [2 x %struct.qmi_elem_info], [40 x i8] } { [2 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 9, i32 1, i32 4, i32 0, i8 2, i32 0, ptr @qmi_response_type_v01_ei }, %struct.qmi_elem_info zeroinitializer], [40 x i8] zeroinitializer }, align 32
@__kstrtab_pdr_add_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_pdr_add_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_pdr_add_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pdr_add_lookup to i32), ptr @__kstrtab_pdr_add_lookup, ptr @__kstrtabns_pdr_add_lookup }, section "___ksymtab+pdr_add_lookup", align 4
@pdr_restart_pd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 617, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013PDR: %s PD restart txn wait failed: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pdr_restart_pd\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/soc/qcom/pdr_interface.c\00", [63 x i8] zeroinitializer }, align 32
@pdr_restart_pd._entry_ptr = internal global ptr @pdr_restart_pd._entry, section ".printk_index", align 4
@pdr_restart_pd._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 625, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013PDR: %s PD restart is disabled: 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@pdr_restart_pd._entry_ptr.5 = internal global ptr @pdr_restart_pd._entry.3, section ".printk_index", align 4
@pdr_restart_pd._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 632, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013PDR: %s request for PD restart failed: 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@pdr_restart_pd._entry_ptr.8 = internal global ptr @pdr_restart_pd._entry.6, section ".printk_index", align 4
@__kstrtab_pdr_restart_pd = external dso_local constant [0 x i8], align 1
@__kstrtabns_pdr_restart_pd = external dso_local constant [0 x i8], align 1
@__ksymtab_pdr_restart_pd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pdr_restart_pd to i32), ptr @__kstrtab_pdr_restart_pd, ptr @__kstrtabns_pdr_restart_pd }, section "___ksymtab+pdr_restart_pd", align 4
@pdr_handle_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&pdr->status_lock\00", [46 x i8] zeroinitializer }, align 32
@pdr_handle_alloc.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&pdr->list_lock\00", [16 x i8] zeroinitializer }, align 32
@pdr_handle_alloc.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&pdr->lock\00", [21 x i8] zeroinitializer }, align 32
@pdr_handle_alloc.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&pdr->locator_work)\00", [58 x i8] zeroinitializer }, align 32
@pdr_handle_alloc.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&pdr->notifier_work)\00", [57 x i8] zeroinitializer }, align 32
@pdr_handle_alloc.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&pdr->indack_work)\00", [59 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pdr_notifier_wq\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pdr_indack_wq\00", [18 x i8] zeroinitializer }, align 32
@pdr_locator_ops = internal constant { %struct.qmi_ops, [40 x i8] } { %struct.qmi_ops { ptr @pdr_locator_new_server, ptr @pdr_locator_del_server, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pdr_notifier_ops = internal constant { %struct.qmi_ops, [40 x i8] } { %struct.qmi_ops { ptr @pdr_notifier_new_server, ptr @pdr_notifier_del_server, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qmi_indication_handler = internal constant { [2 x %struct.qmi_msg_handler], [56 x i8] } { [2 x %struct.qmi_msg_handler] [%struct.qmi_msg_handler { i32 4, i32 34, ptr @servreg_state_updated_ind_ei, i32 72, ptr @pdr_indication_cb }, %struct.qmi_msg_handler zeroinitializer], [56 x i8] zeroinitializer }, align 32
@__kstrtab_pdr_handle_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_pdr_handle_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_pdr_handle_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pdr_handle_alloc to i32), ptr @__kstrtab_pdr_handle_alloc, ptr @__kstrtabns_pdr_handle_alloc }, section "___ksymtab+pdr_handle_alloc", align 4
@__kstrtab_pdr_handle_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_pdr_handle_release = external dso_local constant [0 x i8], align 1
@__ksymtab_pdr_handle_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pdr_handle_release to i32), ptr @__kstrtab_pdr_handle_release, ptr @__kstrtabns_pdr_handle_release }, section "___ksymtab+pdr_handle_release", align 4
@__UNIQUE_ID_file176 = internal constant [50 x i8] c"pdr_interface.file=drivers/soc/qcom/pdr_interface\00", section ".modinfo", align 1
@__UNIQUE_ID_license177 = internal constant [29 x i8] c"pdr_interface.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description178 = internal constant [69 x i8] c"pdr_interface.description=Qualcomm Protection Domain Restart helpers\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@pdr_locator_work.__UNIQUE_ID_ddebug175 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pdr_interface\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pdr_locator_work\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"PDR: SERVICE LOCATOR service not available\0A\00", [52 x i8] zeroinitializer }, align 32
@pdr_get_domain_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013PDR: %s get domain list txn wait failed: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pdr_get_domain_list\00", [44 x i8] zeroinitializer }, align 32
@pdr_get_domain_list._entry_ptr = internal global ptr @pdr_get_domain_list._entry, section ".printk_index", align 4
@pdr_get_domain_list._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013PDR: %s get domain list failed: 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@pdr_get_domain_list._entry_ptr.30 = internal global ptr @pdr_get_domain_list._entry.28, section ".printk_index", align 4
@pdr_notify_lookup_failure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013PDR: service lookup for %s failed: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pdr_notify_lookup_failure\00", [38 x i8] zeroinitializer }, align 32
@pdr_notify_lookup_failure._entry_ptr = internal global ptr @pdr_notify_lookup_failure._entry, section ".printk_index", align 4
@pdr_register_listener._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013PDR: %s register listener txn wait failed: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pdr_register_listener\00", [42 x i8] zeroinitializer }, align 32
@pdr_register_listener._entry_ptr = internal global ptr @pdr_register_listener._entry, section ".printk_index", align 4
@pdr_register_listener._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013PDR: %s register listener failed: 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@pdr_register_listener._entry_ptr.37 = internal global ptr @pdr_register_listener._entry.35, section ".printk_index", align 4
@pdr_indication_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016PDR: Indication received from %s, state: 0x%x, trans-id: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pdr_indication_cb\00", [46 x i8] zeroinitializer }, align 32
@pdr_indication_cb._entry_ptr = internal global ptr @pdr_indication_cb._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@___asan_gen_.40 = private unnamed_addr constant [26 x i8] c"servreg_location_entry_ei\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 31, i32 22 }
@___asan_gen_.43 = private unnamed_addr constant [31 x i8] c"servreg_get_domain_list_req_ei\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 77, i32 22 }
@___asan_gen_.46 = private unnamed_addr constant [32 x i8] c"servreg_get_domain_list_resp_ei\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 119, i32 22 }
@___asan_gen_.49 = private unnamed_addr constant [33 x i8] c"servreg_register_listener_req_ei\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 202, i32 22 }
@___asan_gen_.52 = private unnamed_addr constant [34 x i8] c"servreg_register_listener_resp_ei\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 230, i32 22 }
@___asan_gen_.55 = private unnamed_addr constant [26 x i8] c"servreg_restart_pd_req_ei\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 266, i32 22 }
@___asan_gen_.58 = private unnamed_addr constant [27 x i8] c"servreg_restart_pd_resp_ei\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 283, i32 22 }
@___asan_gen_.61 = private unnamed_addr constant [29 x i8] c"servreg_state_updated_ind_ei\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 303, i32 22 }
@___asan_gen_.64 = private unnamed_addr constant [23 x i8] c"servreg_set_ack_req_ei\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 339, i32 22 }
@___asan_gen_.67 = private unnamed_addr constant [24 x i8] c"servreg_set_ack_resp_ei\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [35 x i8] c"../drivers/soc/qcom/pdr_internal.h\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 365, i32 22 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 616, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 624, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 631, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 666, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 667, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 668, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 673, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 674, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 675, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 677, i32 21 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 683, i32 19 }
@___asan_gen_.139 = private unnamed_addr constant [16 x i8] c"pdr_locator_ops\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 113, i32 29 }
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"pdr_notifier_ops\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 241, i32 29 }
@___asan_gen_.145 = private unnamed_addr constant [23 x i8] c"qmi_indication_handler\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 346, i32 37 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 476, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 382, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 388, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 451, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 148, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 154, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.203 = private constant [36 x i8] c"../drivers/soc/qcom/pdr_interface.c\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 327, i32 2 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @__UNIQUE_ID_description178, ptr @__UNIQUE_ID_file176, ptr @__UNIQUE_ID_license177, ptr @__ksymtab_pdr_add_lookup, ptr @__ksymtab_pdr_handle_alloc, ptr @__ksymtab_pdr_handle_release, ptr @__ksymtab_pdr_restart_pd, ptr @pdr_get_domain_list._entry, ptr @pdr_get_domain_list._entry.28, ptr @pdr_get_domain_list._entry_ptr, ptr @pdr_get_domain_list._entry_ptr.30, ptr @pdr_indication_cb._entry, ptr @pdr_indication_cb._entry_ptr, ptr @pdr_notify_lookup_failure._entry, ptr @pdr_notify_lookup_failure._entry_ptr, ptr @pdr_register_listener._entry, ptr @pdr_register_listener._entry.35, ptr @pdr_register_listener._entry_ptr, ptr @pdr_register_listener._entry_ptr.37, ptr @pdr_restart_pd._entry, ptr @pdr_restart_pd._entry.3, ptr @pdr_restart_pd._entry.6, ptr @pdr_restart_pd._entry_ptr, ptr @pdr_restart_pd._entry_ptr.5, ptr @pdr_restart_pd._entry_ptr.8, ptr @servreg_location_entry_ei, ptr @servreg_get_domain_list_req_ei, ptr @servreg_get_domain_list_resp_ei, ptr @servreg_register_listener_req_ei, ptr @servreg_register_listener_resp_ei, ptr @servreg_restart_pd_req_ei, ptr @servreg_restart_pd_resp_ei, ptr @servreg_state_updated_ind_ei, ptr @servreg_set_ack_req_ei, ptr @servreg_set_ack_resp_ei, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @pdr_handle_alloc.__key, ptr @.str.9, ptr @pdr_handle_alloc.__key.10, ptr @.str.11, ptr @pdr_handle_alloc.__key.12, ptr @.str.13, ptr @pdr_handle_alloc.__key.14, ptr @.str.15, ptr @pdr_handle_alloc.__key.16, ptr @.str.17, ptr @pdr_handle_alloc.__key.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @pdr_locator_ops, ptr @pdr_notifier_ops, ptr @qmi_indication_handler, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @servreg_location_entry_ei to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @servreg_get_domain_list_req_ei to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @servreg_get_domain_list_resp_ei to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @servreg_register_listener_req_ei to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @servreg_register_listener_resp_ei to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @servreg_restart_pd_req_ei to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @servreg_restart_pd_resp_ei to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @servreg_state_updated_ind_ei to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @servreg_set_ack_req_ei to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @servreg_set_ack_resp_ei to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdr_restart_pd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdr_restart_pd._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdr_restart_pd._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdr_handle_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdr_handle_alloc.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdr_handle_alloc.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdr_handle_alloc.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdr_handle_alloc.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdr_handle_alloc.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdr_locator_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdr_notifier_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_indication_handler to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdr_get_domain_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdr_get_domain_list._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdr_notify_lookup_failure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdr_register_listener._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdr_register_listener._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdr_indication_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pdr_add_lookup(ptr noundef %pdr, ptr noundef %service_name, ptr noundef %service_path) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %pdr, null
  %cmp.i = icmp ugt ptr %pdr, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  %tobool.not = icmp eq ptr %service_name, null
  %or.cond65 = or i1 %spec.select.i, %tobool.not
  br i1 %or.cond65, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @strlen(ptr noundef nonnull %service_name) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call2)
  %cmp = icmp ugt i32 %call2, 64
  %tobool4.not = icmp eq ptr %service_path, null
  %or.cond = or i1 %tobool4.not, %cmp
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call i32 @strlen(ptr noundef nonnull %service_path) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call6)
  %cmp7 = icmp ugt i32 %call6, 64
  br i1 %cmp7, label %lor.lhs.false5.cleanup_crit_edge, label %if.end10

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 176) #10
  %tobool12.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %service = getelementptr inbounds %struct.pdr_service, ptr %call7.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %service to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 66, ptr %service, align 4
  %call17 = tail call i32 @strscpy(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %service_name, i32 noundef 65) #6
  %service_path18 = getelementptr inbounds %struct.pdr_service, ptr %call7.i.i, i32 0, i32 1
  %call20 = tail call i32 @strscpy(ptr noundef %service_path18, ptr noundef nonnull %service_path, i32 noundef 65) #6
  %need_locator_lookup = getelementptr inbounds %struct.pdr_service, ptr %call7.i.i, i32 0, i32 10
  %2 = ptrtoint ptr %need_locator_lookup to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %need_locator_lookup, align 2
  %list_lock = getelementptr inbounds %struct.pdr_handle, ptr %pdr, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %list_lock, i32 noundef 0) #6
  %lookups = getelementptr inbounds %struct.pdr_handle, ptr %pdr, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end15
  %.pn.in = phi ptr [ %lookups, %if.end15 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %3 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp23.not = icmp eq ptr %.pn, %lookups
  br i1 %cmp23.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %service_path24 = getelementptr i8, ptr %.pn, i32 -103
  %call26 = tail call i32 @strcmp(ptr noundef %service_path24, ptr noundef nonnull %service_path) #9
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

if.end29:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %list_lock) #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %node36 = getelementptr inbounds %struct.pdr_service, ptr %call7.i.i, i32 0, i32 12
  %4 = ptrtoint ptr %lookups to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lookups, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node36, ptr noundef %lookups, ptr noundef %5) #6
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_add.exit_crit_edge

for.end.list_add.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %node36, ptr %prev1.i.i, align 4
  %7 = ptrtoint ptr %node36 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %node36, align 8
  %prev3.i.i = getelementptr inbounds %struct.pdr_service, ptr %call7.i.i, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %lookups, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %lookups to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %node36, ptr %lookups, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %for.end.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %list_lock) #6
  %locator_work = getelementptr inbounds %struct.pdr_handle, ptr %pdr, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i64 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %locator_work) #6
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %if.end29, %if.end10.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -114 to ptr), %if.end29 ], [ %call7.i.i, %list_add.exit ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false5.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end10.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pdr_restart_pd(ptr noundef %pdr, ptr noundef %pds) #0 align 64 {
entry:
  %resp = alloca %struct.servreg_restart_pd_resp, align 2
  %req = alloca %struct.servreg_restart_pd_req, align 1
  %addr = alloca %struct.sockaddr_qrtr, align 4
  %txn = alloca %struct.qmi_txn, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #6
  %0 = ptrtoint ptr %resp to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %resp, align 2, !annotation !118
  %1 = getelementptr inbounds %struct.qmi_response_type_v01, ptr %resp, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %1, align 2, !annotation !118
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %req) #6
  %3 = call ptr @memset(ptr %req, i32 0, i32 65)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %addr) #6
  %4 = call ptr @memset(ptr %addr, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %txn) #6
  %5 = call ptr @memset(ptr %txn, i32 255, i32 168)
  %tobool.not.i = icmp eq ptr %pdr, null
  %cmp.i = icmp ugt ptr %pdr, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %tobool.not.i99 = icmp eq ptr %pds, null
  %cmp.i100 = icmp ugt ptr %pds, inttoptr (i32 -4096 to ptr)
  %spec.select.i101 = or i1 %tobool.not.i99, %cmp.i100
  br i1 %spec.select.i101, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %list_lock = getelementptr inbounds %struct.pdr_handle, ptr %pdr, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %list_lock, i32 noundef 0) #6
  %lookups = getelementptr inbounds %struct.pdr_handle, ptr %pdr, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ %lookups, %if.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %6 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %lookups
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.cond
  %tmp.0 = getelementptr i8, ptr %.pn, i32 -168
  %cmp4.not = icmp eq ptr %tmp.0, %pds
  br i1 %cmp4.not, label %if.end6, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

if.end6:                                          ; preds = %for.body
  %service_connected = getelementptr inbounds %struct.pdr_service, ptr %pds, i32 0, i32 11
  %7 = ptrtoint ptr %service_connected to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %service_connected, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end6.for.end_crit_edge, label %if.end8

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end8:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %service_path9 = getelementptr inbounds %struct.pdr_service, ptr %pds, i32 0, i32 1
  %call11 = call i32 @strscpy(ptr noundef nonnull %req, ptr noundef %service_path9, i32 noundef 65) #6
  %addr12 = getelementptr inbounds %struct.pdr_service, ptr %pds, i32 0, i32 2
  %9 = call ptr @memcpy(ptr %addr, ptr %addr12, i32 12)
  br label %for.end

for.end:                                          ; preds = %if.end8, %if.end6.for.end_crit_edge, %for.cond.for.end_crit_edge
  call void @mutex_unlock(ptr noundef %list_lock) #6
  %10 = ptrtoint ptr %req to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %req, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool20.not = icmp eq i8 %11, 0
  br i1 %tobool20.not, label %for.end.cleanup_crit_edge, label %if.end22

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %for.end
  %notifier_hdl = getelementptr inbounds %struct.pdr_handle, ptr %pdr, i32 0, i32 1
  %call23 = call i32 @qmi_txn_init(ptr noundef %notifier_hdl, ptr noundef nonnull %txn, ptr noundef nonnull @servreg_restart_pd_resp_ei, ptr noundef nonnull %resp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end22.cleanup_crit_edge, label %if.end26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %call28 = call i32 @qmi_send_request(ptr noundef %notifier_hdl, ptr noundef nonnull %addr, ptr noundef nonnull %txn, i32 noundef 36, i32 noundef 67, ptr noundef nonnull @servreg_restart_pd_req_ei, ptr noundef nonnull %req) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  call void @qmi_txn_cancel(ptr noundef nonnull %txn) #6
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  %call32 = call i32 @qmi_txn_wait(ptr noundef nonnull %txn, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %do.end, label %if.end39

do.end:                                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %req, i32 noundef %call32) #11
  br label %cleanup

if.end39:                                         ; preds = %if.end31
  %12 = ptrtoint ptr %resp to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %resp, align 2
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i16 %13, label %if.end39.do.end67_crit_edge [
    i16 1, label %land.lhs.true
    i16 0, label %if.end39.cleanup_crit_edge
  ]

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end39.do.end67_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.end39
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 69, i16 %16)
  %cmp45 = icmp eq i16 %16, 69
  br i1 %cmp45, label %do.end50, label %land.lhs.true.do.end67_crit_edge

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

do.end50:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull %req, i32 noundef 69) #11
  br label %cleanup

do.end67:                                         ; preds = %land.lhs.true.do.end67_crit_edge, %if.end39.do.end67_crit_edge
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %1, align 2
  %conv73 = zext i16 %18 to i32
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull %req, i32 noundef %conv73) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end67, %do.end50, %if.end39.cleanup_crit_edge, %do.end, %if.then30, %if.end22.cleanup_crit_edge, %for.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %if.then30 ], [ %call32, %do.end ], [ -95, %do.end50 ], [ -121, %do.end67 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.end.cleanup_crit_edge ], [ %call23, %if.end22.cleanup_crit_edge ], [ 0, %if.end39.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %txn) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %addr) #6
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %req) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qmi_txn_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qmi_send_request(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qmi_txn_cancel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qmi_txn_wait(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pdr_handle_alloc(ptr noundef %status, ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %status, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1192) #10
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %status6 = getelementptr inbounds %struct.pdr_handle, ptr %call7.i.i, i32 0, i32 14
  %1 = ptrtoint ptr %status6 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %status, ptr %status6, align 8
  %priv7 = getelementptr inbounds %struct.pdr_handle, ptr %call7.i.i, i32 0, i32 15
  %2 = ptrtoint ptr %priv7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %priv, ptr %priv7, align 4
  %status_lock = getelementptr inbounds %struct.pdr_handle, ptr %call7.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %status_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @pdr_handle_alloc.__key) #6
  %list_lock = getelementptr inbounds %struct.pdr_handle, ptr %call7.i.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %list_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @pdr_handle_alloc.__key.10) #6
  %lock = getelementptr inbounds %struct.pdr_handle, ptr %call7.i.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @pdr_handle_alloc.__key.12) #6
  %lookups = getelementptr inbounds %struct.pdr_handle, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %lookups to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %lookups, ptr %lookups, align 4
  %prev.i = getelementptr inbounds %struct.pdr_handle, ptr %call7.i.i, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %lookups, ptr %prev.i, align 8
  %indack_list = getelementptr inbounds %struct.pdr_handle, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %indack_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %indack_list, ptr %indack_list, align 4
  %prev.i113 = getelementptr inbounds %struct.pdr_handle, ptr %call7.i.i, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %prev.i113 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %indack_list, ptr %prev.i113, align 8
  %locator_work = getelementptr inbounds %struct.pdr_handle, ptr %call7.i.i, i32 0, i32 9
  tail call void @__init_work(ptr noundef %locator_work, i32 noundef 0) #6
  %7 = ptrtoint ptr %locator_work to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %locator_work, align 4
  %lockdep_map = getelementptr inbounds %struct.pdr_handle, ptr %call7.i.i, i32 0, i32 9, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.15, ptr noundef nonnull @pdr_handle_alloc.__key.14, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry18 = getelementptr inbounds %struct.pdr_handle, ptr %call7.i.i, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %entry18 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry18, ptr %entry18, align 8
  %prev.i114 = getelementptr inbounds %struct.pdr_handle, ptr %call7.i.i, i32 0, i32 9, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i114 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry18, ptr %prev.i114, align 4
  %func = getelementptr inbounds %struct.pdr_handle, ptr %call7.i.i, i32 0, i32 9, i32 2
  %10 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @pdr_locator_work, ptr %func, align 8
  %notifier_work = getelementptr inbounds %struct.pdr_handle, ptr %call7.i.i, i32 0, i32 10
  tail call void @__init_work(ptr noundef %notifier_work, i32 noundef 0) #6
  %11 = ptrtoint ptr %notifier_work to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -64, ptr %notifier_work, align 8
  %lockdep_map28 = getelementptr inbounds %struct.pdr_handle, ptr %call7.i.i, i32 0, i32 10, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map28, ptr noundef nonnull @.str.17, ptr noundef nonnull @pdr_handle_alloc.__key.16, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry30 = getelementptr inbounds %struct.pdr_handle, ptr %call7.i.i, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %entry30 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entry30, ptr %entry30, align 4
  %prev.i115 = getelementptr inbounds %struct.pdr_handle, ptr %call7.i.i, i32 0, i32 10, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i115 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %entry30, ptr %prev.i115, align 8
  %func32 = getelementptr inbounds %struct.pdr_handle, ptr %call7.i.i, i32 0, i32 10, i32 2
  %14 = ptrtoint ptr %func32 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @pdr_notifier_work, ptr %func32, align 4
  %indack_work = getelementptr inbounds %struct.pdr_handle, ptr %call7.i.i, i32 0, i32 11
  tail call void @__init_work(ptr noundef %indack_work, i32 noundef 0) #6
  %15 = ptrtoint ptr %indack_work to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -64, ptr %indack_work, align 4
  %lockdep_map41 = getelementptr inbounds %struct.pdr_handle, ptr %call7.i.i, i32 0, i32 11, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map41, ptr noundef nonnull @.str.19, ptr noundef nonnull @pdr_handle_alloc.__key.18, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry43 = getelementptr inbounds %struct.pdr_handle, ptr %call7.i.i, i32 0, i32 11, i32 1
  %16 = ptrtoint ptr %entry43 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry43, ptr %entry43, align 8
  %prev.i116 = getelementptr inbounds %struct.pdr_handle, ptr %call7.i.i, i32 0, i32 11, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i116 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entry43, ptr %prev.i116, align 4
  %func45 = getelementptr inbounds %struct.pdr_handle, ptr %call7.i.i, i32 0, i32 11, i32 2
  %18 = ptrtoint ptr %func45 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @pdr_indack_work, ptr %func45, align 8
  %call48 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.20, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.21) #6
  %notifier_wq = getelementptr inbounds %struct.pdr_handle, ptr %call7.i.i, i32 0, i32 12
  %19 = ptrtoint ptr %notifier_wq to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call48, ptr %notifier_wq, align 8
  %tobool50.not = icmp eq ptr %call48, null
  br i1 %tobool50.not, label %if.end5.free_pdr_handle_crit_edge, label %if.end52

if.end5.free_pdr_handle_crit_edge:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_pdr_handle

if.end52:                                         ; preds = %if.end5
  %call53 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.22, i32 noundef 655378, i32 noundef 1) #6
  %indack_wq = getelementptr inbounds %struct.pdr_handle, ptr %call7.i.i, i32 0, i32 13
  %20 = ptrtoint ptr %indack_wq to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call53, ptr %indack_wq, align 4
  %tobool55.not = icmp eq ptr %call53, null
  br i1 %tobool55.not, label %if.end52.destroy_notifier_crit_edge, label %if.end57

if.end52.destroy_notifier_crit_edge:              ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %destroy_notifier

if.end57:                                         ; preds = %if.end52
  %call58 = tail call i32 @qmi_handle_init(ptr noundef nonnull %call7.i.i, i32 noundef 2389, ptr noundef nonnull @pdr_locator_ops, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp = icmp slt i32 %call58, 0
  br i1 %cmp, label %if.end57.destroy_indack_crit_edge, label %if.end60

if.end57.destroy_indack_crit_edge:                ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %destroy_indack

if.end60:                                         ; preds = %if.end57
  %call62 = tail call i32 @qmi_add_lookup(ptr noundef nonnull %call7.i.i, i32 noundef 64, i32 noundef 1, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %if.end60.release_qmi_handle_crit_edge, label %if.end65

if.end60.release_qmi_handle_crit_edge:            ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %release_qmi_handle

if.end65:                                         ; preds = %if.end60
  %notifier_hdl = getelementptr inbounds %struct.pdr_handle, ptr %call7.i.i, i32 0, i32 1
  %call66 = tail call i32 @qmi_handle_init(ptr noundef %notifier_hdl, i32 noundef 79, ptr noundef nonnull @pdr_notifier_ops, ptr noundef nonnull @qmi_indication_handler) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.end65.release_qmi_handle_crit_edge, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end65.release_qmi_handle_crit_edge:            ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %release_qmi_handle

release_qmi_handle:                               ; preds = %if.end65.release_qmi_handle_crit_edge, %if.end60.release_qmi_handle_crit_edge
  %ret.0 = phi i32 [ %call62, %if.end60.release_qmi_handle_crit_edge ], [ %call66, %if.end65.release_qmi_handle_crit_edge ]
  tail call void @qmi_handle_release(ptr noundef nonnull %call7.i.i) #6
  br label %destroy_indack

destroy_indack:                                   ; preds = %release_qmi_handle, %if.end57.destroy_indack_crit_edge
  %ret.1 = phi i32 [ %call58, %if.end57.destroy_indack_crit_edge ], [ %ret.0, %release_qmi_handle ]
  %21 = ptrtoint ptr %indack_wq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %indack_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %22) #6
  br label %destroy_notifier

destroy_notifier:                                 ; preds = %destroy_indack, %if.end52.destroy_notifier_crit_edge
  %ret.2 = phi i32 [ %ret.1, %destroy_indack ], [ -12, %if.end52.destroy_notifier_crit_edge ]
  %23 = ptrtoint ptr %notifier_wq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %notifier_wq, align 8
  tail call void @destroy_workqueue(ptr noundef %24) #6
  br label %free_pdr_handle

free_pdr_handle:                                  ; preds = %destroy_notifier, %if.end5.free_pdr_handle_crit_edge
  %ret.3 = phi i32 [ %ret.2, %destroy_notifier ], [ -12, %if.end5.free_pdr_handle_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  %25 = inttoptr i32 %ret.3 to ptr
  br label %cleanup

cleanup:                                          ; preds = %free_pdr_handle, %if.end65.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %25, %free_pdr_handle ], [ %call7.i.i, %if.end65.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pdr_locator_work(ptr noundef %work) #0 align 64 {
entry:
  %txn.i.i = alloca %struct.qmi_txn, align 4
  %req.i = alloca %struct.servreg_get_domain_list_req, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1044
  %lock = getelementptr i8, ptr %work, i32 -96
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %locator_init_complete = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %locator_init_complete to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %locator_init_complete, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br i1 %tobool.not, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdr_locator_work.__UNIQUE_ID_ddebug175, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdr_locator_work, %if.then7)) #6
          to label %cleanup [label %if.then7], !srcloc !120

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pdr_locator_work.__UNIQUE_ID_ddebug175, ptr noundef nonnull @.str.25) #6
  br label %cleanup

if.end8:                                          ; preds = %entry
  %list_lock = getelementptr i8, ptr %work, i32 -280
  tail call void @mutex_lock_nested(ptr noundef %list_lock, i32 noundef 0) #6
  %lookups = getelementptr i8, ptr %work, i32 -296
  %2 = ptrtoint ptr %lookups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lookups, align 4
  %cmp.not89 = icmp eq ptr %3, %lookups
  br i1 %cmp.not89, label %if.end8.for.end_crit_edge, label %for.body.lr.ph

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %domain_offset_valid.i = getelementptr inbounds %struct.servreg_get_domain_list_req, ptr %req.i, i32 0, i32 1
  %domain_offset.i = getelementptr inbounds %struct.servreg_get_domain_list_req, ptr %req.i, i32 0, i32 2
  %locator_addr.i.i = getelementptr i8, ptr %work, i32 -308
  %notifier_hdl = getelementptr i8, ptr %work, i32 -676
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in90 = phi ptr [ %3, %for.body.lr.ph ], [ %.pn93, %for.inc.for.body_crit_edge ]
  %pds.091 = getelementptr i8, ptr %.pn.in90, i32 -168
  %4 = ptrtoint ptr %.pn.in90 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn93 = load ptr, ptr %.pn.in90, align 4
  %need_locator_lookup = getelementptr i8, ptr %.pn.in90, i32 -2
  %5 = ptrtoint ptr %need_locator_lookup to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %need_locator_lookup, align 2, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool21.not = icmp eq i8 %6, 0
  br i1 %tobool21.not, label %for.body.for.inc_crit_edge, label %if.end23

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end23:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %req.i) #6
  %7 = call ptr @memset(ptr %req.i, i32 255, i32 72)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 2452) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %pdr_locate_service.exit.thread, label %if.end.i

pdr_locate_service.exit.thread:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %req.i) #6
  br label %if.then26

if.end.i:                                         ; preds = %if.end23
  %call4.i = call i32 @strscpy(ptr noundef nonnull %req.i, ptr noundef %pds.091, i32 noundef 65) #6
  %9 = ptrtoint ptr %domain_offset_valid.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %domain_offset_valid.i, align 1
  %domain_list_len.i = getelementptr inbounds %struct.servreg_get_domain_list_resp, ptr %call7.i.i.i, i32 0, i32 6
  %service_path.i = getelementptr i8, ptr %.pn.in90, i32 -103
  %total_domains.i = getelementptr inbounds %struct.servreg_get_domain_list_resp, ptr %call7.i.i.i, i32 0, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %if.end32.i.do.body.i_crit_edge, %if.end.i
  %domains_read.0.i = phi i32 [ 0, %if.end.i ], [ %add.i, %if.end32.i.do.body.i_crit_edge ]
  %10 = ptrtoint ptr %domain_offset.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %domains_read.0.i, ptr %domain_offset.i, align 4
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %txn.i.i) #6
  %11 = call ptr @memset(ptr %txn.i.i, i32 255, i32 168)
  %call.i.i = call i32 @qmi_txn_init(ptr noundef %add.ptr, ptr noundef nonnull %txn.i.i, ptr noundef nonnull @servreg_get_domain_list_resp_ei, ptr noundef nonnull %call7.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.body.i.pdr_get_domain_list.exit.thread.i_crit_edge, label %if.end.i.i

do.body.i.pdr_get_domain_list.exit.thread.i_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pdr_get_domain_list.exit.thread.i

if.end.i.i:                                       ; preds = %do.body.i
  %call2.i.i = call i32 @qmi_send_request(ptr noundef %add.ptr, ptr noundef %locator_addr.i.i, ptr noundef nonnull %txn.i.i, i32 noundef 33, i32 noundef 74, ptr noundef nonnull @servreg_get_domain_list_req_ei, ptr noundef nonnull %req.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %if.then4.i.i, label %if.end5.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @qmi_txn_cancel(ptr noundef nonnull %txn.i.i) #6
  br label %pdr_get_domain_list.exit.thread.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  %call6.i.i = call i32 @qmi_txn_wait(ptr noundef nonnull %txn.i.i, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp7.i.i = icmp slt i32 %call6.i.i, 0
  br i1 %cmp7.i.i, label %do.end.i.i, label %if.end10.i.i

do.end.i.i:                                       ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull %req.i, i32 noundef %call6.i.i) #11
  br label %pdr_get_domain_list.exit.thread.i

if.end10.i.i:                                     ; preds = %if.end5.i.i
  %12 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp12.not.i.i = icmp eq i16 %13, 0
  br i1 %cmp12.not.i.i, label %pdr_get_domain_list.exit.i, label %do.end17.i.i

do.end17.i.i:                                     ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %error.i.i = getelementptr inbounds %struct.qmi_response_type_v01, ptr %call7.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %error.i.i, align 2
  %conv22.i.i = zext i16 %15 to i32
  %call23.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull %req.i, i32 noundef %conv22.i.i) #11
  br label %pdr_get_domain_list.exit.thread.i

pdr_get_domain_list.exit.thread.i:                ; preds = %do.end17.i.i, %do.end.i.i, %if.then4.i.i, %do.body.i.pdr_get_domain_list.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -121, %do.end17.i.i ], [ %call6.i.i, %do.end.i.i ], [ %call2.i.i, %if.then4.i.i ], [ %call.i.i, %do.body.i.pdr_get_domain_list.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %txn.i.i) #6
  br label %pdr_locate_service.exit.thread71

pdr_get_domain_list.exit.i:                       ; preds = %if.end10.i.i
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %txn.i.i) #6
  %16 = ptrtoint ptr %domain_list_len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %domain_list_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %domains_read.0.i, i32 %17)
  %cmp984.i = icmp ult i32 %domains_read.0.i, %17
  br i1 %cmp984.i, label %pdr_get_domain_list.exit.i.for.body.i_crit_edge, label %pdr_get_domain_list.exit.i.for.end.i_crit_edge

pdr_get_domain_list.exit.i.for.end.i_crit_edge:   ; preds = %pdr_get_domain_list.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

pdr_get_domain_list.exit.i.for.body.i_crit_edge:  ; preds = %pdr_get_domain_list.exit.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %pdr_get_domain_list.exit.i.for.body.i_crit_edge
  %i.085.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ %domains_read.0.i, %pdr_get_domain_list.exit.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.servreg_get_domain_list_resp, ptr %call7.i.i.i, i32 0, i32 7, i32 %i.085.i
  %call11.i = call i32 @strnlen(ptr noundef %arrayidx.i, i32 noundef 65) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %call11.i)
  %cmp12.i = icmp eq i32 %call11.i, 65
  br i1 %cmp12.i, label %for.body.i.for.inc.i_crit_edge, label %if.end14.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end14.i:                                       ; preds = %for.body.i
  %call18.i = call i32 @strcmp(ptr noundef %arrayidx.i, ptr noundef %service_path.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end27, label %if.end14.i.for.inc.i_crit_edge

if.end14.i.for.inc.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end14.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.085.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %17
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %pdr_get_domain_list.exit.i.for.end.i_crit_edge
  %18 = ptrtoint ptr %total_domains.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %total_domains.i, align 2
  %conv.i = zext i16 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv.i)
  %cmp26.i = icmp ugt i32 %17, %conv.i
  br i1 %cmp26.i, label %if.then28.i, label %for.end.i.if.end32.i_crit_edge

for.end.i.if.end32.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

if.then28.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %domain_list_len.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv.i, ptr %domain_list_len.i, align 8
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then28.i, %for.end.i.if.end32.i_crit_edge
  %21 = ptrtoint ptr %domain_list_len.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %domain_list_len.i, align 8
  %add.i = add i32 %22, %domains_read.0.i
  %23 = ptrtoint ptr %total_domains.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %total_domains.i, align 2
  %conv35.i = zext i16 %24 to i32
  %cmp36.i = icmp slt i32 %add.i, %conv35.i
  br i1 %cmp36.i, label %if.end32.i.do.body.i_crit_edge, label %if.end32.i.pdr_locate_service.exit.thread71_crit_edge

if.end32.i.pdr_locate_service.exit.thread71_crit_edge: ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pdr_locate_service.exit.thread71

if.end32.i.do.body.i_crit_edge:                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

pdr_locate_service.exit.thread71:                 ; preds = %if.end32.i.pdr_locate_service.exit.thread71_crit_edge, %pdr_get_domain_list.exit.thread.i
  %ret.0.i.ph = phi i32 [ %retval.0.i.ph.i, %pdr_get_domain_list.exit.thread.i ], [ -6, %if.end32.i.pdr_locate_service.exit.thread71_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %req.i) #6
  br label %if.then26

if.then26:                                        ; preds = %pdr_locate_service.exit.thread71, %pdr_locate_service.exit.thread
  %retval.0.i6670 = phi i32 [ -12, %pdr_locate_service.exit.thread ], [ %ret.0.i.ph, %pdr_locate_service.exit.thread71 ]
  call fastcc void @pdr_notify_lookup_failure(ptr noundef %add.ptr, ptr noundef %pds.091, i32 noundef %retval.0.i6670)
  br label %for.inc

if.end27:                                         ; preds = %if.end14.i
  %service_data_valid.i = getelementptr %struct.servreg_get_domain_list_resp, ptr %call7.i.i.i, i32 0, i32 7, i32 %i.085.i, i32 1
  %25 = ptrtoint ptr %service_data_valid.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %service_data_valid.i, align 1
  %service_data_valid21.i = getelementptr i8, ptr %.pn.in90, i32 -16
  %27 = ptrtoint ptr %service_data_valid21.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %service_data_valid21.i, align 4
  %service_data.i = getelementptr %struct.servreg_get_domain_list_resp, ptr %call7.i.i.i, i32 0, i32 7, i32 %i.085.i, i32 2
  %28 = ptrtoint ptr %service_data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %service_data.i, align 4
  %service_data22.i = getelementptr i8, ptr %.pn.in90, i32 -12
  %30 = ptrtoint ptr %service_data22.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %service_data22.i, align 4
  %instance.i = getelementptr %struct.servreg_get_domain_list_resp, ptr %call7.i.i.i, i32 0, i32 7, i32 %i.085.i, i32 3
  %31 = ptrtoint ptr %instance.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %instance.i, align 4
  %instance23.i = getelementptr i8, ptr %.pn.in90, i32 -24
  %33 = ptrtoint ptr %instance23.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %instance23.i, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %req.i) #6
  %service = getelementptr i8, ptr %.pn.in90, i32 -20
  %34 = ptrtoint ptr %service to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %service, align 4
  %36 = ptrtoint ptr %instance23.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %instance23.i, align 4
  %call28 = call i32 @qmi_add_lookup(ptr noundef %notifier_hdl, i32 noundef %35, i32 noundef 1, i32 noundef %37) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @pdr_notify_lookup_failure(ptr noundef %add.ptr, ptr noundef %pds.091, i32 noundef %call28)
  br label %for.inc

if.end31:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %need_locator_lookup to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %need_locator_lookup, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end31, %if.then30, %if.then26, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn93, %lookups
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end8.for.end_crit_edge
  call void @mutex_unlock(ptr noundef %list_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then7, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pdr_notifier_work(ptr noundef %work) #0 align 64 {
entry:
  %resp.i = alloca %struct.servreg_register_listener_resp, align 4
  %req.i = alloca %struct.servreg_register_listener_req, align 1
  %txn.i = alloca %struct.qmi_txn, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %list_lock = getelementptr i8, ptr %work, i32 -324
  tail call void @mutex_lock_nested(ptr noundef %list_lock, i32 noundef 0) #6
  %lookups = getelementptr i8, ptr %work, i32 -340
  %0 = ptrtoint ptr %lookups to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn46 = load ptr, ptr %lookups, align 4
  %cmp.not47 = icmp eq ptr %.pn46, %lookups
  br i1 %cmp.not47, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %1 = getelementptr inbounds i8, ptr %req.i, i32 1
  %notifier_hdl.i = getelementptr i8, ptr %work, i32 -720
  %error.i = getelementptr inbounds %struct.qmi_response_type_v01, ptr %resp.i, i32 0, i32 1
  %curr_state.i = getelementptr inbounds %struct.servreg_register_listener_resp, ptr %resp.i, i32 0, i32 2
  %status_lock = getelementptr i8, ptr %work, i32 -232
  %status = getelementptr i8, ptr %work, i32 96
  %priv = getelementptr i8, ptr %work, i32 100
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn48 = phi ptr [ %.pn46, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %service_connected = getelementptr i8, ptr %.pn48, i32 -1
  %2 = ptrtoint ptr %service_connected to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %service_connected, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %need_notifier_register = getelementptr i8, ptr %.pn48, i32 -4
  %4 = ptrtoint ptr %need_notifier_register to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %need_notifier_register, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %if.then.for.inc_crit_edge, label %if.end

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %if.then
  %6 = ptrtoint ptr %need_notifier_register to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %need_notifier_register, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %resp.i) #6
  %7 = call ptr @memset(ptr %resp.i, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %req.i) #6
  %8 = call ptr @memset(ptr %1, i32 255, i32 65)
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %txn.i) #6
  %9 = call ptr @memset(ptr %txn.i, i32 255, i32 168)
  %call.i = call i32 @qmi_txn_init(ptr noundef %notifier_hdl.i, ptr noundef nonnull %txn.i, ptr noundef nonnull @servreg_register_listener_resp_ei, ptr noundef nonnull %resp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.if.then9_crit_edge, label %if.end.i

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

if.end.i:                                         ; preds = %if.end
  %10 = ptrtoint ptr %req.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %req.i, align 1
  %service_path2.i = getelementptr i8, ptr %.pn48, i32 -103
  %call4.i = call i32 @strscpy(ptr noundef %1, ptr noundef %service_path2.i, i32 noundef 65) #6
  %addr.i = getelementptr i8, ptr %.pn48, i32 -36
  %call6.i = call i32 @qmi_send_request(ptr noundef %notifier_hdl.i, ptr noundef %addr.i, ptr noundef nonnull %txn.i, i32 noundef 32, i32 noundef 71, ptr noundef nonnull @servreg_register_listener_req_ei, ptr noundef nonnull %req.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.then9.i, label %if.end10.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @qmi_txn_cancel(ptr noundef nonnull %txn.i) #6
  br label %if.then9

if.end10.i:                                       ; preds = %if.end.i
  %call11.i = call i32 @qmi_txn_wait(ptr noundef nonnull %txn.i, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %do.end.i, label %if.end18.i

do.end.i:                                         ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %service_path2.i, i32 noundef %call11.i) #11
  br label %if.then9

if.end18.i:                                       ; preds = %if.end10.i
  %11 = ptrtoint ptr %resp.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %resp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp21.not.i = icmp eq i16 %12, 0
  br i1 %cmp21.not.i, label %pdr_register_listener.exit, label %do.end26.i

do.end26.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %error.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %error.i, align 2
  %conv31.i = zext i16 %14 to i32
  %call32.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %service_path2.i, i32 noundef %conv31.i) #11
  br label %if.then9

pdr_register_listener.exit:                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %curr_state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %curr_state.i, align 4
  %state.i = getelementptr i8, ptr %.pn48, i32 -8
  %17 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %state.i, align 4
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %txn.i) #6
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %req.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %resp.i) #6
  br label %if.end16

if.then9:                                         ; preds = %do.end26.i, %do.end.i, %if.then9.i, %if.end.if.then9_crit_edge
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %txn.i) #6
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %req.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %resp.i) #6
  %state = getelementptr i8, ptr %.pn48, i32 -8
  %18 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 268435455, ptr %state, align 4
  br label %if.end16

if.else:                                          ; preds = %for.body
  %need_notifier_remove = getelementptr i8, ptr %.pn48, i32 -3
  %19 = ptrtoint ptr %need_notifier_remove to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %need_notifier_remove, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool11.not = icmp eq i8 %20, 0
  br i1 %tobool11.not, label %if.else.for.inc_crit_edge, label %if.end13

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end13:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %need_notifier_remove to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %need_notifier_remove, align 1
  %state15 = getelementptr i8, ptr %.pn48, i32 -8
  %22 = ptrtoint ptr %state15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 268435455, ptr %state15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end13, %if.then9, %pdr_register_listener.exit
  call void @mutex_lock_nested(ptr noundef %status_lock, i32 noundef 0) #6
  %23 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %status, align 4
  %state17 = getelementptr i8, ptr %.pn48, i32 -8
  %25 = ptrtoint ptr %state17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %state17, align 4
  %service_path = getelementptr i8, ptr %.pn48, i32 -103
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv, align 4
  call void %24(i32 noundef %26, ptr noundef %service_path, ptr noundef %28) #6
  call void @mutex_unlock(ptr noundef %status_lock) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end16, %if.else.for.inc_crit_edge, %if.then.for.inc_crit_edge
  %29 = ptrtoint ptr %.pn48 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn = load ptr, ptr %.pn48, align 4
  %cmp.not = icmp eq ptr %.pn, %lookups
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @mutex_unlock(ptr noundef %list_lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pdr_indack_work(ptr noundef %work) #0 align 64 {
entry:
  %resp.i = alloca %struct.servreg_set_ack_resp, align 2
  %req.i = alloca %struct.servreg_set_ack_req, align 2
  %txn.i = alloca %struct.qmi_txn, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %indack_list = getelementptr i8, ptr %work, i32 -376
  %0 = ptrtoint ptr %indack_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %indack_list, align 4
  %cmp.not40 = icmp eq ptr %1, %indack_list
  br i1 %cmp.not40, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %status_lock = getelementptr i8, ptr %work, i32 -276
  %status = getelementptr i8, ptr %work, i32 52
  %priv = getelementptr i8, ptr %work, i32 56
  %2 = getelementptr inbounds %struct.qmi_response_type_v01, ptr %resp.i, i32 0, i32 1
  %notifier_hdl.i = getelementptr i8, ptr %work, i32 -764
  %transaction_id.i = getelementptr inbounds %struct.servreg_set_ack_req, ptr %req.i, i32 0, i32 1
  %list_lock = getelementptr i8, ptr %work, i32 -368
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in41 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn, %list_del.exit.for.body_crit_edge ]
  %ind.0 = getelementptr i8, ptr %.pn.in41, i32 -12
  %3 = ptrtoint ptr %.pn.in41 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn.in41, align 4
  %pds11 = getelementptr i8, ptr %.pn.in41, i32 -4
  %4 = ptrtoint ptr %pds11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pds11, align 4
  call void @mutex_lock_nested(ptr noundef %status_lock, i32 noundef 0) #6
  %6 = ptrtoint ptr %ind.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ind.0, align 4
  %state = getelementptr inbounds %struct.pdr_service, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %state, align 4
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %status, align 4
  %service_path = getelementptr inbounds %struct.pdr_service, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 4
  call void %10(i32 noundef %7, ptr noundef %service_path, ptr noundef %12) #6
  call void @mutex_unlock(ptr noundef %status_lock) #6
  %transaction_id = getelementptr i8, ptr %.pn.in41, i32 -8
  %13 = ptrtoint ptr %transaction_id to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %transaction_id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp.i) #6
  %15 = ptrtoint ptr %resp.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -1, ptr %resp.i, align 2, !annotation !118
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %2, align 2, !annotation !118
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %req.i) #6
  %17 = call ptr @memset(ptr %req.i, i32 255, i32 66)
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %txn.i) #6
  %18 = call ptr @memset(ptr %txn.i, i32 255, i32 168)
  %call.i = call i32 @qmi_txn_init(ptr noundef %notifier_hdl.i, ptr noundef nonnull %txn.i, ptr noundef nonnull @servreg_set_ack_resp_ei, ptr noundef nonnull %resp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %for.body.pdr_send_indack_msg.exit_crit_edge, label %if.end.i

for.body.pdr_send_indack_msg.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %pdr_send_indack_msg.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %transaction_id.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %14, ptr %transaction_id.i, align 2
  %call3.i = call i32 @strscpy(ptr noundef nonnull %req.i, ptr noundef %service_path, i32 noundef 65) #6
  %addr.i = getelementptr inbounds %struct.pdr_service, ptr %5, i32 0, i32 2
  %call5.i = call i32 @qmi_send_request(ptr noundef %notifier_hdl.i, ptr noundef %addr.i, ptr noundef nonnull %txn.i, i32 noundef 35, i32 noundef 72, ptr noundef nonnull @servreg_set_ack_req_ei, ptr noundef nonnull %req.i) #6
  call void @qmi_txn_cancel(ptr noundef nonnull %txn.i) #6
  br label %pdr_send_indack_msg.exit

pdr_send_indack_msg.exit:                         ; preds = %if.end.i, %for.body.pdr_send_indack_msg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %txn.i) #6
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %req.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp.i) #6
  call void @mutex_lock_nested(ptr noundef %list_lock, i32 noundef 0) #6
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in41) #6
  br i1 %call.i.i, label %if.end.i.i, label %pdr_send_indack_msg.exit.list_del.exit_crit_edge

pdr_send_indack_msg.exit.list_del.exit_crit_edge: ; preds = %pdr_send_indack_msg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %pdr_send_indack_msg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in41, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %.pn.in41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %.pn.in41, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %pdr_send_indack_msg.exit.list_del.exit_crit_edge
  %26 = ptrtoint ptr %.pn.in41 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in41, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in41, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @mutex_unlock(ptr noundef %list_lock) #6
  call void @kfree(ptr noundef %ind.0) #6
  %cmp.not = icmp eq ptr %.pn, %indack_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qmi_handle_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qmi_add_lookup(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qmi_handle_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pdr_handle_release(ptr noundef %pdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %pdr, null
  %cmp.i = icmp ugt ptr %pdr, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %list_lock = getelementptr inbounds %struct.pdr_handle, ptr %pdr, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %list_lock, i32 noundef 0) #6
  %lookups = getelementptr inbounds %struct.pdr_handle, ptr %pdr, i32 0, i32 3
  %0 = ptrtoint ptr %lookups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lookups, align 4
  %cmp.not36 = icmp eq ptr %1, %lookups
  br i1 %cmp.not36, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn.in37 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %1, %if.end.for.body_crit_edge ]
  %pds.0 = getelementptr i8, ptr %.pn.in37, i32 -168
  %2 = ptrtoint ptr %.pn.in37 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in37, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in37) #6
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in37, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in37 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in37, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in37 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in37, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in37, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %pds.0) #6
  %cmp.not = icmp eq ptr %.pn, %lookups
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %list_lock) #6
  %locator_work = getelementptr inbounds %struct.pdr_handle, ptr %pdr, i32 0, i32 9
  %call15 = tail call zeroext i1 @cancel_work_sync(ptr noundef %locator_work) #6
  %notifier_work = getelementptr inbounds %struct.pdr_handle, ptr %pdr, i32 0, i32 10
  %call16 = tail call zeroext i1 @cancel_work_sync(ptr noundef %notifier_work) #6
  %indack_work = getelementptr inbounds %struct.pdr_handle, ptr %pdr, i32 0, i32 11
  %call17 = tail call zeroext i1 @cancel_work_sync(ptr noundef %indack_work) #6
  %notifier_wq = getelementptr inbounds %struct.pdr_handle, ptr %pdr, i32 0, i32 12
  %11 = ptrtoint ptr %notifier_wq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %notifier_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %12) #6
  %indack_wq = getelementptr inbounds %struct.pdr_handle, ptr %pdr, i32 0, i32 13
  %13 = ptrtoint ptr %indack_wq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %indack_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %14) #6
  tail call void @qmi_handle_release(ptr noundef %pdr) #6
  %notifier_hdl = getelementptr inbounds %struct.pdr_handle, ptr %pdr, i32 0, i32 1
  tail call void @qmi_handle_release(ptr noundef %notifier_hdl) #6
  tail call void @kfree(ptr noundef %pdr) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pdr_notify_lookup_failure(ptr noundef %pdr, ptr noundef %pds, i32 noundef %err) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %pds, i32 noundef %err) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %err)
  %cmp = icmp eq i32 %err, -6
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %node = getelementptr inbounds %struct.pdr_service, ptr %pds, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.pdr_service, ptr %pds, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %6 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.pdr_service, ptr %pds, i32 0, i32 12, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %state = getelementptr inbounds %struct.pdr_service, ptr %pds, i32 0, i32 7
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %state, align 4
  %status_lock = getelementptr inbounds %struct.pdr_handle, ptr %pdr, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %status_lock, i32 noundef 0) #6
  %status = getelementptr inbounds %struct.pdr_handle, ptr %pdr, i32 0, i32 14
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %status, align 4
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state, align 4
  %service_path = getelementptr inbounds %struct.pdr_service, ptr %pds, i32 0, i32 1
  %priv = getelementptr inbounds %struct.pdr_handle, ptr %pdr, i32 0, i32 15
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 4
  tail call void %10(i32 noundef %12, ptr noundef %service_path, ptr noundef %14) #6
  tail call void @mutex_unlock(ptr noundef %status_lock) #6
  tail call void @kfree(ptr noundef %pds) #6
  br label %return

return:                                           ; preds = %list_del.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdr_locator_new_server(ptr noundef %qmi, ptr nocapture noundef readonly %svc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %locator_addr = getelementptr inbounds %struct.pdr_handle, ptr %qmi, i32 0, i32 2
  %0 = ptrtoint ptr %locator_addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 42, ptr %locator_addr, align 4
  %node = getelementptr inbounds %struct.qmi_service, ptr %svc, i32 0, i32 3
  %1 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %node, align 4
  %sq_node = getelementptr inbounds %struct.pdr_handle, ptr %qmi, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %sq_node to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %sq_node, align 4
  %port = getelementptr inbounds %struct.qmi_service, ptr %svc, i32 0, i32 4
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port, align 4
  %sq_port = getelementptr inbounds %struct.pdr_handle, ptr %qmi, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %sq_port to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %sq_port, align 4
  %lock = getelementptr inbounds %struct.pdr_handle, ptr %qmi, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %locator_init_complete = getelementptr inbounds %struct.pdr_handle, ptr %qmi, i32 0, i32 8
  %7 = ptrtoint ptr %locator_init_complete to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %locator_init_complete, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #6
  %list_lock = getelementptr inbounds %struct.pdr_handle, ptr %qmi, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %list_lock, i32 noundef 0) #6
  %lookups = getelementptr inbounds %struct.pdr_handle, ptr %qmi, i32 0, i32 3
  %8 = ptrtoint ptr %lookups to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn28 = load ptr, ptr %lookups, align 4
  %cmp.not29 = icmp eq ptr %.pn28, %lookups
  br i1 %cmp.not29, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %locator_work = getelementptr inbounds %struct.pdr_handle, ptr %qmi, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn30 = phi ptr [ %.pn28, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %need_locator_lookup = getelementptr i8, ptr %.pn30, i32 -2
  %9 = ptrtoint ptr %need_locator_lookup to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %need_locator_lookup, align 2, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %11 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %locator_work) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %12 = ptrtoint ptr %.pn30 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load ptr, ptr %.pn30, align 4
  %cmp.not = icmp eq ptr %.pn, %lookups
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %list_lock) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pdr_locator_del_server(ptr noundef %qmi, ptr nocapture noundef readnone %svc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.pdr_handle, ptr %qmi, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %locator_init_complete = getelementptr inbounds %struct.pdr_handle, ptr %qmi, i32 0, i32 8
  %0 = ptrtoint ptr %locator_init_complete to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %locator_init_complete, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #6
  %sq_node = getelementptr inbounds %struct.pdr_handle, ptr %qmi, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %sq_node to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %sq_node, align 4
  %sq_port = getelementptr inbounds %struct.pdr_handle, ptr %qmi, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %sq_port to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %sq_port, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdr_notifier_new_server(ptr noundef %qmi, ptr nocapture noundef readonly %svc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %list_lock = getelementptr i8, ptr %qmi, i32 396
  tail call void @mutex_lock_nested(ptr noundef %list_lock, i32 noundef 0) #6
  %lookups = getelementptr i8, ptr %qmi, i32 380
  %0 = ptrtoint ptr %lookups to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn34 = load ptr, ptr %lookups, align 4
  %cmp.not35 = icmp eq ptr %.pn34, %lookups
  br i1 %cmp.not35, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %instance7 = getelementptr inbounds %struct.qmi_service, ptr %svc, i32 0, i32 2
  %node9 = getelementptr inbounds %struct.qmi_service, ptr %svc, i32 0, i32 3
  %port = getelementptr inbounds %struct.qmi_service, ptr %svc, i32 0, i32 4
  %notifier_wq = getelementptr i8, ptr %qmi, i32 808
  %notifier_work = getelementptr i8, ptr %qmi, i32 720
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn36 = phi ptr [ %.pn34, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %service = getelementptr i8, ptr %.pn36, i32 -20
  %1 = ptrtoint ptr %service to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %service, align 4
  %3 = ptrtoint ptr %svc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %svc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp6 = icmp eq i32 %2, %4
  br i1 %cmp6, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %instance = getelementptr i8, ptr %.pn36, i32 -24
  %5 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %instance, align 4
  %7 = ptrtoint ptr %instance7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %instance7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp8 = icmp eq i32 %6, %8
  br i1 %cmp8, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %service_connected = getelementptr i8, ptr %.pn36, i32 -1
  %9 = ptrtoint ptr %service_connected to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %service_connected, align 1
  %need_notifier_register = getelementptr i8, ptr %.pn36, i32 -4
  %10 = ptrtoint ptr %need_notifier_register to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %need_notifier_register, align 4
  %addr = getelementptr i8, ptr %.pn36, i32 -36
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 42, ptr %addr, align 4
  %12 = ptrtoint ptr %node9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %node9, align 4
  %sq_node = getelementptr i8, ptr %.pn36, i32 -32
  %14 = ptrtoint ptr %sq_node to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %sq_node, align 4
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 4
  %sq_port = getelementptr i8, ptr %.pn36, i32 -28
  %17 = ptrtoint ptr %sq_port to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %sq_port, align 4
  %18 = ptrtoint ptr %notifier_wq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %notifier_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %19, ptr noundef %notifier_work) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %20 = ptrtoint ptr %.pn36 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn = load ptr, ptr %.pn36, align 4
  %cmp.not = icmp eq ptr %.pn, %lookups
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %list_lock) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pdr_notifier_del_server(ptr noundef %qmi, ptr nocapture noundef readonly %svc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %list_lock = getelementptr i8, ptr %qmi, i32 396
  tail call void @mutex_lock_nested(ptr noundef %list_lock, i32 noundef 0) #6
  %lookups = getelementptr i8, ptr %qmi, i32 380
  %0 = ptrtoint ptr %lookups to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn29 = load ptr, ptr %lookups, align 4
  %cmp.not30 = icmp eq ptr %.pn29, %lookups
  br i1 %cmp.not30, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %instance7 = getelementptr inbounds %struct.qmi_service, ptr %svc, i32 0, i32 2
  %notifier_wq = getelementptr i8, ptr %qmi, i32 808
  %notifier_work = getelementptr i8, ptr %qmi, i32 720
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn31 = phi ptr [ %.pn29, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %service = getelementptr i8, ptr %.pn31, i32 -20
  %1 = ptrtoint ptr %service to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %service, align 4
  %3 = ptrtoint ptr %svc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %svc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp6 = icmp eq i32 %2, %4
  br i1 %cmp6, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %instance = getelementptr i8, ptr %.pn31, i32 -24
  %5 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %instance, align 4
  %7 = ptrtoint ptr %instance7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %instance7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp8 = icmp eq i32 %6, %8
  br i1 %cmp8, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %service_connected = getelementptr i8, ptr %.pn31, i32 -1
  %9 = ptrtoint ptr %service_connected to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %service_connected, align 1
  %need_notifier_remove = getelementptr i8, ptr %.pn31, i32 -3
  %10 = ptrtoint ptr %need_notifier_remove to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %need_notifier_remove, align 1
  %sq_node = getelementptr i8, ptr %.pn31, i32 -32
  %11 = ptrtoint ptr %sq_node to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %sq_node, align 4
  %sq_port = getelementptr i8, ptr %.pn31, i32 -28
  %12 = ptrtoint ptr %sq_port to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %sq_port, align 4
  %13 = ptrtoint ptr %notifier_wq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %notifier_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %notifier_work) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %15 = ptrtoint ptr %.pn31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn31, align 4
  %cmp.not = icmp eq ptr %.pn, %lookups
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %list_lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pdr_indication_cb(ptr noundef %qmi, ptr nocapture noundef readnone %sq, ptr nocapture noundef readnone %txn, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %service_path = getelementptr inbounds %struct.servreg_state_updated_ind, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %service_path to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %service_path, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %call = tail call i32 @strlen(ptr noundef %service_path) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call)
  %cmp = icmp ugt i32 %call, 64
  br i1 %cmp, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %list_lock = getelementptr i8, ptr %qmi, i32 396
  tail call void @mutex_lock_nested(ptr noundef %list_lock, i32 noundef 0) #6
  %lookups = getelementptr i8, ptr %qmi, i32 380
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ %lookups, %if.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp8.not = icmp eq ptr %.pn, %lookups
  br i1 %cmp8.not, label %if.then24.critedge, label %for.body

for.body:                                         ; preds = %for.cond
  %service_path9 = getelementptr i8, ptr %.pn, i32 -103
  %call13 = tail call i32 @strcmp(ptr noundef %service_path9, ptr noundef %service_path) #9
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.end.critedge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

if.then24.critedge:                               ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %list_lock) #6
  br label %cleanup

do.end.critedge:                                  ; preds = %for.body
  tail call void @mutex_unlock(ptr noundef %list_lock) #6
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data, align 4
  %transaction_id = getelementptr inbounds %struct.servreg_state_updated_ind, ptr %data, i32 0, i32 2
  %5 = ptrtoint ptr %transaction_id to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %transaction_id, align 2
  %conv = zext i16 %6 to i32
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %service_path, i32 noundef %4, i32 noundef %conv) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 20) #10
  %tobool31.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool31.not, label %do.end.critedge.cleanup_crit_edge, label %if.end33

do.end.critedge.cleanup_crit_edge:                ; preds = %do.end.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33:                                         ; preds = %do.end.critedge
  %pds.0.le = getelementptr i8, ptr %.pn, i32 -168
  %8 = ptrtoint ptr %transaction_id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %transaction_id, align 2
  %transaction_id35 = getelementptr inbounds %struct.pdr_list_node, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %transaction_id35 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %transaction_id35, align 4
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data, align 4
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %call7.i.i, align 8
  %pds38 = getelementptr inbounds %struct.pdr_list_node, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %pds38 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %pds.0.le, ptr %pds38, align 8
  tail call void @mutex_lock_nested(ptr noundef %list_lock, i32 noundef 0) #6
  %node40 = getelementptr inbounds %struct.pdr_list_node, ptr %call7.i.i, i32 0, i32 3
  %indack_list = getelementptr i8, ptr %qmi, i32 388
  %prev.i = getelementptr i8, ptr %qmi, i32 392
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node40, ptr noundef %16, ptr noundef %indack_list) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end33.list_add_tail.exit_crit_edge

if.end33.list_add_tail.exit_crit_edge:            ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %node40, ptr %prev.i, align 4
  %18 = ptrtoint ptr %node40 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %indack_list, ptr %node40, align 4
  %prev3.i.i = getelementptr inbounds %struct.pdr_list_node, ptr %call7.i.i, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i, align 8
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %node40, ptr %16, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end33.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %list_lock) #6
  %indack_wq = getelementptr i8, ptr %qmi, i32 812
  %21 = ptrtoint ptr %indack_wq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %indack_wq, align 4
  %indack_work = getelementptr i8, ptr %qmi, i32 764
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %indack_work) #6
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %do.end.critedge.cleanup_crit_edge, %if.then24.critedge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !63, !65, !67, !68, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !102, !104, !106, !107, !108}
!llvm.module.flags = !{!109, !110, !111, !112, !113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !{ptr @servreg_location_entry_ei, !1, !"servreg_location_entry_ei", i1 false, i1 false}
!1 = !{!"../drivers/soc/qcom/pdr_internal.h", i32 31, i32 22}
!2 = !{ptr @servreg_get_domain_list_req_ei, !3, !"servreg_get_domain_list_req_ei", i1 false, i1 false}
!3 = !{!"../drivers/soc/qcom/pdr_internal.h", i32 77, i32 22}
!4 = !{ptr @servreg_get_domain_list_resp_ei, !5, !"servreg_get_domain_list_resp_ei", i1 false, i1 false}
!5 = !{!"../drivers/soc/qcom/pdr_internal.h", i32 119, i32 22}
!6 = !{ptr @servreg_register_listener_req_ei, !7, !"servreg_register_listener_req_ei", i1 false, i1 false}
!7 = !{!"../drivers/soc/qcom/pdr_internal.h", i32 202, i32 22}
!8 = !{ptr @servreg_register_listener_resp_ei, !9, !"servreg_register_listener_resp_ei", i1 false, i1 false}
!9 = !{!"../drivers/soc/qcom/pdr_internal.h", i32 230, i32 22}
!10 = !{ptr @servreg_restart_pd_req_ei, !11, !"servreg_restart_pd_req_ei", i1 false, i1 false}
!11 = !{!"../drivers/soc/qcom/pdr_internal.h", i32 266, i32 22}
!12 = !{ptr @servreg_restart_pd_resp_ei, !13, !"servreg_restart_pd_resp_ei", i1 false, i1 false}
!13 = !{!"../drivers/soc/qcom/pdr_internal.h", i32 283, i32 22}
!14 = !{ptr @servreg_state_updated_ind_ei, !15, !"servreg_state_updated_ind_ei", i1 false, i1 false}
!15 = !{!"../drivers/soc/qcom/pdr_internal.h", i32 303, i32 22}
!16 = !{ptr @servreg_set_ack_req_ei, !17, !"servreg_set_ack_req_ei", i1 false, i1 false}
!17 = !{!"../drivers/soc/qcom/pdr_internal.h", i32 339, i32 22}
!18 = !{ptr @servreg_set_ack_resp_ei, !19, !"servreg_set_ack_resp_ei", i1 false, i1 false}
!19 = !{!"../drivers/soc/qcom/pdr_internal.h", i32 365, i32 22}
!20 = !{ptr @__ksymtab_pdr_add_lookup, !21, !"__ksymtab_pdr_add_lookup", i1 false, i1 false}
!21 = !{!"../drivers/soc/qcom/pdr_interface.c", i32 558, i32 1}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/soc/qcom/pdr_interface.c", i32 616, i32 3}
!24 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @pdr_restart_pd._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @pdr_restart_pd._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/soc/qcom/pdr_interface.c", i32 624, i32 3}
!30 = !{ptr @pdr_restart_pd._entry.3, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @pdr_restart_pd._entry_ptr.5, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/soc/qcom/pdr_interface.c", i32 631, i32 3}
!34 = !{ptr @pdr_restart_pd._entry.6, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @pdr_restart_pd._entry_ptr.8, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @__ksymtab_pdr_restart_pd, !37, !"__ksymtab_pdr_restart_pd", i1 false, i1 false}
!37 = !{!"../drivers/soc/qcom/pdr_interface.c", i32 638, i32 1}
!38 = !{ptr @pdr_handle_alloc.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/soc/qcom/pdr_interface.c", i32 666, i32 2}
!40 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @pdr_handle_alloc.__key.10, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/soc/qcom/pdr_interface.c", i32 667, i32 2}
!43 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @pdr_handle_alloc.__key.12, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/soc/qcom/pdr_interface.c", i32 668, i32 2}
!46 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @pdr_handle_alloc.__key.14, !48, !"__key", i1 false, i1 false}
!48 = !{!"../drivers/soc/qcom/pdr_interface.c", i32 673, i32 2}
!49 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @pdr_handle_alloc.__key.16, !51, !"__key", i1 false, i1 false}
!51 = !{!"../drivers/soc/qcom/pdr_interface.c", i32 674, i32 2}
!52 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @pdr_handle_alloc.__key.18, !54, !"__key", i1 false, i1 false}
!54 = !{!"../drivers/soc/qcom/pdr_interface.c", i32 675, i32 2}
!55 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/soc/qcom/pdr_interface.c", i32 677, i32 21}
!58 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/soc/qcom/pdr_interface.c", i32 683, i32 19}
!61 = !{ptr @__ksymtab_pdr_handle_alloc, !62, !"__ksymtab_pdr_handle_alloc", i1 false, i1 false}
!62 = !{!"../drivers/soc/qcom/pdr_interface.c", i32 719, i32 1}
!63 = !{ptr @__ksymtab_pdr_handle_release, !64, !"__ksymtab_pdr_handle_release", i1 false, i1 false}
!64 = !{!"../drivers/soc/qcom/pdr_interface.c", i32 753, i32 1}
!65 = !{ptr @__UNIQUE_ID_file176, !66, !"__UNIQUE_ID_file176", i1 false, i1 false}
!66 = !{!"../drivers/soc/qcom/pdr_interface.c", i32 755, i32 1}
!67 = !{ptr @__UNIQUE_ID_license177, !66, !"__UNIQUE_ID_license177", i1 false, i1 false}
!68 = !{ptr @__UNIQUE_ID_description178, !69, !"__UNIQUE_ID_description178", i1 false, i1 false}
!69 = !{!"../drivers/soc/qcom/pdr_interface.c", i32 756, i32 1}
!70 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/soc/qcom/pdr_interface.c", i32 476, i32 3}
!72 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @pdr_locator_work.__UNIQUE_ID_ddebug175, !71, !"__UNIQUE_ID_ddebug175", i1 false, i1 false}
!75 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/soc/qcom/pdr_interface.c", i32 382, i32 3}
!77 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @pdr_get_domain_list._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @pdr_get_domain_list._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/soc/qcom/pdr_interface.c", i32 388, i32 3}
!82 = !{ptr @pdr_get_domain_list._entry.28, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @pdr_get_domain_list._entry_ptr.30, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/soc/qcom/pdr_interface.c", i32 451, i32 2}
!86 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @pdr_notify_lookup_failure._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @pdr_notify_lookup_failure._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/soc/qcom/pdr_interface.c", i32 148, i32 3}
!91 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @pdr_register_listener._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @pdr_register_listener._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/soc/qcom/pdr_interface.c", i32 154, i32 3}
!96 = !{ptr @pdr_register_listener._entry.35, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @pdr_register_listener._entry_ptr.37, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @pdr_locator_ops, !99, !"pdr_locator_ops", i1 false, i1 false}
!99 = !{!"../drivers/soc/qcom/pdr_interface.c", i32 113, i32 29}
!100 = !{ptr @pdr_notifier_ops, !101, !"pdr_notifier_ops", i1 false, i1 false}
!101 = !{!"../drivers/soc/qcom/pdr_interface.c", i32 241, i32 29}
!102 = !{ptr @qmi_indication_handler, !103, !"qmi_indication_handler", i1 false, i1 false}
!103 = !{!"../drivers/soc/qcom/pdr_interface.c", i32 346, i32 37}
!104 = !{ptr @.str.38, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/soc/qcom/pdr_interface.c", i32 327, i32 2}
!106 = !{ptr @.str.39, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @pdr_indication_cb._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @pdr_indication_cb._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{i32 1, !"wchar_size", i32 2}
!110 = !{i32 1, !"min_enum_size", i32 4}
!111 = !{i32 8, !"branch-target-enforcement", i32 0}
!112 = !{i32 8, !"sign-return-address", i32 0}
!113 = !{i32 8, !"sign-return-address-all", i32 0}
!114 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!115 = !{i32 7, !"uwtable", i32 1}
!116 = !{i32 7, !"frame-pointer", i32 2}
!117 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!118 = !{!"auto-init"}
!119 = !{i8 0, i8 2}
!120 = !{i64 2148708314, i64 2148708319, i64 2148708332, i64 2148708376, i64 2148708410, i64 2148708431}

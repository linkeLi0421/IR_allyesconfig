; ModuleID = '/llk/IR_all_yes/drivers/nvme/target/fc.c_pt.bc'
source_filename = "../drivers/nvme/target/fc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nvmet_fc_register_targetport\22, \22a\22\09"
module asm "\09.weak\09__crc_nvmet_fc_register_targetport\09\09\09\09"
module asm "\09.long\09__crc_nvmet_fc_register_targetport\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvmet_fc_register_targetport:\09\09\09\09\09"
module asm "\09.asciz \09\22nvmet_fc_register_targetport\22\09\09\09\09\09"
module asm "__kstrtabns_nvmet_fc_register_targetport:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nvmet_fc_invalidate_host\22, \22a\22\09"
module asm "\09.weak\09__crc_nvmet_fc_invalidate_host\09\09\09\09"
module asm "\09.long\09__crc_nvmet_fc_invalidate_host\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvmet_fc_invalidate_host:\09\09\09\09\09"
module asm "\09.asciz \09\22nvmet_fc_invalidate_host\22\09\09\09\09\09"
module asm "__kstrtabns_nvmet_fc_invalidate_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nvmet_fc_unregister_targetport\22, \22a\22\09"
module asm "\09.weak\09__crc_nvmet_fc_unregister_targetport\09\09\09\09"
module asm "\09.long\09__crc_nvmet_fc_unregister_targetport\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvmet_fc_unregister_targetport:\09\09\09\09\09"
module asm "\09.asciz \09\22nvmet_fc_unregister_targetport\22\09\09\09\09\09"
module asm "__kstrtabns_nvmet_fc_unregister_targetport:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nvmet_fc_rcv_ls_req\22, \22a\22\09"
module asm "\09.weak\09__crc_nvmet_fc_rcv_ls_req\09\09\09\09"
module asm "\09.long\09__crc_nvmet_fc_rcv_ls_req\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvmet_fc_rcv_ls_req:\09\09\09\09\09"
module asm "\09.asciz \09\22nvmet_fc_rcv_ls_req\22\09\09\09\09\09"
module asm "__kstrtabns_nvmet_fc_rcv_ls_req:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nvmet_fc_rcv_fcp_req\22, \22a\22\09"
module asm "\09.weak\09__crc_nvmet_fc_rcv_fcp_req\09\09\09\09"
module asm "\09.long\09__crc_nvmet_fc_rcv_fcp_req\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvmet_fc_rcv_fcp_req:\09\09\09\09\09"
module asm "\09.asciz \09\22nvmet_fc_rcv_fcp_req\22\09\09\09\09\09"
module asm "__kstrtabns_nvmet_fc_rcv_fcp_req:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nvmet_fc_rcv_fcp_abort\22, \22a\22\09"
module asm "\09.weak\09__crc_nvmet_fc_rcv_fcp_abort\09\09\09\09"
module asm "\09.long\09__crc_nvmet_fc_rcv_fcp_abort\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvmet_fc_rcv_fcp_abort:\09\09\09\09\09"
module asm "\09.asciz \09\22nvmet_fc_rcv_fcp_abort\22\09\09\09\09\09"
module asm "__kstrtabns_nvmet_fc_rcv_fcp_abort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvmet_fabrics_ops = type { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvmet_fc_target_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i64, i32, i32, i32 }
%struct.nvmet_fc_target_port = type { i32, i64, i64, ptr, i32, i32 }
%struct.nvmet_fc_port_info = type { i64, i64, i32 }
%struct.nvmet_fc_tgtport = type { %struct.nvmet_fc_target_port, %struct.list_head, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.ida, ptr, %struct.kref, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nvmet_fc_ls_iod = type { ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i16, i32, [2 x %struct.scatterlist], %struct.work_struct }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%union.nvmefc_ls_requests = type { %struct.fcnvme_ls_cr_conn_rqst, [944 x i8] }
%struct.fcnvme_ls_cr_conn_rqst = type { %struct.fcnvme_ls_rqst_w0, i32, %struct.fcnvme_lsdesc_assoc_id, %struct.fcnvme_lsdesc_cr_conn_cmd }
%struct.fcnvme_ls_rqst_w0 = type { i8, [3 x i8] }
%struct.fcnvme_lsdesc_assoc_id = type { i32, i32, i64 }
%struct.fcnvme_lsdesc_cr_conn_cmd = type { i32, i32, i16, i16, [9 x i32], i16, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.page = type { i32, %union.anon.2, %union.anon.74, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.74 = type { %struct.atomic_t }
%struct.nvmet_fc_hostport = type { ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.nvmet_fc_tgt_assoc = type { i64, i32, %struct.atomic_t, ptr, ptr, ptr, %struct.list_head, [129 x ptr], %struct.kref, %struct.work_struct, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.nvmet_fc_ls_req_op = type { %struct.nvmefc_ls_req, ptr, ptr, i32, %struct.list_head, i8 }
%struct.nvmefc_ls_req = type { ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, [4 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nvme_fc_cmd_iu = type { i8, i8, i16, [2 x i8], i8, i8, i64, i32, i32, %struct.nvme_command, i8, i8, i16, i32 }
%struct.nvme_command = type { %union.anon.83 }
%union.anon.83 = type { %struct.nvme_common_command }
%struct.nvme_common_command = type { i8, i8, i16, i32, [2 x i32], i64, %union.nvme_data_ptr, i32, i32, i32, i32, i32, i32 }
%union.nvme_data_ptr = type { %struct.anon.84 }
%struct.anon.84 = type { i64, i64 }
%struct.nvmet_fc_tgt_queue = type { i8, i16, i16, i16, i16, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.nvmet_cq, %struct.nvmet_sq, ptr, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.kref, %struct.callback_head, [0 x %struct.nvmet_fc_fcp_iod] }
%struct.nvmet_cq = type { i16, i16 }
%struct.nvmet_sq = type { ptr, %struct.percpu_ref, i16, i16, i32, i8, %struct.completion, %struct.completion }
%struct.percpu_ref = type { i32, ptr }
%struct.nvmet_fc_fcp_iod = type { ptr, %struct.nvme_fc_cmd_iu, %struct.nvme_fc_ersp_iu, i32, ptr, ptr, i32, i32, i32, i8, i8, i8, i8, %struct.spinlock, %struct.nvmet_req, %struct.work_struct, ptr, ptr, %struct.list_head }
%struct.nvme_fc_ersp_iu = type { i8, i8, i16, i32, i32, i32, %struct.nvme_completion }
%struct.nvme_completion = type { %union.nvme_result, i16, i16, i16, i16 }
%union.nvme_result = type { i64 }
%struct.nvmet_req = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [8 x %struct.bio_vec], %union.anon.87, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i16, i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%union.anon.87 = type { %struct.anon.90 }
%struct.anon.90 = type { %struct.bio, ptr, %struct.work_struct, i8 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.37, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.37 = type { ptr }
%struct.nvmefc_tgt_fcp_req = type { i8, i16, i32, i32, i32, %struct.fc_ba_rjt, ptr, i32, ptr, i32, i16, ptr, ptr, i32, i32 }
%struct.fc_ba_rjt = type { i8, i8, i8, i8 }
%struct.nvmet_fc_defer_fcp_req = type { %struct.list_head, ptr }
%struct.nvmet_fc_port_entry = type { ptr, ptr, i64, i64, %struct.list_head }
%struct.nvmefc_ls_rsp = type { ptr, i32, i16, ptr, ptr }
%struct.fcnvme_ls_cr_assoc_rqst = type { %struct.fcnvme_ls_rqst_w0, i32, %struct.fcnvme_lsdesc_cr_assoc_cmd }
%struct.fcnvme_lsdesc_cr_assoc_cmd = type { i32, i32, i16, i16, [9 x i32], i16, i16, i32, %struct.uuid_t, [256 x i8], [256 x i8], [108 x i32] }
%struct.uuid_t = type { [16 x i8] }
%struct.fcnvme_ls_acc_hdr = type { %struct.fcnvme_ls_rqst_w0, i32, %struct.fcnvme_lsdesc_rqst }
%struct.fcnvme_lsdesc_rqst = type { i32, i32, %struct.fcnvme_ls_rqst_w0, i32 }
%struct.fcnvme_ls_rjt = type { %struct.fcnvme_ls_rqst_w0, i32, %struct.fcnvme_lsdesc_rqst, %struct.fcnvme_lsdesc_rjt }
%struct.fcnvme_lsdesc_rjt = type { i32, i32, i8, i8, i8, i8, i32 }
%struct.fcnvme_ls_cr_assoc_acc = type { %struct.fcnvme_ls_acc_hdr, %struct.fcnvme_lsdesc_assoc_id, %struct.fcnvme_lsdesc_conn_id }
%struct.fcnvme_lsdesc_conn_id = type { i32, i32, i64 }
%struct.fcnvme_ls_cr_conn_acc = type { %struct.fcnvme_ls_acc_hdr, %struct.fcnvme_lsdesc_conn_id }
%struct.fcnvme_ls_disconnect_assoc_rqst = type { %struct.fcnvme_ls_rqst_w0, i32, %struct.fcnvme_lsdesc_assoc_id, %struct.fcnvme_lsdesc_disconn_cmd }
%struct.fcnvme_lsdesc_disconn_cmd = type { i32, i32, [4 x i32] }
%struct.substring_t = type { ptr, ptr }
%struct.nvmet_port = type { %struct.list_head, %struct.nvmf_disc_rsp_page_entry, %struct.config_group, %struct.config_group, %struct.list_head, %struct.config_group, %struct.list_head, %struct.list_head, %struct.config_group, %struct.nvmet_ana_group, ptr, ptr, i8, i32, ptr, i8 }
%struct.nvmf_disc_rsp_page_entry = type { i8, i8, i8, i8, i16, i16, i16, i16, [20 x i8], [32 x i8], [192 x i8], [256 x i8], [256 x i8], %union.tsas }
%union.tsas = type { %struct.rdma }
%struct.rdma = type { i8, i8, i8, [5 x i8], i16, [246 x i8] }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.nvmet_ana_group = type { %struct.config_group, ptr, i32 }

@nvmet_fc_tgtport_cnt = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@nvmet_fc_register_targetport.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&newrec->lock\00", [18 x i8] zeroinitializer }, align 32
@nvmet_fc_tgtlock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.84, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@nvmet_fc_target_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @nvmet_fc_target_list, ptr @nvmet_fc_target_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_nvmet_fc_register_targetport = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvmet_fc_register_targetport = external dso_local constant [0 x i8], align 1
@__ksymtab_nvmet_fc_register_targetport = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvmet_fc_register_targetport to i32), ptr @__kstrtab_nvmet_fc_register_targetport, ptr @__kstrtabns_nvmet_fc_register_targetport }, section "___ksymtab_gpl+nvmet_fc_register_targetport", align 4
@__kstrtab_nvmet_fc_invalidate_host = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvmet_fc_invalidate_host = external dso_local constant [0 x i8], align 1
@__ksymtab_nvmet_fc_invalidate_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvmet_fc_invalidate_host to i32), ptr @__kstrtab_nvmet_fc_invalidate_host, ptr @__kstrtabns_nvmet_fc_invalidate_host }, section "___ksymtab_gpl+nvmet_fc_invalidate_host", align 4
@__kstrtab_nvmet_fc_unregister_targetport = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvmet_fc_unregister_targetport = external dso_local constant [0 x i8], align 1
@__ksymtab_nvmet_fc_unregister_targetport = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvmet_fc_unregister_targetport to i32), ptr @__kstrtab_nvmet_fc_unregister_targetport, ptr @__kstrtabns_nvmet_fc_unregister_targetport }, section "___ksymtab_gpl+nvmet_fc_unregister_targetport", align 4
@nvmet_fc_rcv_ls_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2035, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCV %s LS failed: payload too large (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvmet_fc_rcv_ls_req\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/nvme/target/fc.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvmet_fc_rcv_ls_req._entry_ptr = internal global ptr @nvmet_fc_rcv_ls_req._entry, section ".printk_index", align 4
@nvmefc_ls_names = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98], [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@nvmet_fc_rcv_ls_req._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 2043, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RCV %s LS failed: target deleting\0A\00", [61 x i8] zeroinitializer }, align 32
@nvmet_fc_rcv_ls_req._entry_ptr.9 = internal global ptr @nvmet_fc_rcv_ls_req._entry.7, section ".printk_index", align 4
@nvmet_fc_rcv_ls_req._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 2052, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"RCV %s LS failed: context allocation failed\0A\00", [51 x i8] zeroinitializer }, align 32
@nvmet_fc_rcv_ls_req._entry_ptr.12 = internal global ptr @nvmet_fc_rcv_ls_req._entry.10, section ".printk_index", align 4
@__kstrtab_nvmet_fc_rcv_ls_req = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvmet_fc_rcv_ls_req = external dso_local constant [0 x i8], align 1
@__ksymtab_nvmet_fc_rcv_ls_req = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvmet_fc_rcv_ls_req to i32), ptr @__kstrtab_nvmet_fc_rcv_ls_req, ptr @__kstrtabns_nvmet_fc_rcv_ls_req }, section "___ksymtab_gpl+nvmet_fc_rcv_ls_req", align 4
@__kstrtab_nvmet_fc_rcv_fcp_req = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvmet_fc_rcv_fcp_req = external dso_local constant [0 x i8], align 1
@__ksymtab_nvmet_fc_rcv_fcp_req = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvmet_fc_rcv_fcp_req to i32), ptr @__kstrtab_nvmet_fc_rcv_fcp_req, ptr @__kstrtabns_nvmet_fc_rcv_fcp_req }, section "___ksymtab_gpl+nvmet_fc_rcv_fcp_req", align 4
@__kstrtab_nvmet_fc_rcv_fcp_abort = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvmet_fc_rcv_fcp_abort = external dso_local constant [0 x i8], align 1
@__ksymtab_nvmet_fc_rcv_fcp_abort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvmet_fc_rcv_fcp_abort to i32), ptr @__kstrtab_nvmet_fc_rcv_fcp_abort, ptr @__kstrtabns_nvmet_fc_rcv_fcp_abort }, section "___ksymtab_gpl+nvmet_fc_rcv_fcp_abort", align 4
@nvmet_fc_exit_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 2935, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014nvmet_fc: %s: targetport list not empty\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvmet_fc_exit_module\00", [43 x i8] zeroinitializer }, align 32
@nvmet_fc_exit_module._entry_ptr = internal global ptr @nvmet_fc_exit_module._entry, section ".printk_index", align 4
@nvmet_fc_tgt_fcp_ops = internal constant { %struct.nvmet_fabrics_ops, [44 x i8] } { %struct.nvmet_fabrics_ops { ptr null, i32 2, i32 1, i32 0, ptr @nvmet_fc_fcp_nvme_cmd_done, ptr @nvmet_fc_add_port, ptr @nvmet_fc_remove_port, ptr @nvmet_fc_delete_ctrl, ptr null, ptr null, ptr @nvmet_fc_discovery_chg, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_nvmet_fc__315_2942_nvmet_fc_init_module6 = internal global ptr @nvmet_fc_init_module, section ".initcall6.init", align 4
@__exitcall_nvmet_fc_exit_module = internal global ptr @nvmet_fc_exit_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_file316 = internal constant [43 x i8] c"nvmet_fc.file=drivers/nvme/target/nvmet-fc\00", section ".modinfo", align 1
@__UNIQUE_ID_license317 = internal constant [24 x i8] c"nvmet_fc.license=GPL v2\00", section ".modinfo", align 1
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nvmet_fc_tgtport_cnt.xa_lock\00", [35 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@nvmet_fc_alloc_ls_iodlist.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&iod->work)\00", [34 x i8] zeroinitializer }, align 32
@nvmet_fc_ls_create_association._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 1696, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Create Association LS failed: %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"nvmet_fc_ls_create_association\00", [33 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nvmet_fc_ls_create_association._entry_ptr = internal global ptr @nvmet_fc_ls_create_association._entry, section ".printk_index", align 4
@validation_errors = internal constant { [38 x ptr], [40 x i8] } { [38 x ptr] [ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73], [40 x i8] zeroinitializer }, align 32
@nvmet_fc_ls_create_association._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.3, i32 1710, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"{%d:%d} Association created\0A\00", [35 x i8] zeroinitializer }, align 32
@nvmet_fc_ls_create_association._entry_ptr.23 = internal global ptr @nvmet_fc_ls_create_association._entry.21, section ".printk_index", align 4
@nvmet_fc_alloc_target_assoc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&assoc->del_work)\00", [60 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@nvmet_fc_delete_target_assoc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@nvmet_fc_delete_target_assoc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 1239, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"{%d:%d} Association deleted\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nvmet_fc_delete_target_assoc\00", [35 x i8] zeroinitializer }, align 32
@nvmet_fc_delete_target_assoc._entry_ptr = internal global ptr @nvmet_fc_delete_target_assoc._entry, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.30 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ntfc%d.%d.%d\00", [19 x i8] zeroinitializer }, align 32
@nvmet_fc_alloc_target_queue.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&queue->qlock\00", [18 x i8] zeroinitializer }, align 32
@nvmet_fc_prep_fcp_iodlist.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&fod->defer_work)\00", [60 x i8] zeroinitializer }, align 32
@nvmet_fc_prep_fcp_iodlist.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&fod->flock\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"OK\00", [29 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Bad CR_ASSOC Length\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Bad CR_ASSOC Rqst Length\00", [39 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Not CR_ASSOC Cmd\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Bad CR_ASSOC Cmd Length\00", [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Bad Ersp Ratio\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Association Allocation Failed\00", [34 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Queue Allocation Failed\00", [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Bad CR_CONN Length\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Bad CR_CONN Rqst Length\00", [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Not Association ID\00", [45 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Bad Association ID Length\00", [38 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"No Association\00", [17 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Not Connection ID\00", [46 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Bad Connection ID Length\00", [39 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid Connection ID\00", [42 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Not CR_CONN Cmd\00", [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Bad CR_CONN Cmd Length\00", [41 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Bad DISCONN Length\00", [45 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Bad DISCONN Rqst Length\00", [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Not DISCONN Cmd\00", [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Bad DISCONN Cmd Length\00", [41 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Bad Disconnect Scope\00", [43 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Bad RS Length\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Bad RS Rqst Length\00", [45 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Not RS Cmd\00", [21 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Bad RS Cmd Length\00", [46 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Bad RS R_CTL\00", [19 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Bad RS Relative Offset\00", [41 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Not LS_ACC\00", [21 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Not LSDESC_RQST\00", [16 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Bad LSDESC_RQST Length\00", [41 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Not CR_ASSOC Rqst\00", [46 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Bad CR_ASSOC ACC Length\00", [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Not CR_CONN Rqst\00", [47 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Bad CR_CONN ACC Length\00", [41 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Not Disconnect Rqst\00", [44 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Bad Disconnect ACC Length\00", [38 x i8] zeroinitializer }, align 32
@nvmet_fc_ls_create_connection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.3, i32 1789, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Create Connection LS failed: %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nvmet_fc_ls_create_connection\00", [34 x i8] zeroinitializer }, align 32
@nvmet_fc_ls_create_connection._entry_ptr = internal global ptr @nvmet_fc_ls_create_connection._entry, section ".printk_index", align 4
@nvmet_fc_find_target_assoc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.76 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@nvmet_fc_ls_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.3, i32 1851, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Disconnect LS failed: %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nvmet_fc_ls_disconnect\00", [41 x i8] zeroinitializer }, align 32
@nvmet_fc_ls_disconnect._entry_ptr = internal global ptr @nvmet_fc_ls_disconnect._entry, section ".printk_index", align 4
@nvmet_fc_ls_disconnect._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.3, i32 1893, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"{%d:%d} Multiple Disconnect Association LS's received\0A\00", [41 x i8] zeroinitializer }, align 32
@nvmet_fc_ls_disconnect._entry_ptr.81 = internal global ptr @nvmet_fc_ls_disconnect._entry.79, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.82 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@nvmet_fc_portentry_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @nvmet_fc_portentry_list, ptr @nvmet_fc_portentry_list }, [24 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nvmet_fc_tgtlock\00", [47 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@nvmet_fc_target_assoc_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.3, i32 1189, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"{%d:%d} Association freed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nvmet_fc_target_assoc_free\00", [37 x i8] zeroinitializer }, align 32
@nvmet_fc_target_assoc_free._entry_ptr = internal global ptr @nvmet_fc_target_assoc_free._entry, section ".printk_index", align 4
@nvmet_fc_xmt_disconnect_assoc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.3, i32 501, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"{%d:%d} send Disconnect Association failed: ENOMEM\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nvmet_fc_xmt_disconnect_assoc\00", [34 x i8] zeroinitializer }, align 32
@nvmet_fc_xmt_disconnect_assoc._entry_ptr = internal global ptr @nvmet_fc_xmt_disconnect_assoc._entry, section ".printk_index", align 4
@nvmet_fc_xmt_disconnect_assoc._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.3, i32 524, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"{%d:%d} XMT Disconnect Association failed: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@nvmet_fc_xmt_disconnect_assoc._entry_ptr.91 = internal global ptr @nvmet_fc_xmt_disconnect_assoc._entry.89, section ".printk_index", align 4
@__nvmet_fc_free_assocs.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.92 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Reserved (0)\00", [19 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RJT (1)\00", [24 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ACC (2)\00", [24 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Create Association\00", [45 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Create Connection\00", [46 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Disconnect Association\00", [41 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Disconnect Connection\00", [42 x i8] zeroinitializer }, align 32
@nvmet_fc_find_target_queue.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nvmet_fc_find_target_queue.__warned.99 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.100 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nn-0x\00", [26 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pn-0x\00", [26 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nn-\00", [28 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pn-\00", [28 x i8] zeroinitializer }, align 32
@nvme_fc_parse_traddr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.3, i32 2844, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014nvmet_fc: %s: bad traddr string\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvme_fc_parse_traddr\00", [43 x i8] zeroinitializer }, align 32
@nvme_fc_parse_traddr._entry_ptr = internal global ptr @nvme_fc_parse_traddr._entry, section ".printk_index", align 4
@nvmet_fc_delete_ctrl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nvmet_fc_delete_ctrl.__warned.106 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.107 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 32, i64 39, i64 43]
@___asan_gen_.109 = private unnamed_addr constant [21 x i8] c"nvmet_fc_tgtport_cnt\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 1408, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"nvmet_fc_tgtlock\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [21 x i8] c"nvmet_fc_target_list\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 239, i32 8 }
@___asan_gen_.142 = private unnamed_addr constant [16 x i8] c"nvmefc_ls_names\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 151, i32 14 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2031, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2040, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2049, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2935, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant [21 x i8] c"nvmet_fc_tgt_fcp_ops\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2915, i32 39 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 240, i32 8 }
@___asan_gen_.179 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 378, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 547, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 1694, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant [18 x i8] c"validation_errors\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 108, i32 14 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 1708, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 1133, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 1222, i32 11 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 1237, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 695, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 723, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 807, i32 34 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 823, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 634, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 642, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 109, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 110, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 111, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 112, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 113, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 114, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 115, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 116, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 117, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 118, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 119, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 120, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 121, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 122, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 123, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 124, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 125, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 126, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 127, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 128, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 129, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 130, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 131, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 132, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 133, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 134, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 135, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 136, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 137, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 138, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 139, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 140, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 141, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 142, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 143, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 144, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 145, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 146, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 1787, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 1252, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 1849, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 1890, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 326, i32 6 }
@___asan_gen_.403 = private unnamed_addr constant [24 x i8] c"nvmet_fc_portentry_list\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 241, i32 8 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 237, i32 8 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 1187, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 499, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 522, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 152, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 153, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 154, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 155, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 156, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 157, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant [36 x i8] c"../drivers/nvme/target/../host/fc.h\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.452, i32 158, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2814, i32 18 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2816, i32 5 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2821, i32 18 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2823, i32 5 }
@___asan_gen_.466 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.472 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.473 = private constant [28 x i8] c"../drivers/nvme/target/fc.c\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2844, i32 2 }
@llvm.compiler.used = appending global [147 x ptr] [ptr @__UNIQUE_ID_file316, ptr @__UNIQUE_ID_license317, ptr @__exitcall_nvmet_fc_exit_module, ptr @__initcall__kmod_nvmet_fc__315_2942_nvmet_fc_init_module6, ptr @__ksymtab_nvmet_fc_invalidate_host, ptr @__ksymtab_nvmet_fc_rcv_fcp_abort, ptr @__ksymtab_nvmet_fc_rcv_fcp_req, ptr @__ksymtab_nvmet_fc_rcv_ls_req, ptr @__ksymtab_nvmet_fc_register_targetport, ptr @__ksymtab_nvmet_fc_unregister_targetport, ptr @nvme_fc_parse_traddr._entry, ptr @nvme_fc_parse_traddr._entry_ptr, ptr @nvmet_fc_delete_target_assoc._entry, ptr @nvmet_fc_delete_target_assoc._entry_ptr, ptr @nvmet_fc_exit_module, ptr @nvmet_fc_exit_module._entry, ptr @nvmet_fc_exit_module._entry_ptr, ptr @nvmet_fc_ls_create_association._entry, ptr @nvmet_fc_ls_create_association._entry.21, ptr @nvmet_fc_ls_create_association._entry_ptr, ptr @nvmet_fc_ls_create_association._entry_ptr.23, ptr @nvmet_fc_ls_create_connection._entry, ptr @nvmet_fc_ls_create_connection._entry_ptr, ptr @nvmet_fc_ls_disconnect._entry, ptr @nvmet_fc_ls_disconnect._entry.79, ptr @nvmet_fc_ls_disconnect._entry_ptr, ptr @nvmet_fc_ls_disconnect._entry_ptr.81, ptr @nvmet_fc_rcv_ls_req._entry, ptr @nvmet_fc_rcv_ls_req._entry.10, ptr @nvmet_fc_rcv_ls_req._entry.7, ptr @nvmet_fc_rcv_ls_req._entry_ptr, ptr @nvmet_fc_rcv_ls_req._entry_ptr.12, ptr @nvmet_fc_rcv_ls_req._entry_ptr.9, ptr @nvmet_fc_target_assoc_free._entry, ptr @nvmet_fc_target_assoc_free._entry_ptr, ptr @nvmet_fc_xmt_disconnect_assoc._entry, ptr @nvmet_fc_xmt_disconnect_assoc._entry.89, ptr @nvmet_fc_xmt_disconnect_assoc._entry_ptr, ptr @nvmet_fc_xmt_disconnect_assoc._entry_ptr.91, ptr @nvmet_fc_tgtport_cnt, ptr @nvmet_fc_register_targetport.__key, ptr @.str, ptr @nvmet_fc_tgtlock, ptr @nvmet_fc_target_list, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @nvmefc_ls_names, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @nvmet_fc_tgt_fcp_ops, ptr @.str.15, ptr @xa_init_flags.__key, ptr @.str.16, ptr @nvmet_fc_alloc_ls_iodlist.__key, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @validation_errors, ptr @.str.22, ptr @nvmet_fc_alloc_target_assoc.__key, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @nvmet_fc_alloc_target_queue.__key, ptr @.str.32, ptr @nvmet_fc_prep_fcp_iodlist.__key, ptr @.str.33, ptr @nvmet_fc_prep_fcp_iodlist.__key.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @nvmet_fc_portentry_list, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105], section "llvm.metadata"
@0 = internal global [122 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_fc_tgtport_cnt to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_fc_register_targetport.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_fc_tgtlock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_fc_target_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_fc_rcv_ls_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmefc_ls_names to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_fc_rcv_ls_req._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_fc_rcv_ls_req._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_fc_exit_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_fc_tgt_fcp_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_fc_alloc_ls_iodlist.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_fc_ls_create_association._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validation_errors to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_fc_ls_create_association._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_fc_alloc_target_assoc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_fc_delete_target_assoc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_fc_alloc_target_queue.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_fc_prep_fcp_iodlist.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_fc_prep_fcp_iodlist.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_fc_ls_create_connection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_fc_ls_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_fc_ls_disconnect._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_fc_portentry_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_fc_target_assoc_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_fc_xmt_disconnect_assoc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_fc_xmt_disconnect_assoc._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_parse_traddr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvmet_fc_register_targetport(ptr nocapture noundef readonly %pinfo, ptr noundef %template, ptr noundef %dev, ptr nocapture noundef writeonly %portptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %xmt_ls_rsp = getelementptr inbounds %struct.nvmet_fc_target_template, ptr %template, i32 0, i32 1
  %0 = ptrtoint ptr %xmt_ls_rsp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xmt_ls_rsp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %fcp_op = getelementptr inbounds %struct.nvmet_fc_target_template, ptr %template, i32 0, i32 2
  %2 = ptrtoint ptr %fcp_op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fcp_op, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %fcp_abort = getelementptr inbounds %struct.nvmet_fc_target_template, ptr %template, i32 0, i32 3
  %4 = ptrtoint ptr %fcp_abort to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fcp_abort, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false2.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %fcp_req_release = getelementptr inbounds %struct.nvmet_fc_target_template, ptr %template, i32 0, i32 4
  %6 = ptrtoint ptr %fcp_req_release to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcp_req_release, align 8
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %lor.lhs.false4.cleanup_crit_edge, label %lor.lhs.false6

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %8 = ptrtoint ptr %template to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %template, align 8
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %lor.lhs.false6.cleanup_crit_edge, label %lor.lhs.false8

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %max_hw_queues = getelementptr inbounds %struct.nvmet_fc_target_template, ptr %template, i32 0, i32 10
  %10 = ptrtoint ptr %max_hw_queues to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_hw_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool9.not = icmp eq i32 %11, 0
  br i1 %tobool9.not, label %lor.lhs.false8.cleanup_crit_edge, label %lor.lhs.false10

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false10:                                  ; preds = %lor.lhs.false8
  %max_sgl_segments = getelementptr inbounds %struct.nvmet_fc_target_template, ptr %template, i32 0, i32 11
  %12 = ptrtoint ptr %max_sgl_segments to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %max_sgl_segments, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool11.not = icmp eq i16 %13, 0
  br i1 %tobool11.not, label %lor.lhs.false10.cleanup_crit_edge, label %lor.lhs.false12

lor.lhs.false10.cleanup_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false12:                                  ; preds = %lor.lhs.false10
  %max_dif_sgl_segments = getelementptr inbounds %struct.nvmet_fc_target_template, ptr %template, i32 0, i32 12
  %14 = ptrtoint ptr %max_dif_sgl_segments to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %max_dif_sgl_segments, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool13.not = icmp eq i16 %15, 0
  br i1 %tobool13.not, label %lor.lhs.false12.cleanup_crit_edge, label %lor.lhs.false14

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false14:                                  ; preds = %lor.lhs.false12
  %dma_boundary = getelementptr inbounds %struct.nvmet_fc_target_template, ptr %template, i32 0, i32 13
  %16 = ptrtoint ptr %dma_boundary to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %dma_boundary, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %tobool15.not = icmp eq i64 %17, 0
  br i1 %tobool15.not, label %lor.lhs.false14.cleanup_crit_edge, label %if.end

lor.lhs.false14.cleanup_crit_edge:                ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false14
  %target_priv_sz = getelementptr inbounds %struct.nvmet_fc_target_template, ptr %template, i32 0, i32 15
  %18 = ptrtoint ptr %target_priv_sz to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %target_priv_sz, align 4
  %add = add i32 %19, 208
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #15
  %tobool16.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool16.not, label %if.end.cleanup_crit_edge, label %if.end18

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %call19 = tail call i32 @ida_alloc_range(ptr noundef nonnull @nvmet_fc_tgtport_cnt, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %if.end18.out_fail_kfree_crit_edge, label %if.end21

if.end18.out_fail_kfree_crit_edge:                ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_fail_kfree

if.end21:                                         ; preds = %if.end18
  %call22 = tail call ptr @get_device(ptr noundef %dev) #12
  %tobool23.not = icmp ne ptr %call22, null
  %tobool24.not = icmp eq ptr %dev, null
  %or.cond = or i1 %tobool24.not, %tobool23.not
  br i1 %or.cond, label %if.end26, label %if.end21.out_ida_put_crit_edge

if.end21.out_ida_put_crit_edge:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_ida_put

if.end26:                                         ; preds = %if.end21
  %20 = ptrtoint ptr %pinfo to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %pinfo, align 8
  %node_name27 = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %call9.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %node_name27 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %node_name27, align 8
  %port_name = getelementptr inbounds %struct.nvmet_fc_port_info, ptr %pinfo, i32 0, i32 1
  %23 = ptrtoint ptr %port_name to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %port_name, align 8
  %port_name29 = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %call9.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %port_name29 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %port_name29, align 16
  %26 = ptrtoint ptr %target_priv_sz to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %target_priv_sz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool31.not = icmp eq i32 %27, 0
  %arrayidx = getelementptr %struct.nvmet_fc_tgtport, ptr %call9.i.i, i32 1
  %spec.select = select i1 %tobool31.not, ptr null, ptr %arrayidx
  %28 = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %call9.i.i, i32 0, i32 3
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %spec.select, ptr %28, align 8
  %port_id = getelementptr inbounds %struct.nvmet_fc_port_info, ptr %pinfo, i32 0, i32 2
  %30 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port_id, align 8
  %port_id38 = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %call9.i.i, i32 0, i32 4
  %32 = ptrtoint ptr %port_id38 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %port_id38, align 4
  %33 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call19, ptr %call9.i.i, align 128
  %tgt_list = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %call9.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %tgt_list to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %tgt_list, ptr %tgt_list, align 8
  %prev.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %call9.i.i, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %tgt_list, ptr %prev.i, align 4
  %dev40 = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %call9.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %dev40 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %dev, ptr %dev40, align 16
  %ops = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %call9.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %template, ptr %ops, align 4
  %lock = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %call9.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @nvmet_fc_register_targetport.__key, i16 noundef signext 3) #12
  %ls_rcv_list = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %call9.i.i, i32 0, i32 6
  %38 = ptrtoint ptr %ls_rcv_list to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %ls_rcv_list, ptr %ls_rcv_list, align 8
  %prev.i107 = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %call9.i.i, i32 0, i32 6, i32 1
  %39 = ptrtoint ptr %prev.i107 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %ls_rcv_list, ptr %prev.i107, align 4
  %ls_req_list = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %call9.i.i, i32 0, i32 7
  %40 = ptrtoint ptr %ls_req_list to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %ls_req_list, ptr %ls_req_list, align 16
  %prev.i108 = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %call9.i.i, i32 0, i32 7, i32 1
  %41 = ptrtoint ptr %prev.i108 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %ls_req_list, ptr %prev.i108, align 4
  %ls_busylist = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %call9.i.i, i32 0, i32 8
  %42 = ptrtoint ptr %ls_busylist to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %ls_busylist, ptr %ls_busylist, align 8
  %prev.i109 = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %call9.i.i, i32 0, i32 8, i32 1
  %43 = ptrtoint ptr %prev.i109 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %ls_busylist, ptr %prev.i109, align 4
  %assoc_list = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %call9.i.i, i32 0, i32 9
  %44 = ptrtoint ptr %assoc_list to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %assoc_list, ptr %assoc_list, align 128
  %prev.i110 = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %call9.i.i, i32 0, i32 9, i32 1
  %45 = ptrtoint ptr %prev.i110 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %assoc_list, ptr %prev.i110, align 4
  %host_list = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %call9.i.i, i32 0, i32 10
  %46 = ptrtoint ptr %host_list to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %host_list, ptr %host_list, align 8
  %prev.i111 = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %call9.i.i, i32 0, i32 10, i32 1
  %47 = ptrtoint ptr %prev.i111 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %host_list, ptr %prev.i111, align 4
  %ref = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %call9.i.i, i32 0, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #12
  %48 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 1, ptr %ref, align 8
  %assoc_cnt = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %call9.i.i, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %assoc_cnt, ptr noundef nonnull @.str.16, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #12
  %xa_flags.i.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %call9.i.i, i32 0, i32 11, i32 0, i32 1
  %49 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 67108869, ptr %xa_flags.i.i, align 4
  %xa_head.i.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %call9.i.i, i32 0, i32 11, i32 0, i32 2
  %50 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %xa_head.i.i, align 64
  %51 = ptrtoint ptr %max_sgl_segments to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %max_sgl_segments, align 4
  %conv = zext i16 %52 to i32
  %max_sg_cnt = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %call9.i.i, i32 0, i32 14
  %53 = ptrtoint ptr %max_sg_cnt to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv, ptr %max_sg_cnt, align 4
  %call43 = tail call fastcc i32 @nvmet_fc_alloc_ls_iodlist(ptr noundef nonnull %call9.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.then45

if.then45:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @put_device(ptr noundef %dev) #12
  br label %out_ida_put

if.end46:                                         ; preds = %if.end26
  tail call fastcc void @nvmet_fc_portentry_rebind_tgt(ptr noundef nonnull %call9.i.i)
  %call52 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @nvmet_fc_tgtlock) #12
  %54 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @nvmet_fc_target_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %tgt_list, ptr noundef %54, ptr noundef nonnull @nvmet_fc_target_list) #12
  br i1 %call.i.i, label %if.end.i.i112, label %if.end46.list_add_tail.exit_crit_edge

if.end46.list_add_tail.exit_crit_edge:            ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i112:                                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  store ptr %tgt_list, ptr getelementptr inbounds (%struct.list_head, ptr @nvmet_fc_target_list, i32 0, i32 1), align 4
  %55 = ptrtoint ptr %tgt_list to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @nvmet_fc_target_list, ptr %tgt_list, align 8
  %56 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %54, ptr %prev.i, align 4
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %tgt_list, ptr %54, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i112, %if.end46.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @nvmet_fc_tgtlock, i32 noundef %call52) #12
  br label %cleanup

out_ida_put:                                      ; preds = %if.then45, %if.end21.out_ida_put_crit_edge
  %ret.0 = phi i32 [ -12, %if.then45 ], [ -19, %if.end21.out_ida_put_crit_edge ]
  tail call void @ida_free(ptr noundef nonnull @nvmet_fc_tgtport_cnt, i32 noundef %call19) #12
  br label %out_fail_kfree

out_fail_kfree:                                   ; preds = %out_ida_put, %if.end18.out_fail_kfree_crit_edge
  %ret.1 = phi i32 [ %ret.0, %out_ida_put ], [ -28, %if.end18.out_fail_kfree_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out_fail_kfree, %list_add_tail.exit, %if.end.cleanup_crit_edge, %lor.lhs.false14.cleanup_crit_edge, %lor.lhs.false12.cleanup_crit_edge, %lor.lhs.false10.cleanup_crit_edge, %lor.lhs.false8.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %storemerge = phi ptr [ %call9.i.i, %list_add_tail.exit ], [ null, %if.end.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %lor.lhs.false2.cleanup_crit_edge ], [ null, %lor.lhs.false4.cleanup_crit_edge ], [ null, %lor.lhs.false6.cleanup_crit_edge ], [ null, %lor.lhs.false8.cleanup_crit_edge ], [ null, %lor.lhs.false10.cleanup_crit_edge ], [ null, %lor.lhs.false12.cleanup_crit_edge ], [ null, %lor.lhs.false14.cleanup_crit_edge ], [ null, %out_fail_kfree ]
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %lor.lhs.false6.cleanup_crit_edge ], [ -22, %lor.lhs.false8.cleanup_crit_edge ], [ -22, %lor.lhs.false10.cleanup_crit_edge ], [ -22, %lor.lhs.false12.cleanup_crit_edge ], [ -22, %lor.lhs.false14.cleanup_crit_edge ], [ %ret.1, %out_fail_kfree ]
  %58 = ptrtoint ptr %portptr to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %storemerge, ptr %portptr, align 4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvmet_fc_alloc_ls_iodlist(ptr noundef %tgtport) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 32768, i32 noundef 3520, i32 noundef 3) #15
  %tobool.not = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %iod1 = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %tgtport, i32 0, i32 4
  %0 = ptrtoint ptr %iod1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1.i.i.i.i, ptr %iod1, align 8
  %ls_rcv_list8 = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %tgtport, i32 0, i32 6
  %prev.i71 = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %tgtport, i32 0, i32 6, i32 1
  %dev = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %tgtport, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %if.end
  %i.097 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.do.body_crit_edge ]
  %iod.095 = phi ptr [ %call1.i.i.i.i, %if.end ], [ %incdec.ptr, %for.inc.do.body_crit_edge ]
  %work = getelementptr inbounds %struct.nvmet_fc_ls_iod, ptr %iod.095, i32 0, i32 11
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #12
  %1 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.nvmet_fc_ls_iod, ptr %iod.095, i32 0, i32 11, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.17, ptr noundef nonnull @nvmet_fc_alloc_ls_iodlist.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry5 = getelementptr inbounds %struct.nvmet_fc_ls_iod, ptr %iod.095, i32 0, i32 11, i32 1
  %2 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %entry5, ptr %entry5, align 4
  %prev.i = getelementptr inbounds %struct.nvmet_fc_ls_iod, ptr %iod.095, i32 0, i32 11, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry5, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.nvmet_fc_ls_iod, ptr %iod.095, i32 0, i32 11, i32 2
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @nvmet_fc_handle_ls_rqst_work, ptr %func, align 4
  %tgtport7 = getelementptr inbounds %struct.nvmet_fc_ls_iod, ptr %iod.095, i32 0, i32 3
  %5 = ptrtoint ptr %tgtport7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %tgtport, ptr %tgtport7, align 8
  %ls_rcv_list = getelementptr inbounds %struct.nvmet_fc_ls_iod, ptr %iod.095, i32 0, i32 2
  %6 = ptrtoint ptr %prev.i71 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i71, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ls_rcv_list, ptr noundef %7, ptr noundef %ls_rcv_list8) #12
  br i1 %call.i.i, label %if.end.i.i, label %do.body.list_add_tail.exit_crit_edge

do.body.list_add_tail.exit_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %prev.i71 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ls_rcv_list, ptr %prev.i71, align 4
  %9 = ptrtoint ptr %ls_rcv_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ls_rcv_list8, ptr %ls_rcv_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.nvmet_fc_ls_iod, ptr %iod.095, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %ls_rcv_list, ptr %7, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body.list_add_tail.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 1152) #16
  %rqstbuf = getelementptr inbounds %struct.nvmet_fc_ls_iod, ptr %iod.095, i32 0, i32 6
  %13 = ptrtoint ptr %rqstbuf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %rqstbuf, align 4
  %tobool11.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool11.not, label %list_add_tail.exit.out_fail_crit_edge, label %if.end13

list_add_tail.exit.out_fail_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_fail

if.end13:                                         ; preds = %list_add_tail.exit
  %arrayidx = getelementptr %union.nvmefc_ls_requests, ptr %call7.i.i, i32 1
  %rspbuf = getelementptr inbounds %struct.nvmet_fc_ls_iod, ptr %iod.095, i32 0, i32 7
  %14 = ptrtoint ptr %rspbuf to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx, ptr %rspbuf, align 8
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %fc_dma_map_single.exit.thread, label %cond.true.i

fc_dma_map_single.exit.thread:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %rspdma88 = getelementptr inbounds %struct.nvmet_fc_ls_iod, ptr %iod.095, i32 0, i32 9
  %17 = ptrtoint ptr %rspdma88 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %rspdma88, align 8
  br label %for.inc

cond.true.i:                                      ; preds = %if.end13
  %call.i.i73 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %arrayidx) #12
  br i1 %call.i.i73, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %cond.true.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.fc_dma_map_single.exit_crit_edge, label %if.then.i.i, !prof !263

land.rhs.i.i.fc_dma_map_single.exit_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fc_dma_map_single.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef nonnull %16) #12
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 3
  %18 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %16, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %21, %if.end.i.i.i ], [ %19, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.82, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.83, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #12
  br label %fc_dma_map_single.exit

if.end39.i.i:                                     ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @debug_dma_map_single(ptr noundef nonnull %16, ptr noundef %arrayidx, i32 noundef 128) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %22 = load ptr, ptr @mem_map, align 4
  %23 = ptrtoint ptr %arrayidx to i32
  %sub.i.i = add i32 %23, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %22, i32 %shr.i.i
  %and.i.i = and i32 %23, 4088
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef nonnull %16, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef 128, i32 noundef 1, i32 noundef 0) #12
  br label %fc_dma_map_single.exit

fc_dma_map_single.exit:                           ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.fc_dma_map_single.exit_crit_edge
  %cond.i.ph = phi i32 [ -1, %land.rhs.i.i.fc_dma_map_single.exit_crit_edge ], [ -1, %dev_name.exit.i.i ], [ %call41.i.i, %if.end39.i.i ]
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr = load ptr, ptr %dev, align 8
  %rspdma = getelementptr inbounds %struct.nvmet_fc_ls_iod, ptr %iod.095, i32 0, i32 9
  %25 = ptrtoint ptr %rspdma to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %cond.i.ph, ptr %rspdma, align 8
  %tobool.not.i74 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i74, label %fc_dma_map_single.exit.for.inc_crit_edge, label %cond.true.i75

fc_dma_map_single.exit.for.inc_crit_edge:         ; preds = %fc_dma_map_single.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

cond.true.i75:                                    ; preds = %fc_dma_map_single.exit
  tail call void @debug_dma_mapping_error(ptr noundef nonnull %.pr, i32 noundef %cond.i.ph) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond.i.ph)
  %cmp.i.i = icmp eq i32 %cond.i.ph, -1
  br i1 %cmp.i.i, label %cond.true.i75.out_fail_crit_edge, label %cond.true.i75.for.inc_crit_edge

cond.true.i75.for.inc_crit_edge:                  ; preds = %cond.true.i75
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

cond.true.i75.out_fail_crit_edge:                 ; preds = %cond.true.i75
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_fail

for.inc:                                          ; preds = %cond.true.i75.for.inc_crit_edge, %fc_dma_map_single.exit.for.inc_crit_edge, %fc_dma_map_single.exit.thread
  %incdec.ptr = getelementptr %struct.nvmet_fc_ls_iod, ptr %iod.095, i32 1
  %inc = add nuw nsw i32 %i.097, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

out_fail:                                         ; preds = %cond.true.i75.out_fail_crit_edge, %list_add_tail.exit.out_fail_crit_edge
  %rqstbuf.le = getelementptr inbounds %struct.nvmet_fc_ls_iod, ptr %iod.095, i32 0, i32 6
  %26 = ptrtoint ptr %rqstbuf.le to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rqstbuf.le, align 4
  tail call void @kfree(ptr noundef %27) #12
  %call.i.i77 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ls_rcv_list) #12
  br i1 %call.i.i77, label %if.end.i.i78, label %out_fail.list_del.exit_crit_edge

out_fail.list_del.exit_crit_edge:                 ; preds = %out_fail
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i78:                                     ; preds = %out_fail
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.nvmet_fc_ls_iod, ptr %iod.095, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i, align 4
  %30 = ptrtoint ptr %ls_rcv_list to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ls_rcv_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i78, %out_fail.list_del.exit_crit_edge
  %34 = ptrtoint ptr %ls_rcv_list to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 256 to ptr), ptr %ls_rcv_list, align 4
  %prev.i79 = getelementptr inbounds %struct.nvmet_fc_ls_iod, ptr %iod.095, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %prev.i79 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i79, align 4
  %iod.1100 = getelementptr %struct.nvmet_fc_ls_iod, ptr %iod.095, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.097)
  %cmp27101.not = icmp eq i32 %i.097, 0
  br i1 %cmp27101.not, label %list_del.exit.for.end36_crit_edge, label %list_del.exit.for.body28_crit_edge

list_del.exit.for.body28_crit_edge:               ; preds = %list_del.exit
  br label %for.body28

list_del.exit.for.end36_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end36

for.body28:                                       ; preds = %list_del.exit86.for.body28_crit_edge, %list_del.exit.for.body28_crit_edge
  %iod.1105 = phi ptr [ %iod.1, %list_del.exit86.for.body28_crit_edge ], [ %iod.1100, %list_del.exit.for.body28_crit_edge ]
  %i.1104.in = phi i32 [ %i.1104, %list_del.exit86.for.body28_crit_edge ], [ %i.097, %list_del.exit.for.body28_crit_edge ]
  %iod.0.pn102 = phi ptr [ %iod.1105, %list_del.exit86.for.body28_crit_edge ], [ %iod.095, %list_del.exit.for.body28_crit_edge ]
  %i.1104 = add nsw i32 %i.1104.in, -1
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 8
  %tobool.not.i80 = icmp eq ptr %37, null
  br i1 %tobool.not.i80, label %for.body28.fc_dma_unmap_single.exit_crit_edge, label %if.then.i

for.body28.fc_dma_unmap_single.exit_crit_edge:    ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #14
  br label %fc_dma_unmap_single.exit

if.then.i:                                        ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #14
  %rspdma30 = getelementptr %struct.nvmet_fc_ls_iod, ptr %iod.0.pn102, i32 -1, i32 9
  %38 = ptrtoint ptr %rspdma30 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rspdma30, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef nonnull %37, i32 noundef %39, i32 noundef 128, i32 noundef 1, i32 noundef 0) #12
  br label %fc_dma_unmap_single.exit

fc_dma_unmap_single.exit:                         ; preds = %if.then.i, %for.body28.fc_dma_unmap_single.exit_crit_edge
  %rqstbuf31 = getelementptr %struct.nvmet_fc_ls_iod, ptr %iod.0.pn102, i32 -1, i32 6
  %40 = ptrtoint ptr %rqstbuf31 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rqstbuf31, align 4
  tail call void @kfree(ptr noundef %41) #12
  %ls_rcv_list32 = getelementptr %struct.nvmet_fc_ls_iod, ptr %iod.0.pn102, i32 -1, i32 2
  %call.i.i81 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ls_rcv_list32) #12
  br i1 %call.i.i81, label %if.end.i.i84, label %fc_dma_unmap_single.exit.list_del.exit86_crit_edge

fc_dma_unmap_single.exit.list_del.exit86_crit_edge: ; preds = %fc_dma_unmap_single.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit86

if.end.i.i84:                                     ; preds = %fc_dma_unmap_single.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i82 = getelementptr %struct.nvmet_fc_ls_iod, ptr %iod.0.pn102, i32 -1, i32 2, i32 1
  %42 = ptrtoint ptr %prev.i.i82 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i82, align 4
  %44 = ptrtoint ptr %ls_rcv_list32 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ls_rcv_list32, align 4
  %prev1.i.i.i83 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i.i83 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev1.i.i.i83, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %45, ptr %43, align 4
  br label %list_del.exit86

list_del.exit86:                                  ; preds = %if.end.i.i84, %fc_dma_unmap_single.exit.list_del.exit86_crit_edge
  %48 = ptrtoint ptr %ls_rcv_list32 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 256 to ptr), ptr %ls_rcv_list32, align 4
  %prev.i85 = getelementptr %struct.nvmet_fc_ls_iod, ptr %iod.0.pn102, i32 -1, i32 2, i32 1
  %49 = ptrtoint ptr %prev.i85 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i85, align 4
  %iod.1 = getelementptr %struct.nvmet_fc_ls_iod, ptr %iod.1105, i32 -1
  %cmp27 = icmp sgt i32 %i.1104.in, 1
  br i1 %cmp27, label %list_del.exit86.for.body28_crit_edge, label %list_del.exit86.for.end36_crit_edge

list_del.exit86.for.end36_crit_edge:              ; preds = %list_del.exit86
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end36

list_del.exit86.for.body28_crit_edge:             ; preds = %list_del.exit86
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body28

for.end36:                                        ; preds = %list_del.exit86.for.end36_crit_edge, %list_del.exit.for.end36_crit_edge
  %iod.1.lcssa = phi ptr [ %iod.1100, %list_del.exit.for.end36_crit_edge ], [ %iod.1, %list_del.exit86.for.end36_crit_edge ]
  tail call void @kfree(ptr noundef %iod.1.lcssa) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end36, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %for.end36 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvmet_fc_portentry_rebind_tgt(ptr noundef %tgtport) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @nvmet_fc_tgtlock) #12
  %.pn59 = load ptr, ptr @nvmet_fc_portentry_list, align 4
  %cmp6.not60 = icmp eq ptr %.pn59, @nvmet_fc_portentry_list
  br i1 %cmp6.not60, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %node_name = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %tgtport, i32 0, i32 1
  %0 = ptrtoint ptr %node_name to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %node_name, align 8
  %port_name = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %tgtport, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn61 = phi ptr [ %.pn59, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %node_name8 = getelementptr i8, ptr %.pn61, i32 -16
  %2 = ptrtoint ptr %node_name8 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %node_name8, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp9 = icmp eq i64 %1, %3
  br i1 %cmp9, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %4 = ptrtoint ptr %port_name to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %port_name, align 8
  %port_name12 = getelementptr i8, ptr %.pn61, i32 -8
  %6 = ptrtoint ptr %port_name12 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %port_name12, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp13 = icmp eq i64 %5, %7
  br i1 %cmp13, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %pe.0.le = getelementptr i8, ptr %.pn61, i32 -24
  %8 = ptrtoint ptr %pe.0.le to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pe.0.le, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %do.end28, !prof !263

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end28:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1334, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end28, %if.then.if.end_crit_edge
  %pe41 = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %tgtport, i32 0, i32 12
  %10 = ptrtoint ptr %pe41 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %pe.0.le, ptr %pe41, align 4
  %11 = ptrtoint ptr %pe.0.le to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %tgtport, ptr %pe.0.le, align 8
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %12 = ptrtoint ptr %.pn61 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load ptr, ptr %.pn61, align 4
  %cmp6.not = icmp eq ptr %.pn, @nvmet_fc_portentry_list
  br i1 %cmp6.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @nvmet_fc_tgtlock, i32 noundef %call2) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvmet_fc_invalidate_host(ptr noundef %target_port, ptr noundef %hosthandle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %target_port, i32 0, i32 5
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %assoc_list = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %target_port, i32 0, i32 9
  %0 = ptrtoint ptr %assoc_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %assoc_list, align 8
  %cmp14.not62 = icmp eq ptr %1, %assoc_list
  br i1 %cmp14.not62, label %land.lhs.true.critedge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in64 = phi ptr [ %.pn66, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %noassoc.0.off063 = phi i1 [ %noassoc.1.off0, %for.inc.for.body_crit_edge ], [ true, %entry.for.body_crit_edge ]
  %assoc.065 = getelementptr i8, ptr %.pn.in64, i32 -28
  %2 = ptrtoint ptr %.pn.in64 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn66 = load ptr, ptr %.pn.in64, align 4
  %hostport = getelementptr i8, ptr %.pn.in64, i32 -8
  %3 = ptrtoint ptr %hostport to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hostport, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %hosthandle17 = getelementptr inbounds %struct.nvmet_fc_hostport, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %hosthandle17 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hosthandle17, align 4
  %cmp18.not = icmp eq ptr %6, %hosthandle
  br i1 %cmp18.not, label %if.end, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %call20 = tail call fastcc i32 @nvmet_fc_tgt_a_get(ptr noundef %assoc.065)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end.for.inc_crit_edge, label %if.end23

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end23:                                         ; preds = %if.end
  %7 = ptrtoint ptr %hostport to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hostport, align 4
  %invalid = getelementptr inbounds %struct.nvmet_fc_hostport, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %invalid to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %invalid, align 4
  %del_work = getelementptr i8, ptr %.pn.in64, i32 528
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %del_work) #12
  br i1 %call.i.i, label %if.end23.for.inc_crit_edge, label %if.then26

if.end23.for.inc_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @nvmet_fc_tgt_a_put(ptr noundef %assoc.065)
  br label %for.inc

for.inc:                                          ; preds = %if.then26, %if.end23.for.inc_crit_edge, %if.end.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %noassoc.1.off0 = phi i1 [ %noassoc.0.off063, %lor.lhs.false.for.inc_crit_edge ], [ false, %if.end23.for.inc_crit_edge ], [ false, %if.then26 ], [ %noassoc.0.off063, %if.end.for.inc_crit_edge ], [ %noassoc.0.off063, %for.body.for.inc_crit_edge ]
  %cmp14.not = icmp eq ptr %.pn66, %assoc_list
  br i1 %cmp14.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  br i1 %noassoc.1.off0, label %for.end.land.lhs.true_crit_edge, label %for.end.if.end40_crit_edge

for.end.if.end40_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

for.end.land.lhs.true_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

land.lhs.true.critedge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %land.lhs.true.critedge, %for.end.land.lhs.true_crit_edge
  %ops = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %target_port, i32 0, i32 3
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %host_release = getelementptr inbounds %struct.nvmet_fc_target_template, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %host_release to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %host_release, align 4
  %tobool36.not = icmp eq ptr %14, null
  br i1 %tobool36.not, label %land.lhs.true.if.end40_crit_edge, label %if.then37

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then37:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %14(ptr noundef %hosthandle) #12
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %land.lhs.true.if.end40_crit_edge, %for.end.if.end40_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvmet_fc_tgt_a_get(ptr noundef %assoc) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ref = getelementptr inbounds %struct.nvmet_fc_tgt_assoc, ptr %assoc, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #12
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref, i32 noundef 4) #12
  %0 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ref, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %entry
  %2 = phi i32 [ %1, %entry ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %3 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %2, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #12
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #12
  %4 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %6 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 %5, i32 %add.i.i.i.i, ptr elementtype(i32) %ref) #12, !srcloc !264
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %5
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !263

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %7 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %8, 1
  %9 = or i32 %add5.i.i.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !263

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 0) #12
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %10 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.i.i.i.i = icmp ne i32 %11, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #12
  %conv.i = zext i1 %tobool12.i.i.i.i to i32
  ret i32 %conv.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvmet_fc_tgt_a_put(ptr noundef %assoc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ref = getelementptr inbounds %struct.nvmet_fc_tgt_assoc, ptr %assoc, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #12, !srcloc !266
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !263

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #12
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !267
  %tgtport1.i = getelementptr %struct.nvmet_fc_tgt_assoc, ptr %assoc, i32 0, i32 3
  %1 = ptrtoint ptr %tgtport1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tgtport1.i, align 8
  %ops.i.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i.i, align 4
  %ls_req.i.i = getelementptr inbounds %struct.nvmet_fc_target_template, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %ls_req.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ls_req.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.then.i.nvmet_fc_xmt_disconnect_assoc.exit.i_crit_edge, label %lor.lhs.false.i.i

if.then.i.nvmet_fc_xmt_disconnect_assoc.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_xmt_disconnect_assoc.exit.i

lor.lhs.false.i.i:                                ; preds = %if.then.i
  %hostport.i.i = getelementptr %struct.nvmet_fc_tgt_assoc, ptr %assoc, i32 0, i32 4
  %7 = ptrtoint ptr %hostport.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hostport.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %8, null
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i.i.nvmet_fc_xmt_disconnect_assoc.exit.i_crit_edge, label %lor.lhs.false3.i.i

lor.lhs.false.i.i.nvmet_fc_xmt_disconnect_assoc.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_xmt_disconnect_assoc.exit.i

lor.lhs.false3.i.i:                               ; preds = %lor.lhs.false.i.i
  %invalid.i.i = getelementptr inbounds %struct.nvmet_fc_hostport, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %invalid.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %invalid.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not.i.i = icmp eq i8 %10, 0
  br i1 %tobool5.not.i.i, label %if.end8.i.i.i.i, label %lor.lhs.false3.i.i.nvmet_fc_xmt_disconnect_assoc.exit.i_crit_edge

lor.lhs.false3.i.i.nvmet_fc_xmt_disconnect_assoc.exit.i_crit_edge: ; preds = %lor.lhs.false3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_xmt_disconnect_assoc.exit.i

if.end8.i.i.i.i:                                  ; preds = %lor.lhs.false3.i.i
  %lsrqst_priv_sz.i.i = getelementptr inbounds %struct.nvmet_fc_target_template, ptr %4, i32 0, i32 16
  %11 = ptrtoint ptr %lsrqst_priv_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lsrqst_priv_sz.i.i, align 8
  %add.i.i = add i32 %12, 136
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3520) #15
  %tobool7.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool7.not.i.i, label %do.end.i.i, label %if.end9.i.i

do.end.i.i:                                       ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %2, i32 0, i32 2
  %13 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i.i, align 8
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %2, align 8
  %a_id.i.i = getelementptr %struct.nvmet_fc_tgt_assoc, ptr %assoc, i32 0, i32 1
  %17 = ptrtoint ptr %a_id.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %a_id.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.87, i32 noundef %16, i32 noundef %18) #17
  br label %nvmet_fc_xmt_disconnect_assoc.exit.i

if.end9.i.i:                                      ; preds = %if.end8.i.i.i.i
  %arrayidx.i.i = getelementptr %struct.nvmet_fc_ls_req_op, ptr %call9.i.i.i.i, i32 1
  %arrayidx10.i.i = getelementptr %struct.nvmet_fc_ls_req_op, ptr %call9.i.i.i.i, i32 1, i32 3
  %19 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i.i, align 4
  %lsrqst_priv_sz13.i.i = getelementptr inbounds %struct.nvmet_fc_target_template, ptr %20, i32 0, i32 16
  %21 = ptrtoint ptr %lsrqst_priv_sz13.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %lsrqst_priv_sz13.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool14.not.i.i = icmp eq i32 %22, 0
  %arrayidx16.i.i = getelementptr %struct.nvmet_fc_ls_req_op, ptr %call9.i.i.i.i, i32 2, i32 0, i32 2
  %spec.select.i.i = select i1 %tobool14.not.i.i, ptr null, ptr %arrayidx16.i.i
  %23 = getelementptr inbounds %struct.nvmefc_ls_req, ptr %call9.i.i.i.i, i32 0, i32 7
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %spec.select.i.i, ptr %23, align 4
  %tgtport19.i.i = getelementptr inbounds %struct.nvmet_fc_ls_req_op, ptr %call9.i.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %tgtport19.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %2, ptr %tgtport19.i.i, align 8
  %26 = ptrtoint ptr %hostport.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hostport.i.i, align 4
  %hosthandle.i.i = getelementptr inbounds %struct.nvmet_fc_hostport, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %hosthandle.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hosthandle.i.i, align 4
  %hosthandle21.i.i = getelementptr inbounds %struct.nvmet_fc_ls_req_op, ptr %call9.i.i.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %hosthandle21.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %hosthandle21.i.i, align 4
  %31 = ptrtoint ptr %assoc to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %assoc, align 8
  %33 = ptrtoint ptr %call9.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %arrayidx.i.i, ptr %call9.i.i.i.i, align 128
  %rqstlen.i.i.i = getelementptr inbounds %struct.nvmefc_ls_req, ptr %call9.i.i.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %rqstlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 48, ptr %rqstlen.i.i.i, align 8
  %rspaddr.i.i.i = getelementptr inbounds %struct.nvmefc_ls_req, ptr %call9.i.i.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %rspaddr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %arrayidx10.i.i, ptr %rspaddr.i.i.i, align 4
  %rsplen.i.i.i = getelementptr inbounds %struct.nvmefc_ls_req, ptr %call9.i.i.i.i, i32 0, i32 5
  %36 = ptrtoint ptr %rsplen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 24, ptr %rsplen.i.i.i, align 4
  %timeout.i.i.i = getelementptr inbounds %struct.nvmefc_ls_req, ptr %call9.i.i.i.i, i32 0, i32 6
  %37 = ptrtoint ptr %timeout.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 20, ptr %timeout.i.i.i, align 8
  %38 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 5, ptr %arrayidx.i.i, align 64
  %desc_list_len.i.i.i = getelementptr %struct.nvmet_fc_ls_req_op, ptr %call9.i.i.i.i, i32 1, i32 0, i32 1
  %39 = ptrtoint ptr %desc_list_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 40, ptr %desc_list_len.i.i.i, align 4
  %associd.i.i.i = getelementptr %struct.nvmet_fc_ls_req_op, ptr %call9.i.i.i.i, i32 1, i32 0, i32 2
  %40 = ptrtoint ptr %associd.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 7, ptr %associd.i.i.i, align 8
  %desc_len.i.i.i = getelementptr %struct.nvmet_fc_ls_req_op, ptr %call9.i.i.i.i, i32 1, i32 0, i32 3
  %41 = ptrtoint ptr %desc_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 8, ptr %desc_len.i.i.i, align 4
  %association_id3.i.i.i = getelementptr %struct.nvmet_fc_ls_req_op, ptr %call9.i.i.i.i, i32 1, i32 0, i32 4
  %42 = ptrtoint ptr %association_id3.i.i.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %32, ptr %association_id3.i.i.i, align 16
  %discon_cmd.i.i.i = getelementptr %struct.nvmet_fc_ls_req_op, ptr %call9.i.i.i.i, i32 1, i32 0, i32 6
  %43 = ptrtoint ptr %discon_cmd.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 5, ptr %discon_cmd.i.i.i, align 8
  %desc_len7.i.i.i = getelementptr %struct.nvmet_fc_ls_req_op, ptr %call9.i.i.i.i, i32 1, i32 0, i32 7
  %44 = ptrtoint ptr %desc_len7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 16, ptr %desc_len7.i.i.i, align 4
  %45 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops.i.i, align 4
  %ls_req1.i.i.i.i = getelementptr inbounds %struct.nvmet_fc_target_template, ptr %46, i32 0, i32 7
  %47 = ptrtoint ptr %ls_req1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ls_req1.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %48, null
  br i1 %tobool.not.i.i.i.i, label %if.end9.i.i.do.end27.i.i_crit_edge, label %if.end.i.i63.i.i

if.end9.i.i.do.end27.i.i_crit_edge:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27.i.i

if.end.i.i63.i.i:                                 ; preds = %if.end9.i.i
  %call.i.i.i.i = tail call fastcc i32 @nvmet_fc_tgtport_get(ptr noundef %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %if.end.i.i63.i.i.do.end27.i.i_crit_edge, label %if.end4.i.i65.i.i

if.end.i.i63.i.i.do.end27.i.i_crit_edge:          ; preds = %if.end.i.i63.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27.i.i

if.end4.i.i65.i.i:                                ; preds = %if.end.i.i63.i.i
  %done5.i.i.i.i = getelementptr inbounds %struct.nvmefc_ls_req, ptr %call9.i.i.i.i, i32 0, i32 8
  %49 = ptrtoint ptr %done5.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @nvmet_fc_disconnect_assoc_done, ptr %done5.i.i.i.i, align 32
  %req_queued.i.i.i.i = getelementptr inbounds %struct.nvmet_fc_ls_req_op, ptr %call9.i.i.i.i, i32 0, i32 5
  %50 = ptrtoint ptr %req_queued.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %req_queued.i.i.i.i, align 4
  %lsreq_list.i.i.i.i = getelementptr inbounds %struct.nvmet_fc_ls_req_op, ptr %call9.i.i.i.i, i32 0, i32 4
  %51 = ptrtoint ptr %lsreq_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %lsreq_list.i.i.i.i, ptr %lsreq_list.i.i.i.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.nvmet_fc_ls_req_op, ptr %call9.i.i.i.i, i32 0, i32 4, i32 1
  %52 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %lsreq_list.i.i.i.i, ptr %prev.i.i.i.i.i, align 8
  %dev.i.i.i.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %2, i32 0, i32 2
  %53 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i.i.i.i, align 8
  %55 = ptrtoint ptr %call9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call9.i.i.i.i, align 128
  %57 = ptrtoint ptr %rqstlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rqstlen.i.i.i, align 8
  %59 = ptrtoint ptr %rsplen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rsplen.i.i.i, align 4
  %add.i.i.i.i = add i32 %60, %58
  %tobool.not.i.i.i64.i.i = icmp eq ptr %54, null
  br i1 %tobool.not.i.i.i64.i.i, label %if.end4.i.i65.i.i.fc_dma_map_single.exit.i.i.i.i_crit_edge, label %cond.true.i.i.i.i.i

if.end4.i.i65.i.i.fc_dma_map_single.exit.i.i.i.i_crit_edge: ; preds = %if.end4.i.i65.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fc_dma_map_single.exit.i.i.i.i

cond.true.i.i.i.i.i:                              ; preds = %if.end4.i.i65.i.i
  %call.i.i.i.i.i.i2 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %56) #12
  br i1 %call.i.i.i.i.i.i2, label %land.rhs.i.i.i.i.i.i, label %if.end39.i.i.i.i.i.i

land.rhs.i.i.i.i.i.i:                             ; preds = %cond.true.i.i.i.i.i
  %.b1.i.i.i.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i.i.i.i, label %land.rhs.i.i.i.i.i.i.fc_dma_map_single.exit.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i.i, !prof !263

land.rhs.i.i.i.i.i.i.fc_dma_map_single.exit.i.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fc_dma_map_single.exit.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %land.rhs.i.i.i.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i.i.i.i = tail call ptr @dev_driver_string(ptr noundef nonnull %54) #12
  %init_name.i.i.i.i.i.i.i = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 3
  %61 = ptrtoint ptr %init_name.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %init_name.i.i.i.i.i.i.i, align 8
  %tobool.not.i.i.i.i.i.i.i = icmp eq ptr %62, null
  br i1 %tobool.not.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i.dev_name.exit.i.i.i.i.i.i_crit_edge

if.then.i.i.i.i.i.i.dev_name.exit.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i.i.i.i.i.i

if.end.i.i.i.i.i.i.i:                             ; preds = %if.then.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %63 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %54, align 4
  br label %dev_name.exit.i.i.i.i.i.i

dev_name.exit.i.i.i.i.i.i:                        ; preds = %if.end.i.i.i.i.i.i.i, %if.then.i.i.i.i.i.i.dev_name.exit.i.i.i.i.i.i_crit_edge
  %retval.0.i.i.i.i.i.i.i = phi ptr [ %64, %if.end.i.i.i.i.i.i.i ], [ %62, %if.then.i.i.i.i.i.i.dev_name.exit.i.i.i.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.82, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.83, ptr noundef %call16.i.i.i.i.i.i, ptr noundef %retval.0.i.i.i.i.i.i.i) #12
  br label %fc_dma_map_single.exit.i.i.i.i

if.end39.i.i.i.i.i.i:                             ; preds = %cond.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @debug_dma_map_single(ptr noundef nonnull %54, ptr noundef %56, i32 noundef %add.i.i.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %65 = load ptr, ptr @mem_map, align 4
  %66 = ptrtoint ptr %56 to i32
  %sub.i.i.i.i66.i.i = add i32 %66, 1073741824
  %shr.i.i.i.i.i.i = lshr i32 %sub.i.i.i.i66.i.i, 12
  %add.ptr.i.i.i.i.i.i = getelementptr %struct.page, ptr %65, i32 %shr.i.i.i.i.i.i
  %and.i.i.i.i.i.i = and i32 %66, 4095
  %call41.i.i.i.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef nonnull %54, ptr noundef %add.ptr.i.i.i.i.i.i, i32 noundef %and.i.i.i.i.i.i, i32 noundef %add.i.i.i.i, i32 noundef 0, i32 noundef 0) #12
  br label %fc_dma_map_single.exit.i.i.i.i

fc_dma_map_single.exit.i.i.i.i:                   ; preds = %if.end39.i.i.i.i.i.i, %dev_name.exit.i.i.i.i.i.i, %land.rhs.i.i.i.i.i.i.fc_dma_map_single.exit.i.i.i.i_crit_edge, %if.end4.i.i65.i.i.fc_dma_map_single.exit.i.i.i.i_crit_edge
  %cond.i.i.i.i.i = phi i32 [ 0, %if.end4.i.i65.i.i.fc_dma_map_single.exit.i.i.i.i_crit_edge ], [ %call41.i.i.i.i.i.i, %if.end39.i.i.i.i.i.i ], [ -1, %dev_name.exit.i.i.i.i.i.i ], [ -1, %land.rhs.i.i.i.i.i.i.fc_dma_map_single.exit.i.i.i.i_crit_edge ]
  %rqstdma.i.i.i.i = getelementptr inbounds %struct.nvmefc_ls_req, ptr %call9.i.i.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %rqstdma.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %cond.i.i.i.i.i, ptr %rqstdma.i.i.i.i, align 4
  %68 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev.i.i.i.i, align 8
  %tobool.not.i1.i.i.i.i = icmp eq ptr %69, null
  br i1 %tobool.not.i1.i.i.i.i, label %fc_dma_map_single.exit.i.i.i.i.if.end12.i.i.i.i_crit_edge, label %cond.true.i2.i.i.i.i

fc_dma_map_single.exit.i.i.i.i.if.end12.i.i.i.i_crit_edge: ; preds = %fc_dma_map_single.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i.i.i.i

cond.true.i2.i.i.i.i:                             ; preds = %fc_dma_map_single.exit.i.i.i.i
  tail call void @debug_dma_mapping_error(ptr noundef nonnull %69, i32 noundef %cond.i.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %cond.i.i.i.i.i, -1
  br i1 %cmp.i.i.i.i.i.i, label %cond.true.i2.i.i.i.i.out_puttgtport.i.i.i.i_crit_edge, label %cond.true.i2.i.i.i.i.if.end12.i.i.i.i_crit_edge

cond.true.i2.i.i.i.i.if.end12.i.i.i.i_crit_edge:  ; preds = %cond.true.i2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i.i.i.i

cond.true.i2.i.i.i.i.out_puttgtport.i.i.i.i_crit_edge: ; preds = %cond.true.i2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_puttgtport.i.i.i.i

if.end12.i.i.i.i:                                 ; preds = %cond.true.i2.i.i.i.i.if.end12.i.i.i.i_crit_edge, %fc_dma_map_single.exit.i.i.i.i.if.end12.i.i.i.i_crit_edge
  %70 = ptrtoint ptr %rqstdma.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rqstdma.i.i.i.i, align 4
  %72 = ptrtoint ptr %rqstlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rqstlen.i.i.i, align 8
  %add15.i.i.i.i = add i32 %73, %71
  %rspdma.i.i.i.i = getelementptr inbounds %struct.nvmefc_ls_req, ptr %call9.i.i.i.i, i32 0, i32 4
  %74 = ptrtoint ptr %rspdma.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %add15.i.i.i.i, ptr %rspdma.i.i.i.i, align 16
  %lock.i.i.i.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %2, i32 0, i32 5
  %call18.i.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i.i.i) #12
  %ls_req_list.i.i.i.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %2, i32 0, i32 7
  %prev.i4.i.i.i.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %2, i32 0, i32 7, i32 1
  %75 = ptrtoint ptr %prev.i4.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %prev.i4.i.i.i.i, align 4
  %call.i.i5.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %lsreq_list.i.i.i.i, ptr noundef %76, ptr noundef %ls_req_list.i.i.i.i) #12
  br i1 %call.i.i5.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end12.i.i.i.i.list_add_tail.exit.i.i.i.i_crit_edge

if.end12.i.i.i.i.list_add_tail.exit.i.i.i.i_crit_edge: ; preds = %if.end12.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.end12.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %77 = ptrtoint ptr %prev.i4.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %lsreq_list.i.i.i.i, ptr %prev.i4.i.i.i.i, align 4
  %78 = ptrtoint ptr %lsreq_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %ls_req_list.i.i.i.i, ptr %lsreq_list.i.i.i.i, align 4
  %79 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %76, ptr %prev.i.i.i.i.i, align 8
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %lsreq_list.i.i.i.i, ptr %76, align 4
  br label %list_add_tail.exit.i.i.i.i

list_add_tail.exit.i.i.i.i:                       ; preds = %if.end.i.i.i.i.i.i, %if.end12.i.i.i.i.list_add_tail.exit.i.i.i.i_crit_edge
  %81 = ptrtoint ptr %req_queued.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %req_queued.i.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i.i.i, i32 noundef %call18.i.i.i.i) #12
  %82 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ops.i.i, align 4
  %ls_req25.i.i.i.i = getelementptr inbounds %struct.nvmet_fc_target_template, ptr %83, i32 0, i32 7
  %84 = ptrtoint ptr %ls_req25.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ls_req25.i.i.i.i, align 4
  %86 = ptrtoint ptr %hosthandle21.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hosthandle21.i.i, align 4
  %call26.i.i.i.i = tail call i32 %85(ptr noundef %2, ptr noundef %87, ptr noundef nonnull %call9.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i.i.i)
  %tobool27.not.i.i.i.i = icmp eq i32 %call26.i.i.i.i, 0
  br i1 %tobool27.not.i.i.i.i, label %list_add_tail.exit.i.i.i.i.nvmet_fc_xmt_disconnect_assoc.exit.i_crit_edge, label %out_unlink.i.i.i.i

list_add_tail.exit.i.i.i.i.nvmet_fc_xmt_disconnect_assoc.exit.i_crit_edge: ; preds = %list_add_tail.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_xmt_disconnect_assoc.exit.i

out_unlink.i.i.i.i:                               ; preds = %list_add_tail.exit.i.i.i.i
  %ls_error.i.i.i.i = getelementptr inbounds %struct.nvmet_fc_ls_req_op, ptr %call9.i.i.i.i, i32 0, i32 3
  %88 = ptrtoint ptr %ls_error.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %call26.i.i.i.i, ptr %ls_error.i.i.i.i, align 16
  %call39.i.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i.i.i) #12
  %89 = ptrtoint ptr %req_queued.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %req_queued.i.i.i.i, align 4
  %call.i.i6.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lsreq_list.i.i.i.i) #12
  br i1 %call.i.i6.i.i.i.i, label %if.end.i.i7.i.i.i.i, label %out_unlink.i.i.i.i.list_del.exit.i.i.i.i_crit_edge

out_unlink.i.i.i.i.list_del.exit.i.i.i.i_crit_edge: ; preds = %out_unlink.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i.i.i.i

if.end.i.i7.i.i.i.i:                              ; preds = %out_unlink.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %90 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %prev.i.i.i.i.i, align 8
  %92 = ptrtoint ptr %lsreq_list.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %lsreq_list.i.i.i.i, align 4
  %prev1.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %prev1.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %91, ptr %prev1.i.i.i.i.i.i.i, align 4
  %95 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %93, ptr %91, align 4
  br label %list_del.exit.i.i.i.i

list_del.exit.i.i.i.i:                            ; preds = %if.end.i.i7.i.i.i.i, %out_unlink.i.i.i.i.list_del.exit.i.i.i.i_crit_edge
  %96 = ptrtoint ptr %lsreq_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr inttoptr (i32 256 to ptr), ptr %lsreq_list.i.i.i.i, align 4
  %97 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i.i.i, i32 noundef %call39.i.i.i.i) #12
  %98 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev.i.i.i.i, align 8
  %tobool.not.i9.i.i.i.i = icmp eq ptr %99, null
  br i1 %tobool.not.i9.i.i.i.i, label %list_del.exit.i.i.i.i.out_puttgtport.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

list_del.exit.i.i.i.i.out_puttgtport.i.i.i.i_crit_edge: ; preds = %list_del.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_puttgtport.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %list_del.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %100 = ptrtoint ptr %rqstlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %rqstlen.i.i.i, align 8
  %102 = ptrtoint ptr %rsplen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %rsplen.i.i.i, align 4
  %add51.i.i.i.i = add i32 %103, %101
  %104 = ptrtoint ptr %rqstdma.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %rqstdma.i.i.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef nonnull %99, i32 noundef %105, i32 noundef %add51.i.i.i.i, i32 noundef 0, i32 noundef 0) #12
  br label %out_puttgtport.i.i.i.i

out_puttgtport.i.i.i.i:                           ; preds = %if.then.i.i.i.i.i, %list_del.exit.i.i.i.i.out_puttgtport.i.i.i.i_crit_edge, %cond.true.i2.i.i.i.i.out_puttgtport.i.i.i.i_crit_edge
  %ret.0.i.i.i.i = phi i32 [ -14, %cond.true.i2.i.i.i.i.out_puttgtport.i.i.i.i_crit_edge ], [ %call26.i.i.i.i, %list_del.exit.i.i.i.i.out_puttgtport.i.i.i.i_crit_edge ], [ %call26.i.i.i.i, %if.then.i.i.i.i.i ]
  tail call fastcc void @nvmet_fc_tgtport_put(ptr noundef %2) #12
  br label %do.end27.i.i

do.end27.i.i:                                     ; preds = %out_puttgtport.i.i.i.i, %if.end.i.i63.i.i.do.end27.i.i_crit_edge, %if.end9.i.i.do.end27.i.i_crit_edge
  %retval.0.i.i.ph.i.i = phi i32 [ -108, %if.end.i.i63.i.i.do.end27.i.i_crit_edge ], [ -95, %if.end9.i.i.do.end27.i.i_crit_edge ], [ %ret.0.i.i.i.i, %out_puttgtport.i.i.i.i ]
  %dev28.i.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %2, i32 0, i32 2
  %106 = ptrtoint ptr %dev28.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev28.i.i, align 8
  %108 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %2, align 8
  %a_id31.i.i = getelementptr %struct.nvmet_fc_tgt_assoc, ptr %assoc, i32 0, i32 1
  %110 = ptrtoint ptr %a_id31.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %a_id31.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %107, ptr noundef nonnull @.str.90, i32 noundef %109, i32 noundef %111, i32 noundef %retval.0.i.i.ph.i.i) #17
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i.i) #12
  br label %nvmet_fc_xmt_disconnect_assoc.exit.i

nvmet_fc_xmt_disconnect_assoc.exit.i:             ; preds = %do.end27.i.i, %list_add_tail.exit.i.i.i.i.nvmet_fc_xmt_disconnect_assoc.exit.i_crit_edge, %do.end.i.i, %lor.lhs.false3.i.i.nvmet_fc_xmt_disconnect_assoc.exit.i_crit_edge, %lor.lhs.false.i.i.nvmet_fc_xmt_disconnect_assoc.exit.i_crit_edge, %if.then.i.nvmet_fc_xmt_disconnect_assoc.exit.i_crit_edge
  %hostport.i = getelementptr %struct.nvmet_fc_tgt_assoc, ptr %assoc, i32 0, i32 4
  %112 = ptrtoint ptr %hostport.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %hostport.i, align 4
  %tobool.not.i36.i = icmp eq ptr %113, null
  br i1 %tobool.not.i36.i, label %nvmet_fc_xmt_disconnect_assoc.exit.i.nvmet_fc_free_hostport.exit.i_crit_edge, label %lor.lhs.false.i38.i

nvmet_fc_xmt_disconnect_assoc.exit.i.nvmet_fc_free_hostport.exit.i_crit_edge: ; preds = %nvmet_fc_xmt_disconnect_assoc.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_free_hostport.exit.i

lor.lhs.false.i38.i:                              ; preds = %nvmet_fc_xmt_disconnect_assoc.exit.i
  %hosthandle.i37.i = getelementptr inbounds %struct.nvmet_fc_hostport, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %hosthandle.i37.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %hosthandle.i37.i, align 4
  %tobool1.not.i.i = icmp eq ptr %115, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i38.i.nvmet_fc_free_hostport.exit.i_crit_edge, label %if.end.i39.i

lor.lhs.false.i38.i.nvmet_fc_free_hostport.exit.i_crit_edge: ; preds = %lor.lhs.false.i38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_free_hostport.exit.i

if.end.i39.i:                                     ; preds = %lor.lhs.false.i38.i
  %ref.i.i.i = getelementptr inbounds %struct.nvmet_fc_hostport, ptr %113, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @llvm.prefetch.p0(ptr %ref.i.i.i, i32 1, i32 3, i32 1) #12
  %116 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i.i, ptr %ref.i.i.i, i32 1, ptr elementtype(i32) %ref.i.i.i) #12, !srcloc !266
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %116, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i.i42.i, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %if.end.i39.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.nvmet_fc_free_hostport.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !263

if.end5.i.i.i.i.i.i.i.nvmet_fc_free_hostport.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_free_hostport.exit.i

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %ref.i.i.i, i32 noundef 3) #12
  br label %nvmet_fc_free_hostport.exit.i

if.then.i.i.i42.i:                                ; preds = %if.end.i39.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !267
  %117 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %113, align 4
  %lock.i.i.i40.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %118, i32 0, i32 5
  %call4.i.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i.i40.i) #12
  %host_list.i.i.i.i = getelementptr %struct.nvmet_fc_hostport, ptr %113, i32 0, i32 2
  %call.i.i.i.i.i41.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %host_list.i.i.i.i) #12
  br i1 %call.i.i.i.i.i41.i, label %if.end.i.i.i.i.i44.i, label %if.then.i.i.i42.i.list_del.exit.i.i.i47.i_crit_edge

if.then.i.i.i42.i.list_del.exit.i.i.i47.i_crit_edge: ; preds = %if.then.i.i.i42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i.i.i47.i

if.end.i.i.i.i.i44.i:                             ; preds = %if.then.i.i.i42.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i.i.i = getelementptr %struct.nvmet_fc_hostport, ptr %113, i32 0, i32 2, i32 1
  %119 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %prev.i.i.i.i.i.i, align 4
  %121 = ptrtoint ptr %host_list.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %host_list.i.i.i.i, align 4
  %prev1.i.i.i.i.i.i43.i = getelementptr inbounds %struct.list_head, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %prev1.i.i.i.i.i.i43.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %120, ptr %prev1.i.i.i.i.i.i43.i, align 4
  %124 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %124)
  store volatile ptr %122, ptr %120, align 4
  br label %list_del.exit.i.i.i47.i

list_del.exit.i.i.i47.i:                          ; preds = %if.end.i.i.i.i.i44.i, %if.then.i.i.i42.i.list_del.exit.i.i.i47.i_crit_edge
  %125 = ptrtoint ptr %host_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr inttoptr (i32 256 to ptr), ptr %host_list.i.i.i.i, align 4
  %prev.i.i.i.i45.i = getelementptr %struct.nvmet_fc_hostport, ptr %113, i32 0, i32 2, i32 1
  %126 = ptrtoint ptr %prev.i.i.i.i45.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i45.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i.i40.i, i32 noundef %call4.i.i.i.i) #12
  %ops.i.i.i.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %118, i32 0, i32 3
  %127 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %ops.i.i.i.i, align 4
  %host_release.i.i.i.i = getelementptr inbounds %struct.nvmet_fc_target_template, ptr %128, i32 0, i32 9
  %129 = ptrtoint ptr %host_release.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %host_release.i.i.i.i, align 4
  %tobool.not.i.i.i46.i = icmp eq ptr %130, null
  br i1 %tobool.not.i.i.i46.i, label %list_del.exit.i.i.i47.i.nvmet_fc_hostport_free.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

list_del.exit.i.i.i47.i.nvmet_fc_hostport_free.exit.i.i.i_crit_edge: ; preds = %list_del.exit.i.i.i47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_hostport_free.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %list_del.exit.i.i.i47.i
  %invalid.i.i.i.i = getelementptr %struct.nvmet_fc_hostport, ptr %113, i32 0, i32 4
  %131 = ptrtoint ptr %invalid.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %invalid.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool9.not.i.i.i.i = icmp eq i8 %132, 0
  br i1 %tobool9.not.i.i.i.i, label %land.lhs.true.i.i.i.i.nvmet_fc_hostport_free.exit.i.i.i_crit_edge, label %if.then.i1.i.i.i

land.lhs.true.i.i.i.i.nvmet_fc_hostport_free.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_hostport_free.exit.i.i.i

if.then.i1.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %133 = ptrtoint ptr %hosthandle.i37.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %hosthandle.i37.i, align 4
  tail call void %130(ptr noundef %134) #12
  br label %nvmet_fc_hostport_free.exit.i.i.i

nvmet_fc_hostport_free.exit.i.i.i:                ; preds = %if.then.i1.i.i.i, %land.lhs.true.i.i.i.i.nvmet_fc_hostport_free.exit.i.i.i_crit_edge, %list_del.exit.i.i.i47.i.nvmet_fc_hostport_free.exit.i.i.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %113) #12
  tail call fastcc void @nvmet_fc_tgtport_put(ptr noundef %118) #12
  br label %nvmet_fc_free_hostport.exit.i

nvmet_fc_free_hostport.exit.i:                    ; preds = %nvmet_fc_hostport_free.exit.i.i.i, %if.then10.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.nvmet_fc_free_hostport.exit.i_crit_edge, %lor.lhs.false.i38.i.nvmet_fc_free_hostport.exit.i_crit_edge, %nvmet_fc_xmt_disconnect_assoc.exit.i.nvmet_fc_free_hostport.exit.i_crit_edge
  %lock.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %2, i32 0, i32 5
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %a_list.i = getelementptr %struct.nvmet_fc_tgt_assoc, ptr %assoc, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %a_list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %nvmet_fc_free_hostport.exit.i.list_del_rcu.exit.i_crit_edge

nvmet_fc_free_hostport.exit.i.list_del_rcu.exit.i_crit_edge: ; preds = %nvmet_fc_free_hostport.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_rcu.exit.i

if.end.i.i.i:                                     ; preds = %nvmet_fc_free_hostport.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr %struct.nvmet_fc_tgt_assoc, ptr %assoc, i32 0, i32 6, i32 1
  %135 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %prev.i.i.i, align 4
  %137 = ptrtoint ptr %a_list.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %a_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %136, ptr %prev1.i.i.i.i, align 4
  %140 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile ptr %138, ptr %136, align 4
  br label %list_del_rcu.exit.i

list_del_rcu.exit.i:                              ; preds = %if.end.i.i.i, %nvmet_fc_free_hostport.exit.i.list_del_rcu.exit.i_crit_edge
  %prev.i.i = getelementptr %struct.nvmet_fc_tgt_assoc, ptr %assoc, i32 0, i32 6, i32 1
  %141 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %rcv_disconn.i = getelementptr %struct.nvmet_fc_tgt_assoc, ptr %assoc, i32 0, i32 5
  %142 = ptrtoint ptr %rcv_disconn.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %rcv_disconn.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #12
  %tobool.not.i = icmp eq ptr %143, null
  br i1 %tobool.not.i, label %list_del_rcu.exit.i.if.end.i_crit_edge, label %if.then.i3

list_del_rcu.exit.i.if.end.i_crit_edge:           ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i3:                                       ; preds = %list_del_rcu.exit.i
  %dev.i48.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %2, i32 0, i32 2
  %144 = ptrtoint ptr %dev.i48.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev.i48.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %145, null
  br i1 %tobool.not.i.i.i, label %if.then.i3.fc_dma_sync_single_for_device.exit.i.i_crit_edge, label %if.then.i.i.i

if.then.i3.fc_dma_sync_single_for_device.exit.i.i_crit_edge: ; preds = %if.then.i3
  call void @__sanitizer_cov_trace_pc() #14
  br label %fc_dma_sync_single_for_device.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then.i3
  call void @__sanitizer_cov_trace_pc() #14
  %rspdma.i.i = getelementptr inbounds %struct.nvmet_fc_ls_iod, ptr %143, i32 0, i32 9
  %146 = ptrtoint ptr %rspdma.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %rspdma.i.i, align 8
  tail call void @dma_sync_single_for_device(ptr noundef nonnull %145, i32 noundef %147, i32 noundef 128, i32 noundef 1) #12
  br label %fc_dma_sync_single_for_device.exit.i.i

fc_dma_sync_single_for_device.exit.i.i:           ; preds = %if.then.i.i.i, %if.then.i3.fc_dma_sync_single_for_device.exit.i.i_crit_edge
  %148 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %ops.i.i, align 4
  %xmt_ls_rsp.i.i = getelementptr inbounds %struct.nvmet_fc_target_template, ptr %149, i32 0, i32 1
  %150 = ptrtoint ptr %xmt_ls_rsp.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %xmt_ls_rsp.i.i, align 4
  %152 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %143, align 8
  %call.i.i = tail call i32 %151(ptr noundef %2, ptr noundef %153) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i50.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i50.i, label %fc_dma_sync_single_for_device.exit.i.i.if.end.i_crit_edge, label %if.then.i.i

fc_dma_sync_single_for_device.exit.i.i.if.end.i_crit_edge: ; preds = %fc_dma_sync_single_for_device.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i.i:                                      ; preds = %fc_dma_sync_single_for_device.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %154 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %143, align 8
  tail call void @nvmet_fc_xmt_ls_rsp_done(ptr noundef %155) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i.i, %fc_dma_sync_single_for_device.exit.i.i.if.end.i_crit_edge, %list_del_rcu.exit.i.if.end.i_crit_edge
  %assoc_cnt.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %2, i32 0, i32 11
  %a_id.i = getelementptr %struct.nvmet_fc_tgt_assoc, ptr %assoc, i32 0, i32 1
  %156 = ptrtoint ptr %a_id.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %a_id.i, align 8
  tail call void @ida_free(ptr noundef %assoc_cnt.i, i32 noundef %157) #12
  %dev.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %2, i32 0, i32 2
  %158 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dev.i, align 8
  %160 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %2, align 8
  %162 = ptrtoint ptr %a_id.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %a_id.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %159, ptr noundef nonnull @.str.85, i32 noundef %161, i32 noundef %163) #17
  %tobool13.not.i = icmp eq ptr %assoc, null
  br i1 %tobool13.not.i, label %if.end.i.nvmet_fc_target_assoc_free.exit_crit_edge, label %do.end17.i

if.end.i.nvmet_fc_target_assoc_free.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_target_assoc_free.exit

do.end17.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %rcu.i = getelementptr %struct.nvmet_fc_tgt_assoc, ptr %assoc, i32 0, i32 10
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 600 to ptr)) #12
  br label %nvmet_fc_target_assoc_free.exit

nvmet_fc_target_assoc_free.exit:                  ; preds = %do.end17.i, %if.end.i.nvmet_fc_target_assoc_free.exit_crit_edge
  tail call fastcc void @nvmet_fc_tgtport_put(ptr noundef %2) #12
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %nvmet_fc_target_assoc_free.exit, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvmet_fc_unregister_targetport(ptr noundef %target_port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @nvmet_fc_tgtlock) #12
  %pe5.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %target_port, i32 0, i32 12
  %0 = ptrtoint ptr %pe5.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pe5.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.nvmet_fc_portentry_unbind_tgt.exit_crit_edge, label %if.then.i

entry.nvmet_fc_portentry_unbind_tgt.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_portentry_unbind_tgt.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %1, align 8
  br label %nvmet_fc_portentry_unbind_tgt.exit

nvmet_fc_portentry_unbind_tgt.exit:               ; preds = %if.then.i, %entry.nvmet_fc_portentry_unbind_tgt.exit_crit_edge
  %3 = ptrtoint ptr %pe5.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %pe5.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @nvmet_fc_tgtlock, i32 noundef %call2.i) #12
  %4 = tail call i32 @llvm.read_register.i32(metadata !253) #12
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !268
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %nvmet_fc_portentry_unbind_tgt.exit.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

nvmet_fc_portentry_unbind_tgt.exit.rcu_read_lock.exit.i_crit_edge: ; preds = %nvmet_fc_portentry_unbind_tgt.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %nvmet_fc_portentry_unbind_tgt.exit
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 696, ptr noundef nonnull @.str.29) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %nvmet_fc_portentry_unbind_tgt.exit.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i3 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i3, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b31.i = load i1, ptr @__nvmet_fc_free_assocs.__warned, align 1
  br i1 %.b31.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i4

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.then.i4:                                       ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__nvmet_fc_free_assocs.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1491, ptr noundef nonnull @.str.76) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i4, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %assoc_list.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %target_port, i32 0, i32 9
  %8 = ptrtoint ptr %assoc_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn41.i = load volatile ptr, ptr %assoc_list.i, align 4
  %cmp.not43.i = icmp eq ptr %.pn41.i, %assoc_list.i
  br i1 %cmp.not43.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %.pn44.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn41.i, %do.end.i.for.body.i_crit_edge ]
  %assoc.045.i = getelementptr i8, ptr %.pn44.i, i32 -28
  %call10.i = tail call fastcc i32 @nvmet_fc_tgt_a_get(ptr noundef %assoc.045.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end13.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end13.i:                                       ; preds = %for.body.i
  %del_work.i = getelementptr i8, ptr %.pn44.i, i32 528
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %del_work.i) #12
  br i1 %call.i.i.i, label %if.end13.i.for.inc.i_crit_edge, label %if.then15.i

if.end13.i.for.inc.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then15.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @nvmet_fc_tgt_a_put(ptr noundef %assoc.045.i) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then15.i, %if.end13.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %10 = ptrtoint ptr %.pn44.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i = load volatile ptr, ptr %.pn44.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %assoc_list.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %call.i32.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i32.i, label %for.end.i.__nvmet_fc_free_assocs.exit_crit_edge, label %land.lhs.true.i35.i

for.end.i.__nvmet_fc_free_assocs.exit_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__nvmet_fc_free_assocs.exit

land.lhs.true.i35.i:                              ; preds = %for.end.i
  %call1.i33.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i33.i)
  %tobool.not.i34.i = icmp eq i32 %call1.i33.i, 0
  br i1 %tobool.not.i34.i, label %land.lhs.true.i35.i.__nvmet_fc_free_assocs.exit_crit_edge, label %land.lhs.true2.i37.i

land.lhs.true.i35.i.__nvmet_fc_free_assocs.exit_crit_edge: ; preds = %land.lhs.true.i35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__nvmet_fc_free_assocs.exit

land.lhs.true2.i37.i:                             ; preds = %land.lhs.true.i35.i
  %.b4.i36.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i36.i, label %land.lhs.true2.i37.i.__nvmet_fc_free_assocs.exit_crit_edge, label %if.then.i38.i

land.lhs.true2.i37.i.__nvmet_fc_free_assocs.exit_crit_edge: ; preds = %land.lhs.true2.i37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__nvmet_fc_free_assocs.exit

if.then.i38.i:                                    ; preds = %land.lhs.true2.i37.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 724, ptr noundef nonnull @.str.30) #12
  br label %__nvmet_fc_free_assocs.exit

__nvmet_fc_free_assocs.exit:                      ; preds = %if.then.i38.i, %land.lhs.true2.i37.i.__nvmet_fc_free_assocs.exit_crit_edge, %land.lhs.true.i35.i.__nvmet_fc_free_assocs.exit_crit_edge, %for.end.i.__nvmet_fc_free_assocs.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !269
  %11 = tail call i32 @llvm.read_register.i32(metadata !253) #12
  %and.i.i.i.i.i39.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i39.i to ptr
  %preempt_count.i.i.i.i40.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i40.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i40.i, align 4
  %sub.i.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i40.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  tail call fastcc void @nvmet_fc_tgtport_put(ptr noundef %target_port)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvmet_fc_tgtport_put(ptr noundef %tgtport) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ref = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %tgtport, i32 0, i32 13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #12, !srcloc !266
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !263

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #12
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !267
  %dev1.i = getelementptr %struct.nvmet_fc_tgtport, ptr %tgtport, i32 0, i32 2
  %1 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1.i, align 8
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @nvmet_fc_tgtlock) #12
  %tgt_list.i = getelementptr %struct.nvmet_fc_tgtport, ptr %tgtport, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tgt_list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr %struct.nvmet_fc_tgtport, ptr %tgtport, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %tgt_list.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tgt_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.list_del.exit.i_crit_edge
  %9 = ptrtoint ptr %tgt_list.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %tgt_list.i, align 4
  %prev.i.i = getelementptr %struct.nvmet_fc_tgtport, ptr %tgtport, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @nvmet_fc_tgtlock, i32 noundef %call4.i) #12
  %iod1.i.i = getelementptr %struct.nvmet_fc_tgtport, ptr %tgtport, i32 0, i32 4
  %11 = ptrtoint ptr %iod1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iod1.i.i, align 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %list_del.exit.i.i.for.body.i.i_crit_edge, %list_del.exit.i
  %i.011.i.i = phi i32 [ 0, %list_del.exit.i ], [ %inc.i.i, %list_del.exit.i.i.for.body.i.i_crit_edge ]
  %iod.09.i.i = phi ptr [ %12, %list_del.exit.i ], [ %incdec.ptr.i.i, %list_del.exit.i.i.for.body.i.i_crit_edge ]
  %13 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev1.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.fc_dma_unmap_single.exit.i.i_crit_edge, label %if.then.i.i.i

for.body.i.i.fc_dma_unmap_single.exit.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fc_dma_unmap_single.exit.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %rspdma.i.i = getelementptr inbounds %struct.nvmet_fc_ls_iod, ptr %iod.09.i.i, i32 0, i32 9
  %15 = ptrtoint ptr %rspdma.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rspdma.i.i, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef nonnull %14, i32 noundef %16, i32 noundef 128, i32 noundef 1, i32 noundef 0) #12
  br label %fc_dma_unmap_single.exit.i.i

fc_dma_unmap_single.exit.i.i:                     ; preds = %if.then.i.i.i, %for.body.i.i.fc_dma_unmap_single.exit.i.i_crit_edge
  %rqstbuf.i.i = getelementptr inbounds %struct.nvmet_fc_ls_iod, ptr %iod.09.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %rqstbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rqstbuf.i.i, align 4
  tail call void @kfree(ptr noundef %18) #12
  %ls_rcv_list.i.i = getelementptr inbounds %struct.nvmet_fc_ls_iod, ptr %iod.09.i.i, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ls_rcv_list.i.i) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %fc_dma_unmap_single.exit.i.i.list_del.exit.i.i_crit_edge

fc_dma_unmap_single.exit.i.i.list_del.exit.i.i_crit_edge: ; preds = %fc_dma_unmap_single.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %fc_dma_unmap_single.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i = getelementptr inbounds %struct.nvmet_fc_ls_iod, ptr %iod.09.i.i, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i.i, align 4
  %21 = ptrtoint ptr %ls_rcv_list.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ls_rcv_list.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %fc_dma_unmap_single.exit.i.i.list_del.exit.i.i_crit_edge
  %25 = ptrtoint ptr %ls_rcv_list.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %ls_rcv_list.i.i, align 4
  %prev.i.i15.i = getelementptr inbounds %struct.nvmet_fc_ls_iod, ptr %iod.09.i.i, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %prev.i.i15.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i15.i, align 4
  %incdec.ptr.i.i = getelementptr %struct.nvmet_fc_ls_iod, ptr %iod.09.i.i, i32 1
  %inc.i.i = add nuw nsw i32 %i.011.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 256
  br i1 %exitcond.not.i.i, label %nvmet_fc_free_tgtport.exit, label %list_del.exit.i.i.for.body.i.i_crit_edge

list_del.exit.i.i.for.body.i.i_crit_edge:         ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

nvmet_fc_free_tgtport.exit:                       ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %iod1.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iod1.i.i, align 8
  tail call void @kfree(ptr noundef %28) #12
  %ops.i = getelementptr %struct.nvmet_fc_tgtport, ptr %tgtport, i32 0, i32 3
  %29 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  tail call void %32(ptr noundef %tgtport) #12
  %33 = ptrtoint ptr %tgtport to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tgtport, align 8
  tail call void @ida_free(ptr noundef nonnull @nvmet_fc_tgtport_cnt, i32 noundef %34) #12
  %assoc_cnt.i = getelementptr %struct.nvmet_fc_tgtport, ptr %tgtport, i32 0, i32 11
  tail call void @ida_destroy(ptr noundef %assoc_cnt.i) #12
  tail call void @kfree(ptr noundef %tgtport) #12
  tail call void @put_device(ptr noundef %2) #12
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %nvmet_fc_free_tgtport.exit, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvmet_fc_rcv_ls_req(ptr noundef %target_port, ptr noundef %hosthandle, ptr noundef %lsrsp, ptr nocapture noundef readonly %lsreqbuf, i32 noundef %lsreqbuf_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %lsreqbuf_len)
  %cmp = icmp ugt i32 %lsreqbuf_len, 1024
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %target_port, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %2 = ptrtoint ptr %lsreqbuf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %lsreqbuf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %3)
  %cmp1 = icmp ult i8 %3, 7
  br i1 %cmp1, label %cond.true, label %do.end.cond.end_crit_edge

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i8 %3 to i32
  %arrayidx = getelementptr [7 x ptr], ptr @nvmefc_ls_names, i32 0, i32 %conv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi ptr [ %5, %cond.true ], [ @.str.6, %do.end.cond.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef %cond, i32 noundef %lsreqbuf_len) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call fastcc i32 @nvmet_fc_tgtport_get(ptr noundef %target_port)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %do.end8, label %if.end21

do.end8:                                          ; preds = %if.end
  %dev9 = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %target_port, i32 0, i32 2
  %6 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev9, align 8
  %8 = ptrtoint ptr %lsreqbuf to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %lsreqbuf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %9)
  %cmp12 = icmp ult i8 %9, 7
  br i1 %cmp12, label %cond.true14, label %do.end8.cond.end19_crit_edge

do.end8.cond.end19_crit_edge:                     ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end19

cond.true14:                                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  %conv11 = zext i8 %9 to i32
  %arrayidx17 = getelementptr [7 x ptr], ptr @nvmefc_ls_names, i32 0, i32 %conv11
  %10 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx17, align 4
  br label %cond.end19

cond.end19:                                       ; preds = %cond.true14, %do.end8.cond.end19_crit_edge
  %cond20 = phi ptr [ %11, %cond.true14 ], [ @.str.6, %do.end8.cond.end19_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.8, ptr noundef %cond20) #17
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %lock.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %target_port, i32 0, i32 5
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %ls_rcv_list.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %target_port, i32 0, i32 6
  %12 = ptrtoint ptr %ls_rcv_list.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %ls_rcv_list.i, align 4
  %cmp10.not.i = icmp eq ptr %13, %ls_rcv_list.i
  %add.ptr.i = getelementptr i8, ptr %13, i32 -8
  %tobool.not.i67 = icmp eq ptr %add.ptr.i, null
  %tobool.not.i = or i1 %cmp10.not.i, %tobool.not.i67
  br i1 %tobool.not.i, label %do.end27, label %if.then.i

if.then.i:                                        ; preds = %if.end21
  %ls_busylist.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %target_port, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %13) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.__list_del_entry.exit.i.i_crit_edge

if.then.i.__list_del_entry.exit.i.i_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr i8, ptr %13, i32 4
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i.i, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.then.i.__list_del_entry.exit.i.i_crit_edge
  %prev.i2.i.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %target_port, i32 0, i32 8, i32 1
  %20 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %13, ptr noundef %21, ptr noundef %ls_busylist.i) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.if.end40_crit_edge

__list_del_entry.exit.i.i.if.end40_crit_edge:     ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %13, ptr %prev.i2.i.i, align 4
  %23 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %ls_busylist.i, ptr %13, align 4
  %prev3.i.i.i.i = getelementptr i8, ptr %13, i32 4
  %24 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %13, ptr %21, align 4
  br label %if.end40

do.end27:                                         ; preds = %if.end21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #12
  %dev28 = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %target_port, i32 0, i32 2
  %26 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev28, align 8
  %28 = ptrtoint ptr %lsreqbuf to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %lsreqbuf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %29)
  %cmp31 = icmp ult i8 %29, 7
  br i1 %cmp31, label %cond.true33, label %do.end27.cond.end38_crit_edge

do.end27.cond.end38_crit_edge:                    ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end38

cond.true33:                                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #14
  %conv30 = zext i8 %29 to i32
  %arrayidx36 = getelementptr [7 x ptr], ptr @nvmefc_ls_names, i32 0, i32 %conv30
  %30 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx36, align 4
  br label %cond.end38

cond.end38:                                       ; preds = %cond.true33, %do.end27.cond.end38_crit_edge
  %cond39 = phi ptr [ %31, %cond.true33 ], [ @.str.6, %do.end27.cond.end38_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.11, ptr noundef %cond39) #17
  tail call fastcc void @nvmet_fc_tgtport_put(ptr noundef %target_port)
  br label %cleanup

if.end40:                                         ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.if.end40_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #12
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %lsrsp, ptr %add.ptr.i, align 8
  %fcpreq = getelementptr i8, ptr %13, i32 -4
  %33 = ptrtoint ptr %fcpreq to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %fcpreq, align 4
  %rqstbuf = getelementptr i8, ptr %13, i32 20
  %34 = ptrtoint ptr %rqstbuf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rqstbuf, align 4
  %36 = call ptr @memcpy(ptr %35, ptr %lsreqbuf, i32 %lsreqbuf_len)
  %conv42 = trunc i32 %lsreqbuf_len to i16
  %rqstdatalen = getelementptr i8, ptr %13, i32 28
  %37 = ptrtoint ptr %rqstdatalen to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv42, ptr %rqstdatalen, align 4
  %hosthandle43 = getelementptr i8, ptr %13, i32 16
  %38 = ptrtoint ptr %hosthandle43 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %hosthandle, ptr %hosthandle43, align 8
  %work = getelementptr i8, ptr %13, i32 76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %39 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %39, ptr noundef %work) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %cond.end38, %cond.end19, %cond.end
  %retval.0 = phi i32 [ -7, %cond.end ], [ 0, %if.end40 ], [ -2, %cond.end38 ], [ -108, %cond.end19 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvmet_fc_tgtport_get(ptr noundef %tgtport) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ref = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %tgtport, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #12
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref, i32 noundef 4) #12
  %0 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ref, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %entry
  %2 = phi i32 [ %1, %entry ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %3 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %2, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #12
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #12
  %4 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %6 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 %5, i32 %add.i.i.i.i, ptr elementtype(i32) %ref) #12, !srcloc !264
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %5
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !263

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %7 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %8, 1
  %9 = or i32 %add5.i.i.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !263

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 0) #12
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %10 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.i.i.i.i = icmp ne i32 %11, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #12
  %conv.i = zext i1 %tobool12.i.i.i.i to i32
  ret i32 %conv.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvmet_fc_rcv_fcp_req(ptr noundef %target_port, ptr noundef %fcpreq, ptr noundef %cmdiubuf, i32 noundef %cmdiubuf_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %cmdiubuf_len)
  %cmp.not = icmp eq i32 %cmdiubuf_len, 96
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %cmdiubuf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cmdiubuf, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %1)
  %cmp1.not = icmp eq i8 %1, -3
  br i1 %cmp1.not, label %lor.lhs.false3, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %fc_id = getelementptr inbounds %struct.nvme_fc_cmd_iu, ptr %cmdiubuf, i32 0, i32 1
  %2 = ptrtoint ptr %fc_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fc_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %3)
  %cmp5.not = icmp eq i8 %3, 40
  br i1 %cmp5.not, label %lor.lhs.false7, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false3
  %iu_len = getelementptr inbounds %struct.nvme_fc_cmd_iu, ptr %cmdiubuf, i32 0, i32 2
  %4 = ptrtoint ptr %iu_len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %iu_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %5)
  %cmp9.not = icmp eq i16 %5, 24
  br i1 %cmp9.not, label %if.end, label %lor.lhs.false7.cleanup_crit_edge

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false7
  %connection_id = getelementptr inbounds %struct.nvme_fc_cmd_iu, ptr %cmdiubuf, i32 0, i32 6
  %6 = ptrtoint ptr %connection_id to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %connection_id, align 8
  %and.i.i = and i64 %7, -65536
  %conv.i.i = trunc i64 %7 to i16
  %8 = trunc i64 %7 to i32
  %conv.i = and i32 %8, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %conv.i.i)
  %cmp.i = icmp ugt i16 %conv.i.i, 128
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %9 = tail call i32 @llvm.read_register.i32(metadata !253) #12
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !268
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %if.end.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 696, ptr noundef nonnull @.str.29) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i.rcu_read_lock.exit.i_crit_edge
  %call3.i = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b70.i = load i1, ptr @nvmet_fc_find_target_queue.__warned, align 1
  br i1 %.b70.i, label %land.lhs.true6.i.do.end.i_crit_edge, label %if.then8.i

land.lhs.true6.i.do.end.i_crit_edge:              ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.then8.i:                                       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nvmet_fc_find_target_queue.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 969, ptr noundef nonnull @.str.76) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then8.i, %land.lhs.true6.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %assoc_list.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %target_port, i32 0, i32 9
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %.pn.in.i = phi ptr [ %assoc_list.i, %do.end.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %13 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn.i = load volatile ptr, ptr %.pn.in.i, align 4
  %cmp15.not.i = icmp eq ptr %.pn.i, %assoc_list.i
  br i1 %cmp15.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %assoc.0.i = getelementptr i8, ptr %.pn.i, i32 -28
  %14 = ptrtoint ptr %assoc.0.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %assoc.0.i, align 8
  %cmp18.i = icmp eq i64 %and.i.i, %15
  br i1 %cmp18.i, label %if.then20.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

if.then20.i:                                      ; preds = %for.body.i
  %queues.i = getelementptr i8, ptr %.pn.i, i32 8
  %arrayidx.i = getelementptr [129 x ptr], ptr %queues.i, i32 0, i32 %conv.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %arrayidx.i, align 4
  %call26.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %land.lhs.true28.i, label %if.then20.i.do.end36.i_crit_edge

if.then20.i.do.end36.i_crit_edge:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end36.i

land.lhs.true28.i:                                ; preds = %if.then20.i
  %call29.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %land.lhs.true28.i.do.end36.i_crit_edge, label %land.lhs.true31.i

land.lhs.true28.i.do.end36.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end36.i

land.lhs.true31.i:                                ; preds = %land.lhs.true28.i
  %.b6869.i = load i1, ptr @nvmet_fc_find_target_queue.__warned.99, align 1
  br i1 %.b6869.i, label %land.lhs.true31.i.do.end36.i_crit_edge, label %if.then33.i

land.lhs.true31.i.do.end36.i_crit_edge:           ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end36.i

if.then33.i:                                      ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nvmet_fc_find_target_queue.__warned.99, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 971, ptr noundef nonnull @.str.25) #12
  br label %do.end36.i

do.end36.i:                                       ; preds = %if.then33.i, %land.lhs.true31.i.do.end36.i_crit_edge, %land.lhs.true28.i.do.end36.i_crit_edge, %if.then20.i.do.end36.i_crit_edge
  %tobool38.not.i = icmp eq ptr %17, null
  br i1 %tobool38.not.i, label %do.end36.i.if.end45.i_crit_edge, label %land.lhs.true39.i

do.end36.i.if.end45.i_crit_edge:                  ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45.i

land.lhs.true39.i:                                ; preds = %do.end36.i
  %connected.i = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %17, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %connected.i, i32 noundef 4) #12
  %18 = ptrtoint ptr %connected.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %connected.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool41.not.i = icmp eq i32 %19, 0
  br i1 %tobool41.not.i, label %land.lhs.true39.i.if.then44.i_crit_edge, label %lor.lhs.false.i

land.lhs.true39.i.if.then44.i_crit_edge:          ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then44.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true39.i
  %call42.i = tail call fastcc i32 @nvmet_fc_tgt_q_get(ptr noundef nonnull %17) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %lor.lhs.false.i.if.then44.i_crit_edge, label %lor.lhs.false.i.if.end45.i_crit_edge

lor.lhs.false.i.if.end45.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45.i

lor.lhs.false.i.if.then44.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then44.i

if.then44.i:                                      ; preds = %lor.lhs.false.i.if.then44.i_crit_edge, %land.lhs.true39.i.if.then44.i_crit_edge
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then44.i, %lor.lhs.false.i.if.end45.i_crit_edge, %do.end36.i.if.end45.i_crit_edge
  %queue.0.i = phi ptr [ %17, %lor.lhs.false.i.if.end45.i_crit_edge ], [ null, %if.then44.i ], [ null, %do.end36.i.if.end45.i_crit_edge ]
  %call.i71.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i71.i, label %if.end45.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i74.i

if.end45.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true.i74.i:                              ; preds = %if.end45.i
  %call1.i72.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i72.i)
  %tobool.not.i73.i = icmp eq i32 %call1.i72.i, 0
  br i1 %tobool.not.i73.i, label %land.lhs.true.i74.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i76.i

land.lhs.true.i74.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i74.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i76.i:                             ; preds = %land.lhs.true.i74.i
  %.b4.i75.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i75.i, label %land.lhs.true2.i76.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i77.i

land.lhs.true2.i76.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i76.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

if.then.i77.i:                                    ; preds = %land.lhs.true2.i76.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 724, ptr noundef nonnull @.str.30) #12
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i77.i, %land.lhs.true2.i76.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i74.i.rcu_read_unlock.exit.i_crit_edge, %if.end45.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !269
  br label %nvmet_fc_find_target_queue.exit

for.end.i:                                        ; preds = %for.cond.i
  %call.i80.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i80.i, label %for.end.i.rcu_read_unlock.exit90.i_crit_edge, label %land.lhs.true.i83.i

for.end.i.rcu_read_unlock.exit90.i_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit90.i

land.lhs.true.i83.i:                              ; preds = %for.end.i
  %call1.i81.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i81.i)
  %tobool.not.i82.i = icmp eq i32 %call1.i81.i, 0
  br i1 %tobool.not.i82.i, label %land.lhs.true.i83.i.rcu_read_unlock.exit90.i_crit_edge, label %land.lhs.true2.i85.i

land.lhs.true.i83.i.rcu_read_unlock.exit90.i_crit_edge: ; preds = %land.lhs.true.i83.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit90.i

land.lhs.true2.i85.i:                             ; preds = %land.lhs.true.i83.i
  %.b4.i84.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i84.i, label %land.lhs.true2.i85.i.rcu_read_unlock.exit90.i_crit_edge, label %if.then.i86.i

land.lhs.true2.i85.i.rcu_read_unlock.exit90.i_crit_edge: ; preds = %land.lhs.true2.i85.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit90.i

if.then.i86.i:                                    ; preds = %land.lhs.true2.i85.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 724, ptr noundef nonnull @.str.30) #12
  br label %rcu_read_unlock.exit90.i

rcu_read_unlock.exit90.i:                         ; preds = %if.then.i86.i, %land.lhs.true2.i85.i.rcu_read_unlock.exit90.i_crit_edge, %land.lhs.true.i83.i.rcu_read_unlock.exit90.i_crit_edge, %for.end.i.rcu_read_unlock.exit90.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !269
  br label %nvmet_fc_find_target_queue.exit

nvmet_fc_find_target_queue.exit:                  ; preds = %rcu_read_unlock.exit90.i, %rcu_read_unlock.exit.i
  %retval.0.ph.i = phi ptr [ null, %rcu_read_unlock.exit90.i ], [ %queue.0.i, %rcu_read_unlock.exit.i ]
  %20 = tail call i32 @llvm.read_register.i32(metadata !253) #12
  %and.i.i.i.i.i78.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i78.i to ptr
  %preempt_count.i.i.i.i79.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i79.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i79.i, align 4
  %sub.i.i.i89.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i89.i, ptr %preempt_count.i.i.i.i79.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %tobool.not = icmp eq ptr %retval.0.ph.i, null
  br i1 %tobool.not, label %nvmet_fc_find_target_queue.exit.cleanup_crit_edge, label %do.body14

nvmet_fc_find_target_queue.exit.cleanup_crit_edge: ; preds = %nvmet_fc_find_target_queue.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body14:                                        ; preds = %nvmet_fc_find_target_queue.exit
  %qlock = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %retval.0.ph.i, i32 0, i32 9
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %24 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i108 = icmp eq i32 %24, 0
  br i1 %tobool.not.i108, label %do.body14.if.end.i111_crit_edge, label %land.rhs.i

do.body14.if.end.i111_crit_edge:                  ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i111

land.rhs.i:                                       ; preds = %do.body14
  %dep_map.i = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %retval.0.ph.i, i32 0, i32 9, i32 0, i32 0, i32 4
  %call.i.i109 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i109)
  %cmp.not.i = icmp eq i32 %call.i.i109, 0
  br i1 %cmp.not.i, label %do.end.i110, label %land.rhs.i.if.end.i111_crit_edge, !prof !270

land.rhs.i.if.end.i111_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i111

do.end.i110:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 680, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i111

if.end.i111:                                      ; preds = %do.end.i110, %land.rhs.i.if.end.i111_crit_edge, %do.body14.if.end.i111_crit_edge
  %fod_list.i = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %retval.0.ph.i, i32 0, i32 13
  %25 = ptrtoint ptr %fod_list.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %fod_list.i, align 4
  %cmp29.not.i = icmp eq ptr %26, %fod_list.i
  %add.ptr.i = getelementptr i8, ptr %26, i32 -596
  %tobool31.not.i120 = icmp eq ptr %add.ptr.i, null
  %tobool31.not.i = or i1 %cmp29.not.i, %tobool31.not.i120
  br i1 %tobool31.not.i, label %if.end27, label %if.then32.i

if.then32.i:                                      ; preds = %if.end.i111
  %call.i.i.i112 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %26) #12
  br i1 %call.i.i.i112, label %if.end.i.i.i, label %if.then32.i.if.then23_crit_edge

if.then32.i.if.then23_crit_edge:                  ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then23

if.end.i.i.i:                                     ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr i8, ptr %26, i32 4
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i.i, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %26, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %if.then23

if.then23:                                        ; preds = %if.end.i.i.i, %if.then32.i.if.then23_crit_edge
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %26, align 4
  %prev.i.i = getelementptr i8, ptr %26, i32 4
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %active.i = getelementptr i8, ptr %26, i32 -436
  %35 = ptrtoint ptr %active.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %active.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %call18) #12
  %nvmet_fc_private = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %fcpreq, i32 0, i32 12
  %36 = ptrtoint ptr %nvmet_fc_private to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr.i, ptr %nvmet_fc_private, align 4
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %fcpreq, ptr %add.ptr.i, align 8
  %cmdiubuf26 = getelementptr i8, ptr %26, i32 -588
  %38 = call ptr @memcpy(ptr %cmdiubuf26, ptr %cmdiubuf, i32 96)
  tail call fastcc void @nvmet_fc_queue_fcp_req(ptr noundef %target_port, ptr noundef nonnull %retval.0.ph.i, ptr noundef %fcpreq)
  br label %cleanup

if.end27:                                         ; preds = %if.end.i111
  %ops = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %target_port, i32 0, i32 3
  %39 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops, align 4
  %defer_rcv = getelementptr inbounds %struct.nvmet_fc_target_template, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %defer_rcv to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %defer_rcv, align 4
  %tobool28.not = icmp eq ptr %42, null
  br i1 %tobool28.not, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %call18) #12
  tail call fastcc void @nvmet_fc_tgt_q_put(ptr noundef nonnull %retval.0.ph.i)
  br label %cleanup

if.end31:                                         ; preds = %if.end27
  %avail_defer_list = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %retval.0.ph.i, i32 0, i32 15
  %43 = ptrtoint ptr %avail_defer_list to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %avail_defer_list, align 4
  %cmp37.not = icmp eq ptr %44, %avail_defer_list
  %tobool40.not121 = icmp eq ptr %44, null
  %tobool40.not = or i1 %cmp37.not, %tobool40.not121
  br i1 %tobool40.not, label %if.else, label %if.then41

if.then41:                                        ; preds = %if.end31
  %call.i.i113 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %44) #12
  br i1 %call.i.i113, label %if.end.i.i, label %if.then41.list_del.exit_crit_edge

if.then41.list_del.exit_crit_edge:                ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i114 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i.i114 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i114, align 4
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %44, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev1.i.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %48, ptr %46, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then41.list_del.exit_crit_edge
  %51 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 256 to ptr), ptr %44, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end61

if.else:                                          ; preds = %if.end31
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %call18) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %53 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %53, i32 noundef 3264, i32 noundef 12) #16
  %tobool44.not = icmp eq ptr %call7.i, null
  br i1 %tobool44.not, label %if.then45, label %do.body48

if.then45:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @nvmet_fc_tgt_q_put(ptr noundef nonnull %retval.0.ph.i)
  br label %cleanup

do.body48:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call56 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock) #12
  br label %if.end61

if.end61:                                         ; preds = %do.body48, %list_del.exit
  %flags.0 = phi i32 [ %call18, %list_del.exit ], [ %call56, %do.body48 ]
  %deferfcp.0 = phi ptr [ %44, %list_del.exit ], [ %call7.i, %do.body48 ]
  %rspaddr = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %fcpreq, i32 0, i32 8
  %54 = ptrtoint ptr %rspaddr to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %cmdiubuf, ptr %rspaddr, align 4
  %rsplen = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %fcpreq, i32 0, i32 10
  %55 = ptrtoint ptr %rsplen to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 96, ptr %rsplen, align 4
  %fcp_req = getelementptr inbounds %struct.nvmet_fc_defer_fcp_req, ptr %deferfcp.0, i32 0, i32 1
  %56 = ptrtoint ptr %fcp_req to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %fcpreq, ptr %fcp_req, align 4
  %pending_cmd_list = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %retval.0.ph.i, i32 0, i32 14
  %prev.i115 = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %retval.0.ph.i, i32 0, i32 14, i32 1
  %57 = ptrtoint ptr %prev.i115 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i115, align 4
  %call.i.i116 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %deferfcp.0, ptr noundef %58, ptr noundef %pending_cmd_list) #12
  br i1 %call.i.i116, label %if.end.i.i117, label %if.end61.list_add_tail.exit_crit_edge

if.end61.list_add_tail.exit_crit_edge:            ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i117:                                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  %59 = ptrtoint ptr %prev.i115 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %deferfcp.0, ptr %prev.i115, align 4
  %60 = ptrtoint ptr %deferfcp.0 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %pending_cmd_list, ptr %deferfcp.0, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %deferfcp.0, i32 0, i32 1
  %61 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev3.i.i, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %deferfcp.0, ptr %58, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i117, %if.end61.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %flags.0) #12
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then45, %if.then29, %if.then23, %nvmet_fc_find_target_queue.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then23 ], [ -75, %list_add_tail.exit ], [ -12, %if.then45 ], [ -2, %if.then29 ], [ -5, %lor.lhs.false7.cleanup_crit_edge ], [ -5, %lor.lhs.false3.cleanup_crit_edge ], [ -5, %lor.lhs.false.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ], [ -107, %nvmet_fc_find_target_queue.exit.cleanup_crit_edge ], [ -107, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvmet_fc_queue_fcp_req(ptr noundef %tgtport, ptr nocapture noundef readonly %queue, ptr nocapture noundef %fcpreq) unnamed_addr #0 align 64 {
entry:
  %nent.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nvmet_fc_private = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %fcpreq, i32 0, i32 12
  %0 = ptrtoint ptr %nvmet_fc_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nvmet_fc_private, align 4
  %qid = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %queue, i32 0, i32 1
  %2 = ptrtoint ptr %qid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %qid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i16 %3 to i32
  %sub = add nsw i32 %conv, -1
  %ops = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %tgtport, i32 0, i32 3
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %max_hw_queues = getelementptr inbounds %struct.nvmet_fc_target_template, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %max_hw_queues to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_hw_queues, align 8
  %rem = urem i32 %sub, %7
  %phi.cast = trunc i32 %rem to i16
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i16 [ %phi.cast, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %hwqid = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %fcpreq, i32 0, i32 1
  %8 = ptrtoint ptr %hwqid to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %cond, ptr %hwqid, align 2
  %data_len.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %1, i32 0, i32 1, i32 8
  %9 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_len.i, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %done.i = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @nvmet_fc_xmt_fcp_op_done, ptr %done.i, align 4
  %flags.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %1, i32 0, i32 1, i32 5
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %flags.i, align 1
  %conv.i = zext i8 %15 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %cond.end
  %io_dir.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %io_dir.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %io_dir.i, align 4
  %sqe.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %1, i32 0, i32 1, i32 9
  %17 = ptrtoint ptr %sqe.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sqe.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %18)
  %cmp.i.i.i = icmp eq i8 %18, 127
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.then.i.nvme_is_write.exit.i_crit_edge, !prof !270

if.then.i.nvme_is_write.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvme_is_write.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %fctype.i.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %1, i32 0, i32 1, i32 9, i32 0, i32 0, i32 3
  br label %nvme_is_write.exit.i

nvme_is_write.exit.i:                             ; preds = %if.then.i.i, %if.then.i.nvme_is_write.exit.i_crit_edge
  %retval.0.in.in.in.i.i = phi ptr [ %fctype.i.i, %if.then.i.i ], [ %sqe.i, %if.then.i.nvme_is_write.exit.i_crit_edge ]
  %19 = ptrtoint ptr %retval.0.in.in.in.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %retval.0.in.in.i.i = load i8, ptr %retval.0.in.in.in.i.i, align 4
  %retval.0.in.i.i = and i8 %retval.0.in.in.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.in.i.i)
  %retval.0.i.not.i = icmp eq i8 %retval.0.in.i.i, 0
  br i1 %retval.0.i.not.i, label %nvme_is_write.exit.i.transport_error.i_crit_edge, label %nvme_is_write.exit.i.if.end18.i_crit_edge

nvme_is_write.exit.i.if.end18.i_crit_edge:        ; preds = %nvme_is_write.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

nvme_is_write.exit.i.transport_error.i_crit_edge: ; preds = %nvme_is_write.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %transport_error.i

if.else.i:                                        ; preds = %cond.end
  %and4.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %io_dir13.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %1, i32 0, i32 8
  br i1 %tobool5.not.i, label %if.else12.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.else.i
  %20 = ptrtoint ptr %io_dir13.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %io_dir13.i, align 4
  %sqe8.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %1, i32 0, i32 1, i32 9
  %21 = ptrtoint ptr %sqe8.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %sqe8.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %22)
  %cmp.i.i102.i = icmp eq i8 %22, 127
  br i1 %cmp.i.i102.i, label %if.then.i104.i, label %if.then6.i.nvme_is_write.exit109.i_crit_edge, !prof !270

if.then6.i.nvme_is_write.exit109.i_crit_edge:     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvme_is_write.exit109.i

if.then.i104.i:                                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  %fctype.i103.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %1, i32 0, i32 1, i32 9, i32 0, i32 0, i32 3
  br label %nvme_is_write.exit109.i

nvme_is_write.exit109.i:                          ; preds = %if.then.i104.i, %if.then6.i.nvme_is_write.exit109.i_crit_edge
  %retval.0.in.in.in.i105.i = phi ptr [ %fctype.i103.i, %if.then.i104.i ], [ %sqe8.i, %if.then6.i.nvme_is_write.exit109.i_crit_edge ]
  %23 = ptrtoint ptr %retval.0.in.in.in.i105.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %retval.0.in.in.i106.i = load i8, ptr %retval.0.in.in.in.i105.i, align 4
  %retval.0.in.i107.i = and i8 %retval.0.in.in.i106.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.in.i107.i)
  %retval.0.i108.not.i = icmp eq i8 %retval.0.in.i107.i, 0
  br i1 %retval.0.i108.not.i, label %nvme_is_write.exit109.i.if.end18.i_crit_edge, label %nvme_is_write.exit109.i.transport_error.i_crit_edge

nvme_is_write.exit109.i.transport_error.i_crit_edge: ; preds = %nvme_is_write.exit109.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %transport_error.i

nvme_is_write.exit109.i.if.end18.i_crit_edge:     ; preds = %nvme_is_write.exit109.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

if.else12.i:                                      ; preds = %if.else.i
  %24 = ptrtoint ptr %io_dir13.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %io_dir13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool14.not.i = icmp eq i32 %10, 0
  br i1 %tobool14.not.i, label %if.else12.i.if.end18.i_crit_edge, label %if.else12.i.transport_error.i_crit_edge

if.else12.i.transport_error.i_crit_edge:          ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %transport_error.i

if.else12.i.if.end18.i_crit_edge:                 ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else12.i.if.end18.i_crit_edge, %nvme_is_write.exit109.i.if.end18.i_crit_edge, %nvme_is_write.exit.i.if.end18.i_crit_edge
  %sqe20.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %1, i32 0, i32 1, i32 9
  %req.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %1, i32 0, i32 14
  %25 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %sqe20.i, ptr %req.i, align 8
  %rspiubuf.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %1, i32 0, i32 2
  %cqe.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %1, i32 0, i32 2, i32 6
  %cqe22.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %1, i32 0, i32 14, i32 1
  %26 = ptrtoint ptr %cqe22.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %cqe.i, ptr %cqe22.i, align 4
  %pe.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %tgtport, i32 0, i32 12
  %27 = ptrtoint ptr %pe.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pe.i, align 4
  %tobool23.not.i = icmp eq ptr %28, null
  br i1 %tobool23.not.i, label %if.end18.i.if.end28.i_crit_edge, label %if.then24.i

if.end18.i.if.end28.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i

if.then24.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  %port.i = getelementptr inbounds %struct.nvmet_fc_port_entry, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %port.i, align 4
  %port27.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %1, i32 0, i32 14, i32 13
  %31 = ptrtoint ptr %port27.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %port27.i, align 8
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then24.i, %if.end18.i.if.end28.i_crit_edge
  %32 = call ptr @memset(ptr %rspiubuf.i, i32 0, i32 32)
  %data_sg.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %1, i32 0, i32 5
  %33 = ptrtoint ptr %data_sg.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %data_sg.i, align 8
  %data_sg_cnt.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %1, i32 0, i32 6
  %34 = ptrtoint ptr %data_sg_cnt.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %data_sg_cnt.i, align 4
  %queue.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %1, i32 0, i32 17
  %35 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %queue.i, align 8
  %nvme_cq.i = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %36, i32 0, i32 10
  %nvme_sq.i = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %36, i32 0, i32 11
  %call32.i = tail call zeroext i1 @nvmet_req_init(ptr noundef %req.i, ptr noundef %nvme_cq.i, ptr noundef %nvme_sq.i, ptr noundef nonnull @nvmet_fc_tgt_fcp_ops) #12
  br i1 %call32.i, label %if.end36.i, label %if.end28.i.nvmet_fc_handle_fcp_rqst.exit_crit_edge

if.end28.i.nvmet_fc_handle_fcp_rqst.exit_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_handle_fcp_rqst.exit

if.end36.i:                                       ; preds = %if.end28.i
  %transfer_len.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %1, i32 0, i32 14, i32 11
  %37 = ptrtoint ptr %transfer_len.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %10, ptr %transfer_len.i, align 8
  %38 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %queue.i, align 8
  %sqtail.i = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %39, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sqtail.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %sqtail.i, i32 1, i32 3, i32 1) #12
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sqtail.i, ptr %sqtail.i, i32 1, ptr elementtype(i32) %sqtail.i) #12, !srcloc !271
  %41 = ptrtoint ptr %transfer_len.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %transfer_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool41.not.i = icmp eq i32 %42, 0
  br i1 %tobool41.not.i, label %if.end36.i.if.end49.i_crit_edge, label %if.then42.i

if.end36.i.if.end49.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.i

if.then42.i:                                      ; preds = %if.end36.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nent.i.i) #12
  %43 = ptrtoint ptr %nent.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %nent.i.i, align 4, !annotation !272
  %conv.i.i = zext i32 %42 to i64
  %call.i.i = call ptr @sgl_alloc(i64 noundef %conv.i.i, i32 noundef 3264, ptr noundef nonnull %nent.i.i) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then45.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then42.i
  %44 = ptrtoint ptr %data_sg.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i.i, ptr %data_sg.i, align 8
  %45 = ptrtoint ptr %nent.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nent.i.i, align 4
  %47 = ptrtoint ptr %data_sg_cnt.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %data_sg_cnt.i, align 4
  %tgtport.i.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %1, i32 0, i32 16
  %48 = ptrtoint ptr %tgtport.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tgtport.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %51, null
  br i1 %tobool.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i

cond.true.i.i.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %io_dir.i.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %1, i32 0, i32 8
  %52 = ptrtoint ptr %io_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %io_dir.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp.i.i = icmp eq i32 %53, 1
  %cond.i.i = select i1 %cmp.i.i, i32 2, i32 1
  %call.i.i110.i = call i32 @dma_map_sg_attrs(ptr noundef nonnull %51, ptr noundef nonnull %call.i.i, i32 noundef %46, i32 noundef %cond.i.i, i32 noundef 0) #12
  br label %nvmet_fc_alloc_tgt_pgs.exit.thread.i

cond.false.i.i.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp.i.i.i.i = icmp eq i32 %46, 0
  br i1 %cmp.i.i.i.i, label %cond.false.i.i.i.do.end.i.i.i.i_crit_edge, label %lor.rhs.i.i.i.i

cond.false.i.i.i.do.end.i.i.i.i_crit_edge:        ; preds = %cond.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i.i.i

lor.rhs.i.i.i.i:                                  ; preds = %cond.false.i.i.i
  %length.i.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %call.i.i, i32 0, i32 2
  %54 = ptrtoint ptr %length.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %length.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp1.i.i.i.i = icmp eq i32 %55, 0
  br i1 %cmp1.i.i.i.i, label %lor.rhs.i.i.i.i.do.end.i.i.i.i_crit_edge, label %lor.rhs.i.i.i.i.if.end.i.i.i.i_crit_edge, !prof !270

lor.rhs.i.i.i.i.if.end.i.i.i.i_crit_edge:         ; preds = %lor.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i.i

lor.rhs.i.i.i.i.do.end.i.i.i.i_crit_edge:         ; preds = %lor.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %lor.rhs.i.i.i.i.do.end.i.i.i.i_crit_edge, %cond.false.i.i.i.do.end.i.i.i.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 321, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i.i.i, %lor.rhs.i.i.i.i.if.end.i.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp2030.i.i.i.i = icmp sgt i32 %46, 0
  br i1 %cmp2030.i.i.i.i, label %if.end.i.i.i.i.for.body.i.i.i.i_crit_edge, label %if.end.i.i.i.i.nvmet_fc_alloc_tgt_pgs.exit.thread.i_crit_edge

if.end.i.i.i.i.nvmet_fc_alloc_tgt_pgs.exit.thread.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_alloc_tgt_pgs.exit.thread.i

if.end.i.i.i.i.for.body.i.i.i.i_crit_edge:        ; preds = %if.end.i.i.i.i
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.end.i.i.i.i.for.body.i.i.i.i_crit_edge
  %s.032.i.i.i.i = phi ptr [ %call.i.i.i.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %call.i.i, %if.end.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %i.031.i.i.i.i = phi i32 [ %inc.i.i.i.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %if.end.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %dma_address.i.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %s.032.i.i.i.i, i32 0, i32 3
  %56 = ptrtoint ptr %dma_address.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %dma_address.i.i.i.i, align 4
  %length21.i.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %s.032.i.i.i.i, i32 0, i32 2
  %57 = ptrtoint ptr %length21.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %length21.i.i.i.i, align 4
  %dma_length.i.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %s.032.i.i.i.i, i32 0, i32 4
  %59 = ptrtoint ptr %dma_length.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %dma_length.i.i.i.i, align 4
  %inc.i.i.i.i = add nuw nsw i32 %i.031.i.i.i.i, 1
  %call.i.i.i.i = call ptr @sg_next(ptr noundef %s.032.i.i.i.i) #12
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, %46
  br i1 %exitcond.not.i.i.i.i, label %for.body.i.i.i.i.nvmet_fc_alloc_tgt_pgs.exit.thread.i_crit_edge, label %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge

for.body.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i.i

for.body.i.i.i.i.nvmet_fc_alloc_tgt_pgs.exit.thread.i_crit_edge: ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_alloc_tgt_pgs.exit.thread.i

nvmet_fc_alloc_tgt_pgs.exit.thread.i:             ; preds = %for.body.i.i.i.i.nvmet_fc_alloc_tgt_pgs.exit.thread.i_crit_edge, %if.end.i.i.i.i.nvmet_fc_alloc_tgt_pgs.exit.thread.i_crit_edge, %cond.true.i.i.i
  %cond.i.i.i = phi i32 [ %call.i.i110.i, %cond.true.i.i.i ], [ %46, %if.end.i.i.i.i.nvmet_fc_alloc_tgt_pgs.exit.thread.i_crit_edge ], [ %46, %for.body.i.i.i.i.nvmet_fc_alloc_tgt_pgs.exit.thread.i_crit_edge ]
  %60 = ptrtoint ptr %data_sg_cnt.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %cond.i.i.i, ptr %data_sg_cnt.i, align 4
  %61 = ptrtoint ptr %data_sg.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data_sg.i, align 8
  %next_sg.i.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %1, i32 0, i32 4
  %63 = ptrtoint ptr %next_sg.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %next_sg.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nent.i.i) #12
  br label %if.end49.i

if.then45.i:                                      ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nent.i.i) #12
  call void @nvmet_req_complete(ptr noundef %req.i, i16 noundef zeroext 6) #12
  br label %nvmet_fc_handle_fcp_rqst.exit

if.end49.i:                                       ; preds = %nvmet_fc_alloc_tgt_pgs.exit.thread.i, %if.end36.i.if.end49.i_crit_edge
  %64 = ptrtoint ptr %data_sg.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data_sg.i, align 8
  %sg.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %1, i32 0, i32 14, i32 5
  %66 = ptrtoint ptr %sg.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %sg.i, align 4
  %67 = ptrtoint ptr %data_sg_cnt.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %data_sg_cnt.i, align 4
  %sg_cnt.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %1, i32 0, i32 14, i32 9
  %69 = ptrtoint ptr %sg_cnt.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %sg_cnt.i, align 8
  %offset.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %1, i32 0, i32 7
  %70 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %offset.i, align 8
  %io_dir54.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %1, i32 0, i32 8
  %71 = ptrtoint ptr %io_dir54.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %io_dir54.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %72)
  %cmp.i = icmp eq i32 %72, 1
  br i1 %cmp.i, label %if.then56.i, label %if.end57.i

if.then56.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @nvmet_fc_transfer_fcp_data(ptr noundef %tgtport, ptr noundef %1, i8 noundef zeroext 2) #12
  br label %nvmet_fc_handle_fcp_rqst.exit

if.end57.i:                                       ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #14
  %execute.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %1, i32 0, i32 14, i32 14
  %73 = ptrtoint ptr %execute.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %execute.i, align 4
  call void %74(ptr noundef %req.i) #12
  br label %nvmet_fc_handle_fcp_rqst.exit

transport_error.i:                                ; preds = %if.else12.i.transport_error.i_crit_edge, %nvme_is_write.exit109.i.transport_error.i_crit_edge, %nvme_is_write.exit.i.transport_error.i_crit_edge
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %1, align 8
  %data_sg.i.i.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %1, i32 0, i32 5
  %77 = ptrtoint ptr %data_sg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data_sg.i.i.i, align 8
  %tobool.not.i.i112.i = icmp eq ptr %78, null
  br i1 %tobool.not.i.i112.i, label %transport_error.i.nvmet_fc_free_tgt_pgs.exit.i.i_crit_edge, label %lor.lhs.false.i.i.i

transport_error.i.nvmet_fc_free_tgt_pgs.exit.i.i_crit_edge: ; preds = %transport_error.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_free_tgt_pgs.exit.i.i

lor.lhs.false.i.i.i:                              ; preds = %transport_error.i
  %data_sg_cnt.i.i.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %1, i32 0, i32 6
  %79 = ptrtoint ptr %data_sg_cnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %data_sg_cnt.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool1.not.i.i.i = icmp eq i32 %80, 0
  br i1 %tobool1.not.i.i.i, label %lor.lhs.false.i.i.i.nvmet_fc_free_tgt_pgs.exit.i.i_crit_edge, label %if.end.i.i.i

lor.lhs.false.i.i.i.nvmet_fc_free_tgt_pgs.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_free_tgt_pgs.exit.i.i

if.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.i
  %tgtport.i.i.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %1, i32 0, i32 16
  %81 = ptrtoint ptr %tgtport.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %tgtport.i.i.i, align 4
  %dev.i.i.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %84, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.fc_dma_unmap_sg.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

if.end.i.i.i.fc_dma_unmap_sg.exit.i.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fc_dma_unmap_sg.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %io_dir.i.i.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %1, i32 0, i32 8
  %85 = ptrtoint ptr %io_dir.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %io_dir.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %86)
  %cmp.i.i113.i = icmp eq i32 %86, 1
  %cond.i.i114.i = select i1 %cmp.i.i113.i, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef nonnull %84, ptr noundef nonnull %78, i32 noundef %80, i32 noundef %cond.i.i114.i, i32 noundef 0) #12
  br label %fc_dma_unmap_sg.exit.i.i.i

fc_dma_unmap_sg.exit.i.i.i:                       ; preds = %if.then.i.i.i.i, %if.end.i.i.i.fc_dma_unmap_sg.exit.i.i.i_crit_edge
  %87 = ptrtoint ptr %data_sg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %data_sg.i.i.i, align 8
  tail call void @sgl_free(ptr noundef %88) #12
  %89 = ptrtoint ptr %data_sg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %data_sg.i.i.i, align 8
  %90 = ptrtoint ptr %data_sg_cnt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %data_sg_cnt.i.i.i, align 4
  br label %nvmet_fc_free_tgt_pgs.exit.i.i

nvmet_fc_free_tgt_pgs.exit.i.i:                   ; preds = %fc_dma_unmap_sg.exit.i.i.i, %lor.lhs.false.i.i.i.nvmet_fc_free_tgt_pgs.exit.i.i_crit_edge, %transport_error.i.nvmet_fc_free_tgt_pgs.exit.i.i_crit_edge
  %aborted.i.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %1, i32 0, i32 11
  %91 = ptrtoint ptr %aborted.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %aborted.i.i, align 2, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool.not.i115.i = icmp eq i8 %92, 0
  br i1 %tobool.not.i115.i, label %if.then.i116.i, label %nvmet_fc_free_tgt_pgs.exit.i.i.nvmet_fc_abort_op.exit.i_crit_edge

nvmet_fc_free_tgt_pgs.exit.i.i.nvmet_fc_abort_op.exit.i_crit_edge: ; preds = %nvmet_fc_free_tgt_pgs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_abort_op.exit.i

if.then.i116.i:                                   ; preds = %nvmet_fc_free_tgt_pgs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %ops.i.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %tgtport, i32 0, i32 3
  %93 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ops.i.i, align 4
  %fcp_abort.i.i = getelementptr inbounds %struct.nvmet_fc_target_template, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %fcp_abort.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %fcp_abort.i.i, align 4
  tail call void %96(ptr noundef %tgtport, ptr noundef %76) #12
  br label %nvmet_fc_abort_op.exit.i

nvmet_fc_abort_op.exit.i:                         ; preds = %if.then.i116.i, %nvmet_fc_free_tgt_pgs.exit.i.i.nvmet_fc_abort_op.exit.i_crit_edge
  %queue.i.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %1, i32 0, i32 17
  %97 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %queue.i.i, align 8
  tail call fastcc void @nvmet_fc_free_fcp_iod(ptr noundef %98, ptr noundef %1) #12
  br label %nvmet_fc_handle_fcp_rqst.exit

nvmet_fc_handle_fcp_rqst.exit:                    ; preds = %nvmet_fc_abort_op.exit.i, %if.end57.i, %if.then56.i, %if.then45.i, %if.end28.i.nvmet_fc_handle_fcp_rqst.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvmet_fc_tgt_q_put(ptr noundef %queue) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ref = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %queue, i32 0, i32 17
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #12, !srcloc !266
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !263

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #12
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !267
  %assoc.i = getelementptr %struct.nvmet_fc_tgt_queue, ptr %queue, i32 0, i32 12
  %1 = ptrtoint ptr %assoc.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %assoc.i, align 4
  %qid.i = getelementptr %struct.nvmet_fc_tgt_queue, ptr %queue, i32 0, i32 1
  %3 = ptrtoint ptr %qid.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %qid.i, align 2
  %idxprom.i = zext i16 %4 to i32
  %arrayidx.i = getelementptr %struct.nvmet_fc_tgt_assoc, ptr %2, i32 0, i32 7, i32 %idxprom.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr null, ptr %arrayidx.i, align 4
  %sqsize.i.i = getelementptr %struct.nvmet_fc_tgt_queue, ptr %queue, i32 0, i32 2
  %6 = ptrtoint ptr %sqsize.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sqsize.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp9.not.i.i = icmp eq i16 %7, 0
  br i1 %cmp9.not.i.i, label %if.then.i.nvmet_fc_destroy_fcp_iodlist.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.then.i.nvmet_fc_destroy_fcp_iodlist.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_destroy_fcp_iodlist.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.then.i
  %8 = ptrtoint ptr %assoc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %assoc.i, align 4
  %tgtport.i = getelementptr inbounds %struct.nvmet_fc_tgt_assoc, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %tgtport.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tgtport.i, align 8
  %fod1.i.i = getelementptr %struct.nvmet_fc_tgt_queue, ptr %queue, i32 1
  %dev.i.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %11, i32 0, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.011.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %fod.010.i.i = phi ptr [ %fod1.i.i, %for.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %rspdma.i.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod.010.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %rspdma.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rspdma.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %14 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.for.inc.i.i_crit_edge, label %if.then.i.i.i

if.then.i.i.for.inc.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dma_unmap_page_attrs(ptr noundef nonnull %15, i32 noundef %13, i32 noundef 32, i32 noundef 1, i32 noundef 0) #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i.i, %if.then.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.nvmet_fc_fcp_iod, ptr %fod.010.i.i, i32 1
  %inc.i.i = add nuw nsw i32 %i.011.i.i, 1
  %16 = ptrtoint ptr %sqsize.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %sqsize.i.i, align 4
  %conv.i.i = zext i16 %17 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.nvmet_fc_destroy_fcp_iodlist.exit.i_crit_edge

for.inc.i.i.nvmet_fc_destroy_fcp_iodlist.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_destroy_fcp_iodlist.exit.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

nvmet_fc_destroy_fcp_iodlist.exit.i:              ; preds = %for.inc.i.i.nvmet_fc_destroy_fcp_iodlist.exit.i_crit_edge, %if.then.i.nvmet_fc_destroy_fcp_iodlist.exit.i_crit_edge
  %18 = ptrtoint ptr %assoc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %assoc.i, align 4
  tail call fastcc void @nvmet_fc_tgt_a_put(ptr noundef %19) #12
  %work_q.i = getelementptr %struct.nvmet_fc_tgt_queue, ptr %queue, i32 0, i32 16
  %20 = ptrtoint ptr %work_q.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %work_q.i, align 8
  tail call void @destroy_workqueue(ptr noundef %21) #12
  %tobool.not.i = icmp eq ptr %queue, null
  br i1 %tobool.not.i, label %nvmet_fc_destroy_fcp_iodlist.exit.i.kref_put.exit_crit_edge, label %do.end42.i

nvmet_fc_destroy_fcp_iodlist.exit.i.kref_put.exit_crit_edge: ; preds = %nvmet_fc_destroy_fcp_iodlist.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_put.exit

do.end42.i:                                       ; preds = %nvmet_fc_destroy_fcp_iodlist.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %rcu.i = getelementptr %struct.nvmet_fc_tgt_queue, ptr %queue, i32 0, i32 18
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 248 to ptr)) #12
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %do.end42.i, %nvmet_fc_destroy_fcp_iodlist.exit.i.kref_put.exit_crit_edge, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvmet_fc_rcv_fcp_abort(ptr nocapture readnone %target_port, ptr noundef readonly %fcpreq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nvmet_fc_private = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %fcpreq, i32 0, i32 12
  %0 = ptrtoint ptr %nvmet_fc_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nvmet_fc_private, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %cmp.not = icmp eq ptr %3, %fcpreq
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %queue2 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %queue2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue2, align 8
  %qlock = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %5, i32 0, i32 9
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock) #12
  %active = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %active, align 8, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool8.not = icmp eq i8 %7, 0
  br i1 %tobool8.not, label %if.end.if.end11_crit_edge, label %if.then9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %flock = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %1, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %flock) #12
  %abort = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %abort to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %abort, align 1
  %aborted = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %aborted to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %aborted, align 2
  tail call void @_raw_spin_unlock(ptr noundef %flock) #12
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.if.end11_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %call5) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_fc_exit_module() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = load volatile ptr, ptr @nvmet_fc_target_list, align 4
  %cmp.i.not = icmp eq ptr %0, @nvmet_fc_target_list
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @nvmet_unregister_transport(ptr noundef nonnull @nvmet_fc_tgt_fcp_ops) #12
  tail call void @ida_destroy(ptr noundef nonnull @nvmet_fc_tgtport_cnt) #12
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_unregister_transport(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_fc_init_module() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvmet_register_transport(ptr noundef nonnull @nvmet_fc_tgt_fcp_ops) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_fc_handle_ls_rqst_work(ptr noundef %work) #0 align 64 {
entry:
  %ran.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -84
  %tgtport1 = getelementptr i8, ptr %work, i32 -68
  %0 = ptrtoint ptr %tgtport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tgtport1, align 8
  %rqstbuf.i = getelementptr i8, ptr %work, i32 -56
  %2 = ptrtoint ptr %rqstbuf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rqstbuf.i, align 4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %nvme_fc_private.i = getelementptr inbounds %struct.nvmefc_ls_rsp, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %nvme_fc_private.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %nvme_fc_private.i, align 4
  %rspbuf.i = getelementptr i8, ptr %work, i32 -52
  %7 = ptrtoint ptr %rspbuf.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rspbuf.i, align 8
  %9 = load ptr, ptr %add.ptr, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %9, align 4
  %rspdma.i = getelementptr i8, ptr %work, i32 -44
  %11 = ptrtoint ptr %rspdma.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rspdma.i, align 8
  %13 = load ptr, ptr %add.ptr, align 8
  %rspdma5.i = getelementptr inbounds %struct.nvmefc_ls_rsp, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %rspdma5.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %12, ptr %rspdma5.i, align 4
  %15 = load ptr, ptr %add.ptr, align 8
  %done.i = getelementptr inbounds %struct.nvmefc_ls_rsp, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @nvmet_fc_xmt_ls_rsp_done, ptr %done.i, align 4
  %17 = load ptr, ptr %add.ptr, align 8
  %rsplen.i = getelementptr inbounds %struct.nvmefc_ls_rsp, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %rsplen.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %rsplen.i, align 4
  %assoc.i = getelementptr i8, ptr %work, i32 -64
  %19 = ptrtoint ptr %assoc.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %assoc.i, align 4
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %3, align 1
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i8 %21, label %sw.default.i [
    i8 3, label %sw.bb.i
    i8 4, label %sw.bb8.i
    i8 5, label %sw.bb9.i
  ]

sw.bb.i:                                          ; preds = %entry
  %23 = ptrtoint ptr %rqstbuf.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rqstbuf.i, align 4
  %25 = ptrtoint ptr %rspbuf.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rspbuf.i, align 8
  %27 = call ptr @memset(ptr %26, i32 0, i32 56)
  %rqstdatalen.i.i = getelementptr i8, ptr %work, i32 -48
  %28 = ptrtoint ptr %rqstdatalen.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %rqstdatalen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 592, i16 %29)
  %cmp.i.i = icmp ult i16 %29, 592
  br i1 %cmp.i.i, label %sw.bb.i.do.end.i.i_crit_edge, label %if.else.i.i

sw.bb.i.do.end.i.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

if.else.i.i:                                      ; preds = %sw.bb.i
  %desc_list_len.i.i = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_rqst, ptr %24, i32 0, i32 1
  %30 = ptrtoint ptr %desc_list_len.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %desc_list_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 584, i32 %31)
  %cmp2.i.i = icmp ult i32 %31, 584
  br i1 %cmp2.i.i, label %if.else.i.i.do.end.i.i_crit_edge, label %if.else5.i.i

if.else.i.i.do.end.i.i_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

if.else5.i.i:                                     ; preds = %if.else.i.i
  %assoc_cmd.i.i = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_rqst, ptr %24, i32 0, i32 2
  %32 = ptrtoint ptr %assoc_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %assoc_cmd.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %33)
  %cmp6.not.i.i = icmp eq i32 %33, 3
  br i1 %cmp6.not.i.i, label %if.else9.i.i, label %if.else5.i.i.do.end.i.i_crit_edge

if.else5.i.i.do.end.i.i_crit_edge:                ; preds = %if.else5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

if.else9.i.i:                                     ; preds = %if.else5.i.i
  %desc_len.i.i = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_rqst, ptr %24, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %desc_len.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %desc_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 576, i32 %35)
  %cmp11.i.i = icmp ult i32 %35, 576
  br i1 %cmp11.i.i, label %if.else9.i.i.do.end.i.i_crit_edge, label %if.else14.i.i

if.else9.i.i.do.end.i.i_crit_edge:                ; preds = %if.else9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

if.else14.i.i:                                    ; preds = %if.else9.i.i
  %ersp_ratio.i.i = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_rqst, ptr %24, i32 0, i32 2, i32 2
  %36 = ptrtoint ptr %ersp_ratio.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %ersp_ratio.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool.not.i.i = icmp eq i16 %37, 0
  br i1 %tobool.not.i.i, label %if.else14.i.i.do.end.i.i_crit_edge, label %lor.lhs.false.i.i

if.else14.i.i.do.end.i.i_crit_edge:               ; preds = %if.else14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

lor.lhs.false.i.i:                                ; preds = %if.else14.i.i
  %sqsize.i.i = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_rqst, ptr %24, i32 0, i32 2, i32 6
  %38 = ptrtoint ptr %sqsize.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %sqsize.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %37, i16 %39)
  %cmp21.not.i.i = icmp ult i16 %37, %39
  br i1 %cmp21.not.i.i, label %if.else24.i.i, label %lor.lhs.false.i.i.do.end.i.i_crit_edge

lor.lhs.false.i.i.do.end.i.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

if.else24.i.i:                                    ; preds = %lor.lhs.false.i.i
  %hosthandle.i.i = getelementptr i8, ptr %work, i32 -60
  %40 = ptrtoint ptr %hosthandle.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hosthandle.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ran.i.i) #12
  %42 = ptrtoint ptr %ran.i.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 -1, ptr %ran.i.i, align 8, !annotation !272
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %43 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %43, i32 noundef 3520, i32 noundef 608) #16
  %tobool.not.i110.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i110.i, label %if.else24.i.i.nvmet_fc_alloc_target_assoc.exit.thread.i_crit_edge, label %if.end.i.i

if.else24.i.i.nvmet_fc_alloc_target_assoc.exit.thread.i_crit_edge: ; preds = %if.else24.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_alloc_target_assoc.exit.thread.i

if.end.i.i:                                       ; preds = %if.else24.i.i
  %assoc_cnt.i.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %1, i32 0, i32 11
  %call1.i111.i = tail call i32 @ida_alloc_range(ptr noundef %assoc_cnt.i.i, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i111.i)
  %cmp.i112.i = icmp slt i32 %call1.i111.i, 0
  br i1 %cmp.i112.i, label %if.end.i.i.out_free_assoc.i.i_crit_edge, label %if.end3.i.i

if.end.i.i.out_free_assoc.i.i_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_assoc.i.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %call4.i.i = tail call fastcc i32 @nvmet_fc_tgtport_get(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end3.i.i.out_ida.i.i_crit_edge, label %if.end7.i.i

if.end3.i.i.out_ida.i.i_crit_edge:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_ida.i.i

if.end7.i.i:                                      ; preds = %if.end3.i.i
  %tobool.not.i.i113.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i113.i, label %nvmet_fc_alloc_hostport.exit.thread94.i.i, label %if.end.i.i.i

nvmet_fc_alloc_hostport.exit.thread94.i.i:        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %hostport96.i.i = getelementptr inbounds %struct.nvmet_fc_tgt_assoc, ptr %call7.i.i.i.i, i32 0, i32 4
  %44 = ptrtoint ptr %hostport96.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %hostport96.i.i, align 4
  br label %if.end12.i.i

if.end.i.i.i:                                     ; preds = %if.end7.i.i
  %call.i.i114.i = tail call fastcc i32 @nvmet_fc_tgtport_get(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i114.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i114.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end.i.i.i.nvmet_fc_alloc_hostport.exit.thread.i.i_crit_edge, label %do.body5.i.i.i

if.end.i.i.i.nvmet_fc_alloc_hostport.exit.thread.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_alloc_hostport.exit.thread.i.i

do.body5.i.i.i:                                   ; preds = %if.end.i.i.i
  %lock.i.i.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %1, i32 0, i32 5
  %call7.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i.i) #12
  %call10.i.i.i = tail call fastcc ptr @nvmet_fc_match_hostport(ptr noundef %1, ptr noundef nonnull %41) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i.i, i32 noundef %call7.i.i.i) #12
  %tobool12.not.i.i.i = icmp eq ptr %call10.i.i.i, null
  br i1 %tobool12.not.i.i.i, label %if.end14.i.i.i, label %if.then13.i.i.i

if.then13.i.i.i:                                  ; preds = %do.body5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @nvmet_fc_tgtport_put(ptr noundef %1) #12
  br label %nvmet_fc_alloc_hostport.exit.i.i

if.end14.i.i.i:                                   ; preds = %do.body5.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %45 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %45, i32 noundef 3520, i32 noundef 24) #16
  %tobool16.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool16.not.i.i.i, label %if.then17.i.i.i, label %do.body21.i.i.i

if.then17.i.i.i:                                  ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @nvmet_fc_tgtport_put(ptr noundef %1) #12
  br label %nvmet_fc_alloc_hostport.exit.thread.i.i

do.body21.i.i.i:                                  ; preds = %if.end14.i.i.i
  %call29.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i.i) #12
  %call34.i.i.i = tail call fastcc ptr @nvmet_fc_match_hostport(ptr noundef %1, ptr noundef nonnull %41) #12
  %tobool35.not.i.i.i = icmp eq ptr %call34.i.i.i, null
  br i1 %tobool35.not.i.i.i, label %if.else.i.i115.i, label %if.then36.i.i.i

if.then36.i.i.i:                                  ; preds = %do.body21.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #12
  tail call fastcc void @nvmet_fc_tgtport_put(ptr noundef %1) #12
  br label %if.end41.i.i.i

if.else.i.i115.i:                                 ; preds = %do.body21.i.i.i
  %46 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %1, ptr %call7.i.i.i.i.i, align 8
  %hosthandle38.i.i.i = getelementptr inbounds %struct.nvmet_fc_hostport, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %hosthandle38.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %41, ptr %hosthandle38.i.i.i, align 4
  %host_list.i.i.i = getelementptr inbounds %struct.nvmet_fc_hostport, ptr %call7.i.i.i.i.i, i32 0, i32 2
  %48 = ptrtoint ptr %host_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %host_list.i.i.i, ptr %host_list.i.i.i, align 8
  %prev.i.i.i.i = getelementptr inbounds %struct.nvmet_fc_hostport, ptr %call7.i.i.i.i.i, i32 0, i32 2, i32 1
  %49 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %host_list.i.i.i, ptr %prev.i.i.i.i, align 4
  %ref.i.i.i = getelementptr inbounds %struct.nvmet_fc_hostport, ptr %call7.i.i.i.i.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i.i, i32 noundef 4) #12
  %50 = ptrtoint ptr %ref.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 1, ptr %ref.i.i.i, align 8
  %host_list40.i.i.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %1, i32 0, i32 10
  %prev.i70.i.i.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %1, i32 0, i32 10, i32 1
  %51 = ptrtoint ptr %prev.i70.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i70.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %host_list.i.i.i, ptr noundef %52, ptr noundef %host_list40.i.i.i) #12
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.else.i.i115.i.if.end41.i.i.i_crit_edge

if.else.i.i115.i.if.end41.i.i.i_crit_edge:        ; preds = %if.else.i.i115.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.else.i.i115.i
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %prev.i70.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %host_list.i.i.i, ptr %prev.i70.i.i.i, align 4
  %54 = ptrtoint ptr %host_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %host_list40.i.i.i, ptr %host_list.i.i.i, align 8
  %55 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev.i.i.i.i, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %host_list.i.i.i, ptr %52, align 4
  br label %if.end41.i.i.i

if.end41.i.i.i:                                   ; preds = %if.end.i.i.i.i.i, %if.else.i.i115.i.if.end41.i.i.i_crit_edge, %if.then36.i.i.i
  %newhost.0.i.i.i = phi ptr [ %call34.i.i.i, %if.then36.i.i.i ], [ %call7.i.i.i.i.i, %if.else.i.i115.i.if.end41.i.i.i_crit_edge ], [ %call7.i.i.i.i.i, %if.end.i.i.i.i.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i.i, i32 noundef %call29.i.i.i) #12
  br label %nvmet_fc_alloc_hostport.exit.i.i

nvmet_fc_alloc_hostport.exit.thread.i.i:          ; preds = %if.then17.i.i.i, %if.end.i.i.i.nvmet_fc_alloc_hostport.exit.thread.i.i_crit_edge
  %retval.0.i.ph.i.i = phi ptr [ inttoptr (i32 -22 to ptr), %if.end.i.i.i.nvmet_fc_alloc_hostport.exit.thread.i.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then17.i.i.i ]
  %hostport92.i.i = getelementptr inbounds %struct.nvmet_fc_tgt_assoc, ptr %call7.i.i.i.i, i32 0, i32 4
  %57 = ptrtoint ptr %hostport92.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %retval.0.i.ph.i.i, ptr %hostport92.i.i, align 4
  br label %out_put.i.i

nvmet_fc_alloc_hostport.exit.i.i:                 ; preds = %if.end41.i.i.i, %if.then13.i.i.i
  %retval.0.i.i.i = phi ptr [ %call10.i.i.i, %if.then13.i.i.i ], [ %newhost.0.i.i.i, %if.end41.i.i.i ]
  %hostport.i.i = getelementptr inbounds %struct.nvmet_fc_tgt_assoc, ptr %call7.i.i.i.i, i32 0, i32 4
  %58 = ptrtoint ptr %hostport.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %retval.0.i.i.i, ptr %hostport.i.i, align 4
  %cmp.i.i116.i = icmp ugt ptr %retval.0.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i116.i, label %nvmet_fc_alloc_hostport.exit.i.i.out_put.i.i_crit_edge, label %nvmet_fc_alloc_hostport.exit.i.i.if.end12.i.i_crit_edge

nvmet_fc_alloc_hostport.exit.i.i.if.end12.i.i_crit_edge: ; preds = %nvmet_fc_alloc_hostport.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i.i

nvmet_fc_alloc_hostport.exit.i.i.out_put.i.i_crit_edge: ; preds = %nvmet_fc_alloc_hostport.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_put.i.i

if.end12.i.i:                                     ; preds = %nvmet_fc_alloc_hostport.exit.i.i.if.end12.i.i_crit_edge, %nvmet_fc_alloc_hostport.exit.thread94.i.i
  %tgtport13.i.i = getelementptr inbounds %struct.nvmet_fc_tgt_assoc, ptr %call7.i.i.i.i, i32 0, i32 3
  %59 = ptrtoint ptr %tgtport13.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %1, ptr %tgtport13.i.i, align 8
  %a_id.i117.i = getelementptr inbounds %struct.nvmet_fc_tgt_assoc, ptr %call7.i.i.i.i, i32 0, i32 1
  %60 = ptrtoint ptr %a_id.i117.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %call1.i111.i, ptr %a_id.i117.i, align 8
  %a_list.i.i = getelementptr inbounds %struct.nvmet_fc_tgt_assoc, ptr %call7.i.i.i.i, i32 0, i32 6
  %61 = ptrtoint ptr %a_list.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %a_list.i.i, ptr %a_list.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.nvmet_fc_tgt_assoc, ptr %call7.i.i.i.i, i32 0, i32 6, i32 1
  %62 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %a_list.i.i, ptr %prev.i.i.i, align 8
  %ref.i.i = getelementptr inbounds %struct.nvmet_fc_tgt_assoc, ptr %call7.i.i.i.i, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #12
  %63 = ptrtoint ptr %ref.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile i32 1, ptr %ref.i.i, align 8
  %del_work.i.i = getelementptr inbounds %struct.nvmet_fc_tgt_assoc, ptr %call7.i.i.i.i, i32 0, i32 9
  tail call void @__init_work(ptr noundef %del_work.i.i, i32 noundef 0) #12
  %64 = ptrtoint ptr %del_work.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -64, ptr %del_work.i.i, align 4
  %lockdep_map.i.i = getelementptr inbounds %struct.nvmet_fc_tgt_assoc, ptr %call7.i.i.i.i, i32 0, i32 9, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @nvmet_fc_alloc_target_assoc.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry17.i.i = getelementptr inbounds %struct.nvmet_fc_tgt_assoc, ptr %call7.i.i.i.i, i32 0, i32 9, i32 1
  %65 = ptrtoint ptr %entry17.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %entry17.i.i, ptr %entry17.i.i, align 8
  %prev.i88.i.i = getelementptr inbounds %struct.nvmet_fc_tgt_assoc, ptr %call7.i.i.i.i, i32 0, i32 9, i32 1, i32 1
  %66 = ptrtoint ptr %prev.i88.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %entry17.i.i, ptr %prev.i88.i.i, align 4
  %func.i.i = getelementptr inbounds %struct.nvmet_fc_tgt_assoc, ptr %call7.i.i.i.i, i32 0, i32 9, i32 2
  %67 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @nvmet_fc_delete_assoc, ptr %func.i.i, align 8
  %terminating.i.i = getelementptr inbounds %struct.nvmet_fc_tgt_assoc, ptr %call7.i.i.i.i, i32 0, i32 2
  %call.i.i.i118.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %terminating.i.i, i32 noundef 4) #12
  %68 = ptrtoint ptr %terminating.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile i32 0, ptr %terminating.i.i, align 4
  %lock.i119.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %1, i32 0, i32 5
  %assoc_list.i.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %1, i32 0, i32 9
  br label %while.body.i.i

while.body.critedge87.i.i:                        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i119.i, i32 noundef %call24.i.i) #12
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.critedge87.i.i, %if.end12.i.i
  call void @get_random_bytes(ptr noundef nonnull %ran.i.i, i32 noundef 6) #12
  %69 = ptrtoint ptr %ran.i.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %ran.i.i, align 8
  %shl.i.i = shl i64 %70, 16
  store i64 %shl.i.i, ptr %ran.i.i, align 8
  %call24.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i119.i) #12
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %while.body.i.i
  %.pn.in.i.i = phi ptr [ %assoc_list.i.i, %while.body.i.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %71 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp32.not.i.i = icmp eq ptr %.pn.i.i, %assoc_list.i.i
  br i1 %cmp32.not.i.i, label %if.then44.critedge.i.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %tmpassoc.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -28
  %72 = ptrtoint ptr %ran.i.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %ran.i.i, align 8
  %74 = ptrtoint ptr %tmpassoc.0.i.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %tmpassoc.0.i.i, align 8
  %cmp34.i.i = icmp eq i64 %73, %75
  br i1 %cmp34.i.i, label %while.body.critedge87.i.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i

if.then44.critedge.i.i:                           ; preds = %for.cond.i.i
  %76 = ptrtoint ptr %ran.i.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %ran.i.i, align 8
  %78 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %77, ptr %call7.i.i.i.i, align 8
  %prev.i89.i.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %1, i32 0, i32 9, i32 1
  %79 = ptrtoint ptr %prev.i89.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %prev.i89.i.i, align 4
  %call.i.i90.i.i = call zeroext i1 @__list_add_valid(ptr noundef %a_list.i.i, ptr noundef %80, ptr noundef %assoc_list.i.i) #12
  br i1 %call.i.i90.i.i, label %if.end.i.i.i.i, label %if.then44.critedge.i.i.nvmet_fc_alloc_target_assoc.exit.i_crit_edge

if.then44.critedge.i.i.nvmet_fc_alloc_target_assoc.exit.i_crit_edge: ; preds = %if.then44.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_alloc_target_assoc.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then44.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %81 = ptrtoint ptr %a_list.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %assoc_list.i.i, ptr %a_list.i.i, align 4
  %82 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %80, ptr %prev.i.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !274
  %83 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %a_list.i.i, ptr %80, align 4
  %84 = ptrtoint ptr %prev.i89.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %a_list.i.i, ptr %prev.i89.i.i, align 4
  br label %nvmet_fc_alloc_target_assoc.exit.i

out_put.i.i:                                      ; preds = %nvmet_fc_alloc_hostport.exit.i.i.out_put.i.i_crit_edge, %nvmet_fc_alloc_hostport.exit.thread.i.i
  tail call fastcc void @nvmet_fc_tgtport_put(ptr noundef %1) #12
  br label %out_ida.i.i

out_ida.i.i:                                      ; preds = %out_put.i.i, %if.end3.i.i.out_ida.i.i_crit_edge
  tail call void @ida_free(ptr noundef %assoc_cnt.i.i, i32 noundef %call1.i111.i) #12
  br label %out_free_assoc.i.i

out_free_assoc.i.i:                               ; preds = %out_ida.i.i, %if.end.i.i.out_free_assoc.i.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #12
  br label %nvmet_fc_alloc_target_assoc.exit.thread.i

nvmet_fc_alloc_target_assoc.exit.thread.i:        ; preds = %out_free_assoc.i.i, %if.else24.i.i.nvmet_fc_alloc_target_assoc.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ran.i.i) #12
  %85 = ptrtoint ptr %assoc.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %assoc.i, align 4
  br label %do.end.i.i

nvmet_fc_alloc_target_assoc.exit.i:               ; preds = %if.end.i.i.i.i, %if.then44.critedge.i.i.nvmet_fc_alloc_target_assoc.exit.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i119.i, i32 noundef %call24.i.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ran.i.i) #12
  %86 = ptrtoint ptr %assoc.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call7.i.i.i.i, ptr %assoc.i, align 4
  %87 = ptrtoint ptr %sqsize.i.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %sqsize.i.i, align 2
  %call32.i.i = call fastcc ptr @nvmet_fc_alloc_target_queue(ptr noundef nonnull %call7.i.i.i.i, i16 noundef zeroext 0, i16 noundef zeroext %88) #12
  %tobool33.not.i.i = icmp eq ptr %call32.i.i, null
  br i1 %tobool33.not.i.i, label %nvmet_fc_alloc_target_assoc.exit.i.do.end.i.i_crit_edge, label %if.end45.i.i

nvmet_fc_alloc_target_assoc.exit.i.do.end.i.i_crit_edge: ; preds = %nvmet_fc_alloc_target_assoc.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %nvmet_fc_alloc_target_assoc.exit.i.do.end.i.i_crit_edge, %nvmet_fc_alloc_target_assoc.exit.thread.i, %lor.lhs.false.i.i.do.end.i.i_crit_edge, %if.else14.i.i.do.end.i.i_crit_edge, %if.else9.i.i.do.end.i.i_crit_edge, %if.else5.i.i.do.end.i.i_crit_edge, %if.else.i.i.do.end.i.i_crit_edge, %sw.bb.i.do.end.i.i_crit_edge
  %ret.0.ph.i.i = phi i32 [ 5, %if.else14.i.i.do.end.i.i_crit_edge ], [ 5, %lor.lhs.false.i.i.do.end.i.i_crit_edge ], [ 4, %if.else9.i.i.do.end.i.i_crit_edge ], [ 3, %if.else5.i.i.do.end.i.i_crit_edge ], [ 2, %if.else.i.i.do.end.i.i_crit_edge ], [ 1, %sw.bb.i.do.end.i.i_crit_edge ], [ 7, %nvmet_fc_alloc_target_assoc.exit.i.do.end.i.i_crit_edge ], [ 6, %nvmet_fc_alloc_target_assoc.exit.thread.i ]
  %dev.i.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %1, i32 0, i32 2
  %89 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev.i.i, align 8
  %arrayidx.i.i = getelementptr [38 x ptr], ptr @validation_errors, i32 0, i32 %ret.0.ph.i.i
  %91 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.18, ptr noundef %92) #17
  %93 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %24, align 4
  %95 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 1, ptr %26, align 4
  %desc_list_len.i.i.i.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %26, i32 0, i32 1
  %96 = ptrtoint ptr %desc_list_len.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 32, ptr %desc_list_len.i.i.i.i, align 4
  %rqst.i.i.i.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %26, i32 0, i32 2
  %97 = ptrtoint ptr %rqst.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 1, ptr %rqst.i.i.i.i, align 4
  %desc_len3.i.i.i.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %26, i32 0, i32 2, i32 1
  %98 = ptrtoint ptr %desc_len3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 8, ptr %desc_len3.i.i.i.i, align 4
  %w05.i.i.i.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %26, i32 0, i32 2, i32 2
  %99 = ptrtoint ptr %w05.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %94, ptr %w05.i.i.i.i, align 4
  %rjt1.i.i.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %26, i32 0, i32 3
  %100 = ptrtoint ptr %rjt1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 2, ptr %rjt1.i.i.i, align 4
  %desc_len.i.i.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %26, i32 0, i32 3, i32 1
  %101 = ptrtoint ptr %desc_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 8, ptr %desc_len.i.i.i, align 4
  %reason_code.i.i.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %26, i32 0, i32 3, i32 3
  %102 = ptrtoint ptr %reason_code.i.i.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 3, ptr %reason_code.i.i.i, align 1
  %reason_explanation.i.i.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %26, i32 0, i32 3, i32 4
  %103 = ptrtoint ptr %reason_explanation.i.i.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %reason_explanation.i.i.i, align 2
  %vendor7.i.i.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %26, i32 0, i32 3, i32 5
  %104 = ptrtoint ptr %vendor7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %vendor7.i.i.i, align 1
  %105 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %add.ptr, align 8
  %rsplen.i.i = getelementptr inbounds %struct.nvmefc_ls_rsp, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %rsplen.i.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 40, ptr %rsplen.i.i, align 4
  br label %if.then.i

if.end45.i.i:                                     ; preds = %nvmet_fc_alloc_target_assoc.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %108 = ptrtoint ptr %ersp_ratio.i.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %ersp_ratio.i.i, align 4
  %ersp_ratio48.i.i = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %call32.i.i, i32 0, i32 3
  %110 = ptrtoint ptr %ersp_ratio48.i.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %109, ptr %ersp_ratio48.i.i, align 2
  %connected.i.i = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %call32.i.i, i32 0, i32 5
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %connected.i.i, i32 noundef 4) #12
  %111 = ptrtoint ptr %connected.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile i32 1, ptr %connected.i.i, align 4
  %sqhd.i.i = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %call32.i.i, i32 0, i32 4
  %112 = ptrtoint ptr %sqhd.i.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 0, ptr %sqhd.i.i, align 8
  %dev52.i.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %1, i32 0, i32 2
  %113 = ptrtoint ptr %dev52.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev52.i.i, align 8
  %115 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %1, align 8
  %117 = ptrtoint ptr %assoc.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %assoc.i, align 4
  %a_id.i.i = getelementptr inbounds %struct.nvmet_fc_tgt_assoc, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %a_id.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %a_id.i.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %114, ptr noundef nonnull @.str.22, i32 noundef %116, i32 noundef %120) #17
  %121 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %add.ptr, align 8
  %rsplen55.i.i = getelementptr inbounds %struct.nvmefc_ls_rsp, ptr %122, i32 0, i32 2
  %123 = ptrtoint ptr %rsplen55.i.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 56, ptr %rsplen55.i.i, align 4
  %124 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 2, ptr %26, align 4
  %desc_list_len.i.i.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %26, i32 0, i32 1
  %125 = ptrtoint ptr %desc_list_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 48, ptr %desc_list_len.i.i.i, align 4
  %rqst.i.i.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %26, i32 0, i32 2
  %126 = ptrtoint ptr %rqst.i.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 1, ptr %rqst.i.i.i, align 4
  %desc_len3.i.i.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %26, i32 0, i32 2, i32 1
  %127 = ptrtoint ptr %desc_len3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 8, ptr %desc_len3.i.i.i, align 4
  %w05.i.i.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %26, i32 0, i32 2, i32 2
  %128 = ptrtoint ptr %w05.i.i.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 3, ptr %w05.i.i.i, align 4
  %associd.i.i = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_acc, ptr %26, i32 0, i32 1
  %129 = ptrtoint ptr %associd.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 7, ptr %associd.i.i, align 8
  %desc_len60.i.i = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_acc, ptr %26, i32 0, i32 1, i32 1
  %130 = ptrtoint ptr %desc_len60.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 8, ptr %desc_len60.i.i, align 4
  %131 = ptrtoint ptr %assoc.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %assoc.i, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %132, align 8
  %association_id.i.i = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_acc, ptr %26, i32 0, i32 1, i32 2
  %135 = ptrtoint ptr %association_id.i.i to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %134, ptr %association_id.i.i, align 8
  %connectid.i.i = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_acc, ptr %26, i32 0, i32 2
  %136 = ptrtoint ptr %connectid.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 6, ptr %connectid.i.i, align 8
  %desc_len67.i.i = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_acc, ptr %26, i32 0, i32 2, i32 1
  %137 = ptrtoint ptr %desc_len67.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 8, ptr %desc_len67.i.i, align 4
  %connection_id.i.i = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_acc, ptr %26, i32 0, i32 2, i32 2
  %138 = ptrtoint ptr %connection_id.i.i to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 %134, ptr %connection_id.i.i, align 8
  br label %if.then.i

sw.bb8.i:                                         ; preds = %entry
  %139 = ptrtoint ptr %rqstbuf.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %rqstbuf.i, align 4
  %141 = ptrtoint ptr %rspbuf.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %rspbuf.i, align 8
  %143 = call ptr @memset(ptr %142, i32 0, i32 40)
  %rqstdatalen.i40.i = getelementptr i8, ptr %work, i32 -48
  %144 = ptrtoint ptr %rqstdatalen.i40.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %rqstdatalen.i40.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 80, i16 %145)
  %cmp.i41.i = icmp ult i16 %145, 80
  br i1 %cmp.i41.i, label %sw.bb8.i.do.end.i67.i_crit_edge, label %if.else.i43.i

sw.bb8.i.do.end.i67.i_crit_edge:                  ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i67.i

if.else.i43.i:                                    ; preds = %sw.bb8.i
  %desc_list_len.i42.i = getelementptr inbounds %struct.fcnvme_ls_cr_conn_rqst, ptr %140, i32 0, i32 1
  %146 = ptrtoint ptr %desc_list_len.i42.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %desc_list_len.i42.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %147)
  %cmp2.not.i.i = icmp eq i32 %147, 72
  br i1 %cmp2.not.i.i, label %if.else5.i46.i, label %if.else.i43.i.do.end.i67.i_crit_edge

if.else.i43.i.do.end.i67.i_crit_edge:             ; preds = %if.else.i43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i67.i

if.else5.i46.i:                                   ; preds = %if.else.i43.i
  %associd.i44.i = getelementptr inbounds %struct.fcnvme_ls_cr_conn_rqst, ptr %140, i32 0, i32 2
  %148 = ptrtoint ptr %associd.i44.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %associd.i44.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %149)
  %cmp6.not.i45.i = icmp eq i32 %149, 7
  br i1 %cmp6.not.i45.i, label %if.else9.i48.i, label %if.else5.i46.i.do.end.i67.i_crit_edge

if.else5.i46.i.do.end.i67.i_crit_edge:            ; preds = %if.else5.i46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i67.i

if.else9.i48.i:                                   ; preds = %if.else5.i46.i
  %desc_len.i47.i = getelementptr inbounds %struct.fcnvme_ls_cr_conn_rqst, ptr %140, i32 0, i32 2, i32 1
  %150 = ptrtoint ptr %desc_len.i47.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %desc_len.i47.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %151)
  %cmp12.not.i.i = icmp eq i32 %151, 8
  br i1 %cmp12.not.i.i, label %if.else15.i.i, label %if.else9.i48.i.do.end.i67.i_crit_edge

if.else9.i48.i.do.end.i67.i_crit_edge:            ; preds = %if.else9.i48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i67.i

if.else15.i.i:                                    ; preds = %if.else9.i48.i
  %connect_cmd.i.i = getelementptr inbounds %struct.fcnvme_ls_cr_conn_rqst, ptr %140, i32 0, i32 3
  %152 = ptrtoint ptr %connect_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %connect_cmd.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %153)
  %cmp17.not.i.i = icmp eq i32 %153, 4
  br i1 %cmp17.not.i.i, label %if.else20.i.i, label %if.else15.i.i.do.end.i67.i_crit_edge

if.else15.i.i.do.end.i67.i_crit_edge:             ; preds = %if.else15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i67.i

if.else20.i.i:                                    ; preds = %if.else15.i.i
  %desc_len22.i.i = getelementptr inbounds %struct.fcnvme_ls_cr_conn_rqst, ptr %140, i32 0, i32 3, i32 1
  %154 = ptrtoint ptr %desc_len22.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %desc_len22.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %155)
  %cmp24.not.i.i = icmp eq i32 %155, 48
  br i1 %cmp24.not.i.i, label %if.else27.i.i, label %if.else20.i.i.do.end.i67.i_crit_edge

if.else20.i.i.do.end.i67.i_crit_edge:             ; preds = %if.else20.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i67.i

if.else27.i.i:                                    ; preds = %if.else20.i.i
  %ersp_ratio.i49.i = getelementptr inbounds %struct.fcnvme_ls_cr_conn_rqst, ptr %140, i32 0, i32 3, i32 2
  %156 = ptrtoint ptr %ersp_ratio.i49.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %ersp_ratio.i49.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %157)
  %tobool.not.i50.i = icmp eq i16 %157, 0
  br i1 %tobool.not.i50.i, label %if.else27.i.i.do.end.i67.i_crit_edge, label %lor.lhs.false.i52.i

if.else27.i.i.do.end.i67.i_crit_edge:             ; preds = %if.else27.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i67.i

lor.lhs.false.i52.i:                              ; preds = %if.else27.i.i
  %sqsize.i51.i = getelementptr inbounds %struct.fcnvme_ls_cr_conn_rqst, ptr %140, i32 0, i32 3, i32 6
  %158 = ptrtoint ptr %sqsize.i51.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %sqsize.i51.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %157, i16 %159)
  %cmp34.not.i.i = icmp ult i16 %157, %159
  br i1 %cmp34.not.i.i, label %if.else37.i.i, label %lor.lhs.false.i52.i.do.end.i67.i_crit_edge

lor.lhs.false.i52.i.do.end.i67.i_crit_edge:       ; preds = %lor.lhs.false.i52.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i67.i

if.else37.i.i:                                    ; preds = %lor.lhs.false.i52.i
  %association_id.i53.i = getelementptr inbounds %struct.fcnvme_ls_cr_conn_rqst, ptr %140, i32 0, i32 2, i32 2
  %160 = ptrtoint ptr %association_id.i53.i to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %association_id.i53.i, align 8
  %call39.i.i = tail call fastcc ptr @nvmet_fc_find_target_assoc(ptr noundef %1, i64 noundef %161) #12
  %162 = ptrtoint ptr %assoc.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %call39.i.i, ptr %assoc.i, align 4
  %tobool41.not.i.i = icmp eq ptr %call39.i.i, null
  br i1 %tobool41.not.i.i, label %if.else37.i.i.do.end.i67.i_crit_edge, label %if.else43.i.i

if.else37.i.i.do.end.i67.i_crit_edge:             ; preds = %if.else37.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i67.i

if.else43.i.i:                                    ; preds = %if.else37.i.i
  %qid.i.i = getelementptr inbounds %struct.fcnvme_ls_cr_conn_rqst, ptr %140, i32 0, i32 3, i32 5
  %163 = ptrtoint ptr %qid.i.i to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %qid.i.i, align 8
  %165 = ptrtoint ptr %sqsize.i51.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %sqsize.i51.i, align 2
  %call48.i.i = tail call fastcc ptr @nvmet_fc_alloc_target_queue(ptr noundef nonnull %call39.i.i, i16 noundef zeroext %164, i16 noundef zeroext %166) #12
  %tobool49.not.i.i = icmp eq ptr %call48.i.i, null
  %167 = ptrtoint ptr %assoc.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %assoc.i, align 4
  tail call fastcc void @nvmet_fc_tgt_a_put(ptr noundef %168) #12
  br i1 %tobool49.not.i.i, label %if.else43.i.i.do.end.i67.i_crit_edge, label %if.end67.i.i

if.else43.i.i.do.end.i67.i_crit_edge:             ; preds = %if.else43.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i67.i

do.end.i67.i:                                     ; preds = %if.else43.i.i.do.end.i67.i_crit_edge, %if.else37.i.i.do.end.i67.i_crit_edge, %lor.lhs.false.i52.i.do.end.i67.i_crit_edge, %if.else27.i.i.do.end.i67.i_crit_edge, %if.else20.i.i.do.end.i67.i_crit_edge, %if.else15.i.i.do.end.i67.i_crit_edge, %if.else9.i48.i.do.end.i67.i_crit_edge, %if.else5.i46.i.do.end.i67.i_crit_edge, %if.else.i43.i.do.end.i67.i_crit_edge, %sw.bb8.i.do.end.i67.i_crit_edge
  %cmp62.i.i = phi i8 [ 3, %if.else43.i.i.do.end.i67.i_crit_edge ], [ 3, %sw.bb8.i.do.end.i67.i_crit_edge ], [ 3, %if.else.i43.i.do.end.i67.i_crit_edge ], [ 3, %if.else5.i46.i.do.end.i67.i_crit_edge ], [ 3, %if.else9.i48.i.do.end.i67.i_crit_edge ], [ 3, %if.else15.i.i.do.end.i67.i_crit_edge ], [ 3, %if.else20.i.i.do.end.i67.i_crit_edge ], [ 3, %lor.lhs.false.i52.i.do.end.i67.i_crit_edge ], [ 3, %if.else27.i.i.do.end.i67.i_crit_edge ], [ 64, %if.else37.i.i.do.end.i67.i_crit_edge ]
  %ret.1.ph.i.i = phi i32 [ 7, %if.else43.i.i.do.end.i67.i_crit_edge ], [ 8, %sw.bb8.i.do.end.i67.i_crit_edge ], [ 9, %if.else.i43.i.do.end.i67.i_crit_edge ], [ 10, %if.else5.i46.i.do.end.i67.i_crit_edge ], [ 11, %if.else9.i48.i.do.end.i67.i_crit_edge ], [ 16, %if.else15.i.i.do.end.i67.i_crit_edge ], [ 17, %if.else20.i.i.do.end.i67.i_crit_edge ], [ 5, %lor.lhs.false.i52.i.do.end.i67.i_crit_edge ], [ 5, %if.else27.i.i.do.end.i67.i_crit_edge ], [ 12, %if.else37.i.i.do.end.i67.i_crit_edge ]
  %dev.i55.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %1, i32 0, i32 2
  %169 = ptrtoint ptr %dev.i55.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %dev.i55.i, align 8
  %arrayidx.i56.i = getelementptr [38 x ptr], ptr @validation_errors, i32 0, i32 %ret.1.ph.i.i
  %171 = ptrtoint ptr %arrayidx.i56.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %arrayidx.i56.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %170, ptr noundef nonnull @.str.74, ptr noundef %172) #17
  %173 = ptrtoint ptr %140 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %140, align 8
  %175 = ptrtoint ptr %142 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 1, ptr %142, align 4
  %desc_list_len.i.i.i57.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %142, i32 0, i32 1
  %176 = ptrtoint ptr %desc_list_len.i.i.i57.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 32, ptr %desc_list_len.i.i.i57.i, align 4
  %rqst.i.i.i58.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %142, i32 0, i32 2
  %177 = ptrtoint ptr %rqst.i.i.i58.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 1, ptr %rqst.i.i.i58.i, align 4
  %desc_len3.i.i.i59.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %142, i32 0, i32 2, i32 1
  %178 = ptrtoint ptr %desc_len3.i.i.i59.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 8, ptr %desc_len3.i.i.i59.i, align 4
  %w05.i.i.i60.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %142, i32 0, i32 2, i32 2
  %179 = ptrtoint ptr %w05.i.i.i60.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %174, ptr %w05.i.i.i60.i, align 4
  %rjt1.i.i61.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %142, i32 0, i32 3
  %180 = ptrtoint ptr %rjt1.i.i61.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 2, ptr %rjt1.i.i61.i, align 4
  %desc_len.i.i62.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %142, i32 0, i32 3, i32 1
  %181 = ptrtoint ptr %desc_len.i.i62.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 8, ptr %desc_len.i.i62.i, align 4
  %reason_code.i.i63.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %142, i32 0, i32 3, i32 3
  %182 = ptrtoint ptr %reason_code.i.i63.i to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %cmp62.i.i, ptr %reason_code.i.i63.i, align 1
  %reason_explanation.i.i64.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %142, i32 0, i32 3, i32 4
  %183 = ptrtoint ptr %reason_explanation.i.i64.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 0, ptr %reason_explanation.i.i64.i, align 2
  %vendor7.i.i65.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %142, i32 0, i32 3, i32 5
  %184 = ptrtoint ptr %vendor7.i.i65.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 0, ptr %vendor7.i.i65.i, align 1
  %185 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %add.ptr, align 8
  %rsplen.i66.i = getelementptr inbounds %struct.nvmefc_ls_rsp, ptr %186, i32 0, i32 2
  %187 = ptrtoint ptr %rsplen.i66.i to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 40, ptr %rsplen.i66.i, align 4
  br label %if.then.i

if.end67.i.i:                                     ; preds = %if.else43.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %188 = ptrtoint ptr %ersp_ratio.i49.i to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %ersp_ratio.i49.i, align 8
  %ersp_ratio70.i.i = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %call48.i.i, i32 0, i32 3
  %190 = ptrtoint ptr %ersp_ratio70.i.i to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 %189, ptr %ersp_ratio70.i.i, align 2
  %connected.i68.i = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %call48.i.i, i32 0, i32 5
  %call.i.i.i69.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %connected.i68.i, i32 noundef 4) #12
  %191 = ptrtoint ptr %connected.i68.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store volatile i32 1, ptr %connected.i68.i, align 4
  %sqhd.i70.i = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %call48.i.i, i32 0, i32 4
  %192 = ptrtoint ptr %sqhd.i70.i to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 0, ptr %sqhd.i70.i, align 8
  %193 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %add.ptr, align 8
  %rsplen72.i.i = getelementptr inbounds %struct.nvmefc_ls_rsp, ptr %194, i32 0, i32 2
  %195 = ptrtoint ptr %rsplen72.i.i to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 40, ptr %rsplen72.i.i, align 4
  %196 = ptrtoint ptr %142 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 2, ptr %142, align 4
  %desc_list_len.i.i71.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %142, i32 0, i32 1
  %197 = ptrtoint ptr %desc_list_len.i.i71.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 32, ptr %desc_list_len.i.i71.i, align 4
  %rqst.i.i72.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %142, i32 0, i32 2
  %198 = ptrtoint ptr %rqst.i.i72.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 1, ptr %rqst.i.i72.i, align 4
  %desc_len3.i.i73.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %142, i32 0, i32 2, i32 1
  %199 = ptrtoint ptr %desc_len3.i.i73.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 8, ptr %desc_len3.i.i73.i, align 4
  %w05.i.i74.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %142, i32 0, i32 2, i32 2
  %200 = ptrtoint ptr %w05.i.i74.i to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 4, ptr %w05.i.i74.i, align 4
  %connectid.i75.i = getelementptr inbounds %struct.fcnvme_ls_cr_conn_acc, ptr %142, i32 0, i32 1
  %201 = ptrtoint ptr %connectid.i75.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 6, ptr %connectid.i75.i, align 8
  %desc_len77.i.i = getelementptr inbounds %struct.fcnvme_ls_cr_conn_acc, ptr %142, i32 0, i32 1, i32 1
  %202 = ptrtoint ptr %desc_len77.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 8, ptr %desc_len77.i.i, align 4
  %203 = ptrtoint ptr %assoc.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %assoc.i, align 4
  %205 = ptrtoint ptr %qid.i.i to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %qid.i.i, align 8
  %207 = ptrtoint ptr %204 to i32
  call void @__asan_load8_noabort(i32 %207)
  %208 = load i64, ptr %204, align 8
  %conv.i.i.i = zext i16 %206 to i64
  %or.i.i.i = or i64 %208, %conv.i.i.i
  %connection_id.i76.i = getelementptr inbounds %struct.fcnvme_ls_cr_conn_acc, ptr %142, i32 0, i32 1, i32 2
  %209 = ptrtoint ptr %connection_id.i76.i to i32
  call void @__asan_store8_noabort(i32 %209)
  store i64 %or.i.i.i, ptr %connection_id.i76.i, align 8
  br label %if.then.i

sw.bb9.i:                                         ; preds = %entry
  %210 = ptrtoint ptr %rqstbuf.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %rqstbuf.i, align 4
  %212 = ptrtoint ptr %rspbuf.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %rspbuf.i, align 8
  %214 = call ptr @memset(ptr %213, i32 0, i32 24)
  %rqstdatalen.i79.i = getelementptr i8, ptr %work, i32 -48
  %215 = ptrtoint ptr %rqstdatalen.i79.i to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %rqstdatalen.i79.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 48, i16 %216)
  %cmp.i.i.i = icmp ult i16 %216, 48
  br i1 %cmp.i.i.i, label %sw.bb9.i.nvmet_fc_ls_disconnect.exit.i_crit_edge, label %if.else.i.i.i

sw.bb9.i.nvmet_fc_ls_disconnect.exit.i_crit_edge: ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_ls_disconnect.exit.i

if.else.i.i.i:                                    ; preds = %sw.bb9.i
  %desc_list_len.i.i80.i = getelementptr inbounds %struct.fcnvme_ls_disconnect_assoc_rqst, ptr %211, i32 0, i32 1
  %217 = ptrtoint ptr %desc_list_len.i.i80.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %desc_list_len.i.i80.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %218)
  %cmp1.not.i.i.i = icmp eq i32 %218, 40
  br i1 %cmp1.not.i.i.i, label %if.else3.i.i.i, label %if.else.i.i.i.nvmet_fc_ls_disconnect.exit.i_crit_edge

if.else.i.i.i.nvmet_fc_ls_disconnect.exit.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_ls_disconnect.exit.i

if.else3.i.i.i:                                   ; preds = %if.else.i.i.i
  %associd.i.i.i = getelementptr inbounds %struct.fcnvme_ls_disconnect_assoc_rqst, ptr %211, i32 0, i32 2
  %219 = ptrtoint ptr %associd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %associd.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %220)
  %cmp4.not.i.i.i = icmp eq i32 %220, 7
  br i1 %cmp4.not.i.i.i, label %if.else6.i.i.i, label %if.else3.i.i.i.nvmet_fc_ls_disconnect.exit.i_crit_edge

if.else3.i.i.i.nvmet_fc_ls_disconnect.exit.i_crit_edge: ; preds = %if.else3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_ls_disconnect.exit.i

if.else6.i.i.i:                                   ; preds = %if.else3.i.i.i
  %desc_len.i.i81.i = getelementptr inbounds %struct.fcnvme_ls_disconnect_assoc_rqst, ptr %211, i32 0, i32 2, i32 1
  %221 = ptrtoint ptr %desc_len.i.i81.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %desc_len.i.i81.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %222)
  %cmp9.not.i.i.i = icmp eq i32 %222, 8
  br i1 %cmp9.not.i.i.i, label %if.else11.i.i.i, label %if.else6.i.i.i.nvmet_fc_ls_disconnect.exit.i_crit_edge

if.else6.i.i.i.nvmet_fc_ls_disconnect.exit.i_crit_edge: ; preds = %if.else6.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_ls_disconnect.exit.i

if.else11.i.i.i:                                  ; preds = %if.else6.i.i.i
  %discon_cmd.i.i.i = getelementptr inbounds %struct.fcnvme_ls_disconnect_assoc_rqst, ptr %211, i32 0, i32 3
  %223 = ptrtoint ptr %discon_cmd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %discon_cmd.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %224)
  %cmp13.not.i.i.i = icmp eq i32 %224, 5
  br i1 %cmp13.not.i.i.i, label %if.else15.i.i.i, label %if.else11.i.i.i.nvmet_fc_ls_disconnect.exit.i_crit_edge

if.else11.i.i.i.nvmet_fc_ls_disconnect.exit.i_crit_edge: ; preds = %if.else11.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_ls_disconnect.exit.i

if.else15.i.i.i:                                  ; preds = %if.else11.i.i.i
  %desc_len17.i.i.i = getelementptr inbounds %struct.fcnvme_ls_disconnect_assoc_rqst, ptr %211, i32 0, i32 3, i32 1
  %225 = ptrtoint ptr %desc_len17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %desc_len17.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %226)
  %cmp19.not.i.i.i = icmp eq i32 %226, 16
  br i1 %cmp19.not.i.i.i, label %if.else21.i.i.i, label %if.else15.i.i.i.nvmet_fc_ls_disconnect.exit.i_crit_edge

if.else15.i.i.i.nvmet_fc_ls_disconnect.exit.i_crit_edge: ; preds = %if.else15.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_ls_disconnect.exit.i

if.else21.i.i.i:                                  ; preds = %if.else15.i.i.i
  %rsvd8.i.i.i = getelementptr inbounds %struct.fcnvme_ls_disconnect_assoc_rqst, ptr %211, i32 0, i32 3, i32 2
  %227 = ptrtoint ptr %rsvd8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %rsvd8.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %228)
  %tobool.not.i.i.i = icmp eq i32 %228, 0
  br i1 %tobool.not.i.i.i, label %if.end5.i.i, label %if.else21.i.i.i.nvmet_fc_ls_disconnect.exit.i_crit_edge

if.else21.i.i.i.nvmet_fc_ls_disconnect.exit.i_crit_edge: ; preds = %if.else21.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_ls_disconnect.exit.i

if.end5.i.i:                                      ; preds = %if.else21.i.i.i
  %association_id.i82.i = getelementptr inbounds %struct.fcnvme_ls_disconnect_assoc_rqst, ptr %211, i32 0, i32 2, i32 2
  %229 = ptrtoint ptr %association_id.i82.i to i32
  call void @__asan_load8_noabort(i32 %229)
  %230 = load i64, ptr %association_id.i82.i, align 8
  %call1.i.i = tail call fastcc ptr @nvmet_fc_find_target_assoc(ptr noundef %1, i64 noundef %230) #12
  %231 = ptrtoint ptr %assoc.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %call1.i.i, ptr %assoc.i, align 4
  %tobool3.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool3.not.i.i, label %if.end5.i.i.nvmet_fc_ls_disconnect.exit.i_crit_edge, label %if.end13.i.i

if.end5.i.i.nvmet_fc_ls_disconnect.exit.i_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_ls_disconnect.exit.i

if.end13.i.i:                                     ; preds = %if.end5.i.i
  %232 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %add.ptr, align 8
  %rsplen15.i.i = getelementptr inbounds %struct.nvmefc_ls_rsp, ptr %233, i32 0, i32 2
  %234 = ptrtoint ptr %rsplen15.i.i to i32
  call void @__asan_store2_noabort(i32 %234)
  store i16 24, ptr %rsplen15.i.i, align 4
  %235 = ptrtoint ptr %213 to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 2, ptr %213, align 4
  %desc_list_len.i80.i.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %213, i32 0, i32 1
  %236 = ptrtoint ptr %desc_list_len.i80.i.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 16, ptr %desc_list_len.i80.i.i, align 4
  %rqst.i.i96.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %213, i32 0, i32 2
  %237 = ptrtoint ptr %rqst.i.i96.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 1, ptr %rqst.i.i96.i, align 4
  %desc_len3.i.i97.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %213, i32 0, i32 2, i32 1
  %238 = ptrtoint ptr %desc_len3.i.i97.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 8, ptr %desc_len3.i.i97.i, align 4
  %w05.i.i98.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %213, i32 0, i32 2, i32 2
  %239 = ptrtoint ptr %w05.i.i98.i to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 5, ptr %w05.i.i98.i, align 4
  tail call fastcc void @nvmet_fc_tgt_a_put(ptr noundef nonnull %call1.i.i) #12
  %lock.i.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %1, i32 0, i32 5
  %call22.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #12
  %rcv_disconn.i.i = getelementptr inbounds %struct.nvmet_fc_tgt_assoc, ptr %call1.i.i, i32 0, i32 5
  %240 = ptrtoint ptr %rcv_disconn.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %rcv_disconn.i.i, align 8
  store ptr %add.ptr, ptr %rcv_disconn.i.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call22.i.i) #12
  tail call fastcc void @nvmet_fc_delete_target_assoc(ptr noundef nonnull %call1.i.i) #12
  %tobool29.not.i.i = icmp eq ptr %241, null
  br i1 %tobool29.not.i.i, label %if.end13.i.i.nvmet_fc_handle_ls_rqst.exit_crit_edge, label %do.end33.i.i

if.end13.i.i.nvmet_fc_handle_ls_rqst.exit_crit_edge: ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_handle_ls_rqst.exit

do.end33.i.i:                                     ; preds = %if.end13.i.i
  %dev34.i.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %1, i32 0, i32 2
  %242 = ptrtoint ptr %dev34.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %dev34.i.i, align 8
  %244 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %1, align 8
  %a_id.i99.i = getelementptr inbounds %struct.nvmet_fc_tgt_assoc, ptr %call1.i.i, i32 0, i32 1
  %246 = ptrtoint ptr %a_id.i99.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %a_id.i99.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %243, ptr noundef nonnull @.str.80, i32 noundef %245, i32 noundef %247) #17
  %rspbuf35.i.i = getelementptr inbounds %struct.nvmet_fc_ls_iod, ptr %241, i32 0, i32 7
  %248 = ptrtoint ptr %rspbuf35.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %rspbuf35.i.i, align 8
  %250 = ptrtoint ptr %211 to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %211, align 8
  %252 = ptrtoint ptr %249 to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 1, ptr %249, align 4
  %desc_list_len.i.i81.i.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %249, i32 0, i32 1
  %253 = ptrtoint ptr %desc_list_len.i.i81.i.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 32, ptr %desc_list_len.i.i81.i.i, align 4
  %rqst.i.i82.i.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %249, i32 0, i32 2
  %254 = ptrtoint ptr %rqst.i.i82.i.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 1, ptr %rqst.i.i82.i.i, align 4
  %desc_len3.i.i83.i.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %249, i32 0, i32 2, i32 1
  %255 = ptrtoint ptr %desc_len3.i.i83.i.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 8, ptr %desc_len3.i.i83.i.i, align 4
  %w05.i.i84.i.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %249, i32 0, i32 2, i32 2
  %256 = ptrtoint ptr %w05.i.i84.i.i to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 %251, ptr %w05.i.i84.i.i, align 4
  %rjt1.i85.i.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %249, i32 0, i32 3
  %257 = ptrtoint ptr %rjt1.i85.i.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 2, ptr %rjt1.i85.i.i, align 4
  %desc_len.i86.i.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %249, i32 0, i32 3, i32 1
  %258 = ptrtoint ptr %desc_len.i86.i.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 8, ptr %desc_len.i86.i.i, align 4
  %reason_code.i87.i.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %249, i32 0, i32 3, i32 3
  %259 = ptrtoint ptr %reason_code.i87.i.i to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 9, ptr %reason_code.i87.i.i, align 1
  %reason_explanation.i88.i.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %249, i32 0, i32 3, i32 4
  %260 = ptrtoint ptr %reason_explanation.i88.i.i to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 0, ptr %reason_explanation.i88.i.i, align 2
  %vendor7.i89.i.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %249, i32 0, i32 3, i32 5
  %261 = ptrtoint ptr %vendor7.i89.i.i to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 0, ptr %vendor7.i89.i.i, align 1
  %262 = ptrtoint ptr %241 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %241, align 8
  %rsplen41.i.i = getelementptr inbounds %struct.nvmefc_ls_rsp, ptr %263, i32 0, i32 2
  %264 = ptrtoint ptr %rsplen41.i.i to i32
  call void @__asan_store2_noabort(i32 %264)
  store i16 40, ptr %rsplen41.i.i, align 4
  %265 = ptrtoint ptr %dev34.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %dev34.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %266, null
  br i1 %tobool.not.i.i.i.i, label %do.end33.i.i.fc_dma_sync_single_for_device.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

do.end33.i.i.fc_dma_sync_single_for_device.exit.i.i.i_crit_edge: ; preds = %do.end33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fc_dma_sync_single_for_device.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %do.end33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %rspdma.i.i.i = getelementptr inbounds %struct.nvmet_fc_ls_iod, ptr %241, i32 0, i32 9
  %267 = ptrtoint ptr %rspdma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %rspdma.i.i.i, align 8
  tail call void @dma_sync_single_for_device(ptr noundef nonnull %266, i32 noundef %268, i32 noundef 128, i32 noundef 1) #12
  br label %fc_dma_sync_single_for_device.exit.i.i.i

fc_dma_sync_single_for_device.exit.i.i.i:         ; preds = %if.then.i.i.i.i, %do.end33.i.i.fc_dma_sync_single_for_device.exit.i.i.i_crit_edge
  %ops.i.i.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %1, i32 0, i32 3
  %269 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %ops.i.i.i, align 4
  %xmt_ls_rsp.i.i.i = getelementptr inbounds %struct.nvmet_fc_target_template, ptr %270, i32 0, i32 1
  %271 = ptrtoint ptr %xmt_ls_rsp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %xmt_ls_rsp.i.i.i, align 4
  %273 = ptrtoint ptr %241 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %241, align 8
  %call.i.i.i = tail call i32 %272(ptr noundef %1, ptr noundef %274) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i90.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i90.i.i, label %fc_dma_sync_single_for_device.exit.i.i.i.nvmet_fc_handle_ls_rqst.exit_crit_edge, label %if.then.i.i.i

fc_dma_sync_single_for_device.exit.i.i.i.nvmet_fc_handle_ls_rqst.exit_crit_edge: ; preds = %fc_dma_sync_single_for_device.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_handle_ls_rqst.exit

if.then.i.i.i:                                    ; preds = %fc_dma_sync_single_for_device.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %275 = ptrtoint ptr %241 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %241, align 8
  tail call void @nvmet_fc_xmt_ls_rsp_done(ptr noundef %276) #12
  br label %nvmet_fc_handle_ls_rqst.exit

nvmet_fc_ls_disconnect.exit.i:                    ; preds = %if.end5.i.i.nvmet_fc_ls_disconnect.exit.i_crit_edge, %if.else21.i.i.i.nvmet_fc_ls_disconnect.exit.i_crit_edge, %if.else15.i.i.i.nvmet_fc_ls_disconnect.exit.i_crit_edge, %if.else11.i.i.i.nvmet_fc_ls_disconnect.exit.i_crit_edge, %if.else6.i.i.i.nvmet_fc_ls_disconnect.exit.i_crit_edge, %if.else3.i.i.i.nvmet_fc_ls_disconnect.exit.i_crit_edge, %if.else.i.i.i.nvmet_fc_ls_disconnect.exit.i_crit_edge, %sw.bb9.i.nvmet_fc_ls_disconnect.exit.i_crit_edge
  %cmp.i83.i = phi i8 [ 3, %sw.bb9.i.nvmet_fc_ls_disconnect.exit.i_crit_edge ], [ 3, %if.else.i.i.i.nvmet_fc_ls_disconnect.exit.i_crit_edge ], [ 3, %if.else3.i.i.i.nvmet_fc_ls_disconnect.exit.i_crit_edge ], [ 3, %if.else6.i.i.i.nvmet_fc_ls_disconnect.exit.i_crit_edge ], [ 3, %if.else11.i.i.i.nvmet_fc_ls_disconnect.exit.i_crit_edge ], [ 3, %if.else15.i.i.i.nvmet_fc_ls_disconnect.exit.i_crit_edge ], [ 3, %if.else21.i.i.i.nvmet_fc_ls_disconnect.exit.i_crit_edge ], [ 64, %if.end5.i.i.nvmet_fc_ls_disconnect.exit.i_crit_edge ]
  %ret.098.i.i = phi i32 [ 18, %sw.bb9.i.nvmet_fc_ls_disconnect.exit.i_crit_edge ], [ 19, %if.else.i.i.i.nvmet_fc_ls_disconnect.exit.i_crit_edge ], [ 10, %if.else3.i.i.i.nvmet_fc_ls_disconnect.exit.i_crit_edge ], [ 11, %if.else6.i.i.i.nvmet_fc_ls_disconnect.exit.i_crit_edge ], [ 20, %if.else11.i.i.i.nvmet_fc_ls_disconnect.exit.i_crit_edge ], [ 21, %if.else15.i.i.i.nvmet_fc_ls_disconnect.exit.i_crit_edge ], [ 22, %if.else21.i.i.i.nvmet_fc_ls_disconnect.exit.i_crit_edge ], [ 12, %if.end5.i.i.nvmet_fc_ls_disconnect.exit.i_crit_edge ]
  %dev.i84.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %1, i32 0, i32 2
  %277 = ptrtoint ptr %dev.i84.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %dev.i84.i, align 8
  %arrayidx.i85.i = getelementptr [38 x ptr], ptr @validation_errors, i32 0, i32 %ret.098.i.i
  %279 = ptrtoint ptr %arrayidx.i85.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %arrayidx.i85.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %278, ptr noundef nonnull @.str.77, ptr noundef %280) #17
  %281 = ptrtoint ptr %211 to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %211, align 8
  %283 = ptrtoint ptr %213 to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 1, ptr %213, align 4
  %desc_list_len.i.i.i86.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %213, i32 0, i32 1
  %284 = ptrtoint ptr %desc_list_len.i.i.i86.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 32, ptr %desc_list_len.i.i.i86.i, align 4
  %rqst.i.i.i87.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %213, i32 0, i32 2
  %285 = ptrtoint ptr %rqst.i.i.i87.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 1, ptr %rqst.i.i.i87.i, align 4
  %desc_len3.i.i.i88.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %213, i32 0, i32 2, i32 1
  %286 = ptrtoint ptr %desc_len3.i.i.i88.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 8, ptr %desc_len3.i.i.i88.i, align 4
  %w05.i.i.i89.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %213, i32 0, i32 2, i32 2
  %287 = ptrtoint ptr %w05.i.i.i89.i to i32
  call void @__asan_store1_noabort(i32 %287)
  store i8 %282, ptr %w05.i.i.i89.i, align 4
  %rjt1.i.i90.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %213, i32 0, i32 3
  %288 = ptrtoint ptr %rjt1.i.i90.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 2, ptr %rjt1.i.i90.i, align 4
  %desc_len.i79.i.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %213, i32 0, i32 3, i32 1
  %289 = ptrtoint ptr %desc_len.i79.i.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 8, ptr %desc_len.i79.i.i, align 4
  %reason_code.i.i91.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %213, i32 0, i32 3, i32 3
  %290 = ptrtoint ptr %reason_code.i.i91.i to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 %cmp.i83.i, ptr %reason_code.i.i91.i, align 1
  %reason_explanation.i.i92.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %213, i32 0, i32 3, i32 4
  %291 = ptrtoint ptr %reason_explanation.i.i92.i to i32
  call void @__asan_store1_noabort(i32 %291)
  store i8 0, ptr %reason_explanation.i.i92.i, align 2
  %vendor7.i.i93.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %213, i32 0, i32 3, i32 5
  %292 = ptrtoint ptr %vendor7.i.i93.i to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 0, ptr %vendor7.i.i93.i, align 1
  %293 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %add.ptr, align 8
  %rsplen.i94.i = getelementptr inbounds %struct.nvmefc_ls_rsp, ptr %294, i32 0, i32 2
  %295 = ptrtoint ptr %rsplen.i94.i to i32
  call void @__asan_store2_noabort(i32 %295)
  store i16 40, ptr %rsplen.i94.i, align 4
  br label %if.then.i

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %296 = ptrtoint ptr %rspbuf.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %rspbuf.i, align 8
  %298 = ptrtoint ptr %297 to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 1, ptr %297, align 4
  %desc_list_len.i.i100.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %297, i32 0, i32 1
  %299 = ptrtoint ptr %desc_list_len.i.i100.i to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 32, ptr %desc_list_len.i.i100.i, align 4
  %rqst.i.i101.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %297, i32 0, i32 2
  %300 = ptrtoint ptr %rqst.i.i101.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 1, ptr %rqst.i.i101.i, align 4
  %desc_len3.i.i102.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %297, i32 0, i32 2, i32 1
  %301 = ptrtoint ptr %desc_len3.i.i102.i to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 8, ptr %desc_len3.i.i102.i, align 4
  %w05.i.i103.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %297, i32 0, i32 2, i32 2
  %302 = ptrtoint ptr %w05.i.i103.i to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 %21, ptr %w05.i.i103.i, align 4
  %rjt1.i.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %297, i32 0, i32 3
  %303 = ptrtoint ptr %rjt1.i.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 2, ptr %rjt1.i.i, align 4
  %desc_len.i104.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %297, i32 0, i32 3, i32 1
  %304 = ptrtoint ptr %desc_len.i104.i to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 8, ptr %desc_len.i104.i, align 4
  %reason_code.i.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %297, i32 0, i32 3, i32 3
  %305 = ptrtoint ptr %reason_code.i.i to i32
  call void @__asan_store1_noabort(i32 %305)
  store i8 1, ptr %reason_code.i.i, align 1
  %reason_explanation.i.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %297, i32 0, i32 3, i32 4
  %306 = ptrtoint ptr %reason_explanation.i.i to i32
  call void @__asan_store1_noabort(i32 %306)
  store i8 0, ptr %reason_explanation.i.i, align 2
  %vendor7.i.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %297, i32 0, i32 3, i32 5
  %307 = ptrtoint ptr %vendor7.i.i to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 0, ptr %vendor7.i.i, align 1
  %308 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %add.ptr, align 8
  %rsplen15.i = getelementptr inbounds %struct.nvmefc_ls_rsp, ptr %309, i32 0, i32 2
  %310 = ptrtoint ptr %rsplen15.i to i32
  call void @__asan_store2_noabort(i32 %310)
  store i16 40, ptr %rsplen15.i, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %sw.default.i, %nvmet_fc_ls_disconnect.exit.i, %if.end67.i.i, %do.end.i67.i, %if.end45.i.i, %do.end.i.i
  %dev.i105.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %1, i32 0, i32 2
  %311 = ptrtoint ptr %dev.i105.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %dev.i105.i, align 8
  %tobool.not.i.i106.i = icmp eq ptr %312, null
  br i1 %tobool.not.i.i106.i, label %if.then.i.fc_dma_sync_single_for_device.exit.i.i_crit_edge, label %if.then.i.i107.i

if.then.i.fc_dma_sync_single_for_device.exit.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fc_dma_sync_single_for_device.exit.i.i

if.then.i.i107.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %313 = ptrtoint ptr %rspdma.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %rspdma.i, align 8
  call void @dma_sync_single_for_device(ptr noundef nonnull %312, i32 noundef %314, i32 noundef 128, i32 noundef 1) #12
  br label %fc_dma_sync_single_for_device.exit.i.i

fc_dma_sync_single_for_device.exit.i.i:           ; preds = %if.then.i.i107.i, %if.then.i.fc_dma_sync_single_for_device.exit.i.i_crit_edge
  %ops.i.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %1, i32 0, i32 3
  %315 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %ops.i.i, align 4
  %xmt_ls_rsp.i.i = getelementptr inbounds %struct.nvmet_fc_target_template, ptr %316, i32 0, i32 1
  %317 = ptrtoint ptr %xmt_ls_rsp.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %xmt_ls_rsp.i.i, align 4
  %319 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %add.ptr, align 8
  %call.i108.i = call i32 %318(ptr noundef %1, ptr noundef %320) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108.i)
  %tobool.not.i109.i = icmp eq i32 %call.i108.i, 0
  br i1 %tobool.not.i109.i, label %fc_dma_sync_single_for_device.exit.i.i.nvmet_fc_handle_ls_rqst.exit_crit_edge, label %if.then.i.i

fc_dma_sync_single_for_device.exit.i.i.nvmet_fc_handle_ls_rqst.exit_crit_edge: ; preds = %fc_dma_sync_single_for_device.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_handle_ls_rqst.exit

if.then.i.i:                                      ; preds = %fc_dma_sync_single_for_device.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %321 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %add.ptr, align 8
  call void @nvmet_fc_xmt_ls_rsp_done(ptr noundef %322) #12
  br label %nvmet_fc_handle_ls_rqst.exit

nvmet_fc_handle_ls_rqst.exit:                     ; preds = %if.then.i.i, %fc_dma_sync_single_for_device.exit.i.i.nvmet_fc_handle_ls_rqst.exit_crit_edge, %if.then.i.i.i, %fc_dma_sync_single_for_device.exit.i.i.i.nvmet_fc_handle_ls_rqst.exit_crit_edge, %if.end13.i.i.nvmet_fc_handle_ls_rqst.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_fc_xmt_ls_rsp_done(ptr nocapture noundef readonly %lsrsp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nvme_fc_private = getelementptr inbounds %struct.nvmefc_ls_rsp, ptr %lsrsp, i32 0, i32 4
  %0 = ptrtoint ptr %nvme_fc_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nvme_fc_private, align 4
  %tgtport1 = getelementptr inbounds %struct.nvmet_fc_ls_iod, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %tgtport1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tgtport1, align 8
  %dev = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.fc_dma_sync_single_for_cpu.exit_crit_edge, label %if.then.i

entry.fc_dma_sync_single_for_cpu.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %fc_dma_sync_single_for_cpu.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %rspdma = getelementptr inbounds %struct.nvmet_fc_ls_iod, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %rspdma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rspdma, align 8
  tail call void @dma_sync_single_for_cpu(ptr noundef nonnull %5, i32 noundef %7, i32 noundef 128, i32 noundef 1) #12
  br label %fc_dma_sync_single_for_cpu.exit

fc_dma_sync_single_for_cpu.exit:                  ; preds = %if.then.i, %entry.fc_dma_sync_single_for_cpu.exit_crit_edge
  %lock.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %3, i32 0, i32 5
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %ls_rcv_list.i = getelementptr inbounds %struct.nvmet_fc_ls_iod, ptr %1, i32 0, i32 2
  %ls_rcv_list5.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %3, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ls_rcv_list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %fc_dma_sync_single_for_cpu.exit.__list_del_entry.exit.i.i_crit_edge

fc_dma_sync_single_for_cpu.exit.__list_del_entry.exit.i.i_crit_edge: ; preds = %fc_dma_sync_single_for_cpu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %fc_dma_sync_single_for_cpu.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.nvmet_fc_ls_iod, ptr %1, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i.i, align 4
  %10 = ptrtoint ptr %ls_rcv_list.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ls_rcv_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %fc_dma_sync_single_for_cpu.exit.__list_del_entry.exit.i.i_crit_edge
  %14 = ptrtoint ptr %ls_rcv_list5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ls_rcv_list5.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ls_rcv_list.i, ptr noundef %ls_rcv_list5.i, ptr noundef %15) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.nvmet_fc_free_ls_iod.exit_crit_edge

__list_del_entry.exit.i.i.nvmet_fc_free_ls_iod.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_free_ls_iod.exit

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %ls_rcv_list.i, ptr %prev1.i.i2.i.i, align 4
  %17 = ptrtoint ptr %ls_rcv_list.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %ls_rcv_list.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.nvmet_fc_ls_iod, ptr %1, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %ls_rcv_list5.i, ptr %prev3.i.i.i.i, align 4
  %19 = ptrtoint ptr %ls_rcv_list5.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %ls_rcv_list.i, ptr %ls_rcv_list5.i, align 4
  br label %nvmet_fc_free_ls_iod.exit

nvmet_fc_free_ls_iod.exit:                        ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.nvmet_fc_free_ls_iod.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #12
  tail call fastcc void @nvmet_fc_tgtport_put(ptr noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nvmet_fc_alloc_target_queue(ptr noundef %assoc, i16 noundef zeroext %qid, i16 noundef zeroext %sqsize) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %qid to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %qid)
  %cmp = icmp ugt i16 %qid, 128
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end8.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  %conv2 = zext i16 %sqsize to i32
  %0 = mul nuw nsw i32 %conv2, 608
  %1 = add nuw nsw i32 %0, 256
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %1, i32 noundef 3520) #15
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end5

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end8.i.i
  %call6 = tail call fastcc i32 @nvmet_fc_tgt_a_get(ptr noundef %assoc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.out_free_queue_crit_edge, label %if.end9

if.end5.out_free_queue_crit_edge:                 ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_queue

if.end9:                                          ; preds = %if.end5
  %tgtport = getelementptr inbounds %struct.nvmet_fc_tgt_assoc, ptr %assoc, i32 0, i32 3
  %2 = ptrtoint ptr %tgtport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tgtport, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %a_id = getelementptr inbounds %struct.nvmet_fc_tgt_assoc, ptr %assoc, i32 0, i32 1
  %6 = ptrtoint ptr %a_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %a_id, align 8
  %call11 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.31, i32 noundef 0, i32 noundef 0, i32 noundef %5, i32 noundef %7, i32 noundef %conv) #12
  %work_q = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %call9.i.i, i32 0, i32 16
  %8 = ptrtoint ptr %work_q to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call11, ptr %work_q, align 16
  %tobool13.not = icmp eq ptr %call11, null
  br i1 %tobool13.not, label %if.end9.out_a_put_crit_edge, label %if.end15

if.end9.out_a_put_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_a_put

if.end15:                                         ; preds = %if.end9
  %qid16 = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %call9.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %qid16 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %qid, ptr %qid16, align 2
  %sqsize17 = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %call9.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %sqsize17 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %sqsize, ptr %sqsize17, align 4
  %assoc18 = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %call9.i.i, i32 0, i32 12
  %11 = ptrtoint ptr %assoc18 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %assoc, ptr %assoc18, align 4
  %fod_list = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %call9.i.i, i32 0, i32 13
  %12 = ptrtoint ptr %fod_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %fod_list, ptr %fod_list, align 8
  %prev.i = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %call9.i.i, i32 0, i32 13, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %fod_list, ptr %prev.i, align 4
  %avail_defer_list = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %call9.i.i, i32 0, i32 15
  %14 = ptrtoint ptr %avail_defer_list to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %avail_defer_list, ptr %avail_defer_list, align 8
  %prev.i134 = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %call9.i.i, i32 0, i32 15, i32 1
  %15 = ptrtoint ptr %prev.i134 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %avail_defer_list, ptr %prev.i134, align 4
  %pending_cmd_list = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %call9.i.i, i32 0, i32 14
  %16 = ptrtoint ptr %pending_cmd_list to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %pending_cmd_list, ptr %pending_cmd_list, align 32
  %prev.i135 = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %call9.i.i, i32 0, i32 14, i32 1
  %17 = ptrtoint ptr %prev.i135 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %pending_cmd_list, ptr %prev.i135, align 4
  %connected = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %call9.i.i, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %connected, i32 noundef 4) #12
  %18 = ptrtoint ptr %connected to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 0, ptr %connected, align 4
  %sqtail = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %call9.i.i, i32 0, i32 6
  %call.i.i131 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sqtail, i32 noundef 4) #12
  %19 = ptrtoint ptr %sqtail to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 0, ptr %sqtail, align 16
  %rsn = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %call9.i.i, i32 0, i32 8
  %call.i.i132 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rsn, i32 noundef 4) #12
  %20 = ptrtoint ptr %rsn to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 1, ptr %rsn, align 8
  %zrspcnt = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %call9.i.i, i32 0, i32 7
  %call.i.i133 = tail call zeroext i1 @__kasan_check_write(ptr noundef %zrspcnt, i32 noundef 4) #12
  %21 = ptrtoint ptr %zrspcnt to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 0, ptr %zrspcnt, align 4
  %qlock = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %call9.i.i, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %qlock, ptr noundef nonnull @.str.32, ptr noundef nonnull @nvmet_fc_alloc_target_queue.__key, i16 noundef signext 3) #12
  %ref = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %call9.i.i, i32 0, i32 17
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #12
  %22 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 1, ptr %ref, align 4
  %23 = ptrtoint ptr %tgtport to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tgtport, align 8
  %25 = ptrtoint ptr %sqsize17 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %sqsize17, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp86.not.i = icmp eq i16 %26, 0
  br i1 %cmp86.not.i, label %if.end15.nvmet_fc_prep_fcp_iodlist.exit_crit_edge, label %do.body.lr.ph.i

if.end15.nvmet_fc_prep_fcp_iodlist.exit_crit_edge: ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_prep_fcp_iodlist.exit

do.body.lr.ph.i:                                  ; preds = %if.end15
  %fod1.i = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %call9.i.i, i32 0, i32 19
  %dev.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %24, i32 0, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %for.inc28.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %fod.089.i = phi ptr [ %fod1.i, %do.body.lr.ph.i ], [ %incdec.ptr29.i, %for.inc28.i.do.body.i_crit_edge ]
  %i.087.i = phi i32 [ 0, %do.body.lr.ph.i ], [ %inc.i, %for.inc28.i.do.body.i_crit_edge ]
  %defer_work.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod.089.i, i32 0, i32 15
  tail call void @__init_work(ptr noundef %defer_work.i, i32 noundef 0) #12
  %27 = ptrtoint ptr %defer_work.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -64, ptr %defer_work.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod.089.i, i32 0, i32 15, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @nvmet_fc_prep_fcp_iodlist.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry6.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod.089.i, i32 0, i32 15, i32 1
  %28 = ptrtoint ptr %entry6.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %entry6.i, ptr %entry6.i, align 4
  %prev.i.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod.089.i, i32 0, i32 15, i32 1, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %entry6.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod.089.i, i32 0, i32 15, i32 2
  %30 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @nvmet_fc_fcp_rqst_op_defer_work, ptr %func.i, align 4
  %tgtport8.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod.089.i, i32 0, i32 16
  %31 = ptrtoint ptr %tgtport8.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %24, ptr %tgtport8.i, align 4
  %queue9.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod.089.i, i32 0, i32 17
  %32 = ptrtoint ptr %queue9.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call9.i.i, ptr %queue9.i, align 8
  %active.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod.089.i, i32 0, i32 9
  %33 = ptrtoint ptr %active.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %active.i, align 8
  %abort.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod.089.i, i32 0, i32 10
  %34 = ptrtoint ptr %abort.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %abort.i, align 1
  %aborted.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod.089.i, i32 0, i32 11
  %35 = ptrtoint ptr %aborted.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %aborted.i, align 2
  %36 = ptrtoint ptr %fod.089.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %fod.089.i, align 8
  %fcp_list.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod.089.i, i32 0, i32 18
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %fcp_list.i, ptr noundef %38, ptr noundef %fod_list) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.body.i.list_add_tail.exit.i_crit_edge

do.body.i.list_add_tail.exit.i_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %fcp_list.i, ptr %prev.i, align 4
  %40 = ptrtoint ptr %fcp_list.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %fod_list, ptr %fcp_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod.089.i, i32 0, i32 18, i32 1
  %41 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev3.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %fcp_list.i, ptr %38, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.body.i.list_add_tail.exit.i_crit_edge
  %flock.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod.089.i, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %flock.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @nvmet_fc_prep_fcp_iodlist.__key.34, i16 noundef signext 3) #12
  %43 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i, align 8
  %rspiubuf.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod.089.i, i32 0, i32 2
  %tobool.not.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i.i, label %list_add_tail.exit.i.fc_dma_map_single.exit.i_crit_edge, label %cond.true.i.i

list_add_tail.exit.i.fc_dma_map_single.exit.i_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fc_dma_map_single.exit.i

cond.true.i.i:                                    ; preds = %list_add_tail.exit.i
  %call.i.i65.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %rspiubuf.i) #12
  br i1 %call.i.i65.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %cond.true.i.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.fc_dma_map_single.exit.i_crit_edge, label %if.then.i.i.i, !prof !263

land.rhs.i.i.i.fc_dma_map_single.exit.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fc_dma_map_single.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = tail call ptr @dev_driver_string(ptr noundef nonnull %44) #12
  %init_name.i.i.i.i = getelementptr inbounds %struct.device, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %46, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i.i.dev_name.exit.i.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %44, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %48, %if.end.i.i.i.i ], [ %46, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.82, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.83, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #12
  br label %fc_dma_map_single.exit.i

if.end39.i.i.i:                                   ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @debug_dma_map_single(ptr noundef nonnull %44, ptr noundef %rspiubuf.i, i32 noundef 32) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %49 = load ptr, ptr @mem_map, align 4
  %50 = ptrtoint ptr %rspiubuf.i to i32
  %sub.i.i.i = add i32 %50, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %49, i32 %shr.i.i.i
  %and.i.i.i = and i32 %50, 4095
  %call41.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef nonnull %44, ptr noundef %add.ptr.i.i.i, i32 noundef %and.i.i.i, i32 noundef 32, i32 noundef 1, i32 noundef 0) #12
  br label %fc_dma_map_single.exit.i

fc_dma_map_single.exit.i:                         ; preds = %if.end39.i.i.i, %dev_name.exit.i.i.i, %land.rhs.i.i.i.fc_dma_map_single.exit.i_crit_edge, %list_add_tail.exit.i.fc_dma_map_single.exit.i_crit_edge
  %cond.i.i = phi i32 [ 0, %list_add_tail.exit.i.fc_dma_map_single.exit.i_crit_edge ], [ %call41.i.i.i, %if.end39.i.i.i ], [ -1, %dev_name.exit.i.i.i ], [ -1, %land.rhs.i.i.i.fc_dma_map_single.exit.i_crit_edge ]
  %rspdma.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod.089.i, i32 0, i32 3
  %51 = ptrtoint ptr %rspdma.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %cond.i.i, ptr %rspdma.i, align 8
  %52 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i, align 8
  %tobool.not.i66.i = icmp eq ptr %53, null
  br i1 %tobool.not.i66.i, label %fc_dma_map_single.exit.i.for.inc28.i_crit_edge, label %cond.true.i67.i

fc_dma_map_single.exit.i.for.inc28.i_crit_edge:   ; preds = %fc_dma_map_single.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc28.i

cond.true.i67.i:                                  ; preds = %fc_dma_map_single.exit.i
  tail call void @debug_dma_mapping_error(ptr noundef nonnull %53, i32 noundef %cond.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond.i.i)
  %cmp.i.i.i = icmp eq i32 %cond.i.i, -1
  br i1 %cmp.i.i.i, label %if.then.i, label %cond.true.i67.i.for.inc28.i_crit_edge

cond.true.i67.i.for.inc28.i_crit_edge:            ; preds = %cond.true.i67.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc28.i

if.then.i:                                        ; preds = %cond.true.i67.i
  %call.i.i69.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %fcp_list.i) #12
  br i1 %call.i.i69.i, label %if.end.i.i70.i, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i70.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod.089.i, i32 0, i32 18, i32 1
  %54 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i.i.i, align 4
  %56 = ptrtoint ptr %fcp_list.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %fcp_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev1.i.i.i.i, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %57, ptr %55, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i70.i, %if.then.i.list_del.exit.i_crit_edge
  %60 = ptrtoint ptr %fcp_list.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr inttoptr (i32 256 to ptr), ptr %fcp_list.i, align 4
  %prev.i71.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod.089.i, i32 0, i32 18, i32 1
  %61 = ptrtoint ptr %prev.i71.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i71.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.087.i)
  %cmp1992.not.i = icmp eq i32 %i.087.i, 0
  br i1 %cmp1992.not.i, label %list_del.exit.i.nvmet_fc_prep_fcp_iodlist.exit_crit_edge, label %list_del.exit.i.for.body21.i_crit_edge

list_del.exit.i.for.body21.i_crit_edge:           ; preds = %list_del.exit.i
  br label %for.body21.i

list_del.exit.i.nvmet_fc_prep_fcp_iodlist.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_prep_fcp_iodlist.exit

for.body21.i:                                     ; preds = %list_del.exit78.i.for.body21.i_crit_edge, %list_del.exit.i.for.body21.i_crit_edge
  %i.195.in.i = phi i32 [ %i.195.i, %list_del.exit78.i.for.body21.i_crit_edge ], [ %i.087.i, %list_del.exit.i.for.body21.i_crit_edge ]
  %fod.0.pn93.i = phi ptr [ %fod.1.i, %list_del.exit78.i.for.body21.i_crit_edge ], [ %fod.089.i, %list_del.exit.i.for.body21.i_crit_edge ]
  %i.195.i = add nsw i32 %i.195.in.i, -1
  %fod.1.i = getelementptr %struct.nvmet_fc_fcp_iod, ptr %fod.0.pn93.i, i32 -1
  %62 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i, align 8
  %rspdma23.i = getelementptr %struct.nvmet_fc_fcp_iod, ptr %fod.0.pn93.i, i32 -1, i32 3
  %tobool.not.i72.i = icmp eq ptr %63, null
  br i1 %tobool.not.i72.i, label %for.body21.i.fc_dma_unmap_single.exit.i_crit_edge, label %if.then.i.i136

for.body21.i.fc_dma_unmap_single.exit.i_crit_edge: ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fc_dma_unmap_single.exit.i

if.then.i.i136:                                   ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #14
  %64 = ptrtoint ptr %rspdma23.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rspdma23.i, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef nonnull %63, i32 noundef %65, i32 noundef 32, i32 noundef 1, i32 noundef 0) #12
  br label %fc_dma_unmap_single.exit.i

fc_dma_unmap_single.exit.i:                       ; preds = %if.then.i.i136, %for.body21.i.fc_dma_unmap_single.exit.i_crit_edge
  %66 = ptrtoint ptr %rspdma23.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %rspdma23.i, align 8
  %fcp_list25.i = getelementptr %struct.nvmet_fc_fcp_iod, ptr %fod.0.pn93.i, i32 -1, i32 18
  %call.i.i73.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %fcp_list25.i) #12
  br i1 %call.i.i73.i, label %if.end.i.i76.i, label %fc_dma_unmap_single.exit.i.list_del.exit78.i_crit_edge

fc_dma_unmap_single.exit.i.list_del.exit78.i_crit_edge: ; preds = %fc_dma_unmap_single.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit78.i

if.end.i.i76.i:                                   ; preds = %fc_dma_unmap_single.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i74.i = getelementptr %struct.nvmet_fc_fcp_iod, ptr %fod.0.pn93.i, i32 -1, i32 18, i32 1
  %67 = ptrtoint ptr %prev.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prev.i.i74.i, align 4
  %69 = ptrtoint ptr %fcp_list25.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %fcp_list25.i, align 4
  %prev1.i.i.i75.i = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %prev1.i.i.i75.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %68, ptr %prev1.i.i.i75.i, align 4
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %70, ptr %68, align 4
  br label %list_del.exit78.i

list_del.exit78.i:                                ; preds = %if.end.i.i76.i, %fc_dma_unmap_single.exit.i.list_del.exit78.i_crit_edge
  %73 = ptrtoint ptr %fcp_list25.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr inttoptr (i32 256 to ptr), ptr %fcp_list25.i, align 4
  %prev.i77.i = getelementptr %struct.nvmet_fc_fcp_iod, ptr %fod.0.pn93.i, i32 -1, i32 18, i32 1
  %74 = ptrtoint ptr %prev.i77.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i77.i, align 4
  %cmp19.i = icmp sgt i32 %i.195.in.i, 1
  br i1 %cmp19.i, label %list_del.exit78.i.for.body21.i_crit_edge, label %list_del.exit78.i.nvmet_fc_prep_fcp_iodlist.exit_crit_edge

list_del.exit78.i.nvmet_fc_prep_fcp_iodlist.exit_crit_edge: ; preds = %list_del.exit78.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_prep_fcp_iodlist.exit

list_del.exit78.i.for.body21.i_crit_edge:         ; preds = %list_del.exit78.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body21.i

for.inc28.i:                                      ; preds = %cond.true.i67.i.for.inc28.i_crit_edge, %fc_dma_map_single.exit.i.for.inc28.i_crit_edge
  %incdec.ptr29.i = getelementptr %struct.nvmet_fc_fcp_iod, ptr %fod.089.i, i32 1
  %inc.i = add nuw nsw i32 %i.087.i, 1
  %75 = ptrtoint ptr %sqsize17 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %sqsize17, align 4
  %conv.i = zext i16 %76 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc28.i.do.body.i_crit_edge, label %for.inc28.i.nvmet_fc_prep_fcp_iodlist.exit_crit_edge

for.inc28.i.nvmet_fc_prep_fcp_iodlist.exit_crit_edge: ; preds = %for.inc28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_prep_fcp_iodlist.exit

for.inc28.i.do.body.i_crit_edge:                  ; preds = %for.inc28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

nvmet_fc_prep_fcp_iodlist.exit:                   ; preds = %for.inc28.i.nvmet_fc_prep_fcp_iodlist.exit_crit_edge, %list_del.exit78.i.nvmet_fc_prep_fcp_iodlist.exit_crit_edge, %list_del.exit.i.nvmet_fc_prep_fcp_iodlist.exit_crit_edge, %if.end15.nvmet_fc_prep_fcp_iodlist.exit_crit_edge
  %nvme_sq = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %call9.i.i, i32 0, i32 11
  %call21 = tail call i32 @nvmet_sq_init(ptr noundef %nvme_sq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %out_fail_iodlist

if.end24:                                         ; preds = %nvmet_fc_prep_fcp_iodlist.exit
  %arrayidx = getelementptr %struct.nvmet_fc_tgt_assoc, ptr %assoc, i32 0, i32 7, i32 %conv
  %77 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx, align 4
  %tobool25.not = icmp eq ptr %78, null
  br i1 %tobool25.not, label %if.end24.if.end43_crit_edge, label %do.end37, !prof !263

if.end24.if.end43_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

do.end37:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 832, i32 noundef 9, ptr noundef null) #12
  br label %if.end43

if.end43:                                         ; preds = %do.end37, %if.end24.if.end43_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !275
  %79 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %call9.i.i, ptr %arrayidx, align 4
  br label %cleanup

out_fail_iodlist:                                 ; preds = %nvmet_fc_prep_fcp_iodlist.exit
  %80 = ptrtoint ptr %sqsize17 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %sqsize17, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %cmp9.not.i = icmp eq i16 %81, 0
  br i1 %cmp9.not.i, label %out_fail_iodlist.nvmet_fc_destroy_fcp_iodlist.exit_crit_edge, label %for.body.lr.ph.i

out_fail_iodlist.nvmet_fc_destroy_fcp_iodlist.exit_crit_edge: ; preds = %out_fail_iodlist
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_destroy_fcp_iodlist.exit

for.body.lr.ph.i:                                 ; preds = %out_fail_iodlist
  %82 = ptrtoint ptr %tgtport to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %tgtport, align 8
  %fod1.i138 = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %call9.i.i, i32 0, i32 19
  %dev.i139 = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %83, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i144, %for.inc.i.for.body.i_crit_edge ]
  %fod.010.i = phi ptr [ %fod1.i138, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %rspdma.i140 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod.010.i, i32 0, i32 3
  %84 = ptrtoint ptr %rspdma.i140 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %rspdma.i140, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.not.i = icmp eq i32 %85, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i142

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i142:                                     ; preds = %for.body.i
  %86 = ptrtoint ptr %dev.i139 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev.i139, align 8
  %tobool.not.i.i141 = icmp eq ptr %87, null
  br i1 %tobool.not.i.i141, label %if.then.i142.for.inc.i_crit_edge, label %if.then.i.i143

if.then.i142.for.inc.i_crit_edge:                 ; preds = %if.then.i142
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i.i143:                                   ; preds = %if.then.i142
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dma_unmap_page_attrs(ptr noundef nonnull %87, i32 noundef %85, i32 noundef 32, i32 noundef 1, i32 noundef 0) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.i143, %if.then.i142.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.nvmet_fc_fcp_iod, ptr %fod.010.i, i32 1
  %inc.i144 = add nuw nsw i32 %i.011.i, 1
  %88 = ptrtoint ptr %sqsize17 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %sqsize17, align 4
  %conv.i145 = zext i16 %89 to i32
  %cmp.i146 = icmp ult i32 %inc.i144, %conv.i145
  br i1 %cmp.i146, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.nvmet_fc_destroy_fcp_iodlist.exit_crit_edge

for.inc.i.nvmet_fc_destroy_fcp_iodlist.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_destroy_fcp_iodlist.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

nvmet_fc_destroy_fcp_iodlist.exit:                ; preds = %for.inc.i.nvmet_fc_destroy_fcp_iodlist.exit_crit_edge, %out_fail_iodlist.nvmet_fc_destroy_fcp_iodlist.exit_crit_edge
  %90 = ptrtoint ptr %work_q to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %work_q, align 16
  tail call void @destroy_workqueue(ptr noundef %91) #12
  br label %out_a_put

out_a_put:                                        ; preds = %nvmet_fc_destroy_fcp_iodlist.exit, %if.end9.out_a_put_crit_edge
  tail call fastcc void @nvmet_fc_tgt_a_put(ptr noundef %assoc)
  br label %out_free_queue

out_free_queue:                                   ; preds = %out_a_put, %if.end5.out_free_queue_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out_free_queue, %if.end43, %if.end8.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %out_free_queue ], [ %call9.i.i, %if.end43 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end8.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_fc_delete_assoc(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -556
  tail call fastcc void @nvmet_fc_delete_target_assoc(ptr noundef %add.ptr)
  tail call fastcc void @nvmet_fc_tgt_a_put(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nvmet_fc_match_hostport(ptr noundef %tgtport, ptr noundef readnone %hosthandle) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %tgtport, i32 0, i32 5, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !270

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1028, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %host_list = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %tgtport, i32 0, i32 10
  %1 = ptrtoint ptr %host_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn54 = load ptr, ptr %host_list, align 4
  %cmp27.not55 = icmp eq ptr %.pn54, %host_list
  br i1 %cmp27.not55, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn56 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn54, %if.end.for.body_crit_edge ]
  %hosthandle30 = getelementptr i8, ptr %.pn56, i32 -4
  %2 = ptrtoint ptr %hosthandle30 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hosthandle30, align 4
  %cmp31 = icmp eq ptr %3, %hosthandle
  br i1 %cmp31, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %invalid = getelementptr i8, ptr %.pn56, i32 12
  %4 = ptrtoint ptr %invalid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %invalid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool32.not = icmp eq i8 %5, 0
  br i1 %tobool32.not, label %if.then33, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then33:                                        ; preds = %land.lhs.true
  %ref.i = getelementptr i8, ptr %.pn56, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #12
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ref.i, i32 noundef 4) #12
  %6 = ptrtoint ptr %ref.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %ref.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %if.then33
  %8 = phi i32 [ %7, %if.then33 ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %9 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %8, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #12
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #12
  %10 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %12 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 %11, i32 %add.i.i.i.i.i, ptr elementtype(i32) %ref.i) #12, !srcloc !264
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %11
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !263

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %13 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %14, 1
  %15 = or i32 %add5.i.i.i.i.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.nvmet_fc_hostport_get.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !263

if.end4.i.i.i.i.i.nvmet_fc_hostport_get.exit_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_hostport_get.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 0) #12
  %16 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %old.i.i.i.i.i, align 4
  br label %nvmet_fc_hostport_get.exit

nvmet_fc_hostport_get.exit:                       ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.nvmet_fc_hostport_get.exit_crit_edge
  %17 = phi i32 [ %14, %if.end4.i.i.i.i.i.nvmet_fc_hostport_get.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.i.i.i.i.i.not = icmp eq i32 %17, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #12
  br i1 %tobool12.i.i.i.i.i.not, label %nvmet_fc_hostport_get.exit.for.inc_crit_edge, label %cleanup.split.loop.exit52

nvmet_fc_hostport_get.exit.for.inc_crit_edge:     ; preds = %nvmet_fc_hostport_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %nvmet_fc_hostport_get.exit.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %18 = ptrtoint ptr %.pn56 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn = load ptr, ptr %.pn56, align 4
  %cmp27.not = icmp eq ptr %.pn, %host_list
  br i1 %cmp27.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.split.loop.exit52:                        ; preds = %nvmet_fc_hostport_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  %host.0.le = getelementptr i8, ptr %.pn56, i32 -8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit52, %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %host.0.le, %cleanup.split.loop.exit52 ], [ null, %if.end.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvmet_fc_delete_target_assoc(ptr noundef %assoc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tgtport1 = getelementptr inbounds %struct.nvmet_fc_tgt_assoc, ptr %assoc, i32 0, i32 3
  %0 = ptrtoint ptr %tgtport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tgtport1, align 8
  %terminating2 = getelementptr inbounds %struct.nvmet_fc_tgt_assoc, ptr %assoc, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %terminating2, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !276
  tail call void @llvm.prefetch.p0(ptr %terminating2, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %terminating2) #12, !srcloc !277
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !278
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.071 = phi i32 [ %dec, %for.inc.for.body_crit_edge ], [ 128, %entry.for.body_crit_edge ]
  %3 = tail call i32 @llvm.read_register.i32(metadata !253) #12
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !268
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %for.body.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

for.body.rcu_read_lock.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %for.body
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 696, ptr noundef nonnull @.str.29) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %for.body.rcu_read_lock.exit_crit_edge
  %arrayidx = getelementptr %struct.nvmet_fc_tgt_assoc, ptr %assoc, i32 0, i32 7, i32 %i.071
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %arrayidx, align 4
  %call4 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end13_crit_edge

rcu_read_lock.exit.do.end13_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end13_crit_edge, label %land.lhs.true8

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b38 = load i1, ptr @nvmet_fc_delete_target_assoc.__warned, align 1
  br i1 %.b38, label %land.lhs.true8.do.end13_crit_edge, label %if.then10

land.lhs.true8.do.end13_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nvmet_fc_delete_target_assoc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1222, ptr noundef nonnull @.str.25) #12
  br label %do.end13

do.end13:                                         ; preds = %if.then10, %land.lhs.true8.do.end13_crit_edge, %land.lhs.true.do.end13_crit_edge, %rcu_read_lock.exit.do.end13_crit_edge
  %tobool15.not = icmp eq ptr %8, null
  br i1 %tobool15.not, label %if.then16, label %if.end17

if.then16:                                        ; preds = %do.end13
  %call.i39 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i39, label %if.then16.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i42

if.then16.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i42:                                ; preds = %if.then16
  %call1.i40 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i40)
  %tobool.not.i41 = icmp eq i32 %call1.i40, 0
  br i1 %tobool.not.i41, label %land.lhs.true.i42.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i44

land.lhs.true.i42.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i42
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i44:                               ; preds = %land.lhs.true.i42
  %.b4.i43 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i43, label %land.lhs.true2.i44.rcu_read_unlock.exit_crit_edge, label %if.then.i45

land.lhs.true2.i44.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i44
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i45:                                      ; preds = %land.lhs.true2.i44
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 724, ptr noundef nonnull @.str.30) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i45, %land.lhs.true2.i44.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i42.rcu_read_unlock.exit_crit_edge, %if.then16.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !269
  %9 = tail call i32 @llvm.read_register.i32(metadata !253) #12
  %and.i.i.i.i.i46 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i46 to ptr
  %preempt_count.i.i.i.i47 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i47, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i47, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %for.inc

if.end17:                                         ; preds = %do.end13
  %call18 = tail call fastcc i32 @nvmet_fc_tgt_q_get(ptr noundef nonnull %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  %call.i48 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %tobool19.not, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end17
  br i1 %call.i48, label %if.then20.rcu_read_unlock.exit58_crit_edge, label %land.lhs.true.i51

if.then20.rcu_read_unlock.exit58_crit_edge:       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit58

land.lhs.true.i51:                                ; preds = %if.then20
  %call1.i49 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i49)
  %tobool.not.i50 = icmp eq i32 %call1.i49, 0
  br i1 %tobool.not.i50, label %land.lhs.true.i51.rcu_read_unlock.exit58_crit_edge, label %land.lhs.true2.i53

land.lhs.true.i51.rcu_read_unlock.exit58_crit_edge: ; preds = %land.lhs.true.i51
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit58

land.lhs.true2.i53:                               ; preds = %land.lhs.true.i51
  %.b4.i52 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i52, label %land.lhs.true2.i53.rcu_read_unlock.exit58_crit_edge, label %if.then.i54

land.lhs.true2.i53.rcu_read_unlock.exit58_crit_edge: ; preds = %land.lhs.true2.i53
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit58

if.then.i54:                                      ; preds = %land.lhs.true2.i53
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 724, ptr noundef nonnull @.str.30) #12
  br label %rcu_read_unlock.exit58

rcu_read_unlock.exit58:                           ; preds = %if.then.i54, %land.lhs.true2.i53.rcu_read_unlock.exit58_crit_edge, %land.lhs.true.i51.rcu_read_unlock.exit58_crit_edge, %if.then20.rcu_read_unlock.exit58_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !269
  %13 = tail call i32 @llvm.read_register.i32(metadata !253) #12
  %and.i.i.i.i.i55 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i55 to ptr
  %preempt_count.i.i.i.i56 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i56, align 4
  %sub.i.i.i57 = add i32 %16, -1
  store volatile i32 %sub.i.i.i57, ptr %preempt_count.i.i.i.i56, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %for.inc

if.end21:                                         ; preds = %if.end17
  br i1 %call.i48, label %if.end21.rcu_read_unlock.exit69_crit_edge, label %land.lhs.true.i62

if.end21.rcu_read_unlock.exit69_crit_edge:        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit69

land.lhs.true.i62:                                ; preds = %if.end21
  %call1.i60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i60)
  %tobool.not.i61 = icmp eq i32 %call1.i60, 0
  br i1 %tobool.not.i61, label %land.lhs.true.i62.rcu_read_unlock.exit69_crit_edge, label %land.lhs.true2.i64

land.lhs.true.i62.rcu_read_unlock.exit69_crit_edge: ; preds = %land.lhs.true.i62
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit69

land.lhs.true2.i64:                               ; preds = %land.lhs.true.i62
  %.b4.i63 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i63, label %land.lhs.true2.i64.rcu_read_unlock.exit69_crit_edge, label %if.then.i65

land.lhs.true2.i64.rcu_read_unlock.exit69_crit_edge: ; preds = %land.lhs.true2.i64
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit69

if.then.i65:                                      ; preds = %land.lhs.true2.i64
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 724, ptr noundef nonnull @.str.30) #12
  br label %rcu_read_unlock.exit69

rcu_read_unlock.exit69:                           ; preds = %if.then.i65, %land.lhs.true2.i64.rcu_read_unlock.exit69_crit_edge, %land.lhs.true.i62.rcu_read_unlock.exit69_crit_edge, %if.end21.rcu_read_unlock.exit69_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !269
  %17 = tail call i32 @llvm.read_register.i32(metadata !253) #12
  %and.i.i.i.i.i66 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i66 to ptr
  %preempt_count.i.i.i.i67 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i67 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i67, align 4
  %sub.i.i.i68 = add i32 %20, -1
  store volatile i32 %sub.i.i.i68, ptr %preempt_count.i.i.i.i67, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %assoc.i = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %8, i32 0, i32 12
  %21 = ptrtoint ptr %assoc.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %assoc.i, align 4
  %tgtport1.i = getelementptr inbounds %struct.nvmet_fc_tgt_assoc, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %tgtport1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tgtport1.i, align 8
  %connected.i = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %8, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %connected.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !276
  tail call void @llvm.prefetch.p0(ptr %connected.i, i32 1, i32 3, i32 1) #12
  %25 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %connected.i) #12, !srcloc !277
  %asmresult.i.i.i = extractvalue { i32, i32 } %25, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !278
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %tobool.not.i70 = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i70, label %rcu_read_unlock.exit69.nvmet_fc_delete_target_queue.exit_crit_edge, label %do.body4.i

rcu_read_unlock.exit69.nvmet_fc_delete_target_queue.exit_crit_edge: ; preds = %rcu_read_unlock.exit69
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_delete_target_queue.exit

do.body4.i:                                       ; preds = %rcu_read_unlock.exit69
  %qlock.i = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %8, i32 0, i32 9
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock.i) #12
  %sqsize.i = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %8, i32 0, i32 2
  %26 = ptrtoint ptr %sqsize.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %sqsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp10139.not.i = icmp eq i16 %27, 0
  br i1 %cmp10139.not.i, label %do.body4.i.for.end.i_crit_edge, label %for.body.lr.ph.i

do.body4.i.for.end.i_crit_edge:                   ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %do.body4.i
  %fod2.i = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %8, i32 0, i32 19
  %ops.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %24, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %fod.0141.i = phi ptr [ %fod2.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %i.0140.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %active.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod.0141.i, i32 0, i32 9
  %28 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %active.i, align 8, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool12.not.i = icmp eq i8 %29, 0
  br i1 %tobool12.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then13.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then13.i:                                      ; preds = %for.body.i
  %flock.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod.0141.i, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %flock.i) #12
  %abort.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod.0141.i, i32 0, i32 10
  %30 = ptrtoint ptr %abort.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %abort.i, align 1
  %writedataactive.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod.0141.i, i32 0, i32 12
  %31 = ptrtoint ptr %writedataactive.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %writedataactive.i, align 1, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool14.not.i = icmp eq i8 %32, 0
  br i1 %tobool14.not.i, label %if.else.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #14
  %aborted.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod.0141.i, i32 0, i32 11
  %33 = ptrtoint ptr %aborted.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %aborted.i, align 2
  tail call void @_raw_spin_unlock(ptr noundef %flock.i) #12
  %34 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i, align 4
  %fcp_abort.i = getelementptr inbounds %struct.nvmet_fc_target_template, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %fcp_abort.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fcp_abort.i, align 4
  %38 = ptrtoint ptr %fod.0141.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fod.0141.i, align 8
  tail call void %37(ptr noundef %24, ptr noundef %39) #12
  br label %for.inc.i

if.else.i:                                        ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %flock.i) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then15.i, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.nvmet_fc_fcp_iod, ptr %fod.0141.i, i32 1
  %inc.i = add nuw nsw i32 %i.0140.i, 1
  %40 = ptrtoint ptr %sqsize.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %sqsize.i, align 4
  %conv9.i = zext i16 %41 to i32
  %cmp10.i = icmp ult i32 %inc.i, %conv9.i
  br i1 %cmp10.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.body4.i.for.end.i_crit_edge
  %avail_defer_list.i = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %8, i32 0, i32 15
  %42 = ptrtoint ptr %avail_defer_list.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %avail_defer_list.i, align 8
  %cmp28.not143.i = icmp eq ptr %43, %avail_defer_list.i
  br i1 %cmp28.not143.i, label %for.end.i.for.cond39.preheader.i_crit_edge, label %for.end.i.for.body30.i_crit_edge

for.end.i.for.body30.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body30.i

for.end.i.for.cond39.preheader.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond39.preheader.i

for.cond39.preheader.i:                           ; preds = %list_del.exit.i.for.cond39.preheader.i_crit_edge, %for.end.i.for.cond39.preheader.i_crit_edge
  %pending_cmd_list.i = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %8, i32 0, i32 14
  %44 = ptrtoint ptr %pending_cmd_list.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %pending_cmd_list.i, align 4
  %cmp46.not146.i = icmp eq ptr %45, %pending_cmd_list.i
  %tobool51.not137147.i = icmp eq ptr %45, null
  %tobool51.not148.i = or i1 %cmp46.not146.i, %tobool51.not137147.i
  br i1 %tobool51.not148.i, label %for.cond39.preheader.i.for.end79.i_crit_edge, label %if.end53.lr.ph.i

for.cond39.preheader.i.for.end79.i_crit_edge:     ; preds = %for.cond39.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end79.i

if.end53.lr.ph.i:                                 ; preds = %for.cond39.preheader.i
  %ops56.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %24, i32 0, i32 3
  br label %if.end53.i

for.body30.i:                                     ; preds = %list_del.exit.i.for.body30.i_crit_edge, %for.end.i.for.body30.i_crit_edge
  %deferfcp.0144.i = phi ptr [ %tempptr.0.i, %list_del.exit.i.for.body30.i_crit_edge ], [ %43, %for.end.i.for.body30.i_crit_edge ]
  %46 = ptrtoint ptr %deferfcp.0144.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %tempptr.0.i = load ptr, ptr %deferfcp.0144.i, align 4
  %call.i.i130.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %deferfcp.0144.i) #12
  br i1 %call.i.i130.i, label %if.end.i.i.i, label %for.body30.i.list_del.exit.i_crit_edge

for.body30.i.list_del.exit.i_crit_edge:           ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %deferfcp.0144.i, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i.i.i, align 4
  %49 = ptrtoint ptr %deferfcp.0144.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %deferfcp.0144.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev1.i.i.i.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %50, ptr %48, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body30.i.list_del.exit.i_crit_edge
  %53 = ptrtoint ptr %deferfcp.0144.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 256 to ptr), ptr %deferfcp.0144.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %deferfcp.0144.i, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %deferfcp.0144.i) #12
  %cmp28.not.i = icmp eq ptr %tempptr.0.i, %avail_defer_list.i
  br i1 %cmp28.not.i, label %list_del.exit.i.for.cond39.preheader.i_crit_edge, label %list_del.exit.i.for.body30.i_crit_edge

list_del.exit.i.for.body30.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body30.i

list_del.exit.i.for.cond39.preheader.i_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond39.preheader.i

if.end53.i:                                       ; preds = %list_del.exit136.i.if.end53.i_crit_edge, %if.end53.lr.ph.i
  %55 = phi ptr [ %45, %if.end53.lr.ph.i ], [ %83, %list_del.exit136.i.if.end53.i_crit_edge ]
  %flags.0149.i = phi i32 [ %call6.i, %if.end53.lr.ph.i ], [ %call74.i, %list_del.exit136.i.if.end53.i_crit_edge ]
  %call.i.i131.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %55) #12
  br i1 %call.i.i131.i, label %if.end.i.i134.i, label %if.end53.i.list_del.exit136.i_crit_edge

if.end53.i.list_del.exit136.i_crit_edge:          ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit136.i

if.end.i.i134.i:                                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i132.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev.i.i132.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev.i.i132.i, align 4
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %55, align 4
  %prev1.i.i.i133.i = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %prev1.i.i.i133.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev1.i.i.i133.i, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %59, ptr %57, align 4
  br label %list_del.exit136.i

list_del.exit136.i:                               ; preds = %if.end.i.i134.i, %if.end53.i.list_del.exit136.i_crit_edge
  %62 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr inttoptr (i32 256 to ptr), ptr %55, align 4
  %prev.i135.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %63 = ptrtoint ptr %prev.i135.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i135.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock.i, i32 noundef %flags.0149.i) #12
  %64 = ptrtoint ptr %ops56.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops56.i, align 4
  %defer_rcv.i = getelementptr inbounds %struct.nvmet_fc_target_template, ptr %65, i32 0, i32 5
  %66 = ptrtoint ptr %defer_rcv.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %defer_rcv.i, align 4
  %fcp_req.i = getelementptr inbounds %struct.nvmet_fc_defer_fcp_req, ptr %55, i32 0, i32 1
  %68 = ptrtoint ptr %fcp_req.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %fcp_req.i, align 4
  tail call void %67(ptr noundef %24, ptr noundef %69) #12
  %70 = ptrtoint ptr %ops56.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ops56.i, align 4
  %fcp_abort59.i = getelementptr inbounds %struct.nvmet_fc_target_template, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %fcp_abort59.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %fcp_abort59.i, align 4
  %74 = ptrtoint ptr %fcp_req.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %fcp_req.i, align 4
  tail call void %73(ptr noundef %24, ptr noundef %75) #12
  %76 = ptrtoint ptr %ops56.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ops56.i, align 4
  %fcp_req_release.i = getelementptr inbounds %struct.nvmet_fc_target_template, ptr %77, i32 0, i32 4
  %78 = ptrtoint ptr %fcp_req_release.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %fcp_req_release.i, align 8
  %80 = ptrtoint ptr %fcp_req.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %fcp_req.i, align 4
  tail call void %79(ptr noundef %24, ptr noundef %81) #12
  tail call fastcc void @nvmet_fc_tgt_q_put(ptr noundef nonnull %8) #12
  tail call void @kfree(ptr noundef nonnull %55) #12
  %call74.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock.i) #12
  %82 = ptrtoint ptr %pending_cmd_list.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile ptr, ptr %pending_cmd_list.i, align 4
  %cmp46.not.i = icmp eq ptr %83, %pending_cmd_list.i
  %tobool51.not137.i = icmp eq ptr %83, null
  %tobool51.not.i = or i1 %cmp46.not.i, %tobool51.not137.i
  br i1 %tobool51.not.i, label %list_del.exit136.i.for.end79.i_crit_edge, label %list_del.exit136.i.if.end53.i_crit_edge

list_del.exit136.i.if.end53.i_crit_edge:          ; preds = %list_del.exit136.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53.i

list_del.exit136.i.for.end79.i_crit_edge:         ; preds = %list_del.exit136.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end79.i

for.end79.i:                                      ; preds = %list_del.exit136.i.for.end79.i_crit_edge, %for.cond39.preheader.i.for.end79.i_crit_edge
  %flags.0.lcssa.i = phi i32 [ %call6.i, %for.cond39.preheader.i.for.end79.i_crit_edge ], [ %call74.i, %list_del.exit136.i.for.end79.i_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock.i, i32 noundef %flags.0.lcssa.i) #12
  %work_q.i = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %8, i32 0, i32 16
  %84 = ptrtoint ptr %work_q.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %work_q.i, align 8
  tail call void @flush_workqueue(ptr noundef %85) #12
  %nvme_sq.i = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %8, i32 0, i32 11
  tail call void @nvmet_sq_destroy(ptr noundef %nvme_sq.i) #12
  tail call fastcc void @nvmet_fc_tgt_q_put(ptr noundef nonnull %8) #12
  br label %nvmet_fc_delete_target_queue.exit

nvmet_fc_delete_target_queue.exit:                ; preds = %for.end79.i, %rcu_read_unlock.exit69.nvmet_fc_delete_target_queue.exit_crit_edge
  tail call fastcc void @nvmet_fc_tgt_q_put(ptr noundef nonnull %8)
  br label %for.inc

for.inc:                                          ; preds = %nvmet_fc_delete_target_queue.exit, %rcu_read_unlock.exit58, %rcu_read_unlock.exit
  %dec = add nsw i32 %i.071, -1
  %cmp = icmp sgt i32 %i.071, 0
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %do.end24

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.end24:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %1, i32 0, i32 2
  %86 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev, align 8
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %1, align 8
  %a_id = getelementptr inbounds %struct.nvmet_fc_tgt_assoc, ptr %assoc, i32 0, i32 1
  %90 = ptrtoint ptr %a_id to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %a_id, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %87, ptr noundef nonnull @.str.26, i32 noundef %89, i32 noundef %91) #17
  tail call fastcc void @nvmet_fc_tgt_a_put(ptr noundef %assoc)
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvmet_fc_tgt_q_get(ptr noundef %queue) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ref = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %queue, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #12
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref, i32 noundef 4) #12
  %0 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ref, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %entry
  %2 = phi i32 [ %1, %entry ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %3 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %2, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #12
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #12
  %4 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %6 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 %5, i32 %add.i.i.i.i, ptr elementtype(i32) %ref) #12, !srcloc !264
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %5
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !263

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %7 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %8, 1
  %9 = or i32 %add5.i.i.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !263

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 0) #12
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %10 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.i.i.i.i = icmp ne i32 %11, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #12
  %conv.i = zext i1 %tobool12.i.i.i.i to i32
  ret i32 %conv.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_sq_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmet_sq_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_fc_fcp_rqst_op_defer_work(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -544
  %tgtport = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %tgtport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tgtport, align 4
  %queue = getelementptr i8, ptr %work, i32 48
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 8
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  tail call fastcc void @nvmet_fc_queue_fcp_req(ptr noundef %1, ptr noundef %3, ptr noundef %5)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nvmet_fc_find_target_assoc(ptr noundef %tgtport, i64 noundef %association_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !253) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !268
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 696, ptr noundef nonnull @.str.29) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b32 = load i1, ptr @nvmet_fc_find_target_assoc.__warned, align 1
  br i1 %.b32, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nvmet_fc_find_target_assoc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1252, ptr noundef nonnull @.str.76) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %assoc_list = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %tgtport, i32 0, i32 9
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end
  %.pn.in = phi ptr [ %assoc_list, %do.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load volatile ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %assoc_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.cond
  %assoc.0 = getelementptr i8, ptr %.pn, i32 -28
  %5 = ptrtoint ptr %assoc.0 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %assoc.0, align 8
  %cmp11 = icmp eq i64 %6, %association_id
  br i1 %cmp11, label %if.then12, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

if.then12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %assoc.0.le = getelementptr i8, ptr %.pn, i32 -28
  %call13 = tail call fastcc i32 @nvmet_fc_tgt_a_get(ptr noundef %assoc.0.le)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  %spec.select = select i1 %tobool14.not, ptr null, ptr %assoc.0.le
  br label %for.end

for.end:                                          ; preds = %if.then12, %for.cond.for.end_crit_edge
  %ret.0 = phi ptr [ %spec.select, %if.then12 ], [ null, %for.cond.for.end_crit_edge ]
  %call.i33 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i33, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i36

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i36:                                ; preds = %for.end
  %call1.i34 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i34)
  %tobool.not.i35 = icmp eq i32 %call1.i34, 0
  br i1 %tobool.not.i35, label %land.lhs.true.i36.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i38

land.lhs.true.i36.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i36
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i38:                               ; preds = %land.lhs.true.i36
  %.b4.i37 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i37, label %land.lhs.true2.i38.rcu_read_unlock.exit_crit_edge, label %if.then.i39

land.lhs.true2.i38.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i38
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i39:                                      ; preds = %land.lhs.true2.i38
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 724, ptr noundef nonnull @.str.30) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i39, %land.lhs.true2.i38.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i36.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !269
  %7 = tail call i32 @llvm.read_register.i32(metadata !253) #12
  %and.i.i.i.i.i40 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i40 to ptr
  %preempt_count.i.i.i.i41 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i41, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i41, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret ptr %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_fc_disconnect_assoc_done(ptr noundef %lsreq, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tgtport1.i = getelementptr inbounds %struct.nvmet_fc_ls_req_op, ptr %lsreq, i32 0, i32 1
  %0 = ptrtoint ptr %tgtport1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tgtport1.i, align 8
  %lock.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %1, i32 0, i32 5
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %req_queued.i = getelementptr inbounds %struct.nvmet_fc_ls_req_op, ptr %lsreq, i32 0, i32 5
  %2 = ptrtoint ptr %req_queued.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %req_queued.i, align 4, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #12
  br label %__nvmet_fc_finish_ls_req.exit

if.end.i:                                         ; preds = %entry
  %lsreq_list.i = getelementptr inbounds %struct.nvmet_fc_ls_req_op, ptr %lsreq, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lsreq_list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.nvmet_fc_ls_req_op, ptr %lsreq, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %lsreq_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lsreq_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %10 = ptrtoint ptr %lsreq_list.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %lsreq_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.nvmet_fc_ls_req_op, ptr %lsreq, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %req_queued.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %req_queued.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #12
  %dev.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 8
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %list_del.exit.i.fc_dma_unmap_single.exit.i_crit_edge, label %if.then.i.i

list_del.exit.i.fc_dma_unmap_single.exit.i_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fc_dma_unmap_single.exit.i

if.then.i.i:                                      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %rqstlen.i = getelementptr inbounds %struct.nvmefc_ls_req, ptr %lsreq, i32 0, i32 2
  %15 = ptrtoint ptr %rqstlen.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rqstlen.i, align 8
  %rsplen.i = getelementptr inbounds %struct.nvmefc_ls_req, ptr %lsreq, i32 0, i32 5
  %17 = ptrtoint ptr %rsplen.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rsplen.i, align 4
  %add.i = add i32 %18, %16
  %rqstdma.i = getelementptr inbounds %struct.nvmefc_ls_req, ptr %lsreq, i32 0, i32 1
  %19 = ptrtoint ptr %rqstdma.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rqstdma.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef nonnull %14, i32 noundef %20, i32 noundef %add.i, i32 noundef 0, i32 noundef 0) #12
  br label %fc_dma_unmap_single.exit.i

fc_dma_unmap_single.exit.i:                       ; preds = %if.then.i.i, %list_del.exit.i.fc_dma_unmap_single.exit.i_crit_edge
  tail call fastcc void @nvmet_fc_tgtport_put(ptr noundef %1) #12
  br label %__nvmet_fc_finish_ls_req.exit

__nvmet_fc_finish_ls_req.exit:                    ; preds = %fc_dma_unmap_single.exit.i, %if.then.i
  tail call void @kfree(ptr noundef %lsreq) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_fc_xmt_fcp_op_done(ptr nocapture noundef readonly %fcpreq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nvmet_fc_private = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %fcpreq, i32 0, i32 12
  %0 = ptrtoint ptr %nvmet_fc_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nvmet_fc_private, align 4
  tail call fastcc void @nvmet_fc_fod_op_done(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvmet_req_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_req_complete(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvmet_fc_transfer_fcp_data(ptr noundef %tgtport, ptr noundef %fod, i8 noundef zeroext %op) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fod, align 8
  %next_sg = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 4
  %2 = ptrtoint ptr %next_sg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next_sg, align 4
  %req = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 14
  %transfer_len = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 14, i32 11
  %4 = ptrtoint ptr %transfer_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %transfer_len, align 8
  %offset = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 7
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 8
  %sub = sub i32 %5, %7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %op, ptr %1, align 4
  %9 = load i32, ptr %offset, align 8
  %offset4 = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %offset4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %offset4, align 4
  %timeout = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 20, ptr %timeout, align 4
  %sg5 = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %sg5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %3, ptr %sg5, align 4
  %sg_cnt = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %sg_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp128.not = icmp eq i32 %5, %7
  br i1 %cmp128.not, label %entry.if.end_crit_edge, label %land.lhs.true.lr.ph

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.lr.ph:                              ; preds = %entry
  %max_sg_cnt = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %tgtport, i32 0, i32 14
  %14 = ptrtoint ptr %max_sg_cnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_sg_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp7141.not = icmp eq i32 %15, 0
  br i1 %cmp7141.not, label %land.lhs.true.lr.ph.if.then_crit_edge, label %land.lhs.true.lr.ph.land.rhs_crit_edge

land.lhs.true.lr.ph.land.rhs_crit_edge:           ; preds = %land.lhs.true.lr.ph
  br label %land.rhs

land.lhs.true.lr.ph.if.then_crit_edge:            ; preds = %land.lhs.true.lr.ph
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

land.lhs.truethread-pre-split:                    ; preds = %while.body
  %16 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %sg_cnt, align 4
  %17 = ptrtoint ptr %max_sg_cnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_sg_cnt, align 4
  %cmp7 = icmp ult i32 %.pr, %18
  br i1 %cmp7, label %land.lhs.truethread-pre-split.land.rhs_crit_edge, label %land.lhs.truethread-pre-split.land.lhs.true13_crit_edge

land.lhs.truethread-pre-split.land.lhs.true13_crit_edge: ; preds = %land.lhs.truethread-pre-split
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true13

land.lhs.truethread-pre-split.land.rhs_crit_edge: ; preds = %land.lhs.truethread-pre-split
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

land.rhs:                                         ; preds = %land.lhs.truethread-pre-split.land.rhs_crit_edge, %land.lhs.true.lr.ph.land.rhs_crit_edge
  %tlen.0129143 = phi i32 [ %add11, %land.lhs.truethread-pre-split.land.rhs_crit_edge ], [ 0, %land.lhs.true.lr.ph.land.rhs_crit_edge ]
  %sg.0130142 = phi ptr [ %call, %land.lhs.truethread-pre-split.land.rhs_crit_edge ], [ %3, %land.lhs.true.lr.ph.land.rhs_crit_edge ]
  %19 = phi i32 [ %.pr, %land.lhs.truethread-pre-split.land.rhs_crit_edge ], [ 0, %land.lhs.true.lr.ph.land.rhs_crit_edge ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0130142, i32 0, i32 4
  %20 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_length, align 4
  %add = add i32 %21, %tlen.0129143
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %add)
  %cmp8 = icmp ult i32 %add, 262144
  br i1 %cmp8, label %while.body, label %land.rhs.land.lhs.true13_crit_edge

land.rhs.land.lhs.true13_crit_edge:               ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true13

while.body:                                       ; preds = %land.rhs
  %inc = add nuw i32 %19, 1
  %22 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %inc, ptr %sg_cnt, align 4
  %23 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_length, align 4
  %add11 = add i32 %24, %tlen.0129143
  %call = tail call ptr @sg_next(ptr noundef %sg.0130142) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %add11, i32 %sub)
  %cmp = icmp ult i32 %add11, %sub
  br i1 %cmp, label %land.lhs.truethread-pre-split, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true13:                                  ; preds = %land.rhs.land.lhs.true13_crit_edge, %land.lhs.truethread-pre-split.land.lhs.true13_crit_edge
  %.lcssa = phi i32 [ %.pr, %land.lhs.truethread-pre-split.land.lhs.true13_crit_edge ], [ %19, %land.rhs.land.lhs.true13_crit_edge ]
  %sg.0130.lcssa = phi ptr [ %call, %land.lhs.truethread-pre-split.land.lhs.true13_crit_edge ], [ %sg.0130142, %land.rhs.land.lhs.true13_crit_edge ]
  %tlen.0129.lcssa = phi i32 [ %add11, %land.lhs.truethread-pre-split.land.lhs.true13_crit_edge ], [ %tlen.0129143, %land.rhs.land.lhs.true13_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.lcssa)
  %cmp15 = icmp eq i32 %.lcssa, 0
  br i1 %cmp15, label %land.lhs.true13.if.then_crit_edge, label %land.lhs.true13.if.end_crit_edge

land.lhs.true13.if.end_crit_edge:                 ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true13.if.then_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %land.lhs.true13.if.then_crit_edge, %land.lhs.true.lr.ph.if.then_crit_edge
  %tlen.0129.lcssa154 = phi i32 [ %tlen.0129.lcssa, %land.lhs.true13.if.then_crit_edge ], [ 0, %land.lhs.true.lr.ph.if.then_crit_edge ]
  %sg.0130.lcssa153 = phi ptr [ %sg.0130.lcssa, %land.lhs.true13.if.then_crit_edge ], [ %3, %land.lhs.true.lr.ph.if.then_crit_edge ]
  %25 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %sg_cnt, align 4
  %dma_length18 = getelementptr inbounds %struct.scatterlist, ptr %sg.0130.lcssa153, i32 0, i32 4
  %26 = ptrtoint ptr %dma_length18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma_length18, align 4
  %28 = tail call i32 @llvm.umin.i32(i32 %27, i32 %sub)
  %add20 = add i32 %28, %tlen.0129.lcssa154
  %call21 = tail call ptr @sg_next(ptr noundef %sg.0130.lcssa153) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true13.if.end_crit_edge, %while.body.if.end_crit_edge, %entry.if.end_crit_edge
  %tlen.1 = phi i32 [ %add20, %if.then ], [ %tlen.0129.lcssa, %land.lhs.true13.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ], [ %add11, %while.body.if.end_crit_edge ]
  %sg.1 = phi ptr [ %call21, %if.then ], [ %sg.0130.lcssa, %land.lhs.true13.if.end_crit_edge ], [ %3, %entry.if.end_crit_edge ], [ %call, %while.body.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %tlen.1, i32 %sub)
  %cmp22 = icmp ult i32 %tlen.1, %sub
  %sg.1. = select i1 %cmp22, ptr %sg.1, ptr null
  %29 = ptrtoint ptr %next_sg to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %sg.1., ptr %next_sg, align 4
  %transfer_length = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %1, i32 0, i32 4
  %30 = ptrtoint ptr %transfer_length to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %tlen.1, ptr %transfer_length, align 4
  %transferred_length = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %1, i32 0, i32 13
  %31 = ptrtoint ptr %transferred_length to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %transferred_length, align 4
  %fcp_error = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %1, i32 0, i32 14
  %32 = ptrtoint ptr %fcp_error to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %fcp_error, align 4
  %rsplen = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %1, i32 0, i32 10
  %33 = ptrtoint ptr %rsplen to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %rsplen, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %op)
  %cmp27 = icmp eq i8 %op, 1
  br i1 %cmp27, label %land.lhs.true29, label %if.end.if.end40_crit_edge

if.end.if.end40_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

land.lhs.true29:                                  ; preds = %if.end
  %34 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %offset, align 8
  %add32 = add i32 %35, %tlen.1
  %36 = ptrtoint ptr %transfer_len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %transfer_len, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add32, i32 %37)
  %cmp35 = icmp eq i32 %add32, %37
  br i1 %cmp35, label %land.lhs.true37, label %land.lhs.true29.if.end40_crit_edge

land.lhs.true29.if.end40_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

land.lhs.true37:                                  ; preds = %land.lhs.true29
  %ops = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %tgtport, i32 0, i32 3
  %38 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops, align 4
  %target_features = getelementptr inbounds %struct.nvmet_fc_target_template, ptr %39, i32 0, i32 14
  %40 = ptrtoint ptr %target_features to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %target_features, align 8
  %and = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true37.if.end40_crit_edge, label %if.then38

land.lhs.true37.if.end40_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then38:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 3, ptr %1, align 4
  tail call fastcc void @nvmet_fc_prep_fcp_rsp(ptr noundef %tgtport, ptr noundef %fod)
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %land.lhs.true37.if.end40_crit_edge, %land.lhs.true29.if.end40_crit_edge, %if.end.if.end40_crit_edge
  %ops41 = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %tgtport, i32 0, i32 3
  %43 = ptrtoint ptr %ops41 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops41, align 4
  %fcp_op = getelementptr inbounds %struct.nvmet_fc_target_template, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %fcp_op to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fcp_op, align 8
  %47 = ptrtoint ptr %fod to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fod, align 8
  %call43 = tail call i32 %46(ptr noundef %tgtport, ptr noundef %48) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end40.if.end65_crit_edge, label %if.then45

if.end40.if.end65_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

if.then45:                                        ; preds = %if.end40
  %abort = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 10
  %49 = ptrtoint ptr %abort to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %abort, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %op)
  %cmp47 = icmp eq i8 %op, 2
  br i1 %cmp47, label %do.body50, label %if.else60

do.body50:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  %flock = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 13
  %call55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %flock) #12
  %writedataactive = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 12
  %50 = ptrtoint ptr %writedataactive to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %writedataactive, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %flock, i32 noundef %call55) #12
  tail call void @nvmet_req_complete(ptr noundef %req, i16 noundef zeroext 6) #12
  br label %if.end65

if.else60:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %fcp_error to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call43, ptr %fcp_error, align 4
  %52 = ptrtoint ptr %transferred_length to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %transferred_length, align 4
  %53 = ptrtoint ptr %fod to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fod, align 8
  %nvmet_fc_private.i = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %54, i32 0, i32 12
  %55 = ptrtoint ptr %nvmet_fc_private.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %nvmet_fc_private.i, align 4
  tail call fastcc void @nvmet_fc_fod_op_done(ptr noundef %56) #12
  br label %if.end65

if.end65:                                         ; preds = %if.else60, %do.body50, %if.end40.if.end65_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvmet_fc_fod_op_done(ptr noundef %fod) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fod, align 8
  %tgtport2 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 16
  %2 = ptrtoint ptr %tgtport2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tgtport2, align 4
  %flock = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 13
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %flock) #12
  %abort7 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 10
  %4 = ptrtoint ptr %abort7 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %abort7, align 1, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %writedataactive = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 12
  %6 = ptrtoint ptr %writedataactive to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %writedataactive, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %flock, i32 noundef %call4) #12
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %1, align 4
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.107)
  switch i8 %8, label %entry.cleanup_crit_edge [
    i8 2, label %sw.bb
    i8 1, label %entry.sw.bb58_crit_edge
    i8 3, label %entry.sw.bb58_crit_edge207
    i8 4, label %sw.bb88
  ]

entry.sw.bb58_crit_edge207:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb58

entry.sw.bb58_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb58

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %10 = ptrtoint ptr %tgtport2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tgtport2, align 4
  br i1 %tobool.not, label %if.end, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  %12 = ptrtoint ptr %fod to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fod, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp.i = icmp eq i8 %15, 2
  br i1 %cmp.i, label %if.then4.i, label %if.end.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %req.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 14
  tail call void @nvmet_req_complete(ptr noundef %req.i, i16 noundef zeroext 6) #12
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  %data_sg.i.i.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 5
  %16 = ptrtoint ptr %data_sg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data_sg.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i.i, label %if.end.i.nvmet_fc_free_tgt_pgs.exit.i.i_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.nvmet_fc_free_tgt_pgs.exit.i.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_free_tgt_pgs.exit.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end.i
  %data_sg_cnt.i.i.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 6
  %18 = ptrtoint ptr %data_sg_cnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_sg_cnt.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool1.not.i.i.i = icmp eq i32 %19, 0
  br i1 %tobool1.not.i.i.i, label %lor.lhs.false.i.i.i.nvmet_fc_free_tgt_pgs.exit.i.i_crit_edge, label %if.end.i.i.i

lor.lhs.false.i.i.i.nvmet_fc_free_tgt_pgs.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_free_tgt_pgs.exit.i.i

if.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.i
  %dev.i.i.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %11, i32 0, i32 2
  %20 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.fc_dma_unmap_sg.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

if.end.i.i.i.fc_dma_unmap_sg.exit.i.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fc_dma_unmap_sg.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %io_dir.i.i.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 8
  %22 = ptrtoint ptr %io_dir.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %io_dir.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp.i.i.i = icmp eq i32 %23, 1
  %cond.i.i.i = select i1 %cmp.i.i.i, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef nonnull %21, ptr noundef nonnull %17, i32 noundef %19, i32 noundef %cond.i.i.i, i32 noundef 0) #12
  br label %fc_dma_unmap_sg.exit.i.i.i

fc_dma_unmap_sg.exit.i.i.i:                       ; preds = %if.then.i.i.i.i, %if.end.i.i.i.fc_dma_unmap_sg.exit.i.i.i_crit_edge
  %24 = ptrtoint ptr %data_sg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data_sg.i.i.i, align 8
  tail call void @sgl_free(ptr noundef %25) #12
  %26 = ptrtoint ptr %data_sg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %data_sg.i.i.i, align 8
  %27 = ptrtoint ptr %data_sg_cnt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %data_sg_cnt.i.i.i, align 4
  br label %nvmet_fc_free_tgt_pgs.exit.i.i

nvmet_fc_free_tgt_pgs.exit.i.i:                   ; preds = %fc_dma_unmap_sg.exit.i.i.i, %lor.lhs.false.i.i.i.nvmet_fc_free_tgt_pgs.exit.i.i_crit_edge, %if.end.i.nvmet_fc_free_tgt_pgs.exit.i.i_crit_edge
  %aborted.i.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 11
  %28 = ptrtoint ptr %aborted.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %aborted.i.i, align 2, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %nvmet_fc_free_tgt_pgs.exit.i.i.nvmet_fc_abort_op.exit.i_crit_edge

nvmet_fc_free_tgt_pgs.exit.i.i.nvmet_fc_abort_op.exit.i_crit_edge: ; preds = %nvmet_fc_free_tgt_pgs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_abort_op.exit.i

if.then.i.i:                                      ; preds = %nvmet_fc_free_tgt_pgs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %ops.i.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %11, i32 0, i32 3
  %30 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i.i, align 4
  %fcp_abort.i.i = getelementptr inbounds %struct.nvmet_fc_target_template, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %fcp_abort.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fcp_abort.i.i, align 4
  tail call void %33(ptr noundef %11, ptr noundef %13) #12
  br label %nvmet_fc_abort_op.exit.i

nvmet_fc_abort_op.exit.i:                         ; preds = %if.then.i.i, %nvmet_fc_free_tgt_pgs.exit.i.i.nvmet_fc_abort_op.exit.i_crit_edge
  %queue.i.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 17
  %34 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %queue.i.i, align 8
  tail call fastcc void @nvmet_fc_free_fcp_iod(ptr noundef %35, ptr noundef %fod) #12
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %fcp_error = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %1, i32 0, i32 14
  %36 = ptrtoint ptr %fcp_error to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fcp_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool12.not = icmp eq i32 %37, 0
  br i1 %tobool12.not, label %lor.lhs.false, label %if.end.do.body17_crit_edge

if.end.do.body17_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body17

lor.lhs.false:                                    ; preds = %if.end
  %transferred_length = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %1, i32 0, i32 13
  %38 = ptrtoint ptr %transferred_length to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %transferred_length, align 4
  %transfer_length = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %1, i32 0, i32 4
  %40 = ptrtoint ptr %transfer_length to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %transfer_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp13.not = icmp eq i32 %39, %41
  br i1 %cmp13.not, label %if.end32, label %lor.lhs.false.do.body17_crit_edge

lor.lhs.false.do.body17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body17

do.body17:                                        ; preds = %lor.lhs.false.do.body17_crit_edge, %if.end.do.body17_crit_edge
  %call25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %flock) #12
  %42 = ptrtoint ptr %abort7 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %abort7, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %flock, i32 noundef %call25) #12
  %req = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 14
  tail call void @nvmet_req_complete(ptr noundef %req, i16 noundef zeroext 6) #12
  br label %cleanup

if.end32:                                         ; preds = %lor.lhs.false
  %offset = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 7
  %43 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %offset, align 8
  %add = add i32 %44, %39
  store i32 %add, ptr %offset, align 8
  %transfer_len = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 14, i32 11
  %45 = ptrtoint ptr %transfer_len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %transfer_len, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %46)
  %cmp36.not = icmp eq i32 %add, %46
  br i1 %cmp36.not, label %if.end55, label %do.body40

do.body40:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  %call48 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %flock) #12
  %47 = ptrtoint ptr %writedataactive to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %writedataactive, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %flock, i32 noundef %call48) #12
  tail call fastcc void @nvmet_fc_transfer_fcp_data(ptr noundef %3, ptr noundef %fod, i8 noundef zeroext 2)
  br label %cleanup

if.end55:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  %req35 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 14
  %execute = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 14, i32 14
  %48 = ptrtoint ptr %execute to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %execute, align 4
  tail call void %49(ptr noundef %req35) #12
  br label %cleanup

sw.bb58:                                          ; preds = %entry.sw.bb58_crit_edge, %entry.sw.bb58_crit_edge207
  %50 = ptrtoint ptr %tgtport2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tgtport2, align 4
  br i1 %tobool.not, label %if.end62, label %if.then.i149

if.then.i149:                                     ; preds = %sw.bb58
  %52 = ptrtoint ptr %fod to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fod, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %53, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %55)
  %cmp.i148 = icmp eq i8 %55, 2
  br i1 %cmp.i148, label %if.then4.i151, label %if.end.i154

if.then4.i151:                                    ; preds = %if.then.i149
  call void @__sanitizer_cov_trace_pc() #14
  %req.i150 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 14
  tail call void @nvmet_req_complete(ptr noundef %req.i150, i16 noundef zeroext 6) #12
  br label %cleanup

if.end.i154:                                      ; preds = %if.then.i149
  %data_sg.i.i.i152 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 5
  %56 = ptrtoint ptr %data_sg.i.i.i152 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data_sg.i.i.i152, align 8
  %tobool.not.i.i.i153 = icmp eq ptr %57, null
  br i1 %tobool.not.i.i.i153, label %if.end.i154.nvmet_fc_free_tgt_pgs.exit.i.i168_crit_edge, label %lor.lhs.false.i.i.i157

if.end.i154.nvmet_fc_free_tgt_pgs.exit.i.i168_crit_edge: ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_free_tgt_pgs.exit.i.i168

lor.lhs.false.i.i.i157:                           ; preds = %if.end.i154
  %data_sg_cnt.i.i.i155 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 6
  %58 = ptrtoint ptr %data_sg_cnt.i.i.i155 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %data_sg_cnt.i.i.i155, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool1.not.i.i.i156 = icmp eq i32 %59, 0
  br i1 %tobool1.not.i.i.i156, label %lor.lhs.false.i.i.i157.nvmet_fc_free_tgt_pgs.exit.i.i168_crit_edge, label %if.end.i.i.i160

lor.lhs.false.i.i.i157.nvmet_fc_free_tgt_pgs.exit.i.i168_crit_edge: ; preds = %lor.lhs.false.i.i.i157
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_free_tgt_pgs.exit.i.i168

if.end.i.i.i160:                                  ; preds = %lor.lhs.false.i.i.i157
  %dev.i.i.i158 = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %51, i32 0, i32 2
  %60 = ptrtoint ptr %dev.i.i.i158 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i.i.i158, align 8
  %tobool.not.i.i.i.i159 = icmp eq ptr %61, null
  br i1 %tobool.not.i.i.i.i159, label %if.end.i.i.i160.fc_dma_unmap_sg.exit.i.i.i165_crit_edge, label %if.then.i.i.i.i164

if.end.i.i.i160.fc_dma_unmap_sg.exit.i.i.i165_crit_edge: ; preds = %if.end.i.i.i160
  call void @__sanitizer_cov_trace_pc() #14
  br label %fc_dma_unmap_sg.exit.i.i.i165

if.then.i.i.i.i164:                               ; preds = %if.end.i.i.i160
  call void @__sanitizer_cov_trace_pc() #14
  %io_dir.i.i.i161 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 8
  %62 = ptrtoint ptr %io_dir.i.i.i161 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %io_dir.i.i.i161, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp.i.i.i162 = icmp eq i32 %63, 1
  %cond.i.i.i163 = select i1 %cmp.i.i.i162, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef nonnull %61, ptr noundef nonnull %57, i32 noundef %59, i32 noundef %cond.i.i.i163, i32 noundef 0) #12
  br label %fc_dma_unmap_sg.exit.i.i.i165

fc_dma_unmap_sg.exit.i.i.i165:                    ; preds = %if.then.i.i.i.i164, %if.end.i.i.i160.fc_dma_unmap_sg.exit.i.i.i165_crit_edge
  %64 = ptrtoint ptr %data_sg.i.i.i152 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data_sg.i.i.i152, align 8
  tail call void @sgl_free(ptr noundef %65) #12
  %66 = ptrtoint ptr %data_sg.i.i.i152 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %data_sg.i.i.i152, align 8
  %67 = ptrtoint ptr %data_sg_cnt.i.i.i155 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %data_sg_cnt.i.i.i155, align 4
  br label %nvmet_fc_free_tgt_pgs.exit.i.i168

nvmet_fc_free_tgt_pgs.exit.i.i168:                ; preds = %fc_dma_unmap_sg.exit.i.i.i165, %lor.lhs.false.i.i.i157.nvmet_fc_free_tgt_pgs.exit.i.i168_crit_edge, %if.end.i154.nvmet_fc_free_tgt_pgs.exit.i.i168_crit_edge
  %aborted.i.i166 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 11
  %68 = ptrtoint ptr %aborted.i.i166 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %aborted.i.i166, align 2, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i.i167 = icmp eq i8 %69, 0
  br i1 %tobool.not.i.i167, label %if.then.i.i171, label %nvmet_fc_free_tgt_pgs.exit.i.i168.nvmet_fc_abort_op.exit.i173_crit_edge

nvmet_fc_free_tgt_pgs.exit.i.i168.nvmet_fc_abort_op.exit.i173_crit_edge: ; preds = %nvmet_fc_free_tgt_pgs.exit.i.i168
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_abort_op.exit.i173

if.then.i.i171:                                   ; preds = %nvmet_fc_free_tgt_pgs.exit.i.i168
  call void @__sanitizer_cov_trace_pc() #14
  %ops.i.i169 = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %51, i32 0, i32 3
  %70 = ptrtoint ptr %ops.i.i169 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ops.i.i169, align 4
  %fcp_abort.i.i170 = getelementptr inbounds %struct.nvmet_fc_target_template, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %fcp_abort.i.i170 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %fcp_abort.i.i170, align 4
  tail call void %73(ptr noundef %51, ptr noundef %53) #12
  br label %nvmet_fc_abort_op.exit.i173

nvmet_fc_abort_op.exit.i173:                      ; preds = %if.then.i.i171, %nvmet_fc_free_tgt_pgs.exit.i.i168.nvmet_fc_abort_op.exit.i173_crit_edge
  %queue.i.i172 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 17
  %74 = ptrtoint ptr %queue.i.i172 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %queue.i.i172, align 8
  tail call fastcc void @nvmet_fc_free_fcp_iod(ptr noundef %75, ptr noundef %fod) #12
  br label %cleanup

if.end62:                                         ; preds = %sw.bb58
  %fcp_error63 = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %1, i32 0, i32 14
  %76 = ptrtoint ptr %fcp_error63 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %fcp_error63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool64.not = icmp eq i32 %77, 0
  br i1 %tobool64.not, label %lor.lhs.false65, label %if.end62.if.then70_crit_edge

if.end62.if.then70_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then70

lor.lhs.false65:                                  ; preds = %if.end62
  %transferred_length66 = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %1, i32 0, i32 13
  %78 = ptrtoint ptr %transferred_length66 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %transferred_length66, align 4
  %transfer_length67 = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %1, i32 0, i32 4
  %80 = ptrtoint ptr %transfer_length67 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %transfer_length67, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %81)
  %cmp68.not = icmp eq i32 %79, %81
  br i1 %cmp68.not, label %if.end71, label %lor.lhs.false65.if.then70_crit_edge

lor.lhs.false65.if.then70_crit_edge:              ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then70

if.then70:                                        ; preds = %lor.lhs.false65.if.then70_crit_edge, %if.end62.if.then70_crit_edge
  %82 = ptrtoint ptr %fod to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %fod, align 8
  %data_sg.i.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 5
  %84 = ptrtoint ptr %data_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %data_sg.i.i, align 8
  %tobool.not.i.i175 = icmp eq ptr %85, null
  br i1 %tobool.not.i.i175, label %if.then70.nvmet_fc_free_tgt_pgs.exit.i_crit_edge, label %lor.lhs.false.i.i

if.then70.nvmet_fc_free_tgt_pgs.exit.i_crit_edge: ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_free_tgt_pgs.exit.i

lor.lhs.false.i.i:                                ; preds = %if.then70
  %data_sg_cnt.i.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 6
  %86 = ptrtoint ptr %data_sg_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %data_sg_cnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool1.not.i.i = icmp eq i32 %87, 0
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.nvmet_fc_free_tgt_pgs.exit.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.nvmet_fc_free_tgt_pgs.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_free_tgt_pgs.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %dev.i.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %51, i32 0, i32 2
  %88 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev.i.i, align 8
  %tobool.not.i.i.i176 = icmp eq ptr %89, null
  br i1 %tobool.not.i.i.i176, label %if.end.i.i.fc_dma_unmap_sg.exit.i.i_crit_edge, label %if.then.i.i.i

if.end.i.i.fc_dma_unmap_sg.exit.i.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fc_dma_unmap_sg.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %io_dir.i.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 8
  %90 = ptrtoint ptr %io_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %io_dir.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %91)
  %cmp.i.i = icmp eq i32 %91, 1
  %cond.i.i = select i1 %cmp.i.i, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef nonnull %89, ptr noundef nonnull %85, i32 noundef %87, i32 noundef %cond.i.i, i32 noundef 0) #12
  br label %fc_dma_unmap_sg.exit.i.i

fc_dma_unmap_sg.exit.i.i:                         ; preds = %if.then.i.i.i, %if.end.i.i.fc_dma_unmap_sg.exit.i.i_crit_edge
  %92 = ptrtoint ptr %data_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %data_sg.i.i, align 8
  tail call void @sgl_free(ptr noundef %93) #12
  %94 = ptrtoint ptr %data_sg.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %data_sg.i.i, align 8
  %95 = ptrtoint ptr %data_sg_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %data_sg_cnt.i.i, align 4
  br label %nvmet_fc_free_tgt_pgs.exit.i

nvmet_fc_free_tgt_pgs.exit.i:                     ; preds = %fc_dma_unmap_sg.exit.i.i, %lor.lhs.false.i.i.nvmet_fc_free_tgt_pgs.exit.i_crit_edge, %if.then70.nvmet_fc_free_tgt_pgs.exit.i_crit_edge
  %aborted.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 11
  %96 = ptrtoint ptr %aborted.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %aborted.i, align 2, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not.i = icmp eq i8 %97, 0
  br i1 %tobool.not.i, label %if.then.i177, label %nvmet_fc_free_tgt_pgs.exit.i.nvmet_fc_abort_op.exit_crit_edge

nvmet_fc_free_tgt_pgs.exit.i.nvmet_fc_abort_op.exit_crit_edge: ; preds = %nvmet_fc_free_tgt_pgs.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_abort_op.exit

if.then.i177:                                     ; preds = %nvmet_fc_free_tgt_pgs.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %ops.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %3, i32 0, i32 3
  %98 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ops.i, align 4
  %fcp_abort.i = getelementptr inbounds %struct.nvmet_fc_target_template, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %fcp_abort.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %fcp_abort.i, align 4
  tail call void %101(ptr noundef %3, ptr noundef %83) #12
  br label %nvmet_fc_abort_op.exit

nvmet_fc_abort_op.exit:                           ; preds = %if.then.i177, %nvmet_fc_free_tgt_pgs.exit.i.nvmet_fc_abort_op.exit_crit_edge
  %queue.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 17
  %102 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %queue.i, align 8
  tail call fastcc void @nvmet_fc_free_fcp_iod(ptr noundef %103, ptr noundef %fod) #12
  br label %cleanup

if.end71:                                         ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp74 = icmp eq i8 %8, 3
  br i1 %cmp74, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @nvmet_fc_free_tgt_pgs(ptr noundef %fod)
  %queue = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 17
  %104 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %queue, align 8
  tail call fastcc void @nvmet_fc_free_fcp_iod(ptr noundef %105, ptr noundef %fod)
  br label %cleanup

if.end77:                                         ; preds = %if.end71
  %offset79 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 7
  %106 = ptrtoint ptr %offset79 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %offset79, align 8
  %add80 = add i32 %107, %79
  store i32 %add80, ptr %offset79, align 8
  %transfer_len83 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 14, i32 11
  %108 = ptrtoint ptr %transfer_len83 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %transfer_len83, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add80, i32 %109)
  %cmp84.not = icmp eq i32 %add80, %109
  br i1 %cmp84.not, label %if.end87, label %if.then86

if.then86:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @nvmet_fc_transfer_fcp_data(ptr noundef %3, ptr noundef %fod, i8 noundef zeroext 1)
  br label %cleanup

if.end87:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @nvmet_fc_free_tgt_pgs(ptr noundef %fod)
  tail call fastcc void @nvmet_fc_xmt_fcp_rsp(ptr noundef %3, ptr noundef %fod)
  br label %cleanup

sw.bb88:                                          ; preds = %entry
  %110 = ptrtoint ptr %tgtport2 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %tgtport2, align 4
  br i1 %tobool.not, label %if.end92, label %if.then.i181

if.then.i181:                                     ; preds = %sw.bb88
  %112 = ptrtoint ptr %fod to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %fod, align 8
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %113, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %115)
  %cmp.i180 = icmp eq i8 %115, 2
  br i1 %cmp.i180, label %if.then4.i183, label %if.end.i186

if.then4.i183:                                    ; preds = %if.then.i181
  call void @__sanitizer_cov_trace_pc() #14
  %req.i182 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 14
  tail call void @nvmet_req_complete(ptr noundef %req.i182, i16 noundef zeroext 6) #12
  br label %cleanup

if.end.i186:                                      ; preds = %if.then.i181
  %data_sg.i.i.i184 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 5
  %116 = ptrtoint ptr %data_sg.i.i.i184 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %data_sg.i.i.i184, align 8
  %tobool.not.i.i.i185 = icmp eq ptr %117, null
  br i1 %tobool.not.i.i.i185, label %if.end.i186.nvmet_fc_free_tgt_pgs.exit.i.i200_crit_edge, label %lor.lhs.false.i.i.i189

if.end.i186.nvmet_fc_free_tgt_pgs.exit.i.i200_crit_edge: ; preds = %if.end.i186
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_free_tgt_pgs.exit.i.i200

lor.lhs.false.i.i.i189:                           ; preds = %if.end.i186
  %data_sg_cnt.i.i.i187 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 6
  %118 = ptrtoint ptr %data_sg_cnt.i.i.i187 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %data_sg_cnt.i.i.i187, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool1.not.i.i.i188 = icmp eq i32 %119, 0
  br i1 %tobool1.not.i.i.i188, label %lor.lhs.false.i.i.i189.nvmet_fc_free_tgt_pgs.exit.i.i200_crit_edge, label %if.end.i.i.i192

lor.lhs.false.i.i.i189.nvmet_fc_free_tgt_pgs.exit.i.i200_crit_edge: ; preds = %lor.lhs.false.i.i.i189
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_free_tgt_pgs.exit.i.i200

if.end.i.i.i192:                                  ; preds = %lor.lhs.false.i.i.i189
  %dev.i.i.i190 = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %111, i32 0, i32 2
  %120 = ptrtoint ptr %dev.i.i.i190 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev.i.i.i190, align 8
  %tobool.not.i.i.i.i191 = icmp eq ptr %121, null
  br i1 %tobool.not.i.i.i.i191, label %if.end.i.i.i192.fc_dma_unmap_sg.exit.i.i.i197_crit_edge, label %if.then.i.i.i.i196

if.end.i.i.i192.fc_dma_unmap_sg.exit.i.i.i197_crit_edge: ; preds = %if.end.i.i.i192
  call void @__sanitizer_cov_trace_pc() #14
  br label %fc_dma_unmap_sg.exit.i.i.i197

if.then.i.i.i.i196:                               ; preds = %if.end.i.i.i192
  call void @__sanitizer_cov_trace_pc() #14
  %io_dir.i.i.i193 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 8
  %122 = ptrtoint ptr %io_dir.i.i.i193 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %io_dir.i.i.i193, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %123)
  %cmp.i.i.i194 = icmp eq i32 %123, 1
  %cond.i.i.i195 = select i1 %cmp.i.i.i194, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef nonnull %121, ptr noundef nonnull %117, i32 noundef %119, i32 noundef %cond.i.i.i195, i32 noundef 0) #12
  br label %fc_dma_unmap_sg.exit.i.i.i197

fc_dma_unmap_sg.exit.i.i.i197:                    ; preds = %if.then.i.i.i.i196, %if.end.i.i.i192.fc_dma_unmap_sg.exit.i.i.i197_crit_edge
  %124 = ptrtoint ptr %data_sg.i.i.i184 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %data_sg.i.i.i184, align 8
  tail call void @sgl_free(ptr noundef %125) #12
  %126 = ptrtoint ptr %data_sg.i.i.i184 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr null, ptr %data_sg.i.i.i184, align 8
  %127 = ptrtoint ptr %data_sg_cnt.i.i.i187 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %data_sg_cnt.i.i.i187, align 4
  br label %nvmet_fc_free_tgt_pgs.exit.i.i200

nvmet_fc_free_tgt_pgs.exit.i.i200:                ; preds = %fc_dma_unmap_sg.exit.i.i.i197, %lor.lhs.false.i.i.i189.nvmet_fc_free_tgt_pgs.exit.i.i200_crit_edge, %if.end.i186.nvmet_fc_free_tgt_pgs.exit.i.i200_crit_edge
  %aborted.i.i198 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 11
  %128 = ptrtoint ptr %aborted.i.i198 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %aborted.i.i198, align 2, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool.not.i.i199 = icmp eq i8 %129, 0
  br i1 %tobool.not.i.i199, label %if.then.i.i203, label %nvmet_fc_free_tgt_pgs.exit.i.i200.nvmet_fc_abort_op.exit.i205_crit_edge

nvmet_fc_free_tgt_pgs.exit.i.i200.nvmet_fc_abort_op.exit.i205_crit_edge: ; preds = %nvmet_fc_free_tgt_pgs.exit.i.i200
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_abort_op.exit.i205

if.then.i.i203:                                   ; preds = %nvmet_fc_free_tgt_pgs.exit.i.i200
  call void @__sanitizer_cov_trace_pc() #14
  %ops.i.i201 = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %111, i32 0, i32 3
  %130 = ptrtoint ptr %ops.i.i201 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ops.i.i201, align 4
  %fcp_abort.i.i202 = getelementptr inbounds %struct.nvmet_fc_target_template, ptr %131, i32 0, i32 3
  %132 = ptrtoint ptr %fcp_abort.i.i202 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %fcp_abort.i.i202, align 4
  tail call void %133(ptr noundef %111, ptr noundef %113) #12
  br label %nvmet_fc_abort_op.exit.i205

nvmet_fc_abort_op.exit.i205:                      ; preds = %if.then.i.i203, %nvmet_fc_free_tgt_pgs.exit.i.i200.nvmet_fc_abort_op.exit.i205_crit_edge
  %queue.i.i204 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 17
  %134 = ptrtoint ptr %queue.i.i204 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %queue.i.i204, align 8
  tail call fastcc void @nvmet_fc_free_fcp_iod(ptr noundef %135, ptr noundef %fod) #12
  br label %cleanup

if.end92:                                         ; preds = %sw.bb88
  call void @__sanitizer_cov_trace_pc() #14
  %queue93 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 17
  %136 = ptrtoint ptr %queue93 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %queue93, align 8
  tail call fastcc void @nvmet_fc_free_fcp_iod(ptr noundef %137, ptr noundef %fod)
  br label %cleanup

cleanup:                                          ; preds = %if.end92, %nvmet_fc_abort_op.exit.i205, %if.then4.i183, %if.end87, %if.then86, %if.then76, %nvmet_fc_abort_op.exit, %nvmet_fc_abort_op.exit.i173, %if.then4.i151, %if.end55, %do.body40, %do.body17, %nvmet_fc_abort_op.exit.i, %if.then4.i, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvmet_fc_free_tgt_pgs(ptr nocapture noundef %fod) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data_sg = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 5
  %0 = ptrtoint ptr %data_sg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data_sg, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %data_sg_cnt = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 6
  %2 = ptrtoint ptr %data_sg_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_sg_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %tgtport = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 16
  %4 = ptrtoint ptr %tgtport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tgtport, align 4
  %dev = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.fc_dma_unmap_sg.exit_crit_edge, label %if.then.i

if.end.fc_dma_unmap_sg.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %fc_dma_unmap_sg.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %io_dir = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 8
  %8 = ptrtoint ptr %io_dir to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %io_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  %cond = select i1 %cmp, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef nonnull %7, ptr noundef nonnull %1, i32 noundef %3, i32 noundef %cond, i32 noundef 0) #12
  br label %fc_dma_unmap_sg.exit

fc_dma_unmap_sg.exit:                             ; preds = %if.then.i, %if.end.fc_dma_unmap_sg.exit_crit_edge
  %10 = ptrtoint ptr %data_sg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data_sg, align 8
  tail call void @sgl_free(ptr noundef %11) #12
  %12 = ptrtoint ptr %data_sg to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %data_sg, align 8
  %13 = ptrtoint ptr %data_sg_cnt to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %data_sg_cnt, align 4
  br label %return

return:                                           ; preds = %fc_dma_unmap_sg.exit, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvmet_fc_free_fcp_iod(ptr noundef %queue, ptr noundef %fod) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fod, align 8
  %tgtport2 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 16
  %2 = ptrtoint ptr %tgtport2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tgtport2, align 4
  %dev = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.fc_dma_sync_single_for_cpu.exit_crit_edge, label %if.then.i

entry.fc_dma_sync_single_for_cpu.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %fc_dma_sync_single_for_cpu.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %rspdma = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 3
  %6 = ptrtoint ptr %rspdma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rspdma, align 8
  tail call void @dma_sync_single_for_cpu(ptr noundef nonnull %5, i32 noundef %7, i32 noundef 32, i32 noundef 1) #12
  br label %fc_dma_sync_single_for_cpu.exit

fc_dma_sync_single_for_cpu.exit:                  ; preds = %if.then.i, %entry.fc_dma_sync_single_for_cpu.exit_crit_edge
  %nvmet_fc_private = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %nvmet_fc_private to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %nvmet_fc_private, align 4
  %active = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 9
  %9 = ptrtoint ptr %fod to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %fod, align 8
  %ops = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %active, align 8
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %fcp_req_release = getelementptr inbounds %struct.nvmet_fc_target_template, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %fcp_req_release to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fcp_req_release, align 8
  tail call void %14(ptr noundef %3, ptr noundef %1) #12
  tail call fastcc void @nvmet_fc_tgt_q_put(ptr noundef %queue)
  %qlock = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %queue, i32 0, i32 9
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock) #12
  %pending_cmd_list = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %queue, i32 0, i32 14
  %15 = ptrtoint ptr %pending_cmd_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %pending_cmd_list, align 4
  %cmp13.not = icmp eq ptr %16, %pending_cmd_list
  %tobool.not78 = icmp eq ptr %16, null
  %tobool.not = or i1 %cmp13.not, %tobool.not78
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %fc_dma_sync_single_for_cpu.exit
  %fcp_list = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 18
  %queue16 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 17
  %17 = ptrtoint ptr %queue16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %queue16, align 8
  %fod_list = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %18, i32 0, i32 13
  %prev.i = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %18, i32 0, i32 13, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %fcp_list, ptr noundef %20, ptr noundef %fod_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_add_tail.exit_crit_edge

if.then.list_add_tail.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %fcp_list, ptr %prev.i, align 4
  %22 = ptrtoint ptr %fcp_list to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %fod_list, ptr %fcp_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 18, i32 1
  %23 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %fcp_list, ptr %20, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %call5) #12
  br label %cleanup

if.end:                                           ; preds = %fc_dma_sync_single_for_cpu.exit
  %call.i.i70 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %16) #12
  br i1 %call.i.i70, label %if.end.i.i71, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i71:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %16, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i71, %if.end.list_del.exit_crit_edge
  %31 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %16, align 4
  %prev.i72 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i72 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i72, align 4
  %fcp_req = getelementptr inbounds %struct.nvmet_fc_defer_fcp_req, ptr %16, i32 0, i32 1
  %33 = ptrtoint ptr %fcp_req to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fcp_req, align 4
  %avail_defer_list = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %queue, i32 0, i32 15
  %prev.i73 = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %queue, i32 0, i32 15, i32 1
  %35 = ptrtoint ptr %prev.i73 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i73, align 4
  %call.i.i74 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %16, ptr noundef %36, ptr noundef %avail_defer_list) #12
  br i1 %call.i.i74, label %if.end.i.i76, label %list_del.exit.list_add_tail.exit77_crit_edge

list_del.exit.list_add_tail.exit77_crit_edge:     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit77

if.end.i.i76:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %prev.i73 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %16, ptr %prev.i73, align 4
  %38 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %avail_defer_list, ptr %16, align 4
  %39 = ptrtoint ptr %prev.i72 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev.i72, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %16, ptr %36, align 4
  br label %list_add_tail.exit77

list_add_tail.exit77:                             ; preds = %if.end.i.i76, %list_del.exit.list_add_tail.exit77_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %call5) #12
  %cmdiubuf = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 1
  %rspaddr = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %34, i32 0, i32 8
  %41 = ptrtoint ptr %rspaddr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rspaddr, align 4
  %rsplen = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %34, i32 0, i32 10
  %43 = ptrtoint ptr %rsplen to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %rsplen, align 4
  %conv20 = zext i16 %44 to i32
  %45 = call ptr @memcpy(ptr %cmdiubuf, ptr %42, i32 %conv20)
  store ptr null, ptr %rspaddr, align 4
  store i16 0, ptr %rsplen, align 4
  %nvmet_fc_private23 = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %34, i32 0, i32 12
  %46 = ptrtoint ptr %nvmet_fc_private23 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %fod, ptr %nvmet_fc_private23, align 4
  %47 = ptrtoint ptr %fod to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %34, ptr %fod, align 8
  %48 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %active, align 8
  %49 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops, align 4
  %defer_rcv = getelementptr inbounds %struct.nvmet_fc_target_template, ptr %50, i32 0, i32 5
  %51 = ptrtoint ptr %defer_rcv to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %defer_rcv, align 4
  tail call void %52(ptr noundef %3, ptr noundef %34) #12
  %work_q = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %queue, i32 0, i32 16
  %53 = ptrtoint ptr %work_q to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %work_q, align 8
  %defer_work = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 15
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %54, ptr noundef %defer_work) #12
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit77, %list_add_tail.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvmet_fc_xmt_fcp_rsp(ptr noundef %tgtport, ptr noundef %fod) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fod, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 4, ptr %1, align 4
  %3 = load ptr, ptr %fod, align 8
  %timeout = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %timeout, align 4
  tail call fastcc void @nvmet_fc_prep_fcp_rsp(ptr noundef %tgtport, ptr noundef %fod)
  %ops = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %tgtport, i32 0, i32 3
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %fcp_op = getelementptr inbounds %struct.nvmet_fc_target_template, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %fcp_op to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fcp_op, align 8
  %9 = ptrtoint ptr %fod to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fod, align 8
  %call = tail call i32 %8(ptr noundef %tgtport, ptr noundef %10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %11 = ptrtoint ptr %fod to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fod, align 8
  %data_sg.i.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 5
  %13 = ptrtoint ptr %data_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data_sg.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %if.then.nvmet_fc_free_tgt_pgs.exit.i_crit_edge, label %lor.lhs.false.i.i

if.then.nvmet_fc_free_tgt_pgs.exit.i_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_free_tgt_pgs.exit.i

lor.lhs.false.i.i:                                ; preds = %if.then
  %data_sg_cnt.i.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 6
  %15 = ptrtoint ptr %data_sg_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data_sg_cnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool1.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.nvmet_fc_free_tgt_pgs.exit.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.nvmet_fc_free_tgt_pgs.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_free_tgt_pgs.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %tgtport.i.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 16
  %17 = ptrtoint ptr %tgtport.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tgtport.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.fc_dma_unmap_sg.exit.i.i_crit_edge, label %if.then.i.i.i

if.end.i.i.fc_dma_unmap_sg.exit.i.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fc_dma_unmap_sg.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %io_dir.i.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 8
  %21 = ptrtoint ptr %io_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %io_dir.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.i.i = icmp eq i32 %22, 1
  %cond.i.i = select i1 %cmp.i.i, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef nonnull %20, ptr noundef nonnull %14, i32 noundef %16, i32 noundef %cond.i.i, i32 noundef 0) #12
  br label %fc_dma_unmap_sg.exit.i.i

fc_dma_unmap_sg.exit.i.i:                         ; preds = %if.then.i.i.i, %if.end.i.i.fc_dma_unmap_sg.exit.i.i_crit_edge
  %23 = ptrtoint ptr %data_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data_sg.i.i, align 8
  tail call void @sgl_free(ptr noundef %24) #12
  %25 = ptrtoint ptr %data_sg.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %data_sg.i.i, align 8
  %26 = ptrtoint ptr %data_sg_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %data_sg_cnt.i.i, align 4
  br label %nvmet_fc_free_tgt_pgs.exit.i

nvmet_fc_free_tgt_pgs.exit.i:                     ; preds = %fc_dma_unmap_sg.exit.i.i, %lor.lhs.false.i.i.nvmet_fc_free_tgt_pgs.exit.i_crit_edge, %if.then.nvmet_fc_free_tgt_pgs.exit.i_crit_edge
  %aborted.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 11
  %27 = ptrtoint ptr %aborted.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %aborted.i, align 2, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i, label %if.then.i, label %nvmet_fc_free_tgt_pgs.exit.i.nvmet_fc_abort_op.exit_crit_edge

nvmet_fc_free_tgt_pgs.exit.i.nvmet_fc_abort_op.exit_crit_edge: ; preds = %nvmet_fc_free_tgt_pgs.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_abort_op.exit

if.then.i:                                        ; preds = %nvmet_fc_free_tgt_pgs.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops, align 4
  %fcp_abort.i = getelementptr inbounds %struct.nvmet_fc_target_template, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %fcp_abort.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fcp_abort.i, align 4
  tail call void %32(ptr noundef %tgtport, ptr noundef %12) #12
  br label %nvmet_fc_abort_op.exit

nvmet_fc_abort_op.exit:                           ; preds = %if.then.i, %nvmet_fc_free_tgt_pgs.exit.i.nvmet_fc_abort_op.exit_crit_edge
  %queue.i = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 17
  %33 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %queue.i, align 8
  tail call fastcc void @nvmet_fc_free_fcp_iod(ptr noundef %34, ptr noundef %fod) #12
  br label %if.end

if.end:                                           ; preds = %nvmet_fc_abort_op.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sgl_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvmet_fc_prep_fcp_rsp(ptr nocapture noundef readonly %tgtport, ptr noundef %fod) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rspiubuf = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 2
  %cqe2 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 2, i32 6
  %0 = ptrtoint ptr %fod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fod, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp = icmp eq i8 %3, 3
  %transfer_len = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 14, i32 11
  %offset = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 7
  %xfr_length.0.in = select i1 %cmp, ptr %transfer_len, ptr %offset
  %4 = ptrtoint ptr %xfr_length.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %xfr_length.0 = load i32, ptr %xfr_length.0.in, align 8
  %queue = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 17
  %5 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %queue, align 8
  %zrspcnt = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %6, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %zrspcnt, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !279
  tail call void @llvm.prefetch.p0(ptr %zrspcnt, i32 1, i32 3, i32 1) #12
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %zrspcnt, ptr %zrspcnt, i32 1, ptr elementtype(i32) %zrspcnt) #12, !srcloc !280
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !281
  %8 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %queue, align 8
  %ersp_ratio = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %ersp_ratio to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ersp_ratio, align 2
  %conv5 = zext i16 %11 to i32
  %rem = urem i32 %asmresult.i.i.i.i, %conv5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %entry.if.else38_crit_edge, label %lor.lhs.false

entry.if.else38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else38

lor.lhs.false:                                    ; preds = %entry
  %sqe1 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 1, i32 9
  %12 = ptrtoint ptr %sqe1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sqe1, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %13)
  %cmp.i = icmp eq i8 %13, 127
  br i1 %cmp.i, label %lor.lhs.false.if.else38_crit_edge, label %lor.lhs.false8

lor.lhs.false.if.else38_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else38

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %14 = ptrtoint ptr %transfer_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %transfer_len, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %xfr_length.0, i32 %15)
  %cmp11.not = icmp eq i32 %xfr_length.0, %15
  br i1 %cmp11.not, label %lor.lhs.false13, label %lor.lhs.false8.if.else38_crit_edge

lor.lhs.false8.if.else38_crit_edge:               ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else38

lor.lhs.false13:                                  ; preds = %lor.lhs.false8
  %status = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 2, i32 6, i32 4
  %16 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %status, align 2
  %18 = and i16 %17, -257
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool15.not = icmp eq i16 %18, 0
  br i1 %tobool15.not, label %lor.lhs.false16, label %lor.lhs.false13.if.else38_crit_edge

lor.lhs.false13.if.else38_crit_edge:              ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else38

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %19 = ptrtoint ptr %cqe2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cqe2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool17.not = icmp eq i32 %20, 0
  br i1 %tobool17.not, label %lor.lhs.false18, label %lor.lhs.false16.if.else38_crit_edge

lor.lhs.false16.if.else38_crit_edge:              ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else38

lor.lhs.false18:                                  ; preds = %lor.lhs.false16
  %arrayidx19 = getelementptr i32, ptr %cqe2, i32 1
  %21 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool20.not = icmp eq i32 %22, 0
  br i1 %tobool20.not, label %lor.lhs.false21, label %lor.lhs.false18.if.else38_crit_edge

lor.lhs.false18.if.else38_crit_edge:              ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else38

lor.lhs.false21:                                  ; preds = %lor.lhs.false18
  %flags = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 1, i32 9, i32 0, i32 0, i32 1
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %flags, align 1
  %25 = and i8 %24, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool24.not = icmp eq i8 %25, 0
  br i1 %tobool24.not, label %lor.lhs.false25, label %lor.lhs.false21.if.else38_crit_edge

lor.lhs.false21.if.else38_crit_edge:              ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else38

lor.lhs.false25:                                  ; preds = %lor.lhs.false21
  %sq_head = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 2, i32 6, i32 1
  %26 = ptrtoint ptr %sq_head to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %sq_head, align 8
  %28 = tail call i16 @llvm.bswap.i16(i16 %27)
  %conv27 = zext i16 %28 to i32
  %call28 = tail call fastcc zeroext i1 @queue_90percent_full(ptr noundef %9, i32 noundef %conv27)
  br i1 %call28, label %lor.lhs.false25.if.else38_crit_edge, label %if.then36

lor.lhs.false25.if.else38_crit_edge:              ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else38

if.then36:                                        ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %fod to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fod, align 8
  %rspaddr = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %rspaddr to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %rspiubuf, ptr %rspaddr, align 4
  %rspdma = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 3
  %32 = ptrtoint ptr %rspdma to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rspdma, align 8
  %34 = load ptr, ptr %fod, align 8
  %rspdma34 = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %rspdma34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %33, ptr %rspdma34, align 4
  %36 = call ptr @memset(ptr %rspiubuf, i32 0, i32 12)
  br label %if.end45

if.else38:                                        ; preds = %lor.lhs.false25.if.else38_crit_edge, %lor.lhs.false21.if.else38_crit_edge, %lor.lhs.false18.if.else38_crit_edge, %lor.lhs.false16.if.else38_crit_edge, %lor.lhs.false13.if.else38_crit_edge, %lor.lhs.false8.if.else38_crit_edge, %lor.lhs.false.if.else38_crit_edge, %entry.if.else38_crit_edge
  %37 = ptrtoint ptr %fod to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fod, align 8
  %rspaddr75 = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %rspaddr75 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %rspiubuf, ptr %rspaddr75, align 4
  %rspdma76 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 3
  %40 = ptrtoint ptr %rspdma76 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rspdma76, align 8
  %42 = load ptr, ptr %fod, align 8
  %rspdma3477 = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %42, i32 0, i32 9
  %43 = ptrtoint ptr %rspdma3477 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %41, ptr %rspdma3477, align 4
  %iu_len = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 2, i32 2
  %44 = ptrtoint ptr %iu_len to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 8, ptr %iu_len, align 2
  %45 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %queue, align 8
  %rsn40 = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %46, i32 0, i32 8
  %call.i.i72 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rsn40, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !279
  tail call void @llvm.prefetch.p0(ptr %rsn40, i32 1, i32 3, i32 1) #12
  %47 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rsn40, ptr %rsn40, i32 1, ptr elementtype(i32) %rsn40) #12, !srcloc !280
  %asmresult.i.i.i.i73 = extractvalue { i32, i32 } %47, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !281
  %rsn42 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 2, i32 3
  %48 = ptrtoint ptr %rsn42 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %asmresult.i.i.i.i73, ptr %rsn42, align 4
  %xfrd_len = getelementptr inbounds %struct.nvmet_fc_fcp_iod, ptr %fod, i32 0, i32 2, i32 4
  %49 = ptrtoint ptr %xfrd_len to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %xfr_length.0, ptr %xfrd_len, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.else38, %if.then36
  %.sink = phi i16 [ 32, %if.else38 ], [ 12, %if.then36 ]
  %rspdma78 = phi ptr [ %rspdma76, %if.else38 ], [ %rspdma, %if.then36 ]
  %50 = ptrtoint ptr %fod to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fod, align 8
  %rsplen44 = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %51, i32 0, i32 10
  %52 = ptrtoint ptr %rsplen44 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %.sink, ptr %rsplen44, align 4
  %dev = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %tgtport, i32 0, i32 2
  %53 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev, align 8
  %tobool.not.i = icmp eq ptr %54, null
  br i1 %tobool.not.i, label %if.end45.fc_dma_sync_single_for_device.exit_crit_edge, label %if.then.i

if.end45.fc_dma_sync_single_for_device.exit_crit_edge: ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %fc_dma_sync_single_for_device.exit

if.then.i:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  %55 = ptrtoint ptr %rspdma78 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rspdma78, align 8
  tail call void @dma_sync_single_for_device(ptr noundef nonnull %54, i32 noundef %56, i32 noundef 32, i32 noundef 1) #12
  br label %fc_dma_sync_single_for_device.exit

fc_dma_sync_single_for_device.exit:               ; preds = %if.then.i, %if.end45.fc_dma_sync_single_for_device.exit_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @queue_90percent_full(ptr noundef %q, i32 noundef %sqhd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sqtail1 = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %q, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sqtail1, i32 noundef 4) #12
  %0 = ptrtoint ptr %sqtail1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sqtail1, align 4
  %sqsize = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %q, i32 0, i32 2
  %2 = ptrtoint ptr %sqsize to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sqsize, align 4
  %conv = zext i16 %3 to i32
  %rem = srem i32 %1, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %sqhd)
  %cmp = icmp ult i32 %rem, %sqhd
  %add = select i1 %cmp, i32 %conv, i32 0
  %add.pn = sub i32 %rem, %sqhd
  %cond = add i32 %add.pn, %add
  %mul = mul i32 %cond, 10
  %4 = mul nuw nsw i32 %conv, 9
  %mul9 = add nsw i32 %4, -9
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %mul9)
  %cmp10 = icmp uge i32 %mul, %mul9
  ret i1 %cmp10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sgl_alloc(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_fc_fcp_nvme_cmd_done(ptr noundef %nvme_req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %nvme_req, i32 -208
  %tgtport1 = getelementptr i8, ptr %nvme_req, i32 380
  %0 = ptrtoint ptr %tgtport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tgtport1, align 4
  %flock.i = getelementptr i8, ptr %nvme_req, i32 -44
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %flock.i) #12
  %abort7.i = getelementptr i8, ptr %nvme_req, i32 -47
  %2 = ptrtoint ptr %abort7.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %abort7.i, align 1, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %flock.i, i32 noundef %call4.i) #12
  %sq_head.i = getelementptr i8, ptr %nvme_req, i32 -80
  %4 = ptrtoint ptr %sq_head.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sq_head.i, align 8
  %queue.i = getelementptr i8, ptr %nvme_req, i32 384
  %6 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %queue.i, align 8
  %sqhd.i = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %sqhd.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %5, ptr %sqhd.i, align 8
  br i1 %tobool.not.i, label %if.else.i, label %if.then11.i

if.then11.i:                                      ; preds = %entry
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %data_sg.i.i.i = getelementptr i8, ptr %nvme_req, i32 -64
  %11 = ptrtoint ptr %data_sg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data_sg.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i.i, label %if.then11.i.nvmet_fc_free_tgt_pgs.exit.i.i_crit_edge, label %lor.lhs.false.i.i.i

if.then11.i.nvmet_fc_free_tgt_pgs.exit.i.i_crit_edge: ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_free_tgt_pgs.exit.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.then11.i
  %data_sg_cnt.i.i.i = getelementptr i8, ptr %nvme_req, i32 -60
  %13 = ptrtoint ptr %data_sg_cnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_sg_cnt.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool1.not.i.i.i = icmp eq i32 %14, 0
  br i1 %tobool1.not.i.i.i, label %lor.lhs.false.i.i.i.nvmet_fc_free_tgt_pgs.exit.i.i_crit_edge, label %if.end.i.i.i

lor.lhs.false.i.i.i.nvmet_fc_free_tgt_pgs.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_free_tgt_pgs.exit.i.i

if.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.i
  %15 = ptrtoint ptr %tgtport1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tgtport1, align 4
  %dev.i.i.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.fc_dma_unmap_sg.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

if.end.i.i.i.fc_dma_unmap_sg.exit.i.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fc_dma_unmap_sg.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %io_dir.i.i.i = getelementptr i8, ptr %nvme_req, i32 -52
  %19 = ptrtoint ptr %io_dir.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %io_dir.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.i.i.i = icmp eq i32 %20, 1
  %cond.i.i.i = select i1 %cmp.i.i.i, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef nonnull %18, ptr noundef nonnull %12, i32 noundef %14, i32 noundef %cond.i.i.i, i32 noundef 0) #12
  br label %fc_dma_unmap_sg.exit.i.i.i

fc_dma_unmap_sg.exit.i.i.i:                       ; preds = %if.then.i.i.i.i, %if.end.i.i.i.fc_dma_unmap_sg.exit.i.i.i_crit_edge
  %21 = ptrtoint ptr %data_sg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data_sg.i.i.i, align 8
  tail call void @sgl_free(ptr noundef %22) #12
  %23 = ptrtoint ptr %data_sg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %data_sg.i.i.i, align 8
  %24 = ptrtoint ptr %data_sg_cnt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %data_sg_cnt.i.i.i, align 4
  br label %nvmet_fc_free_tgt_pgs.exit.i.i

nvmet_fc_free_tgt_pgs.exit.i.i:                   ; preds = %fc_dma_unmap_sg.exit.i.i.i, %lor.lhs.false.i.i.i.nvmet_fc_free_tgt_pgs.exit.i.i_crit_edge, %if.then11.i.nvmet_fc_free_tgt_pgs.exit.i.i_crit_edge
  %aborted.i.i = getelementptr i8, ptr %nvme_req, i32 -46
  %25 = ptrtoint ptr %aborted.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %aborted.i.i, align 2, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %nvmet_fc_free_tgt_pgs.exit.i.i.nvmet_fc_abort_op.exit.i_crit_edge

nvmet_fc_free_tgt_pgs.exit.i.i.nvmet_fc_abort_op.exit.i_crit_edge: ; preds = %nvmet_fc_free_tgt_pgs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_abort_op.exit.i

if.then.i.i:                                      ; preds = %nvmet_fc_free_tgt_pgs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %ops.i.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops.i.i, align 4
  %fcp_abort.i.i = getelementptr inbounds %struct.nvmet_fc_target_template, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %fcp_abort.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fcp_abort.i.i, align 4
  tail call void %30(ptr noundef %1, ptr noundef %10) #12
  br label %nvmet_fc_abort_op.exit.i

nvmet_fc_abort_op.exit.i:                         ; preds = %if.then.i.i, %nvmet_fc_free_tgt_pgs.exit.i.i.nvmet_fc_abort_op.exit.i_crit_edge
  %31 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %queue.i, align 8
  tail call fastcc void @nvmet_fc_free_fcp_iod(ptr noundef %32, ptr noundef %add.ptr.i) #12
  br label %__nvmet_fc_fcp_nvme_cmd_done.exit

if.else.i:                                        ; preds = %entry
  %io_dir.i = getelementptr i8, ptr %nvme_req, i32 -52
  %33 = ptrtoint ptr %io_dir.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %io_dir.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp22.i = icmp eq i32 %34, 2
  br i1 %cmp22.i, label %land.lhs.true.i, label %if.else.i.if.end27.i_crit_edge

if.else.i.if.end27.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %data_sg_cnt.i = getelementptr i8, ptr %nvme_req, i32 -60
  %35 = ptrtoint ptr %data_sg_cnt.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %data_sg_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool24.not.i = icmp eq i32 %36, 0
  br i1 %tobool24.not.i, label %land.lhs.true.i.if.end27.i_crit_edge, label %if.then25.i

land.lhs.true.i.if.end27.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i

if.then25.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @nvmet_fc_transfer_fcp_data(ptr noundef %1, ptr noundef %add.ptr.i, i8 noundef zeroext 1) #12
  br label %__nvmet_fc_fcp_nvme_cmd_done.exit

if.end27.i:                                       ; preds = %land.lhs.true.i.if.end27.i_crit_edge, %if.else.i.if.end27.i_crit_edge
  %data_sg.i.i = getelementptr i8, ptr %nvme_req, i32 -64
  %37 = ptrtoint ptr %data_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data_sg.i.i, align 8
  %tobool.not.i1.i = icmp eq ptr %38, null
  br i1 %tobool.not.i1.i, label %if.end27.i.nvmet_fc_free_tgt_pgs.exit.i_crit_edge, label %lor.lhs.false.i.i

if.end27.i.nvmet_fc_free_tgt_pgs.exit.i_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_free_tgt_pgs.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end27.i
  %data_sg_cnt.i.i = getelementptr i8, ptr %nvme_req, i32 -60
  %39 = ptrtoint ptr %data_sg_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %data_sg_cnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool1.not.i.i = icmp eq i32 %40, 0
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.nvmet_fc_free_tgt_pgs.exit.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.nvmet_fc_free_tgt_pgs.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_free_tgt_pgs.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %41 = ptrtoint ptr %tgtport1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tgtport1, align 4
  %dev.i.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i.i, align 8
  %tobool.not.i.i2.i = icmp eq ptr %44, null
  br i1 %tobool.not.i.i2.i, label %if.end.i.i.fc_dma_unmap_sg.exit.i.i_crit_edge, label %if.then.i.i.i

if.end.i.i.fc_dma_unmap_sg.exit.i.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fc_dma_unmap_sg.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp.i.i = icmp eq i32 %34, 1
  %cond.i.i = select i1 %cmp.i.i, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef nonnull %44, ptr noundef nonnull %38, i32 noundef %40, i32 noundef %cond.i.i, i32 noundef 0) #12
  br label %fc_dma_unmap_sg.exit.i.i

fc_dma_unmap_sg.exit.i.i:                         ; preds = %if.then.i.i.i, %if.end.i.i.fc_dma_unmap_sg.exit.i.i_crit_edge
  %45 = ptrtoint ptr %data_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data_sg.i.i, align 8
  tail call void @sgl_free(ptr noundef %46) #12
  %47 = ptrtoint ptr %data_sg.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %data_sg.i.i, align 8
  %48 = ptrtoint ptr %data_sg_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %data_sg_cnt.i.i, align 4
  br label %nvmet_fc_free_tgt_pgs.exit.i

nvmet_fc_free_tgt_pgs.exit.i:                     ; preds = %fc_dma_unmap_sg.exit.i.i, %lor.lhs.false.i.i.nvmet_fc_free_tgt_pgs.exit.i_crit_edge, %if.end27.i.nvmet_fc_free_tgt_pgs.exit.i_crit_edge
  tail call fastcc void @nvmet_fc_xmt_fcp_rsp(ptr noundef %1, ptr noundef %add.ptr.i) #12
  br label %__nvmet_fc_fcp_nvme_cmd_done.exit

__nvmet_fc_fcp_nvme_cmd_done.exit:                ; preds = %nvmet_fc_free_tgt_pgs.exit.i, %if.then25.i, %nvmet_fc_abort_op.exit.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_fc_add_port(ptr noundef %port) #0 align 64 {
entry:
  %token64.i1.i = alloca i64, align 8
  %token64.i.i = alloca i64, align 8
  %name.i = alloca [19 x i8], align 1
  %wwn.i = alloca %struct.substring_t, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_addr = getelementptr inbounds %struct.nvmet_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %disc_addr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %disc_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp.not = icmp eq i8 %1, 2
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %adrfam = getelementptr inbounds %struct.nvmet_port, ptr %port, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %adrfam to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %adrfam, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp4.not = icmp eq i8 %3, 4
  br i1 %cmp4.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %traddr7 = getelementptr inbounds %struct.nvmet_port, ptr %port, i32 0, i32 1, i32 12
  call void @llvm.lifetime.start.p0(i64 19, ptr nonnull %name.i) #12
  %4 = getelementptr inbounds [19 x i8], ptr %name.i, i32 0, i32 1
  %5 = getelementptr inbounds [19 x i8], ptr %name.i, i32 0, i32 2
  %6 = getelementptr inbounds [19 x i8], ptr %name.i, i32 0, i32 18
  %7 = call ptr @memset(ptr %name.i, i32 255, i32 19)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wwn.i) #12
  %8 = getelementptr inbounds %struct.substring_t, ptr %wwn.i, i32 0, i32 1
  %9 = ptrtoint ptr %wwn.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %name.i, ptr %wwn.i, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %6, ptr %8, align 4
  %call.i = call i32 @strnlen(ptr noundef %traddr7, i32 noundef 256) #18
  %11 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %call.i, label %if.end.nvme_fc_parse_traddr.exit_crit_edge [
    i32 43, label %land.lhs.true.i
    i32 39, label %land.lhs.true8.i
  ]

if.end.nvme_fc_parse_traddr.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvme_fc_parse_traddr.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = call i32 @strncmp(ptr noundef %traddr7, ptr noundef nonnull dereferenceable(6) @.str.100, i32 noundef 5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true2.i, label %land.lhs.true.i.nvme_fc_parse_traddr.exit_crit_edge

land.lhs.true.i.nvme_fc_parse_traddr.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvme_fc_parse_traddr.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %arrayidx3.i = getelementptr %struct.nvmet_port, ptr %port, i32 0, i32 1, i32 12, i32 22
  %call4.i = call i32 @strncmp(ptr noundef %arrayidx3.i, ptr noundef nonnull dereferenceable(6) @.str.101, i32 noundef 5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true2.i.if.end17.i_crit_edge, label %land.lhs.true2.i.nvme_fc_parse_traddr.exit_crit_edge

land.lhs.true2.i.nvme_fc_parse_traddr.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvme_fc_parse_traddr.exit

land.lhs.true2.i.if.end17.i_crit_edge:            ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i

land.lhs.true8.i:                                 ; preds = %if.end
  %call9.i = call i32 @strncmp(ptr noundef %traddr7, ptr noundef nonnull dereferenceable(4) @.str.102, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %land.lhs.true11.i, label %land.lhs.true8.i.nvme_fc_parse_traddr.exit_crit_edge

land.lhs.true8.i.nvme_fc_parse_traddr.exit_crit_edge: ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvme_fc_parse_traddr.exit

land.lhs.true11.i:                                ; preds = %land.lhs.true8.i
  %arrayidx12.i = getelementptr %struct.nvmet_port, ptr %port, i32 0, i32 1, i32 12, i32 20
  %call13.i = call i32 @strncmp(ptr noundef %arrayidx12.i, ptr noundef nonnull dereferenceable(4) @.str.103, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %land.lhs.true11.i.if.end17.i_crit_edge, label %land.lhs.true11.i.nvme_fc_parse_traddr.exit_crit_edge

land.lhs.true11.i.nvme_fc_parse_traddr.exit_crit_edge: ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvme_fc_parse_traddr.exit

land.lhs.true11.i.if.end17.i_crit_edge:           ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i

if.end17.i:                                       ; preds = %land.lhs.true11.i.if.end17.i_crit_edge, %land.lhs.true2.i.if.end17.i_crit_edge
  %nnoffset.0.i = phi i32 [ 5, %land.lhs.true2.i.if.end17.i_crit_edge ], [ 3, %land.lhs.true11.i.if.end17.i_crit_edge ]
  %pnoffset.0.i = phi i32 [ 27, %land.lhs.true2.i.if.end17.i_crit_edge ], [ 23, %land.lhs.true11.i.if.end17.i_crit_edge ]
  %12 = ptrtoint ptr %name.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 48, ptr %name.i, align 1
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 120, ptr %4, align 1
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %6, align 1
  %arrayidx22.i = getelementptr i8, ptr %traddr7, i32 %nnoffset.0.i
  %15 = call ptr @memcpy(ptr %5, ptr %arrayidx22.i, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %token64.i.i) #12
  %16 = ptrtoint ptr %token64.i.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 -1, ptr %token64.i.i, align 8, !annotation !272
  %call.i.i = call i32 @match_u64(ptr noundef nonnull %wwn.i, ptr noundef nonnull %token64.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end26.i, label %__nvme_fc_parse_u64.exit.i

__nvme_fc_parse_u64.exit.i:                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %token64.i.i) #12
  br label %nvme_fc_parse_traddr.exit

if.end26.i:                                       ; preds = %if.end17.i
  %17 = ptrtoint ptr %token64.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %token64.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %token64.i.i) #12
  %arrayidx28.i = getelementptr i8, ptr %traddr7, i32 %pnoffset.0.i
  %19 = call ptr @memcpy(ptr %5, ptr %arrayidx28.i, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %token64.i1.i) #12
  %20 = ptrtoint ptr %token64.i1.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 -1, ptr %token64.i1.i, align 8, !annotation !272
  %call.i2.i = call i32 @match_u64(ptr noundef nonnull %wwn.i, ptr noundef nonnull %token64.i1.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %tobool.not.i3.i = icmp eq i32 %call.i2.i, 0
  br i1 %tobool.not.i3.i, label %if.end9, label %__nvme_fc_parse_u64.exit6.i

__nvme_fc_parse_u64.exit6.i:                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %token64.i1.i) #12
  br label %nvme_fc_parse_traddr.exit

nvme_fc_parse_traddr.exit:                        ; preds = %__nvme_fc_parse_u64.exit6.i, %__nvme_fc_parse_u64.exit.i, %land.lhs.true11.i.nvme_fc_parse_traddr.exit_crit_edge, %land.lhs.true8.i.nvme_fc_parse_traddr.exit_crit_edge, %land.lhs.true2.i.nvme_fc_parse_traddr.exit_crit_edge, %land.lhs.true.i.nvme_fc_parse_traddr.exit_crit_edge, %if.end.nvme_fc_parse_traddr.exit_crit_edge
  %call33.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.105) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wwn.i) #12
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %name.i) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end26.i
  %21 = ptrtoint ptr %token64.i1.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %token64.i1.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %token64.i1.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wwn.i) #12
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %name.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 32) #16
  %tobool11.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %call18 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @nvmet_fc_tgtlock) #12
  %.pn70 = load ptr, ptr @nvmet_fc_target_list, align 4
  %cmp22.not71 = icmp eq ptr %.pn70, @nvmet_fc_target_list
  br i1 %cmp22.not71, label %if.end13.if.then40_crit_edge, label %if.end13.for.body_crit_edge

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  br label %for.body

if.end13.if.then40_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then40

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end13.for.body_crit_edge
  %.pn72 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn70, %if.end13.for.body_crit_edge ]
  %node_name = getelementptr i8, ptr %.pn72, i32 -32
  %24 = ptrtoint ptr %node_name to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %node_name, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %18)
  %cmp24 = icmp eq i64 %25, %18
  br i1 %cmp24, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %port_name = getelementptr i8, ptr %.pn72, i32 -24
  %26 = ptrtoint ptr %port_name to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %port_name, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %22)
  %cmp27 = icmp eq i64 %27, %22
  br i1 %cmp27, label %if.then29, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then29:                                        ; preds = %land.lhs.true
  %pe30 = getelementptr i8, ptr %.pn72, i32 156
  %28 = ptrtoint ptr %pe30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pe30, align 4
  %tobool31.not = icmp eq ptr %29, null
  br i1 %tobool31.not, label %for.end, label %if.then29.if.then40_crit_edge

if.then29.if.then40_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then40

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %30 = ptrtoint ptr %.pn72 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn = load ptr, ptr %.pn72, align 4
  %cmp22.not = icmp eq ptr %.pn, @nvmet_fc_target_list
  br i1 %cmp22.not, label %for.inc.if.then40_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.if.then40_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then40

for.end:                                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  %tgtport.0.le = getelementptr i8, ptr %.pn72, i32 -40
  call fastcc void @nvmet_fc_portentry_bind(ptr noundef %tgtport.0.le, ptr noundef nonnull %call7.i.i, ptr noundef %port)
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @nvmet_fc_tgtlock, i32 noundef %call18) #12
  br label %cleanup

if.then40:                                        ; preds = %for.inc.if.then40_crit_edge, %if.then29.if.then40_crit_edge, %if.end13.if.then40_crit_edge
  %ret.0.ph = phi i32 [ -114, %if.then29.if.then40_crit_edge ], [ -6, %if.end13.if.then40_crit_edge ], [ -6, %for.inc.if.then40_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @nvmet_fc_tgtlock, i32 noundef %call18) #12
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %for.end, %if.end9.cleanup_crit_edge, %nvme_fc_parse_traddr.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %nvme_fc_parse_traddr.exit ], [ -12, %if.end9.cleanup_crit_edge ], [ %ret.0.ph, %if.then40 ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_fc_remove_port(ptr nocapture noundef readonly %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.nvmet_port, ptr %port, i32 0, i32 11
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @nvmet_fc_tgtlock) #12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pe6.i = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %pe6.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pe6.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %pe_list.i = getelementptr inbounds %struct.nvmet_fc_port_entry, ptr %1, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pe_list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.nvmet_fc_portentry_unbind.exit_crit_edge

if.end.i.nvmet_fc_portentry_unbind.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvmet_fc_portentry_unbind.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.nvmet_fc_port_entry, ptr %1, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %pe_list.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pe_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %nvmet_fc_portentry_unbind.exit

nvmet_fc_portentry_unbind.exit:                   ; preds = %if.end.i.i.i, %if.end.i.nvmet_fc_portentry_unbind.exit_crit_edge
  %11 = ptrtoint ptr %pe_list.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %pe_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.nvmet_fc_port_entry, ptr %1, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @nvmet_fc_tgtlock, i32 noundef %call2.i) #12
  tail call void @kfree(ptr noundef %1) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_fc_delete_ctrl(ptr noundef readnone %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @nvmet_fc_tgtlock) #12
  %0 = load ptr, ptr @nvmet_fc_target_list, align 4
  %cmp11.not151 = icmp eq ptr %0, @nvmet_fc_target_list
  br i1 %cmp11.not151, label %entry.for.end100_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end100_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end100

for.body:                                         ; preds = %for.inc94.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in153 = phi ptr [ %.pn155, %for.inc94.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %flags.0152 = phi i32 [ %flags.1, %for.inc94.for.body_crit_edge ], [ %call2, %entry.for.body_crit_edge ]
  %tgtport.0154 = getelementptr i8, ptr %.pn.in153, i32 -40
  %1 = ptrtoint ptr %.pn.in153 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn155 = load ptr, ptr %.pn.in153, align 8
  %call13 = tail call fastcc i32 @nvmet_fc_tgtport_get(ptr noundef %tgtport.0154)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %for.body.for.inc94_crit_edge, label %if.end

for.body.for.inc94_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc94

if.end:                                           ; preds = %for.body
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @nvmet_fc_tgtlock, i32 noundef %flags.0152) #12
  %2 = tail call i32 @llvm.read_register.i32(metadata !253) #12
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !268
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 696, ptr noundef nonnull @.str.29) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call15 = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end24_crit_edge

rcu_read_lock.exit.do.end24_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end24

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call17 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true.do.end24_crit_edge, label %land.lhs.true19

land.lhs.true.do.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end24

land.lhs.true19:                                  ; preds = %land.lhs.true
  %.b126 = load i1, ptr @nvmet_fc_delete_ctrl.__warned, align 1
  br i1 %.b126, label %land.lhs.true19.do.end24_crit_edge, label %if.then21

land.lhs.true19.do.end24_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end24

if.then21:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nvmet_fc_delete_ctrl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1582, ptr noundef nonnull @.str.76) #12
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %land.lhs.true19.do.end24_crit_edge, %land.lhs.true.do.end24_crit_edge, %rcu_read_lock.exit.do.end24_crit_edge
  %assoc_list = getelementptr i8, ptr %.pn.in153, i32 88
  %6 = ptrtoint ptr %assoc_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn124145 = load volatile ptr, ptr %assoc_list, align 4
  %cmp35.not146 = icmp eq ptr %.pn124145, %assoc_list
  br i1 %cmp35.not146, label %do.end24.for.end.loopexit_crit_edge, label %do.end24.for.body37_crit_edge

do.end24.for.body37_crit_edge:                    ; preds = %do.end24
  br label %for.body37

do.end24.for.end.loopexit_crit_edge:              ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.loopexit

for.body37:                                       ; preds = %for.inc.for.body37_crit_edge, %do.end24.for.body37_crit_edge
  %.pn124147 = phi ptr [ %.pn124, %for.inc.for.body37_crit_edge ], [ %.pn124145, %do.end24.for.body37_crit_edge ]
  %queues = getelementptr i8, ptr %.pn124147, i32 8
  %7 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %queues, align 4
  %call43 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %land.lhs.true45, label %for.body37.do.end53_crit_edge

for.body37.do.end53_crit_edge:                    ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end53

land.lhs.true45:                                  ; preds = %for.body37
  %call46 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %land.lhs.true45.do.end53_crit_edge, label %land.lhs.true48

land.lhs.true45.do.end53_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end53

land.lhs.true48:                                  ; preds = %land.lhs.true45
  %.b119125 = load i1, ptr @nvmet_fc_delete_ctrl.__warned.106, align 1
  br i1 %.b119125, label %land.lhs.true48.do.end53_crit_edge, label %if.then50

land.lhs.true48.do.end53_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end53

if.then50:                                        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nvmet_fc_delete_ctrl.__warned.106, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1583, ptr noundef nonnull @.str.25) #12
  br label %do.end53

do.end53:                                         ; preds = %if.then50, %land.lhs.true48.do.end53_crit_edge, %land.lhs.true45.do.end53_crit_edge, %for.body37.do.end53_crit_edge
  %tobool55.not = icmp eq ptr %8, null
  br i1 %tobool55.not, label %do.end53.for.inc_crit_edge, label %land.lhs.true56

do.end53.for.inc_crit_edge:                       ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true56:                                  ; preds = %do.end53
  %nvme_sq = getelementptr inbounds %struct.nvmet_fc_tgt_queue, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %nvme_sq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nvme_sq, align 4
  %cmp58 = icmp eq ptr %10, %ctrl
  br i1 %cmp58, label %if.then60, label %land.lhs.true56.for.inc_crit_edge

land.lhs.true56.for.inc_crit_edge:                ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then60:                                        ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #14
  %assoc.0.le = getelementptr i8, ptr %.pn124147, i32 -28
  %call61 = tail call fastcc i32 @nvmet_fc_tgt_a_get(ptr noundef %assoc.0.le)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp ne i32 %call61, 0
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true56.for.inc_crit_edge, %do.end53.for.inc_crit_edge
  %11 = ptrtoint ptr %.pn124147 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn124 = load volatile ptr, ptr %.pn124147, align 4
  %cmp35.not = icmp eq ptr %.pn124, %assoc_list
  br i1 %cmp35.not, label %for.inc.for.end.loopexit_crit_edge, label %for.inc.for.body37_crit_edge

for.inc.for.body37_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body37

for.inc.for.end.loopexit_crit_edge:               ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.inc.for.end.loopexit_crit_edge, %do.end24.for.end.loopexit_crit_edge
  %assoc.0.le143 = getelementptr i8, ptr %.pn.in153, i32 60
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.then60
  %.pn124140 = phi ptr [ %.pn124147, %if.then60 ], [ %assoc_list, %for.end.loopexit ]
  %assoc.0138 = phi ptr [ %assoc.0.le, %if.then60 ], [ %assoc.0.le143, %for.end.loopexit ]
  %found_ctrl.1.off0 = phi i1 [ %tobool62.not, %if.then60 ], [ false, %for.end.loopexit ]
  %call.i128 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i128, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i131

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i131:                               ; preds = %for.end
  %call1.i129 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i129)
  %tobool.not.i130 = icmp eq i32 %call1.i129, 0
  br i1 %tobool.not.i130, label %land.lhs.true.i131.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i133

land.lhs.true.i131.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i131
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i133:                              ; preds = %land.lhs.true.i131
  %.b4.i132 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i132, label %land.lhs.true2.i133.rcu_read_unlock.exit_crit_edge, label %if.then.i134

land.lhs.true2.i133.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i133
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i134:                                     ; preds = %land.lhs.true2.i133
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 724, ptr noundef nonnull @.str.30) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i134, %land.lhs.true2.i133.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i131.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !269
  %12 = tail call i32 @llvm.read_register.i32(metadata !253) #12
  %and.i.i.i.i.i135 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i135 to ptr
  %preempt_count.i.i.i.i136 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i136 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i136, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i136, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  tail call fastcc void @nvmet_fc_tgtport_put(ptr noundef %tgtport.0154)
  br i1 %found_ctrl.1.off0, label %if.then76, label %do.body82

if.then76:                                        ; preds = %rcu_read_unlock.exit
  %del_work = getelementptr i8, ptr %.pn124140, i32 528
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %16 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %del_work) #12
  br i1 %call.i.i, label %if.then76.cleanup_crit_edge, label %if.then78

if.then76.cleanup_crit_edge:                      ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then78:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @nvmet_fc_tgt_a_put(ptr noundef %assoc.0138)
  br label %cleanup

do.body82:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call89 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @nvmet_fc_tgtlock) #12
  br label %for.inc94

for.inc94:                                        ; preds = %do.body82, %for.body.for.inc94_crit_edge
  %flags.1 = phi i32 [ %call89, %do.body82 ], [ %flags.0152, %for.body.for.inc94_crit_edge ]
  %cmp11.not = icmp eq ptr %.pn155, @nvmet_fc_target_list
  br i1 %cmp11.not, label %for.inc94.for.end100_crit_edge, label %for.inc94.for.body_crit_edge

for.inc94.for.body_crit_edge:                     ; preds = %for.inc94
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc94.for.end100_crit_edge:                   ; preds = %for.inc94
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end100

for.end100:                                       ; preds = %for.inc94.for.end100_crit_edge, %entry.for.end100_crit_edge
  %flags.0.lcssa = phi i32 [ %call2, %entry.for.end100_crit_edge ], [ %flags.1, %for.inc94.for.end100_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @nvmet_fc_tgtlock, i32 noundef %flags.0.lcssa) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end100, %if.then78, %if.then76.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_fc_discovery_chg(ptr nocapture noundef readonly %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.nvmet_port, ptr %port, i32 0, i32 11
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %discovery_event = getelementptr inbounds %struct.nvmet_fc_target_template, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %discovery_event to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %discovery_event, align 8
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %7(ptr noundef nonnull %3) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvmet_fc_portentry_bind(ptr noundef %tgtport, ptr noundef %pe, ptr noundef %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @nvmet_fc_tgtlock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !270

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1270, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %1 = ptrtoint ptr %pe to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tgtport, ptr %pe, align 8
  %pe25 = getelementptr inbounds %struct.nvmet_fc_tgtport, ptr %tgtport, i32 0, i32 12
  %2 = ptrtoint ptr %pe25 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pe, ptr %pe25, align 4
  %port26 = getelementptr inbounds %struct.nvmet_fc_port_entry, ptr %pe, i32 0, i32 1
  %3 = ptrtoint ptr %port26 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %port, ptr %port26, align 4
  %priv = getelementptr inbounds %struct.nvmet_port, ptr %port, i32 0, i32 11
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pe, ptr %priv, align 4
  %node_name = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %tgtport, i32 0, i32 1
  %5 = ptrtoint ptr %node_name to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %node_name, align 8
  %node_name27 = getelementptr inbounds %struct.nvmet_fc_port_entry, ptr %pe, i32 0, i32 2
  %7 = ptrtoint ptr %node_name27 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %node_name27, align 8
  %port_name = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %tgtport, i32 0, i32 2
  %8 = ptrtoint ptr %port_name to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %port_name, align 8
  %port_name29 = getelementptr inbounds %struct.nvmet_fc_port_entry, ptr %pe, i32 0, i32 3
  %10 = ptrtoint ptr %port_name29 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %port_name29, align 8
  %pe_list = getelementptr inbounds %struct.nvmet_fc_port_entry, ptr %pe, i32 0, i32 4
  %11 = ptrtoint ptr %pe_list to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %pe_list, ptr %pe_list, align 4
  %prev.i = getelementptr inbounds %struct.nvmet_fc_port_entry, ptr %pe, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pe_list, ptr %prev.i, align 4
  %13 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @nvmet_fc_portentry_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %pe_list, ptr noundef %13, ptr noundef nonnull @nvmet_fc_portentry_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  store ptr %pe_list, ptr getelementptr inbounds (%struct.list_head, ptr @nvmet_fc_portentry_list, i32 0, i32 1), align 4
  %14 = ptrtoint ptr %pe_list to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @nvmet_fc_portentry_list, ptr %pe_list, align 4
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %prev.i, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %pe_list, ptr %13, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_u64(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmet_register_transport(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 122)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 122)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }
attributes #18 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !30, !32, !34, !35, !36, !37, !39, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !57, !58, !59, !61, !62, !63, !65, !66, !68, !69, !71, !72, !73, !74, !76, !77, !78, !80, !81, !83, !85, !86, !88, !89, !91, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !173, !174, !175, !177, !178, !180, !181, !182, !183, !185, !186, !187, !189, !190, !191, !193, !195, !196, !198, !200, !201, !202, !203, !205, !206, !207, !208, !210, !211, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !247, !248, !249, !251}
!llvm.named.register.sp = !{!253}
!llvm.module.flags = !{!254, !255, !256, !257, !258, !259, !260, !261}
!llvm.ident = !{!262}

!0 = !{ptr @nvmet_fc_register_targetport.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/nvme/target/fc.c", i32 1408, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab_nvmet_fc_register_targetport, !4, !"__ksymtab_nvmet_fc_register_targetport", i1 false, i1 false}
!4 = !{!"../drivers/nvme/target/fc.c", i32 1443, i32 1}
!5 = !{ptr @__ksymtab_nvmet_fc_invalidate_host, !6, !"__ksymtab_nvmet_fc_invalidate_host", i1 false, i1 false}
!6 = !{!"../drivers/nvme/target/fc.c", i32 1559, i32 1}
!7 = !{ptr @__ksymtab_nvmet_fc_unregister_targetport, !8, !"__ksymtab_nvmet_fc_unregister_targetport", i1 false, i1 false}
!8 = !{!"../drivers/nvme/target/fc.c", i32 1638, i32 1}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/nvme/target/fc.c", i32 2031, i32 3}
!11 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @nvmet_fc_rcv_ls_req._entry, !10, !"_entry", i1 false, i1 false}
!16 = !{ptr @nvmet_fc_rcv_ls_req._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/nvme/target/fc.c", i32 2040, i32 3}
!20 = !{ptr @nvmet_fc_rcv_ls_req._entry.7, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @nvmet_fc_rcv_ls_req._entry_ptr.9, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/nvme/target/fc.c", i32 2049, i32 3}
!24 = !{ptr @nvmet_fc_rcv_ls_req._entry.10, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @nvmet_fc_rcv_ls_req._entry_ptr.12, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @__ksymtab_nvmet_fc_rcv_ls_req, !27, !"__ksymtab_nvmet_fc_rcv_ls_req", i1 false, i1 false}
!27 = !{!"../drivers/nvme/target/fc.c", i32 2067, i32 1}
!28 = !{ptr @__ksymtab_nvmet_fc_rcv_fcp_req, !29, !"__ksymtab_nvmet_fc_rcv_fcp_req", i1 false, i1 false}
!29 = !{!"../drivers/nvme/target/fc.c", i32 2727, i32 1}
!30 = !{ptr @__ksymtab_nvmet_fc_rcv_fcp_abort, !31, !"__ksymtab_nvmet_fc_rcv_fcp_abort", i1 false, i1 false}
!31 = !{!"../drivers/nvme/target/fc.c", i32 2780, i32 1}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/nvme/target/fc.c", i32 2935, i32 3}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @nvmet_fc_exit_module._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @nvmet_fc_exit_module._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @__initcall__kmod_nvmet_fc__315_2942_nvmet_fc_init_module6, !38, !"__initcall__kmod_nvmet_fc__315_2942_nvmet_fc_init_module6", i1 false, i1 false}
!38 = !{!"../drivers/nvme/target/fc.c", i32 2942, i32 1}
!39 = !{ptr @__exitcall_nvmet_fc_exit_module, !40, !"__exitcall_nvmet_fc_exit_module", i1 false, i1 false}
!40 = !{!"../drivers/nvme/target/fc.c", i32 2943, i32 1}
!41 = !{ptr @__UNIQUE_ID_file316, !42, !"__UNIQUE_ID_file316", i1 false, i1 false}
!42 = !{!"../drivers/nvme/target/fc.c", i32 2945, i32 1}
!43 = !{ptr @__UNIQUE_ID_license317, !42, !"__UNIQUE_ID_license317", i1 false, i1 false}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/nvme/target/fc.c", i32 240, i32 8}
!46 = !{ptr @nvmet_fc_tgtport_cnt, !45, !"nvmet_fc_tgtport_cnt", i1 false, i1 false}
!47 = !{ptr @xa_init_flags.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!49 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @nvmet_fc_alloc_ls_iodlist.__key, !51, !"__key", i1 false, i1 false}
!51 = !{!"../drivers/nvme/target/fc.c", i32 547, i32 3}
!52 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/nvme/target/fc.c", i32 1694, i32 3}
!55 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @nvmet_fc_ls_create_association._entry, !54, !"_entry", i1 false, i1 false}
!58 = !{ptr @nvmet_fc_ls_create_association._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/nvme/target/fc.c", i32 1708, i32 2}
!61 = !{ptr @nvmet_fc_ls_create_association._entry.21, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @nvmet_fc_ls_create_association._entry_ptr.23, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @nvmet_fc_alloc_target_assoc.__key, !64, !"__key", i1 false, i1 false}
!64 = !{!"../drivers/nvme/target/fc.c", i32 1133, i32 2}
!65 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!66 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!67 = !{!"../drivers/nvme/target/fc.c", i32 1222, i32 11}
!68 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/nvme/target/fc.c", i32 1237, i32 2}
!71 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @nvmet_fc_delete_target_assoc._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @nvmet_fc_delete_target_assoc._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!75 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!76 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!78 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!79 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!80 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.31, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/nvme/target/fc.c", i32 807, i32 34}
!83 = !{ptr @nvmet_fc_alloc_target_queue.__key, !84, !"__key", i1 false, i1 false}
!84 = !{!"../drivers/nvme/target/fc.c", i32 823, i32 2}
!85 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @nvmet_fc_prep_fcp_iodlist.__key, !87, !"__key", i1 false, i1 false}
!87 = !{!"../drivers/nvme/target/fc.c", i32 634, i32 3}
!88 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @nvmet_fc_prep_fcp_iodlist.__key.34, !90, !"__key", i1 false, i1 false}
!90 = !{!"../drivers/nvme/target/fc.c", i32 642, i32 3}
!91 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/nvme/target/../host/fc.h", i32 109, i32 2}
!94 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/nvme/target/../host/fc.h", i32 110, i32 2}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/nvme/target/../host/fc.h", i32 111, i32 2}
!98 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/nvme/target/../host/fc.h", i32 112, i32 2}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/nvme/target/../host/fc.h", i32 113, i32 2}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/nvme/target/../host/fc.h", i32 114, i32 2}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/nvme/target/../host/fc.h", i32 115, i32 2}
!106 = !{ptr @.str.43, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/nvme/target/../host/fc.h", i32 116, i32 2}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/nvme/target/../host/fc.h", i32 117, i32 2}
!110 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/nvme/target/../host/fc.h", i32 118, i32 2}
!112 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/nvme/target/../host/fc.h", i32 119, i32 2}
!114 = !{ptr @.str.47, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/nvme/target/../host/fc.h", i32 120, i32 2}
!116 = !{ptr @.str.48, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/nvme/target/../host/fc.h", i32 121, i32 2}
!118 = !{ptr @.str.49, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/nvme/target/../host/fc.h", i32 122, i32 2}
!120 = !{ptr @.str.50, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/nvme/target/../host/fc.h", i32 123, i32 2}
!122 = !{ptr @.str.51, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/nvme/target/../host/fc.h", i32 124, i32 2}
!124 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/nvme/target/../host/fc.h", i32 125, i32 2}
!126 = !{ptr @.str.53, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/nvme/target/../host/fc.h", i32 126, i32 2}
!128 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/nvme/target/../host/fc.h", i32 127, i32 2}
!130 = !{ptr @.str.55, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/nvme/target/../host/fc.h", i32 128, i32 2}
!132 = !{ptr @.str.56, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/nvme/target/../host/fc.h", i32 129, i32 2}
!134 = !{ptr @.str.57, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/nvme/target/../host/fc.h", i32 130, i32 2}
!136 = !{ptr @.str.58, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/nvme/target/../host/fc.h", i32 131, i32 2}
!138 = !{ptr @.str.59, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/nvme/target/../host/fc.h", i32 132, i32 2}
!140 = !{ptr @.str.60, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/nvme/target/../host/fc.h", i32 133, i32 2}
!142 = !{ptr @.str.61, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/nvme/target/../host/fc.h", i32 134, i32 2}
!144 = !{ptr @.str.62, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/nvme/target/../host/fc.h", i32 135, i32 2}
!146 = !{ptr @.str.63, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/nvme/target/../host/fc.h", i32 136, i32 2}
!148 = !{ptr @.str.64, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/nvme/target/../host/fc.h", i32 137, i32 2}
!150 = !{ptr @.str.65, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/nvme/target/../host/fc.h", i32 138, i32 2}
!152 = !{ptr @.str.66, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/nvme/target/../host/fc.h", i32 139, i32 2}
!154 = !{ptr @.str.67, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/nvme/target/../host/fc.h", i32 140, i32 2}
!156 = !{ptr @.str.68, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/nvme/target/../host/fc.h", i32 141, i32 2}
!158 = !{ptr @.str.69, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/nvme/target/../host/fc.h", i32 142, i32 2}
!160 = !{ptr @.str.70, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/nvme/target/../host/fc.h", i32 143, i32 2}
!162 = !{ptr @.str.71, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/nvme/target/../host/fc.h", i32 144, i32 2}
!164 = !{ptr @.str.72, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/nvme/target/../host/fc.h", i32 145, i32 2}
!166 = !{ptr @.str.73, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/nvme/target/../host/fc.h", i32 146, i32 2}
!168 = !{ptr @validation_errors, !169, !"validation_errors", i1 false, i1 false}
!169 = !{!"../drivers/nvme/target/../host/fc.h", i32 108, i32 14}
!170 = !{ptr @.str.74, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/nvme/target/fc.c", i32 1787, i32 3}
!172 = !{ptr @.str.75, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @nvmet_fc_ls_create_connection._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @nvmet_fc_ls_create_connection._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = distinct !{null, !176, !"__warned", i1 false, i1 false}
!176 = !{!"../drivers/nvme/target/fc.c", i32 1252, i32 2}
!177 = !{ptr @.str.76, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.77, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/nvme/target/fc.c", i32 1849, i32 3}
!180 = !{ptr @.str.78, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @nvmet_fc_ls_disconnect._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @nvmet_fc_ls_disconnect._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.80, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/nvme/target/fc.c", i32 1890, i32 3}
!185 = !{ptr @nvmet_fc_ls_disconnect._entry.79, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @nvmet_fc_ls_disconnect._entry_ptr.81, !184, !"_entry_ptr", i1 false, i1 false}
!187 = distinct !{null, !188, !"__already_done", i1 false, i1 false}
!188 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!189 = !{ptr @.str.82, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.83, !188, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @nvmet_fc_portentry_list, !192, !"nvmet_fc_portentry_list", i1 false, i1 false}
!192 = !{!"../drivers/nvme/target/fc.c", i32 241, i32 8}
!193 = !{ptr @.str.84, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/nvme/target/fc.c", i32 237, i32 8}
!195 = !{ptr @nvmet_fc_tgtlock, !194, !"nvmet_fc_tgtlock", i1 false, i1 false}
!196 = !{ptr @nvmet_fc_target_list, !197, !"nvmet_fc_target_list", i1 false, i1 false}
!197 = !{!"../drivers/nvme/target/fc.c", i32 239, i32 8}
!198 = !{ptr @.str.85, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/nvme/target/fc.c", i32 1187, i32 2}
!200 = !{ptr @.str.86, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @nvmet_fc_target_assoc_free._entry, !199, !"_entry", i1 false, i1 false}
!202 = !{ptr @nvmet_fc_target_assoc_free._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.87, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/nvme/target/fc.c", i32 499, i32 3}
!205 = !{ptr @.str.88, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @nvmet_fc_xmt_disconnect_assoc._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @nvmet_fc_xmt_disconnect_assoc._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.90, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/nvme/target/fc.c", i32 522, i32 3}
!210 = !{ptr @nvmet_fc_xmt_disconnect_assoc._entry.89, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @nvmet_fc_xmt_disconnect_assoc._entry_ptr.91, !209, !"_entry_ptr", i1 false, i1 false}
!212 = distinct !{null, !213, !"__warned", i1 false, i1 false}
!213 = !{!"../drivers/nvme/target/fc.c", i32 1491, i32 2}
!214 = !{ptr @.str.92, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/nvme/target/../host/fc.h", i32 152, i32 2}
!216 = !{ptr @.str.93, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/nvme/target/../host/fc.h", i32 153, i32 2}
!218 = !{ptr @.str.94, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/nvme/target/../host/fc.h", i32 154, i32 2}
!220 = !{ptr @.str.95, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/nvme/target/../host/fc.h", i32 155, i32 2}
!222 = !{ptr @.str.96, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/nvme/target/../host/fc.h", i32 156, i32 2}
!224 = !{ptr @.str.97, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/nvme/target/../host/fc.h", i32 157, i32 2}
!226 = !{ptr @.str.98, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/nvme/target/../host/fc.h", i32 158, i32 2}
!228 = !{ptr @nvmefc_ls_names, !229, !"nvmefc_ls_names", i1 false, i1 false}
!229 = !{!"../drivers/nvme/target/../host/fc.h", i32 151, i32 14}
!230 = distinct !{null, !231, !"__warned", i1 false, i1 false}
!231 = !{!"../drivers/nvme/target/fc.c", i32 969, i32 2}
!232 = distinct !{null, !233, !"__warned", i1 false, i1 false}
!233 = !{!"../drivers/nvme/target/fc.c", i32 971, i32 12}
!234 = !{ptr @nvmet_fc_tgt_fcp_ops, !235, !"nvmet_fc_tgt_fcp_ops", i1 false, i1 false}
!235 = !{!"../drivers/nvme/target/fc.c", i32 2915, i32 39}
!236 = !{ptr @.str.100, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/nvme/target/fc.c", i32 2814, i32 18}
!238 = !{ptr @.str.101, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/nvme/target/fc.c", i32 2816, i32 5}
!240 = !{ptr @.str.102, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/nvme/target/fc.c", i32 2821, i32 18}
!242 = !{ptr @.str.103, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/nvme/target/fc.c", i32 2823, i32 5}
!244 = !{ptr @.str.104, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/nvme/target/fc.c", i32 2844, i32 2}
!246 = !{ptr @.str.105, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @nvme_fc_parse_traddr._entry, !245, !"_entry", i1 false, i1 false}
!248 = !{ptr @nvme_fc_parse_traddr._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!249 = distinct !{null, !250, !"__warned", i1 false, i1 false}
!250 = !{!"../drivers/nvme/target/fc.c", i32 1582, i32 3}
!251 = distinct !{null, !252, !"__warned", i1 false, i1 false}
!252 = !{!"../drivers/nvme/target/fc.c", i32 1583, i32 12}
!253 = !{!"sp"}
!254 = !{i32 1, !"wchar_size", i32 2}
!255 = !{i32 1, !"min_enum_size", i32 4}
!256 = !{i32 8, !"branch-target-enforcement", i32 0}
!257 = !{i32 8, !"sign-return-address", i32 0}
!258 = !{i32 8, !"sign-return-address-all", i32 0}
!259 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!260 = !{i32 7, !"uwtable", i32 1}
!261 = !{i32 7, !"frame-pointer", i32 2}
!262 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!263 = !{!"branch_weights", i32 2000, i32 1}
!264 = !{i64 902390, i64 902414, i64 902435, i64 902452, i64 902469}
!265 = !{i64 2148507412}
!266 = !{i64 2148421852, i64 2148421884, i64 2148421913, i64 2148421947, i64 2148421978, i64 2148422001}
!267 = !{i64 2149383526}
!268 = !{i64 2149434016}
!269 = !{i64 2149434282}
!270 = !{!"branch_weights", i32 1, i32 2000}
!271 = !{i64 2148417857, i64 2148417883, i64 2148417912, i64 2148417946, i64 2148417977, i64 2148418000}
!272 = !{!"auto-init"}
!273 = !{i8 0, i8 2}
!274 = !{i64 2151904889}
!275 = !{i64 2154781944}
!276 = !{i64 2148677757}
!277 = !{i64 924625, i64 924642, i64 924666, i64 924692, i64 924710}
!278 = !{i64 2148678127}
!279 = !{i64 2148503292}
!280 = !{i64 2148418577, i64 2148418609, i64 2148418638, i64 2148418672, i64 2148418703, i64 2148418726}
!281 = !{i64 2148503521}

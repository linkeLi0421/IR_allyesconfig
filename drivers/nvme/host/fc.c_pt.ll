; ModuleID = '/llk/IR_all_yes/drivers/nvme/host/fc.c_pt.bc'
source_filename = "../drivers/nvme/host/fc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nvme_fc_register_localport\22, \22a\22\09"
module asm "\09.weak\09__crc_nvme_fc_register_localport\09\09\09\09"
module asm "\09.long\09__crc_nvme_fc_register_localport\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvme_fc_register_localport:\09\09\09\09\09"
module asm "\09.asciz \09\22nvme_fc_register_localport\22\09\09\09\09\09"
module asm "__kstrtabns_nvme_fc_register_localport:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nvme_fc_unregister_localport\22, \22a\22\09"
module asm "\09.weak\09__crc_nvme_fc_unregister_localport\09\09\09\09"
module asm "\09.long\09__crc_nvme_fc_unregister_localport\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvme_fc_unregister_localport:\09\09\09\09\09"
module asm "\09.asciz \09\22nvme_fc_unregister_localport\22\09\09\09\09\09"
module asm "__kstrtabns_nvme_fc_unregister_localport:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nvme_fc_register_remoteport\22, \22a\22\09"
module asm "\09.weak\09__crc_nvme_fc_register_remoteport\09\09\09\09"
module asm "\09.long\09__crc_nvme_fc_register_remoteport\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvme_fc_register_remoteport:\09\09\09\09\09"
module asm "\09.asciz \09\22nvme_fc_register_remoteport\22\09\09\09\09\09"
module asm "__kstrtabns_nvme_fc_register_remoteport:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nvme_fc_unregister_remoteport\22, \22a\22\09"
module asm "\09.weak\09__crc_nvme_fc_unregister_remoteport\09\09\09\09"
module asm "\09.long\09__crc_nvme_fc_unregister_remoteport\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvme_fc_unregister_remoteport:\09\09\09\09\09"
module asm "\09.asciz \09\22nvme_fc_unregister_remoteport\22\09\09\09\09\09"
module asm "__kstrtabns_nvme_fc_unregister_remoteport:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nvme_fc_rescan_remoteport\22, \22a\22\09"
module asm "\09.weak\09__crc_nvme_fc_rescan_remoteport\09\09\09\09"
module asm "\09.long\09__crc_nvme_fc_rescan_remoteport\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvme_fc_rescan_remoteport:\09\09\09\09\09"
module asm "\09.asciz \09\22nvme_fc_rescan_remoteport\22\09\09\09\09\09"
module asm "__kstrtabns_nvme_fc_rescan_remoteport:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nvme_fc_set_remoteport_devloss\22, \22a\22\09"
module asm "\09.weak\09__crc_nvme_fc_set_remoteport_devloss\09\09\09\09"
module asm "\09.long\09__crc_nvme_fc_set_remoteport_devloss\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvme_fc_set_remoteport_devloss:\09\09\09\09\09"
module asm "\09.asciz \09\22nvme_fc_set_remoteport_devloss\22\09\09\09\09\09"
module asm "__kstrtabns_nvme_fc_set_remoteport_devloss:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nvme_fc_rcv_ls_req\22, \22a\22\09"
module asm "\09.weak\09__crc_nvme_fc_rcv_ls_req\09\09\09\09"
module asm "\09.long\09__crc_nvme_fc_rcv_ls_req\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvme_fc_rcv_ls_req:\09\09\09\09\09"
module asm "\09.asciz \09\22nvme_fc_rcv_ls_req\22\09\09\09\09\09"
module asm "__kstrtabns_nvme_fc_rcv_ls_req:\09\09\09\09\09"
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
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nvmf_transport_ops = type { %struct.list_head, ptr, ptr, i32, i32, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.blk_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvme_ctrl_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.cgroup_subsys = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, %struct.idr, %struct.list_head, ptr, ptr, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.nvme_fc_port_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i64, i32, i32, i32, i32 }
%struct.nvme_fc_lport = type { %struct.nvme_fc_local_port, %struct.ida, %struct.list_head, %struct.list_head, ptr, ptr, %struct.kref, %struct.atomic_t }
%struct.nvme_fc_local_port = type { i32, i32, i64, i64, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nvme_fc_port_info = type { i64, i64, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.nvme_fc_remote_port = type { i32, i32, i64, i64, ptr, ptr, i32, i32, i32 }
%struct.nvme_fc_rport = type { %struct.nvme_fc_remote_port, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, %struct.spinlock, %struct.kref, %struct.atomic_t, i32, %struct.work_struct }
%struct.nvmefc_ls_rsp = type { ptr, i32, i16, ptr, ptr }
%struct.fcnvme_ls_disconnect_assoc_rqst = type { %struct.fcnvme_ls_rqst_w0, i32, %struct.fcnvme_lsdesc_assoc_id, %struct.fcnvme_lsdesc_disconn_cmd }
%struct.fcnvme_ls_rqst_w0 = type { i8, [3 x i8] }
%struct.fcnvme_lsdesc_assoc_id = type { i32, i32, i64 }
%struct.fcnvme_lsdesc_disconn_cmd = type { i32, i32, [4 x i32] }
%struct.nvmefc_ls_rcv_op = type { ptr, ptr, ptr, ptr, i16, i8, i32, %struct.list_head }
%struct.fcnvme_ls_acc_hdr = type { %struct.fcnvme_ls_rqst_w0, i32, %struct.fcnvme_lsdesc_rqst }
%struct.fcnvme_lsdesc_rqst = type { i32, i32, %struct.fcnvme_ls_rqst_w0, i32 }
%struct.fcnvme_ls_rjt = type { %struct.fcnvme_ls_rqst_w0, i32, %struct.fcnvme_lsdesc_rqst, %struct.fcnvme_lsdesc_rjt }
%struct.fcnvme_lsdesc_rjt = type { i32, i32, i8, i8, i8, i8, i32 }
%struct.nvme_fc_ctrl = type { %struct.spinlock, ptr, ptr, ptr, ptr, i32, i8, i64, ptr, %struct.list_head, %struct.blk_mq_tag_set, %struct.blk_mq_tag_set, %struct.work_struct, %struct.delayed_work, %struct.kref, i32, i32, %struct.wait_queue_head, [1 x %struct.nvme_fc_fcp_op], %struct.nvme_ctrl }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.nvme_fc_fcp_op = type { %struct.nvme_request, %struct.nvmefc_fcp_req, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, %struct.nvme_fc_cmd_iu, %struct.nvme_fc_ersp_iu }
%struct.nvme_request = type { ptr, %union.nvme_result, i8, i8, i8, i16, ptr }
%union.nvme_result = type { i64 }
%struct.nvmefc_fcp_req = type { ptr, ptr, i32, i32, i16, i16, i32, %struct.sg_table, ptr, i32, i32, i16, ptr, ptr, i32, i16, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.nvme_fc_cmd_iu = type { i8, i8, i16, [2 x i8], i8, i8, i64, i32, i32, %struct.nvme_command, i8, i8, i16, i32 }
%struct.nvme_command = type { %union.anon.114 }
%union.anon.114 = type { %struct.nvme_common_command }
%struct.nvme_common_command = type { i8, i8, i16, i32, [2 x i32], i64, %union.nvme_data_ptr, i32, i32, i32, i32, i32, i32 }
%union.nvme_data_ptr = type { %struct.anon.115 }
%struct.anon.115 = type { i64, i64 }
%struct.nvme_fc_ersp_iu = type { i8, i8, i16, i32, i32, i32, %struct.nvme_completion }
%struct.nvme_completion = type { %union.nvme_result, i16, i16, i16, i16 }
%struct.nvme_ctrl = type { i8, i32, i8, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.rw_semaphore, %struct.device, ptr, ptr, %struct.cdev, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.list_head, ptr, [12 x i8], i16, i32, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, [3 x i16], i16, i16, i16, i16, i16, i32, %struct.atomic_t, i8, i32, i32, i16, i8, i8, i16, i16, i32, i32, i32, i32, i32, i8, i32, [32 x %struct.nvme_id_power_state], ptr, %struct.xarray, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.nvme_command, %struct.work_struct, i32, i8, i8, i32, i32, %struct.mutex, ptr, i32, %struct.timer_list, %struct.work_struct, i64, i8, i32, i32, i32, i16, i32, i32, i16, i16, i32, i32, ptr, ptr, i32, %struct.nvme_fault_inject }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.nvme_id_power_state = type { i16, i8, i8, i32, i32, i8, i8, i8, i8, i16, i8, i8, i16, i8, [9 x i8] }
%struct.nvme_fault_inject = type { %struct.fault_attr, ptr, i8, i16 }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.104, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.104 = type { %struct.atomic_t }
%struct.nvme_fc_queue = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, %struct.atomic_t, i32 }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.68, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.69, %union.anon.70, %union.anon.71, %union.anon.76, ptr, ptr }
%union.anon.68 = type { %struct.list_head }
%union.anon.69 = type { %struct.hlist_node }
%union.anon.70 = type { %struct.rb_node }
%union.anon.71 = type { %struct.anon.75 }
%struct.anon.75 = type { i32, %struct.list_head, ptr }
%union.anon.76 = type { i64, [8 x i8] }
%struct.nvmet_fc_traddr = type { i64, i64 }
%struct.nvmf_ctrl_options = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, i8, i32, ptr, i32, i8, i8, i8, i32, i32, i32, i32 }
%struct.substring_t = type { ptr, ptr }
%struct.nvmf_host = type { %struct.kref, %struct.list_head, [223 x i8], %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.nvme_subsystem = type { i32, %struct.device, %struct.kref, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, [223 x i8], [20 x i8], [40 x i8], [8 x i8], i8, i32, i16, i16, %struct.ida, i32 }
%struct.nvmefc_ls_req_op = type { %struct.nvmefc_ls_req, ptr, ptr, ptr, i32, i32, %struct.completion, %struct.list_head, i8 }
%struct.nvmefc_ls_req = type { ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, [4 x i8] }
%struct.fcnvme_lsdesc_cr_assoc_cmd = type { i32, i32, i16, i16, [9 x i32], i16, i16, i32, %struct.uuid_t, [256 x i8], [256 x i8], [108 x i32] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.fcnvme_lsdesc_cr_conn_cmd = type { i32, i32, i16, i16, [9 x i32], i16, i16, i32 }
%struct.blk_mq_hw_ctx = type { %struct.anon.113, %struct.delayed_work, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.sbitmap, ptr, i32, i16, i16, ptr, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, ptr, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, ptr, ptr, %struct.list_head, [76 x i8] }
%struct.anon.113 = type { %struct.spinlock, %struct.list_head, i32, [72 x i8] }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.nvme_sgl_desc = type { i64, i32, [3 x i8], i8 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.blkcg = type { %struct.cgroup_subsys_state, %struct.spinlock, %struct.refcount_struct, %struct.xarray, ptr, %struct.hlist_head, [6 x ptr], %struct.list_head, [129 x i8], %struct.list_head }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.hlist_head = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }

@nvme_fc_local_port_cnt = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.26, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@nvme_fc_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@nvme_fc_lport_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @nvme_fc_lport_list, ptr @nvme_fc_lport_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_nvme_fc_register_localport = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvme_fc_register_localport = external dso_local constant [0 x i8], align 1
@__ksymtab_nvme_fc_register_localport = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvme_fc_register_localport to i32), ptr @__kstrtab_nvme_fc_register_localport, ptr @__kstrtabns_nvme_fc_register_localport }, section "___ksymtab_gpl+nvme_fc_register_localport", align 4
@__kstrtab_nvme_fc_unregister_localport = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvme_fc_unregister_localport = external dso_local constant [0 x i8], align 1
@__ksymtab_nvme_fc_unregister_localport = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvme_fc_unregister_localport to i32), ptr @__kstrtab_nvme_fc_unregister_localport, ptr @__kstrtabns_nvme_fc_unregister_localport }, section "___ksymtab_gpl+nvme_fc_unregister_localport", align 4
@nvme_fc_register_remoteport.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&newrec->lock\00", [18 x i8] zeroinitializer }, align 32
@nvme_fc_register_remoteport.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&newrec->lsrcv_work)\00", [57 x i8] zeroinitializer }, align 32
@__kstrtab_nvme_fc_register_remoteport = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvme_fc_register_remoteport = external dso_local constant [0 x i8], align 1
@__ksymtab_nvme_fc_register_remoteport = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvme_fc_register_remoteport to i32), ptr @__kstrtab_nvme_fc_register_remoteport, ptr @__kstrtabns_nvme_fc_register_remoteport }, section "___ksymtab_gpl+nvme_fc_register_remoteport", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@nvme_fc_unregister_remoteport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 877, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"NVME-FC{%d}: controller connectivity lost.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nvme_fc_unregister_remoteport\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/nvme/host/fc.c\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvme_fc_unregister_remoteport._entry_ptr = internal global ptr @nvme_fc_unregister_remoteport._entry, section ".printk_index", align 4
@__kstrtab_nvme_fc_unregister_remoteport = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvme_fc_unregister_remoteport = external dso_local constant [0 x i8], align 1
@__ksymtab_nvme_fc_unregister_remoteport = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvme_fc_unregister_remoteport to i32), ptr @__kstrtab_nvme_fc_unregister_remoteport, ptr @__kstrtabns_nvme_fc_unregister_remoteport }, section "___ksymtab_gpl+nvme_fc_unregister_remoteport", align 4
@__kstrtab_nvme_fc_rescan_remoteport = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvme_fc_rescan_remoteport = external dso_local constant [0 x i8], align 1
@__ksymtab_nvme_fc_rescan_remoteport = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvme_fc_rescan_remoteport to i32), ptr @__kstrtab_nvme_fc_rescan_remoteport, ptr @__kstrtabns_nvme_fc_rescan_remoteport }, section "___ksymtab_gpl+nvme_fc_rescan_remoteport", align 4
@__kstrtab_nvme_fc_set_remoteport_devloss = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvme_fc_set_remoteport_devloss = external dso_local constant [0 x i8], align 1
@__ksymtab_nvme_fc_set_remoteport_devloss = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvme_fc_set_remoteport_devloss to i32), ptr @__kstrtab_nvme_fc_set_remoteport_devloss, ptr @__kstrtabns_nvme_fc_set_remoteport_devloss }, section "___ksymtab_gpl+nvme_fc_set_remoteport_devloss", align 4
@nvme_fc_rcv_ls_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.5, i32 1740, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"RCV %s LS failed: no LLDD xmt_ls_rsp\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nvme_fc_rcv_ls_req\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nvme_fc_rcv_ls_req._entry_ptr = internal global ptr @nvme_fc_rcv_ls_req._entry, section ".printk_index", align 4
@nvmefc_ls_names = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95], [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@nvme_fc_rcv_ls_req._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.9, ptr @.str.5, i32 1749, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"RCV %s LS failed: payload too large\0A\00", [59 x i8] zeroinitializer }, align 32
@nvme_fc_rcv_ls_req._entry_ptr.14 = internal global ptr @nvme_fc_rcv_ls_req._entry.12, section ".printk_index", align 4
@nvme_fc_rcv_ls_req._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.9, ptr @.str.5, i32 1762, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"RCV %s LS failed: No memory\0A\00", [35 x i8] zeroinitializer }, align 32
@nvme_fc_rcv_ls_req._entry_ptr.17 = internal global ptr @nvme_fc_rcv_ls_req._entry.15, section ".printk_index", align 4
@nvme_fc_rcv_ls_req._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.9, ptr @.str.5, i32 1776, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"RCV %s LS failed: DMA mapping failure\0A\00", [57 x i8] zeroinitializer }, align 32
@nvme_fc_rcv_ls_req._entry_ptr.20 = internal global ptr @nvme_fc_rcv_ls_req._entry.18, section ".printk_index", align 4
@__kstrtab_nvme_fc_rcv_ls_req = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvme_fc_rcv_ls_req = external dso_local constant [0 x i8], align 1
@__ksymtab_nvme_fc_rcv_ls_req = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvme_fc_rcv_ls_req to i32), ptr @__kstrtab_nvme_fc_rcv_ls_req, ptr @__kstrtabns_nvme_fc_rcv_ls_req }, section "___ksymtab_gpl+nvme_fc_rcv_ls_req", align 4
@nvme_fc_waiting_to_unload = internal global { i1, [31 x i8] } zeroinitializer, align 32
@nvme_fc_exit_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.5, i32 4023, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016nvme_fc: %s: waiting for ctlr deletes\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvme_fc_exit_module\00", [44 x i8] zeroinitializer }, align 32
@nvme_fc_exit_module._entry_ptr = internal global ptr @nvme_fc_exit_module._entry, section ".printk_index", align 4
@nvme_fc_unload_proceed = internal global { %struct.completion, [40 x i8] } { %struct.completion { i32 0, %struct.swait_queue_head { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.100, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @nvme_fc_unload_proceed, i64 48), ptr getelementptr (i8, ptr @nvme_fc_unload_proceed, i64 48) } } }, [40 x i8] zeroinitializer }, align 32
@nvme_fc_exit_module._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.5, i32 4025, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016nvme_fc: %s: ctrl deletes complete\0A\00", [58 x i8] zeroinitializer }, align 32
@nvme_fc_exit_module._entry_ptr.25 = internal global ptr @nvme_fc_exit_module._entry.23, section ".printk_index", align 4
@nvme_fc_transport = internal global { %struct.nvmf_transport_ops, [36 x i8] } { %struct.nvmf_transport_ops { %struct.list_head zeroinitializer, ptr null, ptr @.str.101, i32 1028, i32 2560, ptr @nvme_fc_create_ctrl }, [36 x i8] zeroinitializer }, align 32
@nvme_fc_ctrl_cnt = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.215, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@fc_class = internal global { %struct.class, [36 x i8] } { %struct.class { ptr @.str.101, ptr null, ptr null, ptr @nvme_fc_attr_groups, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@nvme_fc_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_nvme_fc__389_4038_nvme_fc_init_module6 = internal global ptr @nvme_fc_init_module, section ".initcall6.init", align 4
@__exitcall_nvme_fc_exit_module = internal global ptr @nvme_fc_exit_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_file390 = internal constant [39 x i8] c"nvme_fc.file=drivers/nvme/host/nvme-fc\00", section ".modinfo", align 1
@__UNIQUE_ID_license391 = internal constant [23 x i8] c"nvme_fc.license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"nvme_fc_local_port_cnt.xa_lock\00", [33 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nvme_fc_lock\00", [19 x i8] zeroinitializer }, align 32
@nvme_fc_resume_controller._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.5, i32 569, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"NVME-FC{%d}: connectivity re-established. Attempting reconnect\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nvme_fc_resume_controller\00", [38 x i8] zeroinitializer }, align 32
@nvme_fc_resume_controller._entry_ptr = internal global ptr @nvme_fc_resume_controller._entry, section ".printk_index", align 4
@nvme_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"FC_EVENT=nvmediscovery\00", [41 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"NVMEFC_HOST_TRADDR=nn-0x%016llx:pn-0x%016llx\00", [51 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"NVMEFC_TRADDR=nn-0x%016llx:pn-0x%016llx\00", [56 x i8] zeroinitializer }, align 32
@fc_udev_device = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@nvme_fc_ctrl_connectivity_loss._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.5, i32 794, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"NVME-FC{%d}: controller connectivity lost. Awaiting Reconnect\00", [34 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"nvme_fc_ctrl_connectivity_loss\00", [33 x i8] zeroinitializer }, align 32
@nvme_fc_ctrl_connectivity_loss._entry_ptr = internal global ptr @nvme_fc_ctrl_connectivity_loss._entry, section ".printk_index", align 4
@nvme_fc_ctrl_connectivity_loss._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.5, i32 809, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"NVME-FC{%d}: Couldn't schedule reset.\0A\00", [57 x i8] zeroinitializer }, align 32
@nvme_fc_ctrl_connectivity_loss._entry_ptr.38 = internal global ptr @nvme_fc_ctrl_connectivity_loss._entry.36, section ".printk_index", align 4
@nvme_fc_ls_disconnect_assoc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.5, i32 1582, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Disconnect LS failed: %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nvme_fc_ls_disconnect_assoc\00", [36 x i8] zeroinitializer }, align 32
@nvme_fc_ls_disconnect_assoc._entry_ptr = internal global ptr @nvme_fc_ls_disconnect_assoc._entry, section ".printk_index", align 4
@validation_errors = internal constant { [38 x ptr], [40 x i8] } { [38 x ptr] [ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81], [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Disconnect Association LS received\00", [61 x i8] zeroinitializer }, align 32
@nvme_fc_match_disconn_ls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.5, i32 1540, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"NVME-FC{%d}: Multiple Disconnect Association LS's received\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nvme_fc_match_disconn_ls\00", [39 x i8] zeroinitializer }, align 32
@nvme_fc_match_disconn_ls._entry_ptr = internal global ptr @nvme_fc_match_disconn_ls._entry, section ".printk_index", align 4
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"OK\00", [29 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Bad CR_ASSOC Length\00", [44 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Bad CR_ASSOC Rqst Length\00", [39 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Not CR_ASSOC Cmd\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Bad CR_ASSOC Cmd Length\00", [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Bad Ersp Ratio\00", [17 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Association Allocation Failed\00", [34 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Queue Allocation Failed\00", [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Bad CR_CONN Length\00", [45 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Bad CR_CONN Rqst Length\00", [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Not Association ID\00", [45 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Bad Association ID Length\00", [38 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"No Association\00", [17 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Not Connection ID\00", [46 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Bad Connection ID Length\00", [39 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid Connection ID\00", [42 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Not CR_CONN Cmd\00", [16 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Bad CR_CONN Cmd Length\00", [41 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Bad DISCONN Length\00", [45 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Bad DISCONN Rqst Length\00", [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Not DISCONN Cmd\00", [16 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Bad DISCONN Cmd Length\00", [41 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Bad Disconnect Scope\00", [43 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Bad RS Length\00", [18 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Bad RS Rqst Length\00", [45 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Not RS Cmd\00", [21 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Bad RS Cmd Length\00", [46 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Bad RS R_CTL\00", [19 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Bad RS Relative Offset\00", [41 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Not LS_ACC\00", [21 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Not LSDESC_RQST\00", [16 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Bad LSDESC_RQST Length\00", [41 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Not CR_ASSOC Rqst\00", [46 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Bad CR_ASSOC ACC Length\00", [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Not CR_CONN Rqst\00", [47 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Bad CR_CONN ACC Length\00", [41 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Not Disconnect Rqst\00", [44 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Bad Disconnect ACC Length\00", [38 x i8] zeroinitializer }, align 32
@nvme_fc_error_recovery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.5, i32 2543, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"NVME-FC{%d}: transport association event: %s\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nvme_fc_error_recovery\00", [41 x i8] zeroinitializer }, align 32
@nvme_fc_error_recovery._entry_ptr = internal global ptr @nvme_fc_error_recovery._entry, section ".printk_index", align 4
@nvme_fc_error_recovery._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.5, i32 2545, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"NVME-FC{%d}: resetting controller\0A\00", [61 x i8] zeroinitializer }, align 32
@nvme_fc_error_recovery._entry_ptr.86 = internal global ptr @nvme_fc_error_recovery._entry.84, section ".printk_index", align 4
@nvme_fc_xmt_ls_rsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.5, i32 1499, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"LLDD rejected LS RSP xmt: LS %d status %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nvme_fc_xmt_ls_rsp\00", [45 x i8] zeroinitializer }, align 32
@nvme_fc_xmt_ls_rsp._entry_ptr = internal global ptr @nvme_fc_xmt_ls_rsp._entry, section ".printk_index", align 4
@.str.89 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Reserved (0)\00", [19 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RJT (1)\00", [24 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ACC (2)\00", [24 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Create Association\00", [45 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Create Connection\00", [46 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Disconnect Association\00", [41 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Disconnect Connection\00", [42 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.96 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@nvme_fc_delete_controllers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.5, i32 3991, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"NVME-FC{%d}: transport unloading: deleting ctrl\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nvme_fc_delete_controllers\00", [37 x i8] zeroinitializer }, align 32
@nvme_fc_delete_controllers._entry_ptr = internal global ptr @nvme_fc_delete_controllers._entry, section ".printk_index", align 4
@.str.100 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(nvme_fc_unload_proceed).wait.lock\00", [61 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fc\00", [29 x i8] zeroinitializer }, align 32
@nvme_fc_create_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.5, i32 3760, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014nvme_fc: %s: %s - %s combination not found\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvme_fc_create_ctrl\00", [44 x i8] zeroinitializer }, align 32
@nvme_fc_create_ctrl._entry_ptr = internal global ptr @nvme_fc_create_ctrl._entry, section ".printk_index", align 4
@.str.104 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nn-0x\00", [26 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pn-0x\00", [26 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nn-\00", [28 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pn-\00", [28 x i8] zeroinitializer }, align 32
@nvme_fc_parse_traddr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.5, i32 3708, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014nvme_fc: %s: bad traddr string\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvme_fc_parse_traddr\00", [43 x i8] zeroinitializer }, align 32
@nvme_fc_parse_traddr._entry_ptr = internal global ptr @nvme_fc_parse_traddr._entry, section ".printk_index", align 4
@nvme_fc_init_ctrl.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.110 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&ctrl->ioabort_wait\00", [44 x i8] zeroinitializer }, align 32
@nvme_fc_init_ctrl.__key.111 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.112 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&ctrl->ctrl.reset_work)\00", [54 x i8] zeroinitializer }, align 32
@nvme_fc_init_ctrl.__key.113 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.114 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&ctrl->connect_work)->work)\00", [48 x i8] zeroinitializer }, align 32
@nvme_fc_init_ctrl.__key.115 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.116 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&ctrl->connect_work)->timer\00", [34 x i8] zeroinitializer }, align 32
@nvme_fc_init_ctrl.__key.117 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.118 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&ctrl->ioerr_work)\00", [59 x i8] zeroinitializer }, align 32
@nvme_fc_init_ctrl.__key.119 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.120 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ctrl->lock\00", [20 x i8] zeroinitializer }, align 32
@nvme_fc_admin_mq_ops = internal constant { %struct.blk_mq_ops, [56 x i8] } { %struct.blk_mq_ops { ptr @nvme_fc_queue_rq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nvme_fc_timeout, ptr null, ptr @nvme_fc_complete_rq, ptr @nvme_fc_init_admin_hctx, ptr null, ptr @nvme_fc_init_request, ptr @nvme_fc_exit_request, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@admin_timeout = external dso_local local_unnamed_addr global i32, align 4
@nvme_fc_ctrl_ops = internal constant { %struct.nvme_ctrl_ops, [56 x i8] } { %struct.nvme_ctrl_ops { ptr @.str.101, ptr null, i32 1, ptr @nvmf_reg_read32, ptr @nvmf_reg_write32, ptr @nvmf_reg_read64, ptr @nvme_fc_nvme_ctrl_freed, ptr @nvme_fc_submit_async_event, ptr @nvme_fc_delete_ctrl, ptr @nvmf_get_address }, [56 x i8] zeroinitializer }, align 32
@nvme_fc_init_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.5, i32 3584, ptr @.str.123, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"NVME-FC{%d}: failed to init ctrl state\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvme_fc_init_ctrl\00", [46 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nvme_fc_init_ctrl._entry_ptr = internal global ptr @nvme_fc_init_ctrl._entry, section ".printk_index", align 4
@nvme_fc_init_ctrl._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.122, ptr @.str.5, i32 3591, ptr @.str.123, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"NVME-FC{%d}: failed to schedule initial connect\0A\00", [47 x i8] zeroinitializer }, align 32
@nvme_fc_init_ctrl._entry_ptr.126 = internal global ptr @nvme_fc_init_ctrl._entry.124, section ".printk_index", align 4
@nvme_fc_init_ctrl._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.122, ptr @.str.5, i32 3599, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"NVME-FC{%d}: new ctrl: NQN \22%s\22\0A\00", [63 x i8] zeroinitializer }, align 32
@nvme_fc_init_ctrl._entry_ptr.129 = internal global ptr @nvme_fc_init_ctrl._entry.127, section ".printk_index", align 4
@nvme_fc_reset_ctrl_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.131, ptr @.str.5, i32 3364, ptr @.str.123, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"NVME-FC{%d}: error_recovery: Couldn't change state to CONNECTING\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nvme_fc_reset_ctrl_work\00", [40 x i8] zeroinitializer }, align 32
@nvme_fc_reset_ctrl_work._entry_ptr = internal global ptr @nvme_fc_reset_ctrl_work._entry, section ".printk_index", align 4
@nvme_fc_reset_ctrl_work._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.131, ptr @.str.5, i32 3370, ptr @.str.123, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"NVME-FC{%d}: failed to schedule connect after reset\0A\00", [43 x i8] zeroinitializer }, align 32
@nvme_fc_reset_ctrl_work._entry_ptr.134 = internal global ptr @nvme_fc_reset_ctrl_work._entry.132, section ".printk_index", align 4
@nvme_fc_xmt_disconnect_assoc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.5, i32 1440, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"NVME-FC{%d}: send Disconnect Association failed: ENOMEM\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nvme_fc_xmt_disconnect_assoc\00", [35 x i8] zeroinitializer }, align 32
@nvme_fc_xmt_disconnect_assoc._entry_ptr = internal global ptr @nvme_fc_xmt_disconnect_assoc._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.137 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@nvme_fc_reconnect_or_delete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.5, i32 3312, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"NVME-FC{%d}: reset: Reconnect attempt failed (%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nvme_fc_reconnect_or_delete\00", [36 x i8] zeroinitializer }, align 32
@nvme_fc_reconnect_or_delete._entry_ptr = internal global ptr @nvme_fc_reconnect_or_delete._entry, section ".printk_index", align 4
@nvme_fc_reconnect_or_delete._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.139, ptr @.str.5, i32 3323, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"NVME-FC{%d}: Reconnect attempt in %ld seconds\0A\00", [49 x i8] zeroinitializer }, align 32
@nvme_fc_reconnect_or_delete._entry_ptr.142 = internal global ptr @nvme_fc_reconnect_or_delete._entry.140, section ".printk_index", align 4
@nvme_fc_reconnect_or_delete._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.139, ptr @.str.5, i32 3333, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"NVME-FC{%d}: reconnect failure\0A\00", [32 x i8] zeroinitializer }, align 32
@nvme_fc_reconnect_or_delete._entry_ptr.145 = internal global ptr @nvme_fc_reconnect_or_delete._entry.143, section ".printk_index", align 4
@nvme_fc_reconnect_or_delete._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.139, ptr @.str.5, i32 3338, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"NVME-FC{%d}: Max reconnect attempts (%d) reached.\0A\00", [45 x i8] zeroinitializer }, align 32
@nvme_fc_reconnect_or_delete._entry_ptr.148 = internal global ptr @nvme_fc_reconnect_or_delete._entry.146, section ".printk_index", align 4
@nvme_fc_reconnect_or_delete._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.139, ptr @.str.5, i32 3345, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"NVME-FC{%d}: dev_loss_tmo (%d) expired while waiting for remoteport connectivity.\0A\00", [45 x i8] zeroinitializer }, align 32
@nvme_fc_reconnect_or_delete._entry_ptr.151 = internal global ptr @nvme_fc_reconnect_or_delete._entry.149, section ".printk_index", align 4
@nvme_fc_connect_ctrl_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.153, ptr @.str.5, i32 3408, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"NVME-FC{%d}: controller connect complete\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nvme_fc_connect_ctrl_work\00", [38 x i8] zeroinitializer }, align 32
@nvme_fc_connect_ctrl_work._entry_ptr = internal global ptr @nvme_fc_connect_ctrl_work._entry, section ".printk_index", align 4
@nvme_fc_create_association._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.155, ptr @.str.5, i32 3083, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"NVME-FC{%d}: create association : host wwpn 0x%016llx  rport wwpn 0x%016llx: NQN \22%s\22\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nvme_fc_create_association\00", [37 x i8] zeroinitializer }, align 32
@nvme_fc_create_association._entry_ptr = internal global ptr @nvme_fc_create_association._entry, section ".printk_index", align 4
@nvme_fc_create_association._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.155, ptr @.str.5, i32 3133, ptr @.str.123, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"icdoff %d is not supported!\0A\00", [35 x i8] zeroinitializer }, align 32
@nvme_fc_create_association._entry_ptr.158 = internal global ptr @nvme_fc_create_association._entry.156, section ".printk_index", align 4
@nvme_fc_create_association._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.155, ptr @.str.5, i32 3141, ptr @.str.123, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Mandatory sgls are not supported!\0A\00", [61 x i8] zeroinitializer }, align 32
@nvme_fc_create_association._entry_ptr.161 = internal global ptr @nvme_fc_create_association._entry.159, section ".printk_index", align 4
@nvme_fc_create_association._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.155, ptr @.str.5, i32 3151, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"queue_size %zu > ctrl maxcmd %u, reducing to maxcmd\0A\00", [43 x i8] zeroinitializer }, align 32
@nvme_fc_create_association._entry_ptr.164 = internal global ptr @nvme_fc_create_association._entry.162, section ".printk_index", align 4
@nvme_fc_create_association._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.155, ptr @.str.5, i32 3160, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"queue_size %zu > ctrl sqsize %u, reducing to sqsize\0A\00", [43 x i8] zeroinitializer }, align 32
@nvme_fc_create_association._entry_ptr.167 = internal global ptr @nvme_fc_create_association._entry.165, section ".printk_index", align 4
@nvme_fc_connect_admin_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.169, ptr @.str.5, i32 1193, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"NVME-FC{%d}: send Create Association failed: ENOMEM\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nvme_fc_connect_admin_queue\00", [36 x i8] zeroinitializer }, align 32
@nvme_fc_connect_admin_queue._entry_ptr = internal global ptr @nvme_fc_connect_admin_queue._entry, section ".printk_index", align 4
@nvme_fc_connect_admin_queue._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.169, ptr @.str.5, i32 1272, ptr @.str.123, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"q %d Create Association LS failed: %s\0A\00", [57 x i8] zeroinitializer }, align 32
@nvme_fc_connect_admin_queue._entry_ptr.172 = internal global ptr @nvme_fc_connect_admin_queue._entry.170, section ".printk_index", align 4
@nvme_fc_connect_admin_queue._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.169, ptr @.str.5, i32 1289, ptr @.str.123, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"queue %d connect admin queue failed (%d).\0A\00", [53 x i8] zeroinitializer }, align 32
@nvme_fc_connect_admin_queue._entry_ptr.175 = internal global ptr @nvme_fc_connect_admin_queue._entry.173, section ".printk_index", align 4
@__nvme_fc_init_request._entry = internal constant %struct.pi_entry { ptr @.str.176, ptr @.str.177, ptr @.str.5, i32 2097, ptr @.str.123, ptr @.str.7 }, align 1
@.str.176 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"FCP Op failed - cmdiu dma mapping failed.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__nvme_fc_init_request\00", [41 x i8] zeroinitializer }, align 32
@__nvme_fc_init_request._entry_ptr = internal global ptr @__nvme_fc_init_request._entry, section ".printk_index", align 4
@__nvme_fc_init_request._entry.178 = internal constant %struct.pi_entry { ptr @.str.179, ptr @.str.177, ptr @.str.5, i32 2107, ptr @.str.123, ptr @.str.7 }, align 1
@.str.179 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"FCP Op failed - rspiu dma mapping failed.\0A\00", [53 x i8] zeroinitializer }, align 32
@__nvme_fc_init_request._entry_ptr.180 = internal global ptr @__nvme_fc_init_request._entry.178, section ".printk_index", align 4
@nvme_fc_fcpio_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.182, ptr @.str.5, i32 1965, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"NVME-FC{%d}: io failed due to lldd error %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nvme_fc_fcpio_done\00", [45 x i8] zeroinitializer }, align 32
@nvme_fc_fcpio_done._entry_ptr = internal global ptr @nvme_fc_fcpio_done._entry, section ".printk_index", align 4
@nvme_fc_fcpio_done._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.182, ptr @.str.5, i32 1999, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"NVME-FC{%d}: io failed due to bad transfer length: %d vs expected %d\0A\00", [58 x i8] zeroinitializer }, align 32
@nvme_fc_fcpio_done._entry_ptr.185 = internal global ptr @nvme_fc_fcpio_done._entry.183, section ".printk_index", align 4
@nvme_fc_fcpio_done._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.182, ptr @.str.5, i32 2026, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"NVME-FC{%d}: io failed due to bad NVMe_ERSP: iu len %d, xfr len %d vs %d, status code %d, cmdid %d vs %d\0A\00", [54 x i8] zeroinitializer }, align 32
@nvme_fc_fcpio_done._entry_ptr.188 = internal global ptr @nvme_fc_fcpio_done._entry.186, section ".printk_index", align 4
@nvme_fc_fcpio_done._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.182, ptr @.str.5, i32 2038, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"NVME-FC{%d}: io failed due to odd NVMe_xRSP iu len %d\0A\00", [41 x i8] zeroinitializer }, align 32
@nvme_fc_fcpio_done._entry_ptr.191 = internal global ptr @nvme_fc_fcpio_done._entry.189, section ".printk_index", align 4
@nvme_reset_wq = external dso_local local_unnamed_addr global ptr, align 4
@nvme_fc_create_io_queues._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.193, ptr @.str.5, i32 2890, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"set_queue_count failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nvme_fc_create_io_queues\00", [39 x i8] zeroinitializer }, align 32
@nvme_fc_create_io_queues._entry_ptr = internal global ptr @nvme_fc_create_io_queues._entry, section ".printk_index", align 4
@nvme_fc_mq_ops = internal constant { %struct.blk_mq_ops, [56 x i8] } { %struct.blk_mq_ops { ptr @nvme_fc_queue_rq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nvme_fc_timeout, ptr null, ptr @nvme_fc_complete_rq, ptr @nvme_fc_init_hctx, ptr null, ptr @nvme_fc_init_request, ptr @nvme_fc_exit_request, ptr null, ptr null, ptr @nvme_fc_map_queues, ptr null }, [56 x i8] zeroinitializer }, align 32
@nvme_io_timeout = external dso_local local_unnamed_addr global i32, align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@nvme_fc_start_fcp_op.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nvme_fc_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.195, ptr @.str.5, i32 2566, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"NVME-FC{%d.%d}: io timeout: opcode %d fctype %d w10/11: x%08x/x%08x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nvme_fc_timeout\00", [16 x i8] zeroinitializer }, align 32
@nvme_fc_timeout._entry_ptr = internal global ptr @nvme_fc_timeout._entry, section ".printk_index", align 4
@.str.196 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"io timeout abort failed\00", [40 x i8] zeroinitializer }, align 32
@nvme_fc_connect_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.198, ptr @.str.5, i32 1309, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"NVME-FC{%d}: send Create Connection failed: ENOMEM\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvme_fc_connect_queue\00", [42 x i8] zeroinitializer }, align 32
@nvme_fc_connect_queue._entry_ptr = internal global ptr @nvme_fc_connect_queue._entry, section ".printk_index", align 4
@nvme_fc_connect_queue._entry.199 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.198, ptr @.str.5, i32 1378, ptr @.str.123, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"q %d Create I/O Connection LS failed: %s\0A\00", [54 x i8] zeroinitializer }, align 32
@nvme_fc_connect_queue._entry_ptr.201 = internal global ptr @nvme_fc_connect_queue._entry.199, section ".printk_index", align 4
@nvme_fc_connect_queue._entry.202 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.198, ptr @.str.5, i32 1391, ptr @.str.123, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"queue %d connect I/O queue failed (%d).\0A\00", [55 x i8] zeroinitializer }, align 32
@nvme_fc_connect_queue._entry_ptr.204 = internal global ptr @nvme_fc_connect_queue._entry.202, section ".printk_index", align 4
@nvme_fc_recreate_io_queues._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.205, ptr @.str.5, i32 2964, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nvme_fc_recreate_io_queues\00", [37 x i8] zeroinitializer }, align 32
@nvme_fc_recreate_io_queues._entry_ptr = internal global ptr @nvme_fc_recreate_io_queues._entry, section ".printk_index", align 4
@nvme_fc_recreate_io_queues._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.205, ptr @.str.5, i32 2971, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Fail Reconnect: At least 1 io queue required (was %d)\0A\00", [41 x i8] zeroinitializer }, align 32
@nvme_fc_recreate_io_queues._entry_ptr.208 = internal global ptr @nvme_fc_recreate_io_queues._entry.206, section ".printk_index", align 4
@nvme_fc_recreate_io_queues._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.205, ptr @.str.5, i32 2983, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"reconnect: revising io queue count from %d to %d\0A\00", [46 x i8] zeroinitializer }, align 32
@nvme_fc_recreate_io_queues._entry_ptr.211 = internal global ptr @nvme_fc_recreate_io_queues._entry.209, section ".printk_index", align 4
@.str.212 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"transport detected io error\00", [36 x i8] zeroinitializer }, align 32
@nvme_fc_submit_async_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.214, ptr @.str.5, i32 2828, ptr @.str.123, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed async event work\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nvme_fc_submit_async_event\00", [37 x i8] zeroinitializer }, align 32
@nvme_fc_submit_async_event._entry_ptr = internal global ptr @nvme_fc_submit_async_event._entry, section ".printk_index", align 4
@.str.215 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nvme_fc_ctrl_cnt.xa_lock\00", [39 x i8] zeroinitializer }, align 32
@nvme_fc_attr_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @nvme_fc_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@nvme_fc_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @nvme_fc_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@nvme_fc_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_nvme_discovery, ptr @dev_attr_appid_store, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_nvme_discovery = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.216, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @nvme_fc_nvme_discovery_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_appid_store = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.219, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @fc_appid_store }, [36 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvme_discovery\00", [17 x i8] zeroinitializer }, align 32
@nvme_fc_nvme_discovery_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.218, ptr @.str.5, i32 3807, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013nvme_fc: nvme_discovery: too many reference failures\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nvme_fc_nvme_discovery_store\00", [35 x i8] zeroinitializer }, align 32
@nvme_fc_nvme_discovery_store._entry_ptr = internal global ptr @nvme_fc_nvme_discovery_store._entry, section ".printk_index", align 4
@.str.219 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"appid_store\00", [20 x i8] zeroinitializer }, align 32
@io_cgrp_subsys = external dso_local global %struct.cgroup_subsys, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.220 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.222 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nvme_fc_wq\00", [21 x i8] zeroinitializer }, align 32
@nvme_fc_init_module.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@nvme_fc_init_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.224, ptr @.str.225, ptr @.str.5, i32 3951, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013nvme_fc: couldn't register class fc\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvme_fc_init_module\00", [44 x i8] zeroinitializer }, align 32
@nvme_fc_init_module._entry_ptr = internal global ptr @nvme_fc_init_module._entry, section ".printk_index", align 4
@.str.226 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fc_udev_device\00", [17 x i8] zeroinitializer }, align 32
@nvme_fc_init_module._entry.227 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.225, ptr @.str.5, i32 3961, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013nvme_fc: couldn't create fc_udev device!\0A\00", [52 x i8] zeroinitializer }, align 32
@nvme_fc_init_module._entry_ptr.229 = internal global ptr @nvme_fc_init_module._entry.227, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.230 = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.231 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.232 = internal global [4 x i64] [i64 2, i64 32, i64 39, i64 43]
@__sancov_gen_cov_switch_values.233 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.234 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.235 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 12, i64 32]
@__sancov_gen_cov_switch_values.236 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.237 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.238 = private unnamed_addr constant [23 x i8] c"nvme_fc_local_port_cnt\00", align 1
@___asan_gen_.241 = private unnamed_addr constant [13 x i8] c"nvme_fc_lock\00", align 1
@___asan_gen_.244 = private unnamed_addr constant [19 x i8] c"nvme_fc_lport_list\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 220, i32 8 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 728, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 744, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 875, i32 4 }
@___asan_gen_.289 = private unnamed_addr constant [16 x i8] c"nvmefc_ls_names\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 151, i32 14 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 1737, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 1746, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 1759, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 1773, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant [26 x i8] c"nvme_fc_waiting_to_unload\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 4023, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant [23 x i8] c"nvme_fc_unload_proceed\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 4025, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant [18 x i8] c"nvme_fc_transport\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 3765, i32 34 }
@___asan_gen_.335 = private unnamed_addr constant [17 x i8] c"nvme_fc_ctrl_cnt\00", align 1
@___asan_gen_.338 = private unnamed_addr constant [9 x i8] c"fc_class\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 3921, i32 21 }
@___asan_gen_.341 = private unnamed_addr constant [11 x i8] c"nvme_fc_wq\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 224, i32 33 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 221, i32 8 }
@___asan_gen_.351 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 378, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 218, i32 8 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 567, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 506, i32 20 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 512, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 515, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant [15 x i8] c"fc_udev_device\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 233, i32 23 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 792, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 807, i32 4 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 1580, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant [18 x i8] c"validation_errors\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 108, i32 14 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 1608, i32 31 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 1538, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 109, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 110, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 111, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 112, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 113, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 114, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 115, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 116, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 117, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 118, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 119, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 120, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 121, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 122, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 123, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 124, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 125, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 126, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 127, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 128, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 129, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 130, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 131, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 132, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 133, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 134, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 135, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 136, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 137, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 138, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 139, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 140, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 141, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 142, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 143, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 144, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 145, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 146, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 2541, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 2544, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 1497, i32 3 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 152, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 153, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 154, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 155, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 156, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 157, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant [26 x i8] c"../drivers/nvme/host/fc.h\00", align 1
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 158, i32 2 }
@___asan_gen_.579 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 326, i32 6 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 3989, i32 3 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 227, i32 8 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 3766, i32 11 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 3759, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 3678, i32 18 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 3680, i32 5 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 3685, i32 18 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 3687, i32 5 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 3708, i32 2 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 3506, i32 2 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 3511, i32 2 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 3512, i32 2 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 3513, i32 2 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 3514, i32 2 }
@___asan_gen_.662 = private unnamed_addr constant [21 x i8] c"nvme_fc_admin_mq_ops\00", align 1
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 3412, i32 32 }
@___asan_gen_.665 = private unnamed_addr constant [17 x i8] c"nvme_fc_ctrl_ops\00", align 1
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 3380, i32 35 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 3583, i32 3 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 3589, i32 3 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 3597, i32 2 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 3362, i32 3 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 3368, i32 4 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 1437, i32 3 }
@___asan_gen_.720 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 87, i32 2 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 3310, i32 3 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 3320, i32 4 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 3331, i32 5 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 3335, i32 5 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 3340, i32 4 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 3406, i32 3 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 3079, i32 2 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 3132, i32 3 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 3140, i32 3 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 3148, i32 3 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 3157, i32 3 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 1191, i32 3 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 1270, i32 3 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 1287, i32 3 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 2096, i32 3 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 2106, i32 3 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 1963, i32 3 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 1995, i32 4 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 2017, i32 4 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 2035, i32 3 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 2889, i32 3 }
@___asan_gen_.863 = private unnamed_addr constant [15 x i8] c"nvme_fc_mq_ops\00", align 1
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 2868, i32 32 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 2562, i32 2 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 2568, i32 32 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 1307, i32 3 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 1376, i32 3 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 1389, i32 3 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 2963, i32 3 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 2969, i32 3 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 2981, i32 3 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 1899, i32 31 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 2827, i32 3 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 222, i32 8 }
@___asan_gen_.932 = private unnamed_addr constant [20 x i8] c"nvme_fc_attr_groups\00", align 1
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 3916, i32 38 }
@___asan_gen_.935 = private unnamed_addr constant [19 x i8] c"nvme_fc_attr_group\00", align 1
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 3912, i32 37 }
@___asan_gen_.938 = private unnamed_addr constant [14 x i8] c"nvme_fc_attrs\00", align 1
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 3906, i32 26 }
@___asan_gen_.941 = private unnamed_addr constant [24 x i8] c"dev_attr_nvme_discovery\00", align 1
@___asan_gen_.944 = private unnamed_addr constant [21 x i8] c"dev_attr_appid_store\00", align 1
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 3903, i32 8 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 3806, i32 5 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 3904, i32 8 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.969, i32 695, i32 2 }
@___asan_gen_.969 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.969, i32 723, i32 2 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 3931, i32 31 }
@___asan_gen_.974 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 3949, i32 8 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 3951, i32 3 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 3959, i32 5 }
@___asan_gen_.989 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.992 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.993 = private constant [26 x i8] c"../drivers/nvme/host/fc.c\00", align 1
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.993, i32 3961, i32 3 }
@llvm.compiler.used = appending global [323 x ptr] [ptr @__UNIQUE_ID_file390, ptr @__UNIQUE_ID_license391, ptr @__exitcall_nvme_fc_exit_module, ptr @__initcall__kmod_nvme_fc__389_4038_nvme_fc_init_module6, ptr @__ksymtab_nvme_fc_rcv_ls_req, ptr @__ksymtab_nvme_fc_register_localport, ptr @__ksymtab_nvme_fc_register_remoteport, ptr @__ksymtab_nvme_fc_rescan_remoteport, ptr @__ksymtab_nvme_fc_set_remoteport_devloss, ptr @__ksymtab_nvme_fc_unregister_localport, ptr @__ksymtab_nvme_fc_unregister_remoteport, ptr @__nvme_fc_init_request._entry, ptr @__nvme_fc_init_request._entry.178, ptr @__nvme_fc_init_request._entry_ptr, ptr @__nvme_fc_init_request._entry_ptr.180, ptr @nvme_fc_connect_admin_queue._entry, ptr @nvme_fc_connect_admin_queue._entry.170, ptr @nvme_fc_connect_admin_queue._entry.173, ptr @nvme_fc_connect_admin_queue._entry_ptr, ptr @nvme_fc_connect_admin_queue._entry_ptr.172, ptr @nvme_fc_connect_admin_queue._entry_ptr.175, ptr @nvme_fc_connect_ctrl_work._entry, ptr @nvme_fc_connect_ctrl_work._entry_ptr, ptr @nvme_fc_connect_queue._entry, ptr @nvme_fc_connect_queue._entry.199, ptr @nvme_fc_connect_queue._entry.202, ptr @nvme_fc_connect_queue._entry_ptr, ptr @nvme_fc_connect_queue._entry_ptr.201, ptr @nvme_fc_connect_queue._entry_ptr.204, ptr @nvme_fc_create_association._entry, ptr @nvme_fc_create_association._entry.156, ptr @nvme_fc_create_association._entry.159, ptr @nvme_fc_create_association._entry.162, ptr @nvme_fc_create_association._entry.165, ptr @nvme_fc_create_association._entry_ptr, ptr @nvme_fc_create_association._entry_ptr.158, ptr @nvme_fc_create_association._entry_ptr.161, ptr @nvme_fc_create_association._entry_ptr.164, ptr @nvme_fc_create_association._entry_ptr.167, ptr @nvme_fc_create_ctrl._entry, ptr @nvme_fc_create_ctrl._entry_ptr, ptr @nvme_fc_create_io_queues._entry, ptr @nvme_fc_create_io_queues._entry_ptr, ptr @nvme_fc_ctrl_connectivity_loss._entry, ptr @nvme_fc_ctrl_connectivity_loss._entry.36, ptr @nvme_fc_ctrl_connectivity_loss._entry_ptr, ptr @nvme_fc_ctrl_connectivity_loss._entry_ptr.38, ptr @nvme_fc_delete_controllers._entry, ptr @nvme_fc_delete_controllers._entry_ptr, ptr @nvme_fc_error_recovery._entry, ptr @nvme_fc_error_recovery._entry.84, ptr @nvme_fc_error_recovery._entry_ptr, ptr @nvme_fc_error_recovery._entry_ptr.86, ptr @nvme_fc_exit_module, ptr @nvme_fc_exit_module._entry, ptr @nvme_fc_exit_module._entry.23, ptr @nvme_fc_exit_module._entry_ptr, ptr @nvme_fc_exit_module._entry_ptr.25, ptr @nvme_fc_fcpio_done._entry, ptr @nvme_fc_fcpio_done._entry.183, ptr @nvme_fc_fcpio_done._entry.186, ptr @nvme_fc_fcpio_done._entry.189, ptr @nvme_fc_fcpio_done._entry_ptr, ptr @nvme_fc_fcpio_done._entry_ptr.185, ptr @nvme_fc_fcpio_done._entry_ptr.188, ptr @nvme_fc_fcpio_done._entry_ptr.191, ptr @nvme_fc_init_ctrl._entry, ptr @nvme_fc_init_ctrl._entry.124, ptr @nvme_fc_init_ctrl._entry.127, ptr @nvme_fc_init_ctrl._entry_ptr, ptr @nvme_fc_init_ctrl._entry_ptr.126, ptr @nvme_fc_init_ctrl._entry_ptr.129, ptr @nvme_fc_init_module._entry, ptr @nvme_fc_init_module._entry.227, ptr @nvme_fc_init_module._entry_ptr, ptr @nvme_fc_init_module._entry_ptr.229, ptr @nvme_fc_ls_disconnect_assoc._entry, ptr @nvme_fc_ls_disconnect_assoc._entry_ptr, ptr @nvme_fc_match_disconn_ls._entry, ptr @nvme_fc_match_disconn_ls._entry_ptr, ptr @nvme_fc_nvme_discovery_store._entry, ptr @nvme_fc_nvme_discovery_store._entry_ptr, ptr @nvme_fc_parse_traddr._entry, ptr @nvme_fc_parse_traddr._entry_ptr, ptr @nvme_fc_rcv_ls_req._entry, ptr @nvme_fc_rcv_ls_req._entry.12, ptr @nvme_fc_rcv_ls_req._entry.15, ptr @nvme_fc_rcv_ls_req._entry.18, ptr @nvme_fc_rcv_ls_req._entry_ptr, ptr @nvme_fc_rcv_ls_req._entry_ptr.14, ptr @nvme_fc_rcv_ls_req._entry_ptr.17, ptr @nvme_fc_rcv_ls_req._entry_ptr.20, ptr @nvme_fc_reconnect_or_delete._entry, ptr @nvme_fc_reconnect_or_delete._entry.140, ptr @nvme_fc_reconnect_or_delete._entry.143, ptr @nvme_fc_reconnect_or_delete._entry.146, ptr @nvme_fc_reconnect_or_delete._entry.149, ptr @nvme_fc_reconnect_or_delete._entry_ptr, ptr @nvme_fc_reconnect_or_delete._entry_ptr.142, ptr @nvme_fc_reconnect_or_delete._entry_ptr.145, ptr @nvme_fc_reconnect_or_delete._entry_ptr.148, ptr @nvme_fc_reconnect_or_delete._entry_ptr.151, ptr @nvme_fc_recreate_io_queues._entry, ptr @nvme_fc_recreate_io_queues._entry.206, ptr @nvme_fc_recreate_io_queues._entry.209, ptr @nvme_fc_recreate_io_queues._entry_ptr, ptr @nvme_fc_recreate_io_queues._entry_ptr.208, ptr @nvme_fc_recreate_io_queues._entry_ptr.211, ptr @nvme_fc_reset_ctrl_work._entry, ptr @nvme_fc_reset_ctrl_work._entry.132, ptr @nvme_fc_reset_ctrl_work._entry_ptr, ptr @nvme_fc_reset_ctrl_work._entry_ptr.134, ptr @nvme_fc_resume_controller._entry, ptr @nvme_fc_resume_controller._entry_ptr, ptr @nvme_fc_submit_async_event._entry, ptr @nvme_fc_submit_async_event._entry_ptr, ptr @nvme_fc_timeout._entry, ptr @nvme_fc_timeout._entry_ptr, ptr @nvme_fc_unregister_remoteport._entry, ptr @nvme_fc_unregister_remoteport._entry_ptr, ptr @nvme_fc_xmt_disconnect_assoc._entry, ptr @nvme_fc_xmt_disconnect_assoc._entry_ptr, ptr @nvme_fc_xmt_ls_rsp._entry, ptr @nvme_fc_xmt_ls_rsp._entry_ptr, ptr @nvme_fc_local_port_cnt, ptr @nvme_fc_lock, ptr @nvme_fc_lport_list, ptr @nvme_fc_register_remoteport.__key, ptr @.str, ptr @nvme_fc_register_remoteport.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @nvmefc_ls_names, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @nvme_fc_waiting_to_unload, ptr @.str.21, ptr @.str.22, ptr @nvme_fc_unload_proceed, ptr @.str.24, ptr @nvme_fc_transport, ptr @nvme_fc_ctrl_cnt, ptr @fc_class, ptr @nvme_fc_wq, ptr @.str.26, ptr @xa_init_flags.__key, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @fc_udev_device, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @validation_errors, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @nvme_fc_init_ctrl.__key, ptr @.str.110, ptr @nvme_fc_init_ctrl.__key.111, ptr @.str.112, ptr @nvme_fc_init_ctrl.__key.113, ptr @.str.114, ptr @nvme_fc_init_ctrl.__key.115, ptr @.str.116, ptr @nvme_fc_init_ctrl.__key.117, ptr @.str.118, ptr @nvme_fc_init_ctrl.__key.119, ptr @.str.120, ptr @nvme_fc_admin_mq_ops, ptr @nvme_fc_ctrl_ops, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.125, ptr @.str.128, ptr @.str.130, ptr @.str.131, ptr @.str.133, ptr @.str.135, ptr @.str.136, ptr @init_completion.__key, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.141, ptr @.str.144, ptr @.str.147, ptr @.str.150, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.157, ptr @.str.160, ptr @.str.163, ptr @.str.166, ptr @.str.168, ptr @.str.169, ptr @.str.171, ptr @.str.174, ptr @.str.176, ptr @.str.177, ptr @.str.179, ptr @.str.181, ptr @.str.182, ptr @.str.184, ptr @.str.187, ptr @.str.190, ptr @.str.192, ptr @.str.193, ptr @nvme_fc_mq_ops, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.200, ptr @.str.203, ptr @.str.205, ptr @.str.207, ptr @.str.210, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @nvme_fc_attr_groups, ptr @nvme_fc_attr_group, ptr @nvme_fc_attrs, ptr @dev_attr_nvme_discovery, ptr @dev_attr_appid_store, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @nvme_fc_init_module.__key, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.228], section "llvm.metadata"
@0 = internal global [253 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_local_port_cnt to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_lport_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_register_remoteport.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_register_remoteport.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_unregister_remoteport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_rcv_ls_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmefc_ls_names to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_rcv_ls_req._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_rcv_ls_req._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_rcv_ls_req._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_waiting_to_unload to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_exit_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_unload_proceed to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_exit_module._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_transport to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_ctrl_cnt to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_class to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_resume_controller._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_udev_device to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_ctrl_connectivity_loss._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_ctrl_connectivity_loss._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_ls_disconnect_assoc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validation_errors to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_match_disconn_ls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_error_recovery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_error_recovery._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_xmt_ls_rsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_delete_controllers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_create_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_parse_traddr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_init_ctrl.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_init_ctrl.__key.111 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_init_ctrl.__key.113 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_init_ctrl.__key.115 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_init_ctrl.__key.117 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_init_ctrl.__key.119 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_admin_mq_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_ctrl_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_init_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_init_ctrl._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_init_ctrl._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_reset_ctrl_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_reset_ctrl_work._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_xmt_disconnect_assoc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_reconnect_or_delete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_reconnect_or_delete._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_reconnect_or_delete._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_reconnect_or_delete._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_reconnect_or_delete._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_connect_ctrl_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_create_association._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_create_association._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_create_association._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_create_association._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_create_association._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_connect_admin_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_connect_admin_queue._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_connect_admin_queue._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_fcpio_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_fcpio_done._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_fcpio_done._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_fcpio_done._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_create_io_queues._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_mq_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_connect_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_connect_queue._entry.199 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_connect_queue._entry.202 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_recreate_io_queues._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_recreate_io_queues._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_recreate_io_queues._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_submit_async_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_attr_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_nvme_discovery to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_appid_store to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_nvme_discovery_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_init_module.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_init_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_fc_init_module._entry.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvme_fc_register_localport(ptr nocapture noundef readonly %pinfo, ptr noundef %template, ptr noundef %dev, ptr nocapture noundef writeonly %portptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %template to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %template, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %remoteport_delete = getelementptr inbounds %struct.nvme_fc_port_template, ptr %template, i32 0, i32 1
  %2 = ptrtoint ptr %remoteport_delete to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remoteport_delete, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %ls_req = getelementptr inbounds %struct.nvme_fc_port_template, ptr %template, i32 0, i32 4
  %4 = ptrtoint ptr %ls_req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ls_req, align 8
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false2.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %fcp_io = getelementptr inbounds %struct.nvme_fc_port_template, ptr %template, i32 0, i32 5
  %6 = ptrtoint ptr %fcp_io to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcp_io, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %lor.lhs.false4.cleanup_crit_edge, label %lor.lhs.false6

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %ls_abort = getelementptr inbounds %struct.nvme_fc_port_template, ptr %template, i32 0, i32 6
  %8 = ptrtoint ptr %ls_abort to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ls_abort, align 8
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %lor.lhs.false6.cleanup_crit_edge, label %lor.lhs.false8

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %fcp_abort = getelementptr inbounds %struct.nvme_fc_port_template, ptr %template, i32 0, i32 7
  %10 = ptrtoint ptr %fcp_abort to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fcp_abort, align 4
  %tobool9.not = icmp eq ptr %11, null
  br i1 %tobool9.not, label %lor.lhs.false8.cleanup_crit_edge, label %lor.lhs.false10

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false10:                                  ; preds = %lor.lhs.false8
  %max_hw_queues = getelementptr inbounds %struct.nvme_fc_port_template, ptr %template, i32 0, i32 10
  %12 = ptrtoint ptr %max_hw_queues to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_hw_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool11.not = icmp eq i32 %13, 0
  br i1 %tobool11.not, label %lor.lhs.false10.cleanup_crit_edge, label %lor.lhs.false12

lor.lhs.false10.cleanup_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false12:                                  ; preds = %lor.lhs.false10
  %max_sgl_segments = getelementptr inbounds %struct.nvme_fc_port_template, ptr %template, i32 0, i32 11
  %14 = ptrtoint ptr %max_sgl_segments to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %max_sgl_segments, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool13.not = icmp eq i16 %15, 0
  br i1 %tobool13.not, label %lor.lhs.false12.cleanup_crit_edge, label %lor.lhs.false14

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false14:                                  ; preds = %lor.lhs.false12
  %max_dif_sgl_segments = getelementptr inbounds %struct.nvme_fc_port_template, ptr %template, i32 0, i32 12
  %16 = ptrtoint ptr %max_dif_sgl_segments to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %max_dif_sgl_segments, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool15.not = icmp eq i16 %17, 0
  br i1 %tobool15.not, label %lor.lhs.false14.cleanup_crit_edge, label %lor.lhs.false16

lor.lhs.false14.cleanup_crit_edge:                ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false16:                                  ; preds = %lor.lhs.false14
  %dma_boundary = getelementptr inbounds %struct.nvme_fc_port_template, ptr %template, i32 0, i32 13
  %18 = ptrtoint ptr %dma_boundary to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %dma_boundary, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %tobool17.not = icmp eq i64 %19, 0
  br i1 %tobool17.not, label %lor.lhs.false16.cleanup_crit_edge, label %if.end

lor.lhs.false16.cleanup_crit_edge:                ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false16
  %call = tail call fastcc ptr @nvme_fc_attach_to_unreg_lport(ptr noundef %pinfo, ptr noundef %template, ptr noundef %dev)
  %cmp.i123 = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i123, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %20 = ptrtoint ptr %call to i32
  br label %cleanup

if.else:                                          ; preds = %if.end
  %tobool21.not = icmp eq ptr %call, null
  br i1 %tobool21.not, label %if.end24, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end24:                                         ; preds = %if.else
  %local_priv_sz = getelementptr inbounds %struct.nvme_fc_port_template, ptr %template, i32 0, i32 14
  %21 = ptrtoint ptr %local_priv_sz to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %local_priv_sz, align 8
  %add = add i32 %22, 128
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #20
  %tobool26.not = icmp eq ptr %call9.i, null
  br i1 %tobool26.not, label %if.end24.cleanup_crit_edge, label %if.end28

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %call29 = tail call i32 @ida_alloc_range(ptr noundef nonnull @nvme_fc_local_port_cnt, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp = icmp slt i32 %call29, 0
  br i1 %cmp, label %if.end28.out_fail_kfree_crit_edge, label %if.end31

if.end28.out_fail_kfree_crit_edge:                ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_fail_kfree

if.end31:                                         ; preds = %if.end28
  %call32 = tail call ptr @get_device(ptr noundef %dev) #17
  %tobool33.not = icmp ne ptr %call32, null
  %tobool34.not = icmp eq ptr %dev, null
  %or.cond = or i1 %tobool34.not, %tobool33.not
  br i1 %or.cond, label %if.end36, label %if.then35

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @ida_free(ptr noundef nonnull @nvme_fc_local_port_cnt, i32 noundef %call29) #17
  br label %out_fail_kfree

if.end36:                                         ; preds = %if.end31
  %port_list = getelementptr inbounds %struct.nvme_fc_lport, ptr %call9.i, i32 0, i32 2
  %23 = ptrtoint ptr %port_list to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %port_list, ptr %port_list, align 4
  %prev.i = getelementptr inbounds %struct.nvme_fc_lport, ptr %call9.i, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %port_list, ptr %prev.i, align 32
  %endp_list = getelementptr inbounds %struct.nvme_fc_lport, ptr %call9.i, i32 0, i32 3
  %25 = ptrtoint ptr %endp_list to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %endp_list, ptr %endp_list, align 4
  %prev.i124 = getelementptr inbounds %struct.nvme_fc_lport, ptr %call9.i, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %prev.i124 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %endp_list, ptr %prev.i124, align 8
  %ref = getelementptr inbounds %struct.nvme_fc_lport, ptr %call9.i, i32 0, i32 6
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #17
  %27 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 1, ptr %ref, align 4
  %act_rport_cnt = getelementptr inbounds %struct.nvme_fc_lport, ptr %call9.i, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %act_rport_cnt, i32 noundef 4) #17
  %28 = ptrtoint ptr %act_rport_cnt to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 0, ptr %act_rport_cnt, align 8
  %ops = getelementptr inbounds %struct.nvme_fc_lport, ptr %call9.i, i32 0, i32 5
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %template, ptr %ops, align 16
  %dev37 = getelementptr inbounds %struct.nvme_fc_lport, ptr %call9.i, i32 0, i32 4
  %30 = ptrtoint ptr %dev37 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %dev, ptr %dev37, align 4
  %endp_cnt = getelementptr inbounds %struct.nvme_fc_lport, ptr %call9.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %endp_cnt, ptr noundef nonnull @.str.27, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #17
  %xa_flags.i.i = getelementptr inbounds %struct.nvme_fc_lport, ptr %call9.i, i32 0, i32 1, i32 0, i32 1
  %31 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 67108869, ptr %xa_flags.i.i, align 4
  %xa_head.i.i = getelementptr inbounds %struct.nvme_fc_lport, ptr %call9.i, i32 0, i32 1, i32 0, i32 2
  %32 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %xa_head.i.i, align 8
  %33 = ptrtoint ptr %local_priv_sz to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %local_priv_sz, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool39.not = icmp eq i32 %34, 0
  %arrayidx = getelementptr %struct.nvme_fc_lport, ptr %call9.i, i32 1
  %spec.select = select i1 %tobool39.not, ptr null, ptr %arrayidx
  %35 = getelementptr inbounds %struct.nvme_fc_local_port, ptr %call9.i, i32 0, i32 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %spec.select, ptr %35, align 8
  %37 = ptrtoint ptr %pinfo to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %pinfo, align 8
  %node_name47 = getelementptr inbounds %struct.nvme_fc_local_port, ptr %call9.i, i32 0, i32 2
  %39 = ptrtoint ptr %node_name47 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %node_name47, align 8
  %port_name = getelementptr inbounds %struct.nvme_fc_port_info, ptr %pinfo, i32 0, i32 1
  %40 = ptrtoint ptr %port_name to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %port_name, align 8
  %port_name49 = getelementptr inbounds %struct.nvme_fc_local_port, ptr %call9.i, i32 0, i32 3
  %42 = ptrtoint ptr %port_name49 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %port_name49, align 16
  %port_role = getelementptr inbounds %struct.nvme_fc_port_info, ptr %pinfo, i32 0, i32 2
  %43 = ptrtoint ptr %port_role to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %port_role, align 8
  %port_role51 = getelementptr inbounds %struct.nvme_fc_local_port, ptr %call9.i, i32 0, i32 1
  %45 = ptrtoint ptr %port_role51 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %port_role51, align 4
  %port_id = getelementptr inbounds %struct.nvme_fc_port_info, ptr %pinfo, i32 0, i32 3
  %46 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port_id, align 4
  %port_id53 = getelementptr inbounds %struct.nvme_fc_local_port, ptr %call9.i, i32 0, i32 5
  %48 = ptrtoint ptr %port_id53 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %port_id53, align 4
  %port_state = getelementptr inbounds %struct.nvme_fc_local_port, ptr %call9.i, i32 0, i32 6
  %49 = ptrtoint ptr %port_state to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 2, ptr %port_state, align 32
  %50 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call29, ptr %call9.i, align 128
  %call59 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @nvme_fc_lock) #17
  %51 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @nvme_fc_lport_list, i32 0, i32 1), align 4
  %call.i.i125 = tail call zeroext i1 @__list_add_valid(ptr noundef %port_list, ptr noundef %51, ptr noundef nonnull @nvme_fc_lport_list) #17
  br i1 %call.i.i125, label %if.end.i.i126, label %if.end36.list_add_tail.exit_crit_edge

if.end36.list_add_tail.exit_crit_edge:            ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_add_tail.exit

if.end.i.i126:                                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #19
  store ptr %port_list, ptr getelementptr inbounds (%struct.list_head, ptr @nvme_fc_lport_list, i32 0, i32 1), align 4
  %52 = ptrtoint ptr %port_list to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @nvme_fc_lport_list, ptr %port_list, align 4
  %53 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %51, ptr %prev.i, align 32
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %port_list, ptr %51, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i126, %if.end36.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @nvme_fc_lock, i32 noundef %call59) #17
  br i1 %tobool34.not, label %list_add_tail.exit.cleanup_crit_edge, label %if.then64

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then64:                                        ; preds = %list_add_tail.exit
  %dma_parms.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 22
  %55 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dma_parms.i, align 4
  %tobool.not.i = icmp eq ptr %56, null
  br i1 %tobool.not.i, label %if.then64.cleanup_crit_edge, label %if.then.i127

if.then64.cleanup_crit_edge:                      ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then.i127:                                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #19
  %57 = ptrtoint ptr %dma_boundary to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %dma_boundary, align 8
  %conv66 = trunc i64 %58 to i32
  %segment_boundary_mask.i = getelementptr inbounds %struct.device_dma_parameters, ptr %56, i32 0, i32 2
  %59 = ptrtoint ptr %segment_boundary_mask.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv66, ptr %segment_boundary_mask.i, align 4
  br label %cleanup

out_fail_kfree:                                   ; preds = %if.then35, %if.end28.out_fail_kfree_crit_edge
  %ret.0 = phi i32 [ -19, %if.then35 ], [ -28, %if.end28.out_fail_kfree_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #17
  br label %cleanup

cleanup:                                          ; preds = %out_fail_kfree, %if.then.i127, %if.then64.cleanup_crit_edge, %list_add_tail.exit.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then19, %lor.lhs.false16.cleanup_crit_edge, %lor.lhs.false14.cleanup_crit_edge, %lor.lhs.false12.cleanup_crit_edge, %lor.lhs.false10.cleanup_crit_edge, %lor.lhs.false8.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %.sink = phi ptr [ %call, %if.else.cleanup_crit_edge ], [ %call9.i, %if.then.i127 ], [ %call9.i, %if.then64.cleanup_crit_edge ], [ %call9.i, %list_add_tail.exit.cleanup_crit_edge ], [ null, %if.end24.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %lor.lhs.false2.cleanup_crit_edge ], [ null, %lor.lhs.false4.cleanup_crit_edge ], [ null, %lor.lhs.false6.cleanup_crit_edge ], [ null, %lor.lhs.false8.cleanup_crit_edge ], [ null, %lor.lhs.false10.cleanup_crit_edge ], [ null, %lor.lhs.false12.cleanup_crit_edge ], [ null, %lor.lhs.false14.cleanup_crit_edge ], [ null, %lor.lhs.false16.cleanup_crit_edge ], [ null, %out_fail_kfree ], [ null, %if.then19 ]
  %retval.0 = phi i32 [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then.i127 ], [ 0, %if.then64.cleanup_crit_edge ], [ 0, %list_add_tail.exit.cleanup_crit_edge ], [ -12, %if.end24.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %lor.lhs.false6.cleanup_crit_edge ], [ -22, %lor.lhs.false8.cleanup_crit_edge ], [ -22, %lor.lhs.false10.cleanup_crit_edge ], [ -22, %lor.lhs.false12.cleanup_crit_edge ], [ -22, %lor.lhs.false14.cleanup_crit_edge ], [ -22, %lor.lhs.false16.cleanup_crit_edge ], [ %ret.0, %out_fail_kfree ], [ %20, %if.then19 ]
  %60 = ptrtoint ptr %portptr to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %.sink, ptr %portptr, align 4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nvme_fc_attach_to_unreg_lport(ptr nocapture noundef readonly %pinfo, ptr noundef %ops, ptr noundef readnone %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @nvme_fc_lock) #17
  %.pn60 = load ptr, ptr @nvme_fc_lport_list, align 4
  %cmp6.not61 = icmp eq ptr %.pn60, @nvme_fc_lport_list
  br i1 %cmp6.not61, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %0 = ptrtoint ptr %pinfo to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pinfo, align 8
  %port_name12 = getelementptr inbounds %struct.nvme_fc_port_info, ptr %pinfo, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn62 = phi ptr [ %.pn60, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %node_name = getelementptr i8, ptr %.pn62, i32 -84
  %2 = ptrtoint ptr %node_name to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %node_name, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %1)
  %cmp9.not = icmp eq i64 %3, %1
  br i1 %cmp9.not, label %lor.lhs.false, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %port_name = getelementptr i8, ptr %.pn62, i32 -76
  %4 = ptrtoint ptr %port_name to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %port_name, align 8
  %6 = ptrtoint ptr %port_name12 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %port_name12, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp13.not = icmp eq i64 %5, %7
  br i1 %cmp13.not, label %if.end, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %lport.0.le = getelementptr i8, ptr %.pn62, i32 -92
  %dev15 = getelementptr i8, ptr %.pn62, i32 16
  %8 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev15, align 4
  %cmp16.not = icmp eq ptr %9, %dev
  br i1 %cmp16.not, label %if.end20, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %port_state = getelementptr i8, ptr %.pn62, i32 -60
  %10 = ptrtoint ptr %port_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %11)
  %cmp22.not = icmp eq i32 %11, 10
  br i1 %cmp22.not, label %if.end26, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end26:                                         ; preds = %if.end20
  %call27 = tail call fastcc i32 @nvme_fc_lport_get(ptr noundef %lport.0.le)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool.not = icmp eq i32 %call27, 0
  br i1 %tobool.not, label %if.end26.cleanup_crit_edge, label %if.end29

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end29:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  %ops30 = getelementptr i8, ptr %.pn62, i32 20
  %12 = ptrtoint ptr %ops30 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %ops, ptr %ops30, align 8
  %port_role = getelementptr inbounds %struct.nvme_fc_port_info, ptr %pinfo, i32 0, i32 2
  %13 = ptrtoint ptr %port_role to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port_role, align 8
  %port_role32 = getelementptr i8, ptr %.pn62, i32 -88
  %15 = ptrtoint ptr %port_role32 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %port_role32, align 4
  %port_id = getelementptr inbounds %struct.nvme_fc_port_info, ptr %pinfo, i32 0, i32 3
  %16 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port_id, align 4
  %port_id34 = getelementptr i8, ptr %.pn62, i32 -64
  %18 = ptrtoint ptr %port_id34 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %port_id34, align 4
  %19 = ptrtoint ptr %port_state to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %port_state, align 8
  br label %cleanup

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %20 = ptrtoint ptr %.pn62 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn = load ptr, ptr %.pn62, align 4
  %cmp6.not = icmp eq ptr %.pn, @nvme_fc_lport_list
  br i1 %cmp6.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end29, %if.end26.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %lport.0.le, %if.end29 ], [ null, %if.end26.cleanup_crit_edge ], [ inttoptr (i32 -18 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -17 to ptr), %if.end20.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @nvme_fc_lock, i32 noundef %call2) #17
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvme_fc_unregister_localport(ptr noundef %portptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %portptr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body1:                                         ; preds = %entry
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @nvme_fc_lock) #17
  %port_state = getelementptr inbounds %struct.nvme_fc_local_port, ptr %portptr, i32 0, i32 6
  %0 = ptrtoint ptr %port_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp6.not = icmp eq i32 %1, 2
  br i1 %cmp6.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @nvme_fc_lock, i32 noundef %call3) #17
  br label %cleanup

if.end9:                                          ; preds = %do.body1
  %2 = ptrtoint ptr %port_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 10, ptr %port_state, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @nvme_fc_lock, i32 noundef %call3) #17
  %act_rport_cnt = getelementptr inbounds %struct.nvme_fc_lport, ptr %portptr, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %act_rport_cnt, i32 noundef 4) #17
  %3 = ptrtoint ptr %act_rport_cnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %act_rport_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp12 = icmp eq i32 %4, 0
  br i1 %cmp12, label %if.then14, label %if.end9.if.end15_crit_edge

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  %ops = getelementptr inbounds %struct.nvme_fc_lport, ptr %portptr, i32 0, i32 5
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  tail call void %8(ptr noundef nonnull %portptr) #17
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end9.if.end15_crit_edge
  tail call fastcc void @nvme_fc_lport_put(ptr noundef nonnull %portptr)
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then8 ], [ 0, %if.end15 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvme_fc_lport_put(ptr noundef %lport) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ref = getelementptr inbounds %struct.nvme_fc_lport, ptr %lport, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !494
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #17
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #17, !srcloc !495
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !496

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #17
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !497
  %port_state.i = getelementptr %struct.nvme_fc_lport, ptr %lport, i32 0, i32 0, i32 6
  %1 = ptrtoint ptr %port_state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %port_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %2)
  %cmp.not.i = icmp eq i32 %2, 10
  br i1 %cmp.not.i, label %if.then.i.if.end.i_crit_edge, label %do.end.i, !prof !496

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 252, i32 noundef 9, ptr noundef null) #17
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %endp_list.i = getelementptr %struct.nvme_fc_lport, ptr %lport, i32 0, i32 3
  %3 = ptrtoint ptr %endp_list.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %endp_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %4, %endp_list.i
  br i1 %cmp.i.not.i, label %if.end.i.if.end45.i_crit_edge, label %do.end39.i, !prof !496

if.end.i.if.end45.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end45.i

do.end39.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 253, i32 noundef 9, ptr noundef null) #17
  br label %if.end45.i

if.end45.i:                                       ; preds = %do.end39.i, %if.end.i.if.end45.i_crit_edge
  %call58.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @nvme_fc_lock) #17
  %port_list.i = getelementptr %struct.nvme_fc_lport, ptr %lport, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %port_list.i) #17
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end45.i.list_del.exit.i_crit_edge

if.end45.i.list_del.exit.i_crit_edge:             ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i.i = getelementptr %struct.nvme_fc_lport, ptr %lport, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %port_list.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end45.i.list_del.exit.i_crit_edge
  %11 = ptrtoint ptr %port_list.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %port_list.i, align 4
  %prev.i.i = getelementptr %struct.nvme_fc_lport, ptr %lport, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %.b78.i = load i1, ptr @nvme_fc_waiting_to_unload, align 1
  br i1 %.b78.i, label %land.lhs.true.i, label %list_del.exit.i.nvme_fc_free_lport.exit_crit_edge

list_del.exit.i.nvme_fc_free_lport.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nvme_fc_free_lport.exit

land.lhs.true.i:                                  ; preds = %list_del.exit.i
  %13 = load volatile ptr, ptr @nvme_fc_lport_list, align 4
  %cmp.i79.not.i = icmp eq ptr %13, @nvme_fc_lport_list
  br i1 %cmp.i79.not.i, label %if.then67.i, label %land.lhs.true.i.nvme_fc_free_lport.exit_crit_edge

land.lhs.true.i.nvme_fc_free_lport.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nvme_fc_free_lport.exit

if.then67.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @complete(ptr noundef nonnull @nvme_fc_unload_proceed) #17
  br label %nvme_fc_free_lport.exit

nvme_fc_free_lport.exit:                          ; preds = %if.then67.i, %land.lhs.true.i.nvme_fc_free_lport.exit_crit_edge, %list_del.exit.i.nvme_fc_free_lport.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @nvme_fc_lock, i32 noundef %call58.i) #17
  %14 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lport, align 8
  tail call void @ida_free(ptr noundef nonnull @nvme_fc_local_port_cnt, i32 noundef %15) #17
  %endp_cnt.i = getelementptr %struct.nvme_fc_lport, ptr %lport, i32 0, i32 1
  tail call void @ida_destroy(ptr noundef %endp_cnt.i) #17
  %dev.i = getelementptr %struct.nvme_fc_lport, ptr %lport, i32 0, i32 4
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  tail call void @put_device(ptr noundef %17) #17
  tail call void @kfree(ptr noundef %lport) #17
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %nvme_fc_free_lport.exit, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvme_fc_register_remoteport(ptr noundef %localport, ptr nocapture noundef readonly %pinfo, ptr nocapture noundef writeonly %portptr) #0 align 64 {
entry:
  %hostaddr.i142 = alloca [64 x i8], align 1
  %tgtaddr.i143 = alloca [64 x i8], align 1
  %envp.i144 = alloca [4 x ptr], align 4
  %hostaddr.i = alloca [64 x i8], align 1
  %tgtaddr.i = alloca [64 x i8], align 1
  %envp.i = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call fastcc i32 @nvme_fc_lport_get(ptr noundef %localport)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @nvme_fc_lock) #17
  %endp_list.i = getelementptr inbounds %struct.nvme_fc_lport, ptr %localport, i32 0, i32 3
  %0 = ptrtoint ptr %endp_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn102.i = load ptr, ptr %endp_list.i, align 4
  %cmp8.not103.i = icmp eq ptr %.pn102.i, %endp_list.i
  br i1 %cmp8.not103.i, label %if.end.out_done.i_crit_edge, label %for.body.lr.ph.i

if.end.out_done.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_done.i

for.body.lr.ph.i:                                 ; preds = %if.end
  %1 = ptrtoint ptr %pinfo to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %pinfo, align 8
  %port_name14.i = getelementptr inbounds %struct.nvme_fc_port_info, ptr %pinfo, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc64.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn104.i = phi ptr [ %.pn102.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc64.i.for.body.i_crit_edge ]
  %node_name.i = getelementptr i8, ptr %.pn104.i, i32 -40
  %3 = ptrtoint ptr %node_name.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %node_name.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %2)
  %cmp11.not.i = icmp eq i64 %4, %2
  br i1 %cmp11.not.i, label %lor.lhs.false.i, label %for.body.i.for.inc64.i_crit_edge

for.body.i.for.inc64.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc64.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %port_name.i = getelementptr i8, ptr %.pn104.i, i32 -32
  %5 = ptrtoint ptr %port_name.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %port_name.i, align 8
  %7 = ptrtoint ptr %port_name14.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %port_name14.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %8)
  %cmp15.not.i = icmp eq i64 %6, %8
  br i1 %cmp15.not.i, label %if.end.i123, label %lor.lhs.false.i.for.inc64.i_crit_edge

lor.lhs.false.i.for.inc64.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc64.i

if.end.i123:                                      ; preds = %lor.lhs.false.i
  %rport.0.le.i = getelementptr i8, ptr %.pn104.i, i32 -48
  %call17.i = tail call fastcc i32 @nvme_fc_rport_get(ptr noundef %rport.0.le.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool.not.i, label %if.end.i123.out_done.i_crit_edge, label %if.end20.i

if.end.i123.out_done.i_crit_edge:                 ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_done.i

if.end20.i:                                       ; preds = %if.end.i123
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @nvme_fc_lock, i32 noundef %call2.i) #17
  %lock.i = getelementptr i8, ptr %.pn104.i, i32 48
  %call29.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #17
  %port_state.i = getelementptr i8, ptr %.pn104.i, i32 -8
  %9 = ptrtoint ptr %port_state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %10)
  %cmp35.not.i = icmp eq i32 %10, 10
  br i1 %cmp35.not.i, label %if.end40.i, label %nvme_fc_attach_to_suspended_rport.exit.thread

nvme_fc_attach_to_suspended_rport.exit.thread:    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call29.i) #17
  tail call fastcc void @nvme_fc_rport_put(ptr noundef %rport.0.le.i) #17
  br label %if.then4

if.end40.i:                                       ; preds = %if.end20.i
  %port_role.i = getelementptr inbounds %struct.nvme_fc_port_info, ptr %pinfo, i32 0, i32 2
  %11 = ptrtoint ptr %port_role.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port_role.i, align 8
  %port_role42.i = getelementptr i8, ptr %.pn104.i, i32 -44
  %13 = ptrtoint ptr %port_role42.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %port_role42.i, align 4
  %port_id.i = getelementptr inbounds %struct.nvme_fc_port_info, ptr %pinfo, i32 0, i32 3
  %14 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port_id.i, align 4
  %port_id44.i = getelementptr i8, ptr %.pn104.i, i32 -12
  %16 = ptrtoint ptr %port_id44.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %port_id44.i, align 4
  %17 = ptrtoint ptr %port_state.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %port_state.i, align 8
  %dev_loss_end.i = getelementptr i8, ptr %.pn104.i, i32 100
  %18 = ptrtoint ptr %dev_loss_end.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %dev_loss_end.i, align 4
  %ctrl_list.i = getelementptr i8, ptr %.pn104.i, i32 8
  %19 = ptrtoint ptr %ctrl_list.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn99105.i = load ptr, ptr %ctrl_list.i, align 4
  %cmp54.not106.i = icmp eq ptr %.pn99105.i, %ctrl_list.i
  br i1 %cmp54.not106.i, label %if.end40.i.for.end.i_crit_edge, label %if.end40.i.for.body57.i_crit_edge

if.end40.i.for.body57.i_crit_edge:                ; preds = %if.end40.i
  br label %for.body57.i

if.end40.i.for.end.i_crit_edge:                   ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.body57.i:                                     ; preds = %nvme_fc_resume_controller.exit.i.for.body57.i_crit_edge, %if.end40.i.for.body57.i_crit_edge
  %.pn99107.i = phi ptr [ %.pn99.i, %nvme_fc_resume_controller.exit.i.for.body57.i_crit_edge ], [ %.pn99105.i, %if.end40.i.for.body57.i_crit_edge ]
  %state.i.i = getelementptr i8, ptr %.pn99107.i, i32 856
  %20 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state.i.i, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %for.body57.i.nvme_fc_resume_controller.exit.i_crit_edge [
    i32 0, label %for.body57.i.do.end.i.i_crit_edge
    i32 3, label %for.body57.i.do.end.i.i_crit_edge169
  ]

for.body57.i.do.end.i.i_crit_edge169:             ; preds = %for.body57.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

for.body57.i.do.end.i.i_crit_edge:                ; preds = %for.body57.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

for.body57.i.nvme_fc_resume_controller.exit.i_crit_edge: ; preds = %for.body57.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nvme_fc_resume_controller.exit.i

do.end.i.i:                                       ; preds = %for.body57.i.do.end.i.i_crit_edge, %for.body57.i.do.end.i.i_crit_edge169
  %device.i.i = getelementptr i8, ptr %.pn99107.i, i32 2068
  %23 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device.i.i, align 8
  %cnum.i.i = getelementptr i8, ptr %.pn99107.i, i32 -24
  %25 = ptrtoint ptr %cnum.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cnum.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.29, i32 noundef %26) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nvme_wq to i32))
  %27 = load ptr, ptr @nvme_wq, align 4
  %connect_work.i.i = getelementptr i8, ptr %.pn99107.i, i32 420
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %27, ptr noundef %connect_work.i.i, i32 noundef 0) #17
  br label %nvme_fc_resume_controller.exit.i

nvme_fc_resume_controller.exit.i:                 ; preds = %do.end.i.i, %for.body57.i.nvme_fc_resume_controller.exit.i_crit_edge
  %28 = ptrtoint ptr %.pn99107.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn99.i = load ptr, ptr %.pn99107.i, align 4
  %cmp54.not.i = icmp eq ptr %.pn99.i, %ctrl_list.i
  br i1 %cmp54.not.i, label %nvme_fc_resume_controller.exit.i.for.end.i_crit_edge, label %nvme_fc_resume_controller.exit.i.for.body57.i_crit_edge

nvme_fc_resume_controller.exit.i.for.body57.i_crit_edge: ; preds = %nvme_fc_resume_controller.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body57.i

nvme_fc_resume_controller.exit.i.for.end.i_crit_edge: ; preds = %nvme_fc_resume_controller.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.end.i:                                        ; preds = %nvme_fc_resume_controller.exit.i.for.end.i_crit_edge, %if.end40.i.for.end.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call29.i) #17
  br label %nvme_fc_attach_to_suspended_rport.exit

for.inc64.i:                                      ; preds = %lor.lhs.false.i.for.inc64.i_crit_edge, %for.body.i.for.inc64.i_crit_edge
  %29 = ptrtoint ptr %.pn104.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn.i = load ptr, ptr %.pn104.i, align 4
  %cmp8.not.i = icmp eq ptr %.pn.i, %endp_list.i
  br i1 %cmp8.not.i, label %for.inc64.i.out_done.i_crit_edge, label %for.inc64.i.for.body.i_crit_edge

for.inc64.i.for.body.i_crit_edge:                 ; preds = %for.inc64.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.inc64.i.out_done.i_crit_edge:                 ; preds = %for.inc64.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_done.i

out_done.i:                                       ; preds = %for.inc64.i.out_done.i_crit_edge, %if.end.i123.out_done.i_crit_edge, %if.end.out_done.i_crit_edge
  %rport.1.i = phi ptr [ inttoptr (i32 -37 to ptr), %if.end.i123.out_done.i_crit_edge ], [ null, %if.end.out_done.i_crit_edge ], [ null, %for.inc64.i.out_done.i_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @nvme_fc_lock, i32 noundef %call2.i) #17
  br label %nvme_fc_attach_to_suspended_rport.exit

nvme_fc_attach_to_suspended_rport.exit:           ; preds = %out_done.i, %for.end.i
  %retval.0.i = phi ptr [ %rport.0.le.i, %for.end.i ], [ %rport.1.i, %out_done.i ]
  %cmp.i124 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i124, label %nvme_fc_attach_to_suspended_rport.exit.if.then4_crit_edge, label %if.else

nvme_fc_attach_to_suspended_rport.exit.if.then4_crit_edge: ; preds = %nvme_fc_attach_to_suspended_rport.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then4

if.then4:                                         ; preds = %nvme_fc_attach_to_suspended_rport.exit.if.then4_crit_edge, %nvme_fc_attach_to_suspended_rport.exit.thread
  %retval.0.i159 = phi ptr [ inttoptr (i32 -116 to ptr), %nvme_fc_attach_to_suspended_rport.exit.thread ], [ %retval.0.i, %nvme_fc_attach_to_suspended_rport.exit.if.then4_crit_edge ]
  %30 = ptrtoint ptr %retval.0.i159 to i32
  br label %out_lport_put

if.else:                                          ; preds = %nvme_fc_attach_to_suspended_rport.exit
  %tobool6.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.else
  tail call fastcc void @nvme_fc_lport_put(ptr noundef %localport)
  %dev_loss_tmo.i = getelementptr inbounds %struct.nvme_fc_port_info, ptr %pinfo, i32 0, i32 4
  %31 = ptrtoint ptr %dev_loss_tmo.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dev_loss_tmo.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i125 = icmp eq i32 %32, 0
  %spec.select.i = select i1 %tobool.not.i125, i32 60, i32 %32
  %33 = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %retval.0.i, i32 0, i32 6
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %spec.select.i, ptr %33, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hostaddr.i) #17
  %35 = call ptr @memset(ptr %hostaddr.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tgtaddr.i) #17
  %36 = call ptr @memset(ptr %tgtaddr.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %envp.i) #17
  %37 = getelementptr inbounds [4 x ptr], ptr %envp.i, i32 0, i32 1
  %38 = getelementptr inbounds [4 x ptr], ptr %envp.i, i32 0, i32 2
  %39 = getelementptr inbounds [4 x ptr], ptr %envp.i, i32 0, i32 3
  %40 = ptrtoint ptr %envp.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.31, ptr %envp.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %hostaddr.i, ptr %37, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %tgtaddr.i, ptr %38, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %39, align 4
  %port_role.i126 = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %retval.0.i, i32 0, i32 1
  %44 = ptrtoint ptr %port_role.i126 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %port_role.i126, align 4
  %and.i = and i32 %45, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i127 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i127, label %if.then7.nvme_fc_signal_discovery_scan.exit_crit_edge, label %if.end.i130

if.then7.nvme_fc_signal_discovery_scan.exit_crit_edge: ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #19
  br label %nvme_fc_signal_discovery_scan.exit

if.end.i130:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #19
  %node_name.i128 = getelementptr inbounds %struct.nvme_fc_local_port, ptr %localport, i32 0, i32 2
  %46 = ptrtoint ptr %node_name.i128 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %node_name.i128, align 8
  %port_name.i129 = getelementptr inbounds %struct.nvme_fc_local_port, ptr %localport, i32 0, i32 3
  %48 = ptrtoint ptr %port_name.i129 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %port_name.i129, align 8
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %hostaddr.i, i32 noundef 64, ptr noundef nonnull @.str.32, i64 noundef %47, i64 noundef %49) #17
  %node_name8.i = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %retval.0.i, i32 0, i32 2
  %50 = ptrtoint ptr %node_name8.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %node_name8.i, align 8
  %port_name10.i = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %retval.0.i, i32 0, i32 3
  %52 = ptrtoint ptr %port_name10.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %port_name10.i, align 8
  %call11.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tgtaddr.i, i32 noundef 64, ptr noundef nonnull @.str.33, i64 noundef %51, i64 noundef %53) #17
  %54 = load ptr, ptr @fc_udev_device, align 4
  %call13.i = call i32 @kobject_uevent_env(ptr noundef %54, i32 noundef 2, ptr noundef nonnull %envp.i) #17
  br label %nvme_fc_signal_discovery_scan.exit

nvme_fc_signal_discovery_scan.exit:               ; preds = %if.end.i130, %if.then7.nvme_fc_signal_discovery_scan.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %envp.i) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tgtaddr.i) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hostaddr.i) #17
  br label %cleanup

if.end9:                                          ; preds = %if.else
  %ops = getelementptr inbounds %struct.nvme_fc_lport, ptr %localport, i32 0, i32 5
  %55 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ops, align 8
  %remote_priv_sz = getelementptr inbounds %struct.nvme_fc_port_template, ptr %56, i32 0, i32 15
  %57 = ptrtoint ptr %remote_priv_sz to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %remote_priv_sz, align 4
  %add = add i32 %58, 200
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #20
  %tobool11.not = icmp eq ptr %call9.i, null
  br i1 %tobool11.not, label %if.end9.out_lport_put_crit_edge, label %if.end13

if.end9.out_lport_put_crit_edge:                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_lport_put

if.end13:                                         ; preds = %if.end9
  %endp_cnt = getelementptr inbounds %struct.nvme_fc_lport, ptr %localport, i32 0, i32 1
  %call14 = tail call i32 @ida_alloc_range(ptr noundef %endp_cnt, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp slt i32 %call14, 0
  br i1 %cmp, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree(ptr noundef nonnull %call9.i) #17
  br label %out_lport_put

if.end16:                                         ; preds = %if.end13
  %endp_list = getelementptr inbounds %struct.nvme_fc_rport, ptr %call9.i, i32 0, i32 1
  %59 = ptrtoint ptr %endp_list to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %endp_list, ptr %endp_list, align 16
  %prev.i = getelementptr inbounds %struct.nvme_fc_rport, ptr %call9.i, i32 0, i32 1, i32 1
  %60 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %endp_list, ptr %prev.i, align 4
  %ctrl_list = getelementptr inbounds %struct.nvme_fc_rport, ptr %call9.i, i32 0, i32 2
  %61 = ptrtoint ptr %ctrl_list to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %ctrl_list, ptr %ctrl_list, align 8
  %prev.i131 = getelementptr inbounds %struct.nvme_fc_rport, ptr %call9.i, i32 0, i32 2, i32 1
  %62 = ptrtoint ptr %prev.i131 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %ctrl_list, ptr %prev.i131, align 4
  %ls_req_list = getelementptr inbounds %struct.nvme_fc_rport, ptr %call9.i, i32 0, i32 3
  %63 = ptrtoint ptr %ls_req_list to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %ls_req_list, ptr %ls_req_list, align 64
  %prev.i132 = getelementptr inbounds %struct.nvme_fc_rport, ptr %call9.i, i32 0, i32 3, i32 1
  %64 = ptrtoint ptr %prev.i132 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %ls_req_list, ptr %prev.i132, align 4
  %disc_list = getelementptr inbounds %struct.nvme_fc_rport, ptr %call9.i, i32 0, i32 5
  %65 = ptrtoint ptr %disc_list to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %disc_list, ptr %disc_list, align 16
  %prev.i133 = getelementptr inbounds %struct.nvme_fc_rport, ptr %call9.i, i32 0, i32 5, i32 1
  %66 = ptrtoint ptr %prev.i133 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %disc_list, ptr %prev.i133, align 4
  %ref = getelementptr inbounds %struct.nvme_fc_rport, ptr %call9.i, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #17
  %67 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile i32 1, ptr %ref, align 4
  %act_ctrl_cnt = getelementptr inbounds %struct.nvme_fc_rport, ptr %call9.i, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %act_ctrl_cnt, i32 noundef 4) #17
  %68 = ptrtoint ptr %act_ctrl_cnt to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile i32 0, ptr %act_ctrl_cnt, align 16
  %lock = getelementptr inbounds %struct.nvme_fc_rport, ptr %call9.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @nvme_fc_register_remoteport.__key, i16 noundef signext 3) #17
  %localport20 = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %call9.i, i32 0, i32 4
  %69 = ptrtoint ptr %localport20 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %localport, ptr %localport20, align 8
  %ls_rcv_list = getelementptr inbounds %struct.nvme_fc_rport, ptr %call9.i, i32 0, i32 4
  %70 = ptrtoint ptr %ls_rcv_list to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %ls_rcv_list, ptr %ls_rcv_list, align 8
  %prev.i134 = getelementptr inbounds %struct.nvme_fc_rport, ptr %call9.i, i32 0, i32 4, i32 1
  %71 = ptrtoint ptr %prev.i134 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %ls_rcv_list, ptr %prev.i134, align 4
  %dev = getelementptr inbounds %struct.nvme_fc_lport, ptr %localport, i32 0, i32 4
  %72 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev, align 4
  %dev21 = getelementptr inbounds %struct.nvme_fc_rport, ptr %call9.i, i32 0, i32 6
  %74 = ptrtoint ptr %dev21 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %73, ptr %dev21, align 8
  %lport22 = getelementptr inbounds %struct.nvme_fc_rport, ptr %call9.i, i32 0, i32 7
  %75 = ptrtoint ptr %lport22 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %localport, ptr %lport22, align 4
  %76 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ops, align 8
  %remote_priv_sz24 = getelementptr inbounds %struct.nvme_fc_port_template, ptr %77, i32 0, i32 15
  %78 = ptrtoint ptr %remote_priv_sz24 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %remote_priv_sz24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool25.not = icmp eq i32 %79, 0
  %arrayidx = getelementptr %struct.nvme_fc_rport, ptr %call9.i, i32 1
  %spec.select = select i1 %tobool25.not, ptr null, ptr %arrayidx
  %80 = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %call9.i, i32 0, i32 5
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %spec.select, ptr %80, align 4
  %port_role = getelementptr inbounds %struct.nvme_fc_port_info, ptr %pinfo, i32 0, i32 2
  %82 = ptrtoint ptr %port_role to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %port_role, align 8
  %port_role33 = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %call9.i, i32 0, i32 1
  %84 = ptrtoint ptr %port_role33 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %port_role33, align 4
  %85 = ptrtoint ptr %pinfo to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %pinfo, align 8
  %node_name35 = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %call9.i, i32 0, i32 2
  %87 = ptrtoint ptr %node_name35 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %86, ptr %node_name35, align 8
  %port_name = getelementptr inbounds %struct.nvme_fc_port_info, ptr %pinfo, i32 0, i32 1
  %88 = ptrtoint ptr %port_name to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %port_name, align 8
  %port_name37 = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %call9.i, i32 0, i32 3
  %90 = ptrtoint ptr %port_name37 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %89, ptr %port_name37, align 16
  %port_id = getelementptr inbounds %struct.nvme_fc_port_info, ptr %pinfo, i32 0, i32 3
  %91 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %port_id, align 4
  %port_id39 = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %call9.i, i32 0, i32 7
  %93 = ptrtoint ptr %port_id39 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %port_id39, align 4
  %port_state = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %call9.i, i32 0, i32 8
  %94 = ptrtoint ptr %port_state to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 2, ptr %port_state, align 8
  %95 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %call14, ptr %call9.i, align 128
  %dev_loss_tmo.i135 = getelementptr inbounds %struct.nvme_fc_port_info, ptr %pinfo, i32 0, i32 4
  %96 = ptrtoint ptr %dev_loss_tmo.i135 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %dev_loss_tmo.i135, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool.not.i136 = icmp eq i32 %97, 0
  %spec.select.i137 = select i1 %tobool.not.i136, i32 60, i32 %97
  %98 = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %call9.i, i32 0, i32 6
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %spec.select.i137, ptr %98, align 32
  %lsrcv_work = getelementptr inbounds %struct.nvme_fc_rport, ptr %call9.i, i32 0, i32 12
  tail call void @__init_work(ptr noundef %lsrcv_work, i32 noundef 0) #17
  %100 = ptrtoint ptr %lsrcv_work to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 -64, ptr %lsrcv_work, align 8
  %lockdep_map = getelementptr inbounds %struct.nvme_fc_rport, ptr %call9.i, i32 0, i32 12, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.2, ptr noundef nonnull @nvme_fc_register_remoteport.__key.1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry46 = getelementptr inbounds %struct.nvme_fc_rport, ptr %call9.i, i32 0, i32 12, i32 1
  %101 = ptrtoint ptr %entry46 to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %entry46, ptr %entry46, align 4
  %prev.i138 = getelementptr inbounds %struct.nvme_fc_rport, ptr %call9.i, i32 0, i32 12, i32 1, i32 1
  %102 = ptrtoint ptr %prev.i138 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %entry46, ptr %prev.i138, align 32
  %func = getelementptr inbounds %struct.nvme_fc_rport, ptr %call9.i, i32 0, i32 12, i32 2
  %103 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @nvme_fc_handle_ls_rqst_work, ptr %func, align 4
  %call54 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @nvme_fc_lock) #17
  %prev.i139 = getelementptr inbounds %struct.nvme_fc_lport, ptr %localport, i32 0, i32 3, i32 1
  %104 = ptrtoint ptr %prev.i139 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %prev.i139, align 4
  %call.i.i140 = tail call zeroext i1 @__list_add_valid(ptr noundef %endp_list, ptr noundef %105, ptr noundef %endp_list.i) #17
  br i1 %call.i.i140, label %if.end.i.i141, label %if.end16.list_add_tail.exit_crit_edge

if.end16.list_add_tail.exit_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_add_tail.exit

if.end.i.i141:                                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  %106 = ptrtoint ptr %prev.i139 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %endp_list, ptr %prev.i139, align 4
  %107 = ptrtoint ptr %endp_list to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %endp_list.i, ptr %endp_list, align 16
  %108 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %105, ptr %prev.i, align 4
  %109 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile ptr %endp_list, ptr %105, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i141, %if.end16.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @nvme_fc_lock, i32 noundef %call54) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hostaddr.i142) #17
  %110 = call ptr @memset(ptr %hostaddr.i142, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tgtaddr.i143) #17
  %111 = call ptr @memset(ptr %tgtaddr.i143, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %envp.i144) #17
  %112 = getelementptr inbounds [4 x ptr], ptr %envp.i144, i32 0, i32 1
  %113 = getelementptr inbounds [4 x ptr], ptr %envp.i144, i32 0, i32 2
  %114 = getelementptr inbounds [4 x ptr], ptr %envp.i144, i32 0, i32 3
  %115 = ptrtoint ptr %envp.i144 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @.str.31, ptr %envp.i144, align 4
  %116 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %hostaddr.i142, ptr %112, align 4
  %117 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %tgtaddr.i143, ptr %113, align 4
  %118 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %114, align 4
  %119 = ptrtoint ptr %port_role33 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %port_role33, align 4
  %and.i146 = and i32 %120, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i146)
  %tobool.not.i147 = icmp eq i32 %and.i146, 0
  br i1 %tobool.not.i147, label %list_add_tail.exit.nvme_fc_signal_discovery_scan.exit156_crit_edge, label %if.end.i155

list_add_tail.exit.nvme_fc_signal_discovery_scan.exit156_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %nvme_fc_signal_discovery_scan.exit156

if.end.i155:                                      ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #19
  %node_name.i148 = getelementptr inbounds %struct.nvme_fc_local_port, ptr %localport, i32 0, i32 2
  %121 = ptrtoint ptr %node_name.i148 to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %node_name.i148, align 8
  %port_name.i149 = getelementptr inbounds %struct.nvme_fc_local_port, ptr %localport, i32 0, i32 3
  %123 = ptrtoint ptr %port_name.i149 to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %port_name.i149, align 8
  %call.i150 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %hostaddr.i142, i32 noundef 64, ptr noundef nonnull @.str.32, i64 noundef %122, i64 noundef %124) #17
  %125 = ptrtoint ptr %node_name35 to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %node_name35, align 8
  %127 = ptrtoint ptr %port_name37 to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %port_name37, align 16
  %call11.i153 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tgtaddr.i143, i32 noundef 64, ptr noundef nonnull @.str.33, i64 noundef %126, i64 noundef %128) #17
  %129 = load ptr, ptr @fc_udev_device, align 4
  %call13.i154 = call i32 @kobject_uevent_env(ptr noundef %129, i32 noundef 2, ptr noundef nonnull %envp.i144) #17
  br label %nvme_fc_signal_discovery_scan.exit156

nvme_fc_signal_discovery_scan.exit156:            ; preds = %if.end.i155, %list_add_tail.exit.nvme_fc_signal_discovery_scan.exit156_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %envp.i144) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tgtaddr.i143) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hostaddr.i142) #17
  br label %cleanup

out_lport_put:                                    ; preds = %if.then15, %if.end9.out_lport_put_crit_edge, %if.then4
  %ret.0 = phi i32 [ %30, %if.then4 ], [ -28, %if.then15 ], [ -12, %if.end9.out_lport_put_crit_edge ]
  tail call fastcc void @nvme_fc_lport_put(ptr noundef %localport)
  br label %cleanup

cleanup:                                          ; preds = %out_lport_put, %nvme_fc_signal_discovery_scan.exit156, %nvme_fc_signal_discovery_scan.exit, %entry.cleanup_crit_edge
  %.sink = phi ptr [ %call9.i, %nvme_fc_signal_discovery_scan.exit156 ], [ %retval.0.i, %nvme_fc_signal_discovery_scan.exit ], [ null, %entry.cleanup_crit_edge ], [ null, %out_lport_put ]
  %retval.0 = phi i32 [ 0, %nvme_fc_signal_discovery_scan.exit156 ], [ 0, %nvme_fc_signal_discovery_scan.exit ], [ -108, %entry.cleanup_crit_edge ], [ %ret.0, %out_lport_put ]
  %130 = ptrtoint ptr %portptr to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %.sink, ptr %portptr, align 4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvme_fc_lport_get(ptr noundef %lport) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ref = getelementptr inbounds %struct.nvme_fc_lport, ptr %lport, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #17
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref, i32 noundef 4) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %2, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #17
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #17
  %4 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #17
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %6 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 %5, i32 %add.i.i.i.i, ptr elementtype(i32) %ref) #17, !srcloc !498
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %5
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !496

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %7 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %8, 1
  %9 = or i32 %add5.i.i.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !496

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 0) #17
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %10 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.i.i.i.i = icmp ne i32 %11, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #17
  %conv.i = zext i1 %tobool12.i.i.i.i to i32
  ret i32 %conv.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_fc_handle_ls_rqst_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %work, i32 -56
  %ls_rcv_list = getelementptr i8, ptr %work, i32 -80
  %port_state = getelementptr i8, ptr %work, i32 -112
  br label %restart

restart:                                          ; preds = %restart.backedge, %entry
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #17
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %restart
  %.pn.in = phi ptr [ %ls_rcv_list, %restart ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 8
  %cmp10.not = icmp eq ptr %.pn, %ls_rcv_list
  br i1 %cmp10.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %handled = getelementptr i8, ptr %.pn, i32 -6
  %1 = ptrtoint ptr %handled to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %handled, align 2, !range !499
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond

if.end:                                           ; preds = %for.body
  %handled.le = getelementptr i8, ptr %.pn, i32 -6
  %lsop.0.le = getelementptr i8, ptr %.pn, i32 -24
  %3 = ptrtoint ptr %handled.le to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %handled.le, align 2
  %4 = ptrtoint ptr %port_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp13 = icmp eq i32 %5, 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #17
  %rqstbuf.i = getelementptr i8, ptr %.pn, i32 -16
  %6 = ptrtoint ptr %rqstbuf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rqstbuf.i, align 8
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end
  %lsrsp.i = getelementptr i8, ptr %.pn, i32 -20
  %8 = ptrtoint ptr %lsrsp.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lsrsp.i, align 4
  %nvme_fc_private.i = getelementptr inbounds %struct.nvmefc_ls_rsp, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %nvme_fc_private.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %lsop.0.le, ptr %nvme_fc_private.i, align 4
  %rspbuf.i = getelementptr i8, ptr %.pn, i32 -12
  %11 = ptrtoint ptr %rspbuf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rspbuf.i, align 4
  %13 = load ptr, ptr %lsrsp.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %13, align 4
  %rspdma.i = getelementptr i8, ptr %.pn, i32 -4
  %15 = ptrtoint ptr %rspdma.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rspdma.i, align 4
  %17 = load ptr, ptr %lsrsp.i, align 4
  %rspdma4.i = getelementptr inbounds %struct.nvmefc_ls_rsp, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %rspdma4.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %rspdma4.i, align 4
  %19 = load ptr, ptr %lsrsp.i, align 4
  %done.i = getelementptr inbounds %struct.nvmefc_ls_rsp, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @nvme_fc_xmt_ls_rsp_done, ptr %done.i, align 4
  %21 = load ptr, ptr %lsrsp.i, align 4
  %rsplen.i = getelementptr inbounds %struct.nvmefc_ls_rsp, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %rsplen.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %rsplen.i, align 4
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %7, align 1
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.230)
  switch i8 %24, label %sw.default.i [
    i8 5, label %sw.bb.i
    i8 6, label %sw.bb7.i
    i8 3, label %if.then15.sw.bb14.i_crit_edge
    i8 4, label %if.then15.sw.bb14.i_crit_edge63
  ]

if.then15.sw.bb14.i_crit_edge63:                  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb14.i

if.then15.sw.bb14.i_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb14.i

sw.bb.i:                                          ; preds = %if.then15
  %26 = ptrtoint ptr %lsop.0.le to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lsop.0.le, align 8
  %28 = ptrtoint ptr %rqstbuf.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rqstbuf.i, align 8
  %30 = ptrtoint ptr %rspbuf.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rspbuf.i, align 4
  %32 = call ptr @memset(ptr %31, i32 0, i32 24)
  %rqstdatalen.i.i = getelementptr i8, ptr %.pn, i32 -8
  %33 = ptrtoint ptr %rqstdatalen.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %rqstdatalen.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 48, i16 %34)
  %cmp.i.i.i = icmp ult i16 %34, 48
  br i1 %cmp.i.i.i, label %sw.bb.i.do.end.i.i_crit_edge, label %if.else.i.i.i

sw.bb.i.do.end.i.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

if.else.i.i.i:                                    ; preds = %sw.bb.i
  %desc_list_len.i.i.i = getelementptr inbounds %struct.fcnvme_ls_disconnect_assoc_rqst, ptr %29, i32 0, i32 1
  %35 = ptrtoint ptr %desc_list_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %desc_list_len.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %36)
  %cmp1.not.i.i.i = icmp eq i32 %36, 40
  br i1 %cmp1.not.i.i.i, label %if.else3.i.i.i, label %if.else.i.i.i.do.end.i.i_crit_edge

if.else.i.i.i.do.end.i.i_crit_edge:               ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

if.else3.i.i.i:                                   ; preds = %if.else.i.i.i
  %associd.i.i.i = getelementptr inbounds %struct.fcnvme_ls_disconnect_assoc_rqst, ptr %29, i32 0, i32 2
  %37 = ptrtoint ptr %associd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %associd.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %38)
  %cmp4.not.i.i.i = icmp eq i32 %38, 7
  br i1 %cmp4.not.i.i.i, label %if.else6.i.i.i, label %if.else3.i.i.i.do.end.i.i_crit_edge

if.else3.i.i.i.do.end.i.i_crit_edge:              ; preds = %if.else3.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

if.else6.i.i.i:                                   ; preds = %if.else3.i.i.i
  %desc_len.i.i.i = getelementptr inbounds %struct.fcnvme_ls_disconnect_assoc_rqst, ptr %29, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %desc_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %desc_len.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %40)
  %cmp9.not.i.i.i = icmp eq i32 %40, 8
  br i1 %cmp9.not.i.i.i, label %if.else11.i.i.i, label %if.else6.i.i.i.do.end.i.i_crit_edge

if.else6.i.i.i.do.end.i.i_crit_edge:              ; preds = %if.else6.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

if.else11.i.i.i:                                  ; preds = %if.else6.i.i.i
  %discon_cmd.i.i.i = getelementptr inbounds %struct.fcnvme_ls_disconnect_assoc_rqst, ptr %29, i32 0, i32 3
  %41 = ptrtoint ptr %discon_cmd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %discon_cmd.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %42)
  %cmp13.not.i.i.i = icmp eq i32 %42, 5
  br i1 %cmp13.not.i.i.i, label %if.else15.i.i.i, label %if.else11.i.i.i.do.end.i.i_crit_edge

if.else11.i.i.i.do.end.i.i_crit_edge:             ; preds = %if.else11.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

if.else15.i.i.i:                                  ; preds = %if.else11.i.i.i
  %desc_len17.i.i.i = getelementptr inbounds %struct.fcnvme_ls_disconnect_assoc_rqst, ptr %29, i32 0, i32 3, i32 1
  %43 = ptrtoint ptr %desc_len17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %desc_len17.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %44)
  %cmp19.not.i.i.i = icmp eq i32 %44, 16
  br i1 %cmp19.not.i.i.i, label %if.else21.i.i.i, label %if.else15.i.i.i.do.end.i.i_crit_edge

if.else15.i.i.i.do.end.i.i_crit_edge:             ; preds = %if.else15.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

if.else21.i.i.i:                                  ; preds = %if.else15.i.i.i
  %rsvd8.i.i.i = getelementptr inbounds %struct.fcnvme_ls_disconnect_assoc_rqst, ptr %29, i32 0, i32 3, i32 2
  %45 = ptrtoint ptr %rsvd8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rsvd8.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i.i.i = icmp eq i32 %46, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i, label %if.else21.i.i.i.do.end.i.i_crit_edge

if.else21.i.i.i.do.end.i.i_crit_edge:             ; preds = %if.else21.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

if.then.i.i:                                      ; preds = %if.else21.i.i.i
  %47 = ptrtoint ptr %rqstbuf.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rqstbuf.i, align 8
  %association_id1.i.i.i = getelementptr inbounds %struct.fcnvme_ls_disconnect_assoc_rqst, ptr %48, i32 0, i32 2, i32 2
  %49 = ptrtoint ptr %association_id1.i.i.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %association_id1.i.i.i, align 8
  %lock.i.i.i = getelementptr inbounds %struct.nvme_fc_rport, ptr %27, i32 0, i32 8
  %call3.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i.i) #17
  %ctrl_list.i.i.i = getelementptr inbounds %struct.nvme_fc_rport, ptr %27, i32 0, i32 2
  %51 = ptrtoint ptr %ctrl_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pn61.i.i.i = load ptr, ptr %ctrl_list.i.i.i, align 4
  %cmp9.not63.i.i.i = icmp eq ptr %.pn61.i.i.i, %ctrl_list.i.i.i
  br i1 %cmp9.not63.i.i.i, label %nvme_fc_match_disconn_ls.exit.thread.i.i, label %if.then.i.i.for.body.i.i.i_crit_edge

if.then.i.i.for.body.i.i.i_crit_edge:             ; preds = %if.then.i.i
  br label %for.body.i.i.i

nvme_fc_match_disconn_ls.exit.thread.i.i:         ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i.i, i32 noundef %call3.i.i.i) #17
  br label %do.end.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.then.i.i.for.body.i.i.i_crit_edge
  %.pn65.i.i.i = phi ptr [ %.pn.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn61.i.i.i, %if.then.i.i.for.body.i.i.i_crit_edge ]
  %oldls.064.i.i.i = phi ptr [ %oldls.2.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ null, %if.then.i.i.for.body.i.i.i_crit_edge ]
  %ctrl.066.i.i.i = getelementptr i8, ptr %.pn65.i.i.i, i32 -84
  %call11.i.i.i = tail call fastcc i32 @nvme_fc_ctrl_get(ptr noundef %ctrl.066.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i.i)
  %tobool.not.i36.i.i = icmp eq i32 %call11.i.i.i, 0
  br i1 %tobool.not.i36.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %if.end.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i
  tail call void @_raw_spin_lock(ptr noundef %ctrl.066.i.i.i) #17
  %association_id13.i.i.i = getelementptr i8, ptr %.pn65.i.i.i, i32 -12
  %52 = ptrtoint ptr %association_id13.i.i.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %association_id13.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %50, i64 %53)
  %cmp14.i.i.i = icmp eq i64 %50, %53
  br i1 %cmp14.i.i.i, label %if.end18.i.i.i, label %if.end18.thread.i.i.i

if.end18.thread.i.i.i:                            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_unlock(ptr noundef %ctrl.066.i.i.i) #17
  br label %if.end22.i.i.i

if.end18.i.i.i:                                   ; preds = %if.end.i.i.i
  %rcv_disconn.i.i.i = getelementptr i8, ptr %.pn65.i.i.i, i32 -4
  %54 = ptrtoint ptr %rcv_disconn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rcv_disconn.i.i.i, align 8
  store ptr %lsop.0.le, ptr %rcv_disconn.i.i.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ctrl.066.i.i.i) #17
  %tobool20.not.i.i.i = icmp eq ptr %ctrl.066.i.i.i, null
  br i1 %tobool20.not.i.i.i, label %if.end18.i.i.i.if.end22.i.i.i_crit_edge, label %if.end18.i.i.i.for.end.i.i.i_crit_edge

if.end18.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %if.end18.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i.i.i

if.end18.i.i.i.if.end22.i.i.i_crit_edge:          ; preds = %if.end18.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end22.i.i.i

if.end22.i.i.i:                                   ; preds = %if.end18.i.i.i.if.end22.i.i.i_crit_edge, %if.end18.thread.i.i.i
  %oldls.160.i.i.i = phi ptr [ %oldls.064.i.i.i, %if.end18.thread.i.i.i ], [ %55, %if.end18.i.i.i.if.end22.i.i.i_crit_edge ]
  tail call fastcc void @nvme_fc_ctrl_put(ptr noundef %ctrl.066.i.i.i) #17
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.end22.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %oldls.2.i.i.i = phi ptr [ %oldls.160.i.i.i, %if.end22.i.i.i ], [ %oldls.064.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge ]
  %56 = ptrtoint ptr %.pn65.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pn.i.i.i = load ptr, ptr %.pn65.i.i.i, align 4
  %cmp9.not.i37.i.i = icmp eq ptr %.pn.i.i.i, %ctrl_list.i.i.i
  br i1 %cmp9.not.i37.i.i, label %for.inc.i.i.i.for.end.i.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i.i

for.inc.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.inc.i.i.i.for.end.i.i.i_crit_edge, %if.end18.i.i.i.for.end.i.i.i_crit_edge
  %.pn.lcssa.i.i.i = phi ptr [ %ctrl_list.i.i.i, %for.inc.i.i.i.for.end.i.i.i_crit_edge ], [ %.pn65.i.i.i, %if.end18.i.i.i.for.end.i.i.i_crit_edge ]
  %oldls.3.i.i.i = phi ptr [ %oldls.2.i.i.i, %for.inc.i.i.i.for.end.i.i.i_crit_edge ], [ %55, %if.end18.i.i.i.for.end.i.i.i_crit_edge ]
  %ret.3.i.i.i = phi ptr [ null, %for.inc.i.i.i.for.end.i.i.i_crit_edge ], [ %ctrl.066.i.i.i, %if.end18.i.i.i.for.end.i.i.i_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i.i, i32 noundef %call3.i.i.i) #17
  %tobool29.not.i.i.i = icmp eq ptr %oldls.3.i.i.i, null
  br i1 %tobool29.not.i.i.i, label %for.end.i.i.i.nvme_fc_match_disconn_ls.exit.i.i_crit_edge, label %do.end33.i.i.i

for.end.i.i.i.nvme_fc_match_disconn_ls.exit.i.i_crit_edge: ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nvme_fc_match_disconn_ls.exit.i.i

do.end33.i.i.i:                                   ; preds = %for.end.i.i.i
  %lport.i.i.i = getelementptr inbounds %struct.nvme_fc_rport, ptr %27, i32 0, i32 7
  %57 = ptrtoint ptr %lport.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %lport.i.i.i, align 4
  %dev.i.i.i = getelementptr inbounds %struct.nvme_fc_lport, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i.i.i, align 4
  %cnum.i.i.i = getelementptr i8, ptr %.pn.lcssa.i.i.i, i32 -24
  %61 = ptrtoint ptr %cnum.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cnum.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %60, ptr noundef nonnull @.str.42, i32 noundef %62) #21
  %rspbuf.i.i.i = getelementptr inbounds %struct.nvmefc_ls_rcv_op, ptr %oldls.3.i.i.i, i32 0, i32 3
  %63 = ptrtoint ptr %rspbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rspbuf.i.i.i, align 4
  %65 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %48, align 8
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %64, align 4
  %desc_list_len.i.i.i.i.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %64, i32 0, i32 1
  %68 = ptrtoint ptr %desc_list_len.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 32, ptr %desc_list_len.i.i.i.i.i, align 4
  %rqst.i.i.i.i.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %64, i32 0, i32 2
  %69 = ptrtoint ptr %rqst.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %rqst.i.i.i.i.i, align 4
  %desc_len3.i.i.i.i.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %64, i32 0, i32 2, i32 1
  %70 = ptrtoint ptr %desc_len3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 8, ptr %desc_len3.i.i.i.i.i, align 4
  %w05.i.i.i.i.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %64, i32 0, i32 2, i32 2
  %71 = ptrtoint ptr %w05.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %66, ptr %w05.i.i.i.i.i, align 4
  %rjt1.i.i.i.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %64, i32 0, i32 3
  %72 = ptrtoint ptr %rjt1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 2, ptr %rjt1.i.i.i.i, align 4
  %desc_len.i.i.i.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %64, i32 0, i32 3, i32 1
  %73 = ptrtoint ptr %desc_len.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 8, ptr %desc_len.i.i.i.i, align 4
  %reason_code.i.i.i.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %64, i32 0, i32 3, i32 3
  %74 = ptrtoint ptr %reason_code.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 9, ptr %reason_code.i.i.i.i, align 1
  %reason_explanation.i.i.i.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %64, i32 0, i32 3, i32 4
  %75 = ptrtoint ptr %reason_explanation.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %reason_explanation.i.i.i.i, align 2
  %vendor7.i.i.i.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %64, i32 0, i32 3, i32 5
  %76 = ptrtoint ptr %vendor7.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %vendor7.i.i.i.i, align 1
  %lsrsp.i.i.i = getelementptr inbounds %struct.nvmefc_ls_rcv_op, ptr %oldls.3.i.i.i, i32 0, i32 1
  %77 = ptrtoint ptr %lsrsp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %lsrsp.i.i.i, align 4
  %rsplen.i.i.i = getelementptr inbounds %struct.nvmefc_ls_rsp, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %rsplen.i.i.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 40, ptr %rsplen.i.i.i, align 4
  %80 = ptrtoint ptr %oldls.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %oldls.3.i.i.i, align 8
  %lport2.i.i.i.i = getelementptr inbounds %struct.nvme_fc_rport, ptr %81, i32 0, i32 7
  %82 = ptrtoint ptr %lport2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %lport2.i.i.i.i, align 4
  %rqstbuf.i.i.i.i = getelementptr inbounds %struct.nvmefc_ls_rcv_op, ptr %oldls.3.i.i.i, i32 0, i32 2
  %84 = ptrtoint ptr %rqstbuf.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rqstbuf.i.i.i.i, align 8
  %dev.i.i.i.i = getelementptr inbounds %struct.nvme_fc_lport, ptr %83, i32 0, i32 4
  %86 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev.i.i.i.i, align 4
  %tobool.not.i.i.i.i.i = icmp eq ptr %87, null
  br i1 %tobool.not.i.i.i.i.i, label %do.end33.i.i.i.fc_dma_sync_single_for_device.exit.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

do.end33.i.i.i.fc_dma_sync_single_for_device.exit.i.i.i.i_crit_edge: ; preds = %do.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fc_dma_sync_single_for_device.exit.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %do.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %rspdma.i.i.i.i = getelementptr inbounds %struct.nvmefc_ls_rcv_op, ptr %oldls.3.i.i.i, i32 0, i32 6
  %88 = ptrtoint ptr %rspdma.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %rspdma.i.i.i.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef nonnull %87, i32 noundef %89, i32 noundef 128, i32 noundef 1) #17
  br label %fc_dma_sync_single_for_device.exit.i.i.i.i

fc_dma_sync_single_for_device.exit.i.i.i.i:       ; preds = %if.then.i.i.i.i.i, %do.end33.i.i.i.fc_dma_sync_single_for_device.exit.i.i.i.i_crit_edge
  %ops.i.i.i.i = getelementptr inbounds %struct.nvme_fc_lport, ptr %83, i32 0, i32 5
  %90 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ops.i.i.i.i, align 8
  %xmt_ls_rsp.i.i.i.i = getelementptr inbounds %struct.nvme_fc_port_template, ptr %91, i32 0, i32 8
  %92 = ptrtoint ptr %xmt_ls_rsp.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %xmt_ls_rsp.i.i.i.i, align 8
  %94 = ptrtoint ptr %lsrsp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %lsrsp.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %93(ptr noundef %83, ptr noundef %81, ptr noundef %95) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %fc_dma_sync_single_for_device.exit.i.i.i.i.nvme_fc_match_disconn_ls.exit.i.i_crit_edge, label %do.end.i.i.i.i

fc_dma_sync_single_for_device.exit.i.i.i.i.nvme_fc_match_disconn_ls.exit.i.i_crit_edge: ; preds = %fc_dma_sync_single_for_device.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nvme_fc_match_disconn_ls.exit.i.i

do.end.i.i.i.i:                                   ; preds = %fc_dma_sync_single_for_device.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %96 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev.i.i.i.i, align 4
  %98 = ptrtoint ptr %85 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %85, align 1
  %conv.i.i.i.i = zext i8 %99 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %97, ptr noundef nonnull @.str.87, i32 noundef %conv.i.i.i.i, i32 noundef %call.i.i.i.i) #21
  %100 = ptrtoint ptr %lsrsp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %lsrsp.i.i.i, align 4
  tail call void @nvme_fc_xmt_ls_rsp_done(ptr noundef %101) #17
  br label %nvme_fc_match_disconn_ls.exit.i.i

nvme_fc_match_disconn_ls.exit.i.i:                ; preds = %do.end.i.i.i.i, %fc_dma_sync_single_for_device.exit.i.i.i.i.nvme_fc_match_disconn_ls.exit.i.i_crit_edge, %for.end.i.i.i.nvme_fc_match_disconn_ls.exit.i.i_crit_edge
  %tobool3.not.i.i = icmp eq ptr %ret.3.i.i.i, null
  br i1 %tobool3.not.i.i, label %nvme_fc_match_disconn_ls.exit.i.i.do.end.i.i_crit_edge, label %if.end12.i.i

nvme_fc_match_disconn_ls.exit.i.i.do.end.i.i_crit_edge: ; preds = %nvme_fc_match_disconn_ls.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %nvme_fc_match_disconn_ls.exit.i.i.do.end.i.i_crit_edge, %nvme_fc_match_disconn_ls.exit.thread.i.i, %if.else21.i.i.i.do.end.i.i_crit_edge, %if.else15.i.i.i.do.end.i.i_crit_edge, %if.else11.i.i.i.do.end.i.i_crit_edge, %if.else6.i.i.i.do.end.i.i_crit_edge, %if.else3.i.i.i.do.end.i.i_crit_edge, %if.else.i.i.i.do.end.i.i_crit_edge, %sw.bb.i.do.end.i.i_crit_edge
  %cmp.i.i = phi i8 [ 64, %nvme_fc_match_disconn_ls.exit.i.i.do.end.i.i_crit_edge ], [ 64, %nvme_fc_match_disconn_ls.exit.thread.i.i ], [ 3, %if.else21.i.i.i.do.end.i.i_crit_edge ], [ 3, %if.else15.i.i.i.do.end.i.i_crit_edge ], [ 3, %if.else11.i.i.i.do.end.i.i_crit_edge ], [ 3, %if.else6.i.i.i.do.end.i.i_crit_edge ], [ 3, %if.else3.i.i.i.do.end.i.i_crit_edge ], [ 3, %if.else.i.i.i.do.end.i.i_crit_edge ], [ 3, %sw.bb.i.do.end.i.i_crit_edge ]
  %ret.0.ph.i.i = phi i32 [ 12, %nvme_fc_match_disconn_ls.exit.i.i.do.end.i.i_crit_edge ], [ 12, %nvme_fc_match_disconn_ls.exit.thread.i.i ], [ 22, %if.else21.i.i.i.do.end.i.i_crit_edge ], [ 21, %if.else15.i.i.i.do.end.i.i_crit_edge ], [ 20, %if.else11.i.i.i.do.end.i.i_crit_edge ], [ 11, %if.else6.i.i.i.do.end.i.i_crit_edge ], [ 10, %if.else3.i.i.i.do.end.i.i_crit_edge ], [ 19, %if.else.i.i.i.do.end.i.i_crit_edge ], [ 18, %sw.bb.i.do.end.i.i_crit_edge ]
  %lport.i.i = getelementptr inbounds %struct.nvme_fc_rport, ptr %27, i32 0, i32 7
  %102 = ptrtoint ptr %lport.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %lport.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.nvme_fc_lport, ptr %103, i32 0, i32 4
  %104 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev.i.i, align 4
  %arrayidx.i.i = getelementptr [38 x ptr], ptr @validation_errors, i32 0, i32 %ret.0.ph.i.i
  %106 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %105, ptr noundef nonnull @.str.39, ptr noundef %107) #21
  %108 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %29, align 8
  %110 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 1, ptr %31, align 4
  %desc_list_len.i.i.i.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %31, i32 0, i32 1
  %111 = ptrtoint ptr %desc_list_len.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 32, ptr %desc_list_len.i.i.i.i, align 4
  %rqst.i.i.i.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %31, i32 0, i32 2
  %112 = ptrtoint ptr %rqst.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 1, ptr %rqst.i.i.i.i, align 4
  %desc_len3.i.i.i.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %31, i32 0, i32 2, i32 1
  %113 = ptrtoint ptr %desc_len3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 8, ptr %desc_len3.i.i.i.i, align 4
  %w05.i.i.i.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %31, i32 0, i32 2, i32 2
  %114 = ptrtoint ptr %w05.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %109, ptr %w05.i.i.i.i, align 4
  %rjt1.i.i.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %31, i32 0, i32 3
  %115 = ptrtoint ptr %rjt1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 2, ptr %rjt1.i.i.i, align 4
  %desc_len.i38.i.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %31, i32 0, i32 3, i32 1
  %116 = ptrtoint ptr %desc_len.i38.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 8, ptr %desc_len.i38.i.i, align 4
  %reason_code.i.i.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %31, i32 0, i32 3, i32 3
  %117 = ptrtoint ptr %reason_code.i.i.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %cmp.i.i, ptr %reason_code.i.i.i, align 1
  %reason_explanation.i.i.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %31, i32 0, i32 3, i32 4
  %118 = ptrtoint ptr %reason_explanation.i.i.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 0, ptr %reason_explanation.i.i.i, align 2
  %vendor7.i.i.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %31, i32 0, i32 3, i32 5
  %119 = ptrtoint ptr %vendor7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 0, ptr %vendor7.i.i.i, align 1
  br label %if.then23

if.end12.i.i:                                     ; preds = %nvme_fc_match_disconn_ls.exit.i.i
  %120 = ptrtoint ptr %lsrsp.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %lsrsp.i, align 4
  %rsplen14.i.i = getelementptr inbounds %struct.nvmefc_ls_rsp, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %rsplen14.i.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 24, ptr %rsplen14.i.i, align 4
  %123 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 2, ptr %31, align 4
  %desc_list_len.i39.i.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %31, i32 0, i32 1
  %124 = ptrtoint ptr %desc_list_len.i39.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 16, ptr %desc_list_len.i39.i.i, align 4
  %rqst.i.i.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %31, i32 0, i32 2
  %125 = ptrtoint ptr %rqst.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 1, ptr %rqst.i.i.i, align 4
  %desc_len3.i.i.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %31, i32 0, i32 2, i32 1
  %126 = ptrtoint ptr %desc_len3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 8, ptr %desc_len3.i.i.i, align 4
  %w05.i.i.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %31, i32 0, i32 2, i32 2
  %127 = ptrtoint ptr %w05.i.i.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 5, ptr %w05.i.i.i, align 4
  %state.i.i.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ret.3.i.i.i, i32 0, i32 19, i32 1
  %128 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %state.i.i.i, align 4
  %130 = zext i32 %129 to i64
  call void @__sanitizer_cov_trace_switch(i64 %130, ptr @__sancov_gen_cov_switch_values.231)
  switch i32 %129, label %if.end12.i.i.nvme_fc_handle_ls_rqst.exit_crit_edge [
    i32 3, label %if.then.i.i.i
    i32 1, label %do.end.i.i.i
  ]

if.end12.i.i.nvme_fc_handle_ls_rqst.exit_crit_edge: ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nvme_fc_handle_ls_rqst.exit

if.then.i.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @__nvme_fc_abort_outstanding_ios(ptr noundef nonnull %ret.3.i.i.i, i1 noundef zeroext true) #17
  %flags.i.i.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ret.3.i.i.i, i32 0, i32 15
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags.i.i.i) #17
  br label %nvme_fc_handle_ls_rqst.exit

do.end.i.i.i:                                     ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %ctrl1.i.i.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ret.3.i.i.i, i32 0, i32 19
  %device.i.i.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ret.3.i.i.i, i32 0, i32 19, i32 17
  %131 = ptrtoint ptr %device.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %device.i.i.i, align 8
  %cnum.i40.i.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ret.3.i.i.i, i32 0, i32 5
  %133 = ptrtoint ptr %cnum.i40.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %cnum.i40.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %132, ptr noundef nonnull @.str.82, i32 noundef %134, ptr noundef nonnull @.str.41) #21
  %135 = ptrtoint ptr %device.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %device.i.i.i, align 8
  %137 = ptrtoint ptr %cnum.i40.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %cnum.i40.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %136, ptr noundef nonnull @.str.85, i32 noundef %138) #21
  %call.i.i.i = tail call i32 @nvme_reset_ctrl(ptr noundef %ctrl1.i.i.i) #17
  br label %nvme_fc_handle_ls_rqst.exit

sw.bb7.i:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #19
  %139 = ptrtoint ptr %rspbuf.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %rspbuf.i, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 1, ptr %140, align 4
  %desc_list_len.i.i45.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %140, i32 0, i32 1
  %142 = ptrtoint ptr %desc_list_len.i.i45.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 32, ptr %desc_list_len.i.i45.i, align 4
  %rqst.i.i46.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %140, i32 0, i32 2
  %143 = ptrtoint ptr %rqst.i.i46.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 1, ptr %rqst.i.i46.i, align 4
  %desc_len3.i.i47.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %140, i32 0, i32 2, i32 1
  %144 = ptrtoint ptr %desc_len3.i.i47.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 8, ptr %desc_len3.i.i47.i, align 4
  %w05.i.i48.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %140, i32 0, i32 2, i32 2
  %145 = ptrtoint ptr %w05.i.i48.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 6, ptr %w05.i.i48.i, align 4
  %rjt1.i.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %140, i32 0, i32 3
  %146 = ptrtoint ptr %rjt1.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 2, ptr %rjt1.i.i, align 4
  %desc_len.i.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %140, i32 0, i32 3, i32 1
  %147 = ptrtoint ptr %desc_len.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 8, ptr %desc_len.i.i, align 4
  %reason_code.i.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %140, i32 0, i32 3, i32 3
  %148 = ptrtoint ptr %reason_code.i.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 11, ptr %reason_code.i.i, align 1
  %reason_explanation.i.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %140, i32 0, i32 3, i32 4
  %149 = ptrtoint ptr %reason_explanation.i.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 0, ptr %reason_explanation.i.i, align 2
  %vendor7.i.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %140, i32 0, i32 3, i32 5
  %150 = ptrtoint ptr %vendor7.i.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 0, ptr %vendor7.i.i, align 1
  br label %if.then23

sw.bb14.i:                                        ; preds = %if.then15.sw.bb14.i_crit_edge, %if.then15.sw.bb14.i_crit_edge63
  %151 = ptrtoint ptr %rspbuf.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %rspbuf.i, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 1, ptr %152, align 4
  %desc_list_len.i.i49.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %152, i32 0, i32 1
  %154 = ptrtoint ptr %desc_list_len.i.i49.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 32, ptr %desc_list_len.i.i49.i, align 4
  %rqst.i.i50.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %152, i32 0, i32 2
  %155 = ptrtoint ptr %rqst.i.i50.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 1, ptr %rqst.i.i50.i, align 4
  %desc_len3.i.i51.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %152, i32 0, i32 2, i32 1
  %156 = ptrtoint ptr %desc_len3.i.i51.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 8, ptr %desc_len3.i.i51.i, align 4
  %w05.i.i52.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %152, i32 0, i32 2, i32 2
  %157 = ptrtoint ptr %w05.i.i52.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %24, ptr %w05.i.i52.i, align 4
  %rjt1.i53.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %152, i32 0, i32 3
  %158 = ptrtoint ptr %rjt1.i53.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 2, ptr %rjt1.i53.i, align 4
  %desc_len.i54.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %152, i32 0, i32 3, i32 1
  %159 = ptrtoint ptr %desc_len.i54.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 8, ptr %desc_len.i54.i, align 4
  %reason_code.i55.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %152, i32 0, i32 3, i32 3
  %160 = ptrtoint ptr %reason_code.i55.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 3, ptr %reason_code.i55.i, align 1
  %reason_explanation.i56.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %152, i32 0, i32 3, i32 4
  %161 = ptrtoint ptr %reason_explanation.i56.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 0, ptr %reason_explanation.i56.i, align 2
  %vendor7.i57.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %152, i32 0, i32 3, i32 5
  %162 = ptrtoint ptr %vendor7.i57.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 0, ptr %vendor7.i57.i, align 1
  br label %if.then23

sw.default.i:                                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #19
  %163 = ptrtoint ptr %rspbuf.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %rspbuf.i, align 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 1, ptr %164, align 4
  %desc_list_len.i.i58.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %164, i32 0, i32 1
  %166 = ptrtoint ptr %desc_list_len.i.i58.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 32, ptr %desc_list_len.i.i58.i, align 4
  %rqst.i.i59.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %164, i32 0, i32 2
  %167 = ptrtoint ptr %rqst.i.i59.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 1, ptr %rqst.i.i59.i, align 4
  %desc_len3.i.i60.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %164, i32 0, i32 2, i32 1
  %168 = ptrtoint ptr %desc_len3.i.i60.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 8, ptr %desc_len3.i.i60.i, align 4
  %w05.i.i61.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %164, i32 0, i32 2, i32 2
  %169 = ptrtoint ptr %w05.i.i61.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %24, ptr %w05.i.i61.i, align 4
  %rjt1.i62.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %164, i32 0, i32 3
  %170 = ptrtoint ptr %rjt1.i62.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 2, ptr %rjt1.i62.i, align 4
  %desc_len.i63.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %164, i32 0, i32 3, i32 1
  %171 = ptrtoint ptr %desc_len.i63.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 8, ptr %desc_len.i63.i, align 4
  %reason_code.i64.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %164, i32 0, i32 3, i32 3
  %172 = ptrtoint ptr %reason_code.i64.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 1, ptr %reason_code.i64.i, align 1
  %reason_explanation.i65.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %164, i32 0, i32 3, i32 4
  %173 = ptrtoint ptr %reason_explanation.i65.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 0, ptr %reason_explanation.i65.i, align 2
  %vendor7.i66.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %164, i32 0, i32 3, i32 5
  %174 = ptrtoint ptr %vendor7.i66.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 0, ptr %vendor7.i66.i, align 1
  br label %if.then23

nvme_fc_handle_ls_rqst.exit:                      ; preds = %do.end.i.i.i, %if.then.i.i.i, %if.end12.i.i.nvme_fc_handle_ls_rqst.exit_crit_edge
  tail call fastcc void @nvme_fc_ctrl_put(ptr noundef nonnull %ret.3.i.i.i) #17
  br label %restart.backedge

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %rspbuf = getelementptr i8, ptr %.pn, i32 -12
  %175 = ptrtoint ptr %rspbuf to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %rspbuf, align 4
  %177 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %7, align 1
  %179 = ptrtoint ptr %176 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 1, ptr %176, align 4
  %desc_list_len.i.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %176, i32 0, i32 1
  %180 = ptrtoint ptr %desc_list_len.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 32, ptr %desc_list_len.i.i, align 4
  %rqst.i.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %176, i32 0, i32 2
  %181 = ptrtoint ptr %rqst.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 1, ptr %rqst.i.i, align 4
  %desc_len3.i.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %176, i32 0, i32 2, i32 1
  %182 = ptrtoint ptr %desc_len3.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 8, ptr %desc_len3.i.i, align 4
  %w05.i.i = getelementptr inbounds %struct.fcnvme_ls_acc_hdr, ptr %176, i32 0, i32 2, i32 2
  %183 = ptrtoint ptr %w05.i.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %178, ptr %w05.i.i, align 4
  %rjt1.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %176, i32 0, i32 3
  %184 = ptrtoint ptr %rjt1.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 2, ptr %rjt1.i, align 4
  %desc_len.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %176, i32 0, i32 3, i32 1
  %185 = ptrtoint ptr %desc_len.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 8, ptr %desc_len.i, align 4
  %reason_code.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %176, i32 0, i32 3, i32 3
  %186 = ptrtoint ptr %reason_code.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 9, ptr %reason_code.i, align 1
  %reason_explanation.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %176, i32 0, i32 3, i32 4
  %187 = ptrtoint ptr %reason_explanation.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 0, ptr %reason_explanation.i, align 2
  %vendor7.i = getelementptr inbounds %struct.fcnvme_ls_rjt, ptr %176, i32 0, i32 3, i32 5
  %188 = ptrtoint ptr %vendor7.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 0, ptr %vendor7.i, align 1
  %lsrsp = getelementptr i8, ptr %.pn, i32 -20
  br label %if.then23

if.then23:                                        ; preds = %if.else, %sw.default.i, %sw.bb14.i, %sw.bb7.i, %do.end.i.i
  %lsrsp.i.sink = phi ptr [ %lsrsp.i, %do.end.i.i ], [ %lsrsp.i, %sw.bb7.i ], [ %lsrsp.i, %sw.bb14.i ], [ %lsrsp.i, %sw.default.i ], [ %lsrsp, %if.else ]
  %189 = ptrtoint ptr %lsrsp.i.sink to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %lsrsp.i.sink, align 4
  %rsplen.i.i = getelementptr inbounds %struct.nvmefc_ls_rsp, ptr %190, i32 0, i32 2
  %191 = ptrtoint ptr %rsplen.i.i to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 40, ptr %rsplen.i.i, align 4
  %192 = ptrtoint ptr %lsop.0.le to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %lsop.0.le, align 8
  %lport2.i = getelementptr inbounds %struct.nvme_fc_rport, ptr %193, i32 0, i32 7
  %194 = ptrtoint ptr %lport2.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %lport2.i, align 4
  %rqstbuf.i47 = getelementptr i8, ptr %.pn, i32 -16
  %196 = ptrtoint ptr %rqstbuf.i47 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %rqstbuf.i47, align 8
  %dev.i = getelementptr inbounds %struct.nvme_fc_lport, ptr %195, i32 0, i32 4
  %198 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %dev.i, align 4
  %tobool.not.i.i = icmp eq ptr %199, null
  br i1 %tobool.not.i.i, label %if.then23.fc_dma_sync_single_for_device.exit.i_crit_edge, label %if.then.i.i49

if.then23.fc_dma_sync_single_for_device.exit.i_crit_edge: ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #19
  br label %fc_dma_sync_single_for_device.exit.i

if.then.i.i49:                                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #19
  %rspdma.i48 = getelementptr i8, ptr %.pn, i32 -4
  %200 = ptrtoint ptr %rspdma.i48 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %rspdma.i48, align 4
  tail call void @dma_sync_single_for_device(ptr noundef nonnull %199, i32 noundef %201, i32 noundef 128, i32 noundef 1) #17
  br label %fc_dma_sync_single_for_device.exit.i

fc_dma_sync_single_for_device.exit.i:             ; preds = %if.then.i.i49, %if.then23.fc_dma_sync_single_for_device.exit.i_crit_edge
  %ops.i = getelementptr inbounds %struct.nvme_fc_lport, ptr %195, i32 0, i32 5
  %202 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %ops.i, align 8
  %xmt_ls_rsp.i = getelementptr inbounds %struct.nvme_fc_port_template, ptr %203, i32 0, i32 8
  %204 = ptrtoint ptr %xmt_ls_rsp.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %xmt_ls_rsp.i, align 8
  %lsrsp.i50 = getelementptr i8, ptr %.pn, i32 -20
  %206 = ptrtoint ptr %lsrsp.i50 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %lsrsp.i50, align 4
  %call.i = tail call i32 %205(ptr noundef %195, ptr noundef %193, ptr noundef %207) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %fc_dma_sync_single_for_device.exit.i.restart.backedge_crit_edge, label %do.end.i

fc_dma_sync_single_for_device.exit.i.restart.backedge_crit_edge: ; preds = %fc_dma_sync_single_for_device.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %restart.backedge

do.end.i:                                         ; preds = %fc_dma_sync_single_for_device.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %208 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %dev.i, align 4
  %210 = ptrtoint ptr %197 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %197, align 1
  %conv.i = zext i8 %211 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %209, ptr noundef nonnull @.str.87, i32 noundef %conv.i, i32 noundef %call.i) #21
  %212 = ptrtoint ptr %lsrsp.i50 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %lsrsp.i50, align 4
  tail call void @nvme_fc_xmt_ls_rsp_done(ptr noundef %213) #17
  br label %restart.backedge

restart.backedge:                                 ; preds = %do.end.i, %fc_dma_sync_single_for_device.exit.i.restart.backedge_crit_edge, %nvme_fc_handle_ls_rqst.exit
  br label %restart

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvme_fc_unregister_remoteport(ptr noundef %portptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %portptr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body1:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.nvme_fc_rport, ptr %portptr, i32 0, i32 8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #17
  %port_state = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %portptr, i32 0, i32 8
  %0 = ptrtoint ptr %port_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp6.not = icmp eq i32 %1, 2
  br i1 %cmp6.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #17
  br label %cleanup

if.end10:                                         ; preds = %do.body1
  %2 = ptrtoint ptr %port_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 10, ptr %port_state, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %dev_loss_tmo = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %portptr, i32 0, i32 6
  %4 = ptrtoint ptr %dev_loss_tmo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev_loss_tmo, align 8
  %mul = mul i32 %5, 100
  %add = add i32 %mul, %3
  %dev_loss_end = getelementptr inbounds %struct.nvme_fc_rport, ptr %portptr, i32 0, i32 11
  %6 = ptrtoint ptr %dev_loss_end to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %dev_loss_end, align 4
  %ctrl_list = getelementptr inbounds %struct.nvme_fc_rport, ptr %portptr, i32 0, i32 2
  %7 = ptrtoint ptr %ctrl_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn64 = load ptr, ptr %ctrl_list, align 4
  %cmp15.not65 = icmp eq ptr %.pn64, %ctrl_list
  br i1 %cmp15.not65, label %if.end10.for.end_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  br label %for.body

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end10.for.body_crit_edge
  %.pn66 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn64, %if.end10.for.body_crit_edge ]
  %8 = ptrtoint ptr %dev_loss_tmo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev_loss_tmo, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool18.not = icmp eq i32 %9, 0
  %ctrl23 = getelementptr i8, ptr %.pn66, i32 852
  %device = getelementptr i8, ptr %.pn66, i32 2068
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device, align 8
  %cnum = getelementptr i8, ptr %.pn66, i32 -24
  %12 = ptrtoint ptr %cnum to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cnum, align 4
  br i1 %tobool18.not, label %do.end22, label %if.else

do.end22:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.3, i32 noundef %13) #21
  br label %for.inc.sink.split

if.else:                                          ; preds = %for.body
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.34, i32 noundef %13) #21
  %state.i = getelementptr i8, ptr %.pn66, i32 856
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %switch.i = icmp ult i32 %15, 2
  br i1 %switch.i, label %sw.bb.i, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

sw.bb.i:                                          ; preds = %if.else
  %call.i = tail call i32 @nvme_reset_ctrl(ptr noundef %ctrl23) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sw.bb.i.for.inc_crit_edge, label %do.end5.i

sw.bb.i.for.inc_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

do.end5.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #19
  %16 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device, align 8
  %18 = ptrtoint ptr %cnum to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cnum, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.37, i32 noundef %19) #21
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %do.end5.i, %do.end22
  %call10.i = tail call i32 @nvme_delete_ctrl(ptr noundef %ctrl23) #17
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %sw.bb.i.for.inc_crit_edge, %if.else.for.inc_crit_edge
  %20 = ptrtoint ptr %.pn66 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn = load ptr, ptr %.pn66, align 4
  %cmp15.not = icmp eq ptr %.pn, %ctrl_list
  br i1 %cmp15.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end10.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #17
  %ls_req_list.i = getelementptr inbounds %struct.nvme_fc_rport, ptr %portptr, i32 0, i32 3
  %lport.i = getelementptr inbounds %struct.nvme_fc_rport, ptr %portptr, i32 0, i32 7
  br label %restart.i

restart.i:                                        ; preds = %if.then.i, %for.end
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #17
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %restart.i
  %.pn.in.i = phi ptr [ %ls_req_list.i, %restart.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %21 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp7.not.i = icmp eq ptr %.pn.i, %ls_req_list.i
  br i1 %cmp7.not.i, label %nvme_fc_abort_lsops.exit, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %flags9.i = getelementptr i8, ptr %.pn.i, i32 -64
  %22 = ptrtoint ptr %flags9.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags9.i, align 4
  %and.i = and i32 %23, 1
  %tobool.not.i62 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i62, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %flags9.i.le = getelementptr i8, ptr %.pn.i, i32 -64
  %lsop.0.le.i = getelementptr i8, ptr %.pn.i, i32 -116
  %or.i = or i32 %23, 1
  %24 = ptrtoint ptr %flags9.i.le to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or.i, ptr %flags9.i.le, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #17
  %25 = ptrtoint ptr %lport.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lport.i, align 4
  %ops.i = getelementptr inbounds %struct.nvme_fc_lport, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops.i, align 8
  %ls_abort.i = getelementptr inbounds %struct.nvme_fc_port_template, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %ls_abort.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ls_abort.i, align 8
  tail call void %30(ptr noundef %26, ptr noundef nonnull %portptr, ptr noundef %lsop.0.le.i) #17
  br label %restart.i

nvme_fc_abort_lsops.exit:                         ; preds = %for.cond.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #17
  %act_ctrl_cnt = getelementptr inbounds %struct.nvme_fc_rport, ptr %portptr, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %act_ctrl_cnt, i32 noundef 4) #17
  %31 = ptrtoint ptr %act_ctrl_cnt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %act_ctrl_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp35 = icmp eq i32 %32, 0
  br i1 %cmp35, label %if.then37, label %nvme_fc_abort_lsops.exit.if.end38_crit_edge

nvme_fc_abort_lsops.exit.if.end38_crit_edge:      ; preds = %nvme_fc_abort_lsops.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end38

if.then37:                                        ; preds = %nvme_fc_abort_lsops.exit
  call void @__sanitizer_cov_trace_pc() #19
  %33 = ptrtoint ptr %lport.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lport.i, align 4
  %ops = getelementptr inbounds %struct.nvme_fc_lport, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops, align 8
  %remoteport_delete = getelementptr inbounds %struct.nvme_fc_port_template, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %remoteport_delete to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %remoteport_delete, align 4
  tail call void %38(ptr noundef nonnull %portptr) #17
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %nvme_fc_abort_lsops.exit.if.end38_crit_edge
  tail call fastcc void @nvme_fc_rport_put(ptr noundef nonnull %portptr)
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then8 ], [ 0, %if.end38 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_delete_ctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvme_fc_rport_put(ptr noundef %rport) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ref = getelementptr inbounds %struct.nvme_fc_rport, ptr %rport, i32 0, i32 9
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !494
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #17
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #17, !srcloc !495
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !496

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #17
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !497
  %localport.i = getelementptr %struct.nvme_fc_rport, ptr %rport, i32 0, i32 0, i32 4
  %1 = ptrtoint ptr %localport.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %localport.i, align 8
  %port_state.i = getelementptr %struct.nvme_fc_rport, ptr %rport, i32 0, i32 0, i32 8
  %3 = ptrtoint ptr %port_state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %4)
  %cmp.not.i = icmp eq i32 %4, 10
  br i1 %cmp.not.i, label %if.then.i.if.end.i_crit_edge, label %do.end.i, !prof !496

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 529, i32 noundef 9, ptr noundef null) #17
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %ctrl_list.i = getelementptr %struct.nvme_fc_rport, ptr %rport, i32 0, i32 2
  %5 = ptrtoint ptr %ctrl_list.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %ctrl_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %6, %ctrl_list.i
  br i1 %cmp.i.not.i, label %if.end.i.if.end47.i_crit_edge, label %do.end41.i, !prof !496

if.end.i.if.end47.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end47.i

do.end41.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 530, i32 noundef 9, ptr noundef null) #17
  br label %if.end47.i

if.end47.i:                                       ; preds = %do.end41.i, %if.end.i.if.end47.i_crit_edge
  %call60.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @nvme_fc_lock) #17
  %endp_list.i = getelementptr %struct.nvme_fc_rport, ptr %rport, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %endp_list.i) #17
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end47.i.list_del.exit.i_crit_edge

if.end47.i.list_del.exit.i_crit_edge:             ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i.i = getelementptr %struct.nvme_fc_rport, ptr %rport, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %endp_list.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %endp_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end47.i.list_del.exit.i_crit_edge
  %13 = ptrtoint ptr %endp_list.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %endp_list.i, align 4
  %prev.i.i = getelementptr %struct.nvme_fc_rport, ptr %rport, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @nvme_fc_lock, i32 noundef %call60.i) #17
  %disc_list.i = getelementptr %struct.nvme_fc_rport, ptr %rport, i32 0, i32 5
  %15 = ptrtoint ptr %disc_list.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %disc_list.i, align 4
  %cmp.i110.not.i = icmp eq ptr %16, %disc_list.i
  br i1 %cmp.i110.not.i, label %list_del.exit.i.nvme_fc_free_rport.exit_crit_edge, label %do.end85.i, !prof !496

list_del.exit.i.nvme_fc_free_rport.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nvme_fc_free_rport.exit

do.end85.i:                                       ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 537, i32 noundef 9, ptr noundef null) #17
  br label %nvme_fc_free_rport.exit

nvme_fc_free_rport.exit:                          ; preds = %do.end85.i, %list_del.exit.i.nvme_fc_free_rport.exit_crit_edge
  %endp_cnt.i = getelementptr inbounds %struct.nvme_fc_lport, ptr %2, i32 0, i32 1
  %17 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rport, align 8
  tail call void @ida_free(ptr noundef %endp_cnt.i, i32 noundef %18) #17
  tail call void @kfree(ptr noundef %rport) #17
  tail call fastcc void @nvme_fc_lport_put(ptr noundef %2) #17
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %nvme_fc_free_rport.exit, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvme_fc_rescan_remoteport(ptr nocapture noundef readonly %remoteport) #0 align 64 {
entry:
  %hostaddr.i = alloca [64 x i8], align 1
  %tgtaddr.i = alloca [64 x i8], align 1
  %envp.i = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %lport = getelementptr inbounds %struct.nvme_fc_rport, ptr %remoteport, i32 0, i32 7
  %0 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lport, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hostaddr.i) #17
  %2 = call ptr @memset(ptr %hostaddr.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tgtaddr.i) #17
  %3 = call ptr @memset(ptr %tgtaddr.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %envp.i) #17
  %4 = getelementptr inbounds [4 x ptr], ptr %envp.i, i32 0, i32 1
  %5 = getelementptr inbounds [4 x ptr], ptr %envp.i, i32 0, i32 2
  %6 = getelementptr inbounds [4 x ptr], ptr %envp.i, i32 0, i32 3
  %7 = ptrtoint ptr %envp.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.31, ptr %envp.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %hostaddr.i, ptr %4, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %tgtaddr.i, ptr %5, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %6, align 4
  %port_role.i = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %remoteport, i32 0, i32 1
  %11 = ptrtoint ptr %port_role.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port_role.i, align 4
  %and.i = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.nvme_fc_signal_discovery_scan.exit_crit_edge, label %if.end.i

entry.nvme_fc_signal_discovery_scan.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %nvme_fc_signal_discovery_scan.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %node_name.i = getelementptr inbounds %struct.nvme_fc_local_port, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %node_name.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %node_name.i, align 8
  %port_name.i = getelementptr inbounds %struct.nvme_fc_local_port, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %port_name.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %port_name.i, align 8
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %hostaddr.i, i32 noundef 64, ptr noundef nonnull @.str.32, i64 noundef %14, i64 noundef %16) #17
  %node_name8.i = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %remoteport, i32 0, i32 2
  %17 = ptrtoint ptr %node_name8.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %node_name8.i, align 8
  %port_name10.i = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %remoteport, i32 0, i32 3
  %19 = ptrtoint ptr %port_name10.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %port_name10.i, align 8
  %call11.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tgtaddr.i, i32 noundef 64, ptr noundef nonnull @.str.33, i64 noundef %18, i64 noundef %20) #17
  %21 = load ptr, ptr @fc_udev_device, align 4
  %call13.i = call i32 @kobject_uevent_env(ptr noundef %21, i32 noundef 2, ptr noundef nonnull %envp.i) #17
  br label %nvme_fc_signal_discovery_scan.exit

nvme_fc_signal_discovery_scan.exit:               ; preds = %if.end.i, %entry.nvme_fc_signal_discovery_scan.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %envp.i) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tgtaddr.i) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hostaddr.i) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvme_fc_set_remoteport_devloss(ptr noundef %portptr, i32 noundef %dev_loss_tmo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.nvme_fc_rport, ptr %portptr, i32 0, i32 8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #17
  %port_state = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %portptr, i32 0, i32 8
  %0 = ptrtoint ptr %port_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp6.not = icmp eq i32 %1, 2
  br i1 %cmp6.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %dev_loss_tmo9 = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %portptr, i32 0, i32 6
  %2 = ptrtoint ptr %dev_loss_tmo9 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %dev_loss_tmo, ptr %dev_loss_tmo9, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvme_fc_rcv_ls_req(ptr noundef %portptr, ptr noundef %lsrsp, ptr nocapture noundef readonly %lsreqbuf, i32 noundef %lsreqbuf_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %lport1 = getelementptr inbounds %struct.nvme_fc_rport, ptr %portptr, i32 0, i32 7
  %0 = ptrtoint ptr %lport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lport1, align 4
  %call2 = tail call fastcc i32 @nvme_fc_rport_get(ptr noundef %portptr)
  %ops = getelementptr inbounds %struct.nvme_fc_lport, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 8
  %xmt_ls_rsp = getelementptr inbounds %struct.nvme_fc_port_template, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %xmt_ls_rsp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xmt_ls_rsp, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.nvme_fc_lport, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %lsreqbuf to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %lsreqbuf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %9)
  %cmp = icmp ult i8 %9, 7
  br i1 %cmp, label %cond.true, label %do.end.cond.end_crit_edge

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  %conv = zext i8 %9 to i32
  %arrayidx = getelementptr [7 x ptr], ptr @nvmefc_ls_names, i32 0, i32 %conv
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi ptr [ %11, %cond.true ], [ @.str.11, %do.end.cond.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.8, ptr noundef %cond) #21
  br label %out_put

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %lsreqbuf_len)
  %cmp5 = icmp ugt i32 %lsreqbuf_len, 1024
  br i1 %cmp5, label %do.end10, label %if.end23

do.end10:                                         ; preds = %if.end
  %dev11 = getelementptr inbounds %struct.nvme_fc_lport, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev11, align 4
  %14 = ptrtoint ptr %lsreqbuf to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %lsreqbuf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %15)
  %cmp14 = icmp ult i8 %15, 7
  br i1 %cmp14, label %cond.true16, label %do.end10.cond.end21_crit_edge

do.end10.cond.end21_crit_edge:                    ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end21

cond.true16:                                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #19
  %conv13 = zext i8 %15 to i32
  %arrayidx19 = getelementptr [7 x ptr], ptr @nvmefc_ls_names, i32 0, i32 %conv13
  %16 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx19, align 4
  br label %cond.end21

cond.end21:                                       ; preds = %cond.true16, %do.end10.cond.end21_crit_edge
  %cond22 = phi ptr [ %17, %cond.true16 ], [ @.str.11, %do.end10.cond.end21_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.13, ptr noundef %cond22) #21
  br label %out_put

if.end23:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 1184) #22
  %tobool25.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool25.not, label %do.end29, label %if.end42

do.end29:                                         ; preds = %if.end23
  %dev30 = getelementptr inbounds %struct.nvme_fc_lport, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev30, align 4
  %21 = ptrtoint ptr %lsreqbuf to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %lsreqbuf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %22)
  %cmp33 = icmp ult i8 %22, 7
  br i1 %cmp33, label %cond.true35, label %do.end29.cond.end40_crit_edge

do.end29.cond.end40_crit_edge:                    ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end40

cond.true35:                                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #19
  %conv32 = zext i8 %22 to i32
  %arrayidx38 = getelementptr [7 x ptr], ptr @nvmefc_ls_names, i32 0, i32 %conv32
  %23 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx38, align 4
  br label %cond.end40

cond.end40:                                       ; preds = %cond.true35, %do.end29.cond.end40_crit_edge
  %cond41 = phi ptr [ %24, %cond.true35 ], [ @.str.11, %do.end29.cond.end40_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.16, ptr noundef %cond41) #21
  br label %out_put

if.end42:                                         ; preds = %if.end23
  %arrayidx43 = getelementptr %struct.nvmefc_ls_rcv_op, ptr %call7.i.i, i32 1
  %rqstbuf = getelementptr inbounds %struct.nvmefc_ls_rcv_op, ptr %call7.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %rqstbuf to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx43, ptr %rqstbuf, align 8
  %arrayidx45 = getelementptr %struct.nvmefc_ls_rcv_op, ptr %call7.i.i, i32 33
  %rspbuf = getelementptr inbounds %struct.nvmefc_ls_rcv_op, ptr %call7.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %rspbuf to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %arrayidx45, ptr %rspbuf, align 4
  %dev46 = getelementptr inbounds %struct.nvme_fc_lport, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev46, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.end42.fc_dma_map_single.exit_crit_edge, label %cond.true.i

if.end42.fc_dma_map_single.exit_crit_edge:        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #19
  br label %fc_dma_map_single.exit

cond.true.i:                                      ; preds = %if.end42
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %arrayidx45) #17
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %cond.true.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.fc_dma_map_single.exit_crit_edge, label %if.then.i.i, !prof !496

land.rhs.i.i.fc_dma_map_single.exit_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fc_dma_map_single.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef nonnull %28) #17
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %28, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %32, %if.end.i.i.i ], [ %30, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.96, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.97, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #17
  br label %fc_dma_map_single.exit

if.end39.i.i:                                     ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @debug_dma_map_single(ptr noundef nonnull %28, ptr noundef %arrayidx45, i32 noundef 128) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %33 = load ptr, ptr @mem_map, align 4
  %34 = ptrtoint ptr %arrayidx45 to i32
  %sub.i.i = add i32 %34, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %33, i32 %shr.i.i
  %and.i.i = and i32 %34, 4088
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef nonnull %28, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef 128, i32 noundef 1, i32 noundef 0) #17
  br label %fc_dma_map_single.exit

fc_dma_map_single.exit:                           ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.fc_dma_map_single.exit_crit_edge, %if.end42.fc_dma_map_single.exit_crit_edge
  %cond.i = phi i32 [ 0, %if.end42.fc_dma_map_single.exit_crit_edge ], [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.fc_dma_map_single.exit_crit_edge ]
  %rspdma = getelementptr inbounds %struct.nvmefc_ls_rcv_op, ptr %call7.i.i, i32 0, i32 6
  %35 = ptrtoint ptr %rspdma to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %cond.i, ptr %rspdma, align 4
  %36 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev46, align 4
  %tobool.not.i139 = icmp eq ptr %37, null
  br i1 %tobool.not.i139, label %fc_dma_map_single.exit.if.end69_crit_edge, label %cond.true.i140

fc_dma_map_single.exit.if.end69_crit_edge:        ; preds = %fc_dma_map_single.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

cond.true.i140:                                   ; preds = %fc_dma_map_single.exit
  tail call void @debug_dma_mapping_error(ptr noundef nonnull %37, i32 noundef %cond.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond.i)
  %cmp.i.i = icmp eq i32 %cond.i, -1
  br i1 %cmp.i.i, label %do.end56, label %cond.true.i140.if.end69_crit_edge

cond.true.i140.if.end69_crit_edge:                ; preds = %cond.true.i140
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

do.end56:                                         ; preds = %cond.true.i140
  %38 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev46, align 4
  %40 = ptrtoint ptr %lsreqbuf to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %lsreqbuf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %41)
  %cmp60 = icmp ult i8 %41, 7
  br i1 %cmp60, label %cond.true62, label %do.end56.cond.end67_crit_edge

do.end56.cond.end67_crit_edge:                    ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end67

cond.true62:                                      ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #19
  %conv59 = zext i8 %41 to i32
  %arrayidx65 = getelementptr [7 x ptr], ptr @nvmefc_ls_names, i32 0, i32 %conv59
  %42 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx65, align 4
  br label %cond.end67

cond.end67:                                       ; preds = %cond.true62, %do.end56.cond.end67_crit_edge
  %cond68 = phi ptr [ %43, %cond.true62 ], [ @.str.11, %do.end56.cond.end67_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %39, ptr noundef nonnull @.str.19, ptr noundef %cond68) #21
  br label %out_free

if.end69:                                         ; preds = %cond.true.i140.if.end69_crit_edge, %fc_dma_map_single.exit.if.end69_crit_edge
  %44 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %portptr, ptr %call7.i.i, align 8
  %lsrsp71 = getelementptr inbounds %struct.nvmefc_ls_rcv_op, ptr %call7.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %lsrsp71 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %lsrsp, ptr %lsrsp71, align 4
  %46 = ptrtoint ptr %rqstbuf to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rqstbuf, align 8
  %48 = call ptr @memcpy(ptr %47, ptr %lsreqbuf, i32 %lsreqbuf_len)
  %conv73 = trunc i32 %lsreqbuf_len to i16
  %rqstdatalen = getelementptr inbounds %struct.nvmefc_ls_rcv_op, ptr %call7.i.i, i32 0, i32 4
  %49 = ptrtoint ptr %rqstdatalen to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv73, ptr %rqstdatalen, align 8
  %lock = getelementptr inbounds %struct.nvme_fc_rport, ptr %portptr, i32 0, i32 8
  %call79 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #17
  %port_state = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %portptr, i32 0, i32 8
  %50 = ptrtoint ptr %port_state to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %port_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %51)
  %cmp84.not = icmp eq i32 %51, 2
  br i1 %cmp84.not, label %if.end88, label %if.then86

if.then86:                                        ; preds = %if.end69
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call79) #17
  %52 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev46, align 4
  %tobool.not.i142 = icmp eq ptr %53, null
  br i1 %tobool.not.i142, label %if.then86.out_free_crit_edge, label %if.then.i

if.then86.out_free_crit_edge:                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_free

if.then.i:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #19
  %54 = ptrtoint ptr %rspdma to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rspdma, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef nonnull %53, i32 noundef %55, i32 noundef 128, i32 noundef 1, i32 noundef 0) #17
  br label %out_free

if.end88:                                         ; preds = %if.end69
  %lsrcv_list = getelementptr inbounds %struct.nvmefc_ls_rcv_op, ptr %call7.i.i, i32 0, i32 7
  %ls_rcv_list = getelementptr inbounds %struct.nvme_fc_rport, ptr %portptr, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.nvme_fc_rport, ptr %portptr, i32 0, i32 4, i32 1
  %56 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev.i, align 4
  %call.i.i143 = tail call zeroext i1 @__list_add_valid(ptr noundef %lsrcv_list, ptr noundef %57, ptr noundef %ls_rcv_list) #17
  br i1 %call.i.i143, label %if.end.i.i, label %if.end88.list_add_tail.exit_crit_edge

if.end88.list_add_tail.exit_crit_edge:            ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #19
  %58 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %lsrcv_list, ptr %prev.i, align 4
  %59 = ptrtoint ptr %lsrcv_list to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %ls_rcv_list, ptr %lsrcv_list, align 8
  %prev3.i.i = getelementptr inbounds %struct.nvmefc_ls_rcv_op, ptr %call7.i.i, i32 0, i32 7, i32 1
  %60 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev3.i.i, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %lsrcv_list, ptr %57, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end88.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call79) #17
  %lsrcv_work = getelementptr inbounds %struct.nvme_fc_rport, ptr %portptr, i32 0, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %62 = load ptr, ptr @system_wq, align 4
  %call.i.i144 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %62, ptr noundef %lsrcv_work) #17
  br label %cleanup

out_free:                                         ; preds = %if.then.i, %if.then86.out_free_crit_edge, %cond.end67
  %ret.0 = phi i32 [ -14, %cond.end67 ], [ -107, %if.then86.out_free_crit_edge ], [ -107, %if.then.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %out_put

out_put:                                          ; preds = %out_free, %cond.end40, %cond.end21, %cond.end
  %ret.1 = phi i32 [ -7, %cond.end21 ], [ %ret.0, %out_free ], [ -12, %cond.end40 ], [ -22, %cond.end ]
  tail call fastcc void @nvme_fc_rport_put(ptr noundef %portptr)
  br label %cleanup

cleanup:                                          ; preds = %out_put, %list_add_tail.exit
  %retval.0 = phi i32 [ %ret.1, %out_put ], [ 0, %list_add_tail.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvme_fc_rport_get(ptr noundef %rport) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ref = getelementptr inbounds %struct.nvme_fc_rport, ptr %rport, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #17
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref, i32 noundef 4) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %2, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #17
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #17
  %4 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #17
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %6 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 %5, i32 %add.i.i.i.i, ptr elementtype(i32) %ref) #17, !srcloc !498
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %5
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !496

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %7 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %8, 1
  %9 = or i32 %add5.i.i.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !496

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 0) #17
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %10 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.i.i.i.i = icmp ne i32 %11, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #17
  %conv.i = zext i1 %tobool12.i.i.i.i to i32
  ret i32 %conv.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nvme_fc_exit_module() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @nvme_fc_lock) #17
  store i1 true, ptr @nvme_fc_waiting_to_unload, align 1
  %0 = load volatile ptr, ptr @nvme_fc_lport_list, align 4
  %cmp.i = icmp eq ptr %0, @nvme_fc_lport_list
  br i1 %cmp.i, label %if.end18.critedge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.cond.loopexit.i:                              ; preds = %nvme_fc_delete_controllers.exit.i.for.cond.loopexit.i_crit_edge, %for.body.i.for.cond.loopexit.i_crit_edge
  %1 = ptrtoint ptr %.pn33.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn.i = load ptr, ptr %.pn33.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @nvme_fc_lport_list
  br i1 %cmp.not.i, label %nvme_fc_cleanup_for_unload.exit, label %for.cond.loopexit.i.for.body.i_crit_edge

for.cond.loopexit.i.for.body.i_crit_edge:         ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.loopexit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn33.i = phi ptr [ %.pn.i, %for.cond.loopexit.i.for.body.i_crit_edge ], [ %0, %entry.for.body.i_crit_edge ]
  %endp_list.i = getelementptr i8, ptr %.pn33.i, i32 8
  %2 = ptrtoint ptr %endp_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn2728.i = load ptr, ptr %endp_list.i, align 4
  %cmp7.not29.i = icmp eq ptr %.pn2728.i, %endp_list.i
  br i1 %cmp7.not29.i, label %for.body.i.for.cond.loopexit.i_crit_edge, label %for.body.i.for.body9.i_crit_edge

for.body.i.for.body9.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body9.i

for.body.i.for.cond.loopexit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.loopexit.i

for.body9.i:                                      ; preds = %nvme_fc_delete_controllers.exit.i.for.body9.i_crit_edge, %for.body.i.for.body9.i_crit_edge
  %.pn2730.i = phi ptr [ %.pn27.i, %nvme_fc_delete_controllers.exit.i.for.body9.i_crit_edge ], [ %.pn2728.i, %for.body.i.for.body9.i_crit_edge ]
  %lock.i.i = getelementptr i8, ptr %.pn2730.i, i32 48
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #17
  %ctrl_list.i.i = getelementptr i8, ptr %.pn2730.i, i32 8
  %3 = ptrtoint ptr %ctrl_list.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn18.i.i = load ptr, ptr %ctrl_list.i.i, align 4
  %cmp.not19.i.i = icmp eq ptr %.pn18.i.i, %ctrl_list.i.i
  br i1 %cmp.not19.i.i, label %for.body9.i.nvme_fc_delete_controllers.exit.i_crit_edge, label %for.body9.i.do.end.i.i_crit_edge

for.body9.i.do.end.i.i_crit_edge:                 ; preds = %for.body9.i
  br label %do.end.i.i

for.body9.i.nvme_fc_delete_controllers.exit.i_crit_edge: ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nvme_fc_delete_controllers.exit.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %for.body9.i.do.end.i.i_crit_edge
  %.pn20.i.i = phi ptr [ %.pn.i.i, %do.end.i.i.do.end.i.i_crit_edge ], [ %.pn18.i.i, %for.body9.i.do.end.i.i_crit_edge ]
  %ctrl3.i.i = getelementptr i8, ptr %.pn20.i.i, i32 852
  %device.i.i = getelementptr i8, ptr %.pn20.i.i, i32 2068
  %4 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device.i.i, align 8
  %cnum.i.i = getelementptr i8, ptr %.pn20.i.i, i32 -24
  %6 = ptrtoint ptr %cnum.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cnum.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.98, i32 noundef %7) #21
  %call.i.i = tail call i32 @nvme_delete_ctrl(ptr noundef %ctrl3.i.i) #17
  %8 = ptrtoint ptr %.pn20.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i.i = load ptr, ptr %.pn20.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ctrl_list.i.i
  br i1 %cmp.not.i.i, label %do.end.i.i.nvme_fc_delete_controllers.exit.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

do.end.i.i.nvme_fc_delete_controllers.exit.i_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nvme_fc_delete_controllers.exit.i

nvme_fc_delete_controllers.exit.i:                ; preds = %do.end.i.i.nvme_fc_delete_controllers.exit.i_crit_edge, %for.body9.i.nvme_fc_delete_controllers.exit.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #17
  %9 = ptrtoint ptr %.pn2730.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn27.i = load ptr, ptr %.pn2730.i, align 4
  %cmp7.not.i = icmp eq ptr %.pn27.i, %endp_list.i
  br i1 %cmp7.not.i, label %nvme_fc_delete_controllers.exit.i.for.cond.loopexit.i_crit_edge, label %nvme_fc_delete_controllers.exit.i.for.body9.i_crit_edge

nvme_fc_delete_controllers.exit.i.for.body9.i_crit_edge: ; preds = %nvme_fc_delete_controllers.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body9.i

nvme_fc_delete_controllers.exit.i.for.cond.loopexit.i_crit_edge: ; preds = %nvme_fc_delete_controllers.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.loopexit.i

nvme_fc_cleanup_for_unload.exit:                  ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @nvme_fc_lock, i32 noundef %call2) #17
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #21
  tail call void @wait_for_completion(ptr noundef nonnull @nvme_fc_unload_proceed) #17
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22) #21
  br label %if.end18

if.end18.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @nvme_fc_lock, i32 noundef %call2) #17
  br label %if.end18

if.end18:                                         ; preds = %if.end18.critedge, %nvme_fc_cleanup_for_unload.exit
  tail call void @nvmf_unregister_transport(ptr noundef nonnull @nvme_fc_transport) #17
  tail call void @ida_destroy(ptr noundef nonnull @nvme_fc_local_port_cnt) #17
  tail call void @ida_destroy(ptr noundef nonnull @nvme_fc_ctrl_cnt) #17
  tail call void @device_destroy(ptr noundef nonnull @fc_class, i32 noundef 0) #17
  tail call void @class_unregister(ptr noundef nonnull @fc_class) #17
  %10 = load ptr, ptr @nvme_fc_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %10) #17
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmf_unregister_transport(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_fc_init_module() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.223, i32 noundef 8, i32 noundef 0) #17
  store ptr %call, ptr @nvme_fc_wq, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__class_register(ptr noundef nonnull @fc_class, ptr noundef nonnull @nvme_fc_init_module.__key) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.224) #21
  br label %out_destroy_wq

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef nonnull @fc_class, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull @.str.226) #17
  store ptr %call7, ptr @fc_udev_device, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end12, label %if.end16

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.228) #21
  %0 = load ptr, ptr @fc_udev_device, align 4
  %1 = ptrtoint ptr %0 to i32
  br label %out_destroy_class

if.end16:                                         ; preds = %if.end6
  %call17 = tail call i32 @nvmf_register_transport(ptr noundef nonnull @nvme_fc_transport) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end16.cleanup_crit_edge, label %out_destroy_device

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

out_destroy_device:                               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @device_destroy(ptr noundef nonnull @fc_class, i32 noundef 0) #17
  br label %out_destroy_class

out_destroy_class:                                ; preds = %out_destroy_device, %do.end12
  %ret.0 = phi i32 [ %1, %do.end12 ], [ %call17, %out_destroy_device ]
  tail call void @class_unregister(ptr noundef nonnull @fc_class) #17
  br label %out_destroy_wq

out_destroy_wq:                                   ; preds = %out_destroy_class, %do.end
  %ret.1 = phi i32 [ %call1, %do.end ], [ %ret.0, %out_destroy_class ]
  %2 = load ptr, ptr @nvme_fc_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %2) #17
  br label %cleanup

cleanup:                                          ; preds = %out_destroy_wq, %if.end16.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out_destroy_wq ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent_env(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_reset_ctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvme_fc_xmt_ls_rsp(ptr nocapture noundef readonly %lsop) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lsop to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lsop, align 8
  %lport2 = getelementptr inbounds %struct.nvme_fc_rport, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %lport2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lport2, align 4
  %rqstbuf = getelementptr inbounds %struct.nvmefc_ls_rcv_op, ptr %lsop, i32 0, i32 2
  %4 = ptrtoint ptr %rqstbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rqstbuf, align 8
  %dev = getelementptr inbounds %struct.nvme_fc_lport, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.fc_dma_sync_single_for_device.exit_crit_edge, label %if.then.i

entry.fc_dma_sync_single_for_device.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %fc_dma_sync_single_for_device.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %rspdma = getelementptr inbounds %struct.nvmefc_ls_rcv_op, ptr %lsop, i32 0, i32 6
  %8 = ptrtoint ptr %rspdma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rspdma, align 4
  tail call void @dma_sync_single_for_device(ptr noundef nonnull %7, i32 noundef %9, i32 noundef 128, i32 noundef 1) #17
  br label %fc_dma_sync_single_for_device.exit

fc_dma_sync_single_for_device.exit:               ; preds = %if.then.i, %entry.fc_dma_sync_single_for_device.exit_crit_edge
  %ops = getelementptr inbounds %struct.nvme_fc_lport, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 8
  %xmt_ls_rsp = getelementptr inbounds %struct.nvme_fc_port_template, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %xmt_ls_rsp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xmt_ls_rsp, align 8
  %lsrsp = getelementptr inbounds %struct.nvmefc_ls_rcv_op, ptr %lsop, i32 0, i32 1
  %14 = ptrtoint ptr %lsrsp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lsrsp, align 4
  %call = tail call i32 %13(ptr noundef %3, ptr noundef %1, ptr noundef %15) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %fc_dma_sync_single_for_device.exit.cleanup_crit_edge, label %do.end

fc_dma_sync_single_for_device.exit.cleanup_crit_edge: ; preds = %fc_dma_sync_single_for_device.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end:                                           ; preds = %fc_dma_sync_single_for_device.exit
  call void @__sanitizer_cov_trace_pc() #19
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %5, align 1
  %conv = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.87, i32 noundef %conv, i32 noundef %call) #21
  %20 = ptrtoint ptr %lsrsp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lsrsp, align 4
  tail call void @nvme_fc_xmt_ls_rsp_done(ptr noundef %21)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %fc_dma_sync_single_for_device.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_fc_xmt_ls_rsp_done(ptr nocapture noundef readonly %lsrsp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %nvme_fc_private = getelementptr inbounds %struct.nvmefc_ls_rsp, ptr %lsrsp, i32 0, i32 4
  %0 = ptrtoint ptr %nvme_fc_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nvme_fc_private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %lport2 = getelementptr inbounds %struct.nvme_fc_rport, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %lport2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lport2, align 4
  %lock = getelementptr inbounds %struct.nvme_fc_rport, ptr %3, i32 0, i32 8
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #17
  %lsrcv_list = getelementptr inbounds %struct.nvmefc_ls_rcv_op, ptr %1, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lsrcv_list) #17
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.nvmefc_ls_rcv_op, ptr %1, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %lsrcv_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lsrcv_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %12 = ptrtoint ptr %lsrcv_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %lsrcv_list, align 4
  %prev.i = getelementptr inbounds %struct.nvmefc_ls_rcv_op, ptr %1, i32 0, i32 7, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #17
  %dev = getelementptr inbounds %struct.nvme_fc_lport, ptr %5, i32 0, i32 4
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %list_del.exit.fc_dma_unmap_single.exit_crit_edge, label %fc_dma_sync_single_for_cpu.exit

list_del.exit.fc_dma_unmap_single.exit_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %fc_dma_unmap_single.exit

fc_dma_sync_single_for_cpu.exit:                  ; preds = %list_del.exit
  %rspdma = getelementptr inbounds %struct.nvmefc_ls_rcv_op, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %rspdma to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rspdma, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef nonnull %15, i32 noundef %17, i32 noundef 128, i32 noundef 1) #17
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load ptr, ptr %dev, align 4
  %tobool.not.i18 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i18, label %fc_dma_sync_single_for_cpu.exit.fc_dma_unmap_single.exit_crit_edge, label %if.then.i19

fc_dma_sync_single_for_cpu.exit.fc_dma_unmap_single.exit_crit_edge: ; preds = %fc_dma_sync_single_for_cpu.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %fc_dma_unmap_single.exit

if.then.i19:                                      ; preds = %fc_dma_sync_single_for_cpu.exit
  call void @__sanitizer_cov_trace_pc() #19
  %19 = ptrtoint ptr %rspdma to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rspdma, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef nonnull %.pr, i32 noundef %20, i32 noundef 128, i32 noundef 1, i32 noundef 0) #17
  br label %fc_dma_unmap_single.exit

fc_dma_unmap_single.exit:                         ; preds = %if.then.i19, %fc_dma_sync_single_for_cpu.exit.fc_dma_unmap_single.exit_crit_edge, %list_del.exit.fc_dma_unmap_single.exit_crit_edge
  tail call void @kfree(ptr noundef %1) #17
  tail call fastcc void @nvme_fc_rport_put(ptr noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvme_fc_ctrl_put(ptr noundef %ctrl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ref = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !494
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #17
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #17, !srcloc !495
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !496

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #17
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !497
  %ctrl1.i = getelementptr %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 19
  %tagset.i = getelementptr %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 19, i32 12
  %1 = ptrtoint ptr %tagset.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tagset.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.then.i.do.body3.i_crit_edge, label %if.then.i1

if.then.i.do.body3.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body3.i

if.then.i1:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %connect_q.i = getelementptr %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 19, i32 7
  %3 = ptrtoint ptr %connect_q.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %connect_q.i, align 4
  tail call void @blk_cleanup_queue(ptr noundef %4) #17
  %tag_set.i = getelementptr %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 11
  tail call void @blk_mq_free_tag_set(ptr noundef %tag_set.i) #17
  br label %do.body3.i

do.body3.i:                                       ; preds = %if.then.i1, %if.then.i.do.body3.i_crit_edge
  %rport.i = getelementptr %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 4
  %5 = ptrtoint ptr %rport.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rport.i, align 8
  %lock.i = getelementptr inbounds %struct.nvme_fc_rport, ptr %6, i32 0, i32 8
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #17
  %ctrl_list.i = getelementptr %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ctrl_list.i) #17
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.body3.i.list_del.exit.i_crit_edge

do.body3.i.list_del.exit.i_crit_edge:             ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i.i = getelementptr %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %ctrl_list.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctrl_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %do.body3.i.list_del.exit.i_crit_edge
  %13 = ptrtoint ptr %ctrl_list.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %ctrl_list.i, align 4
  %prev.i.i = getelementptr %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %rport.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rport.i, align 8
  %lock9.i = getelementptr inbounds %struct.nvme_fc_rport, ptr %16, i32 0, i32 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock9.i, i32 noundef %call5.i) #17
  tail call void @nvme_start_admin_queue(ptr noundef %ctrl1.i) #17
  %admin_q.i = getelementptr %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 19, i32 6
  %17 = ptrtoint ptr %admin_q.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %admin_q.i, align 8
  tail call void @blk_cleanup_queue(ptr noundef %18) #17
  %fabrics_q.i = getelementptr %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 19, i32 8
  %19 = ptrtoint ptr %fabrics_q.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fabrics_q.i, align 8
  tail call void @blk_cleanup_queue(ptr noundef %20) #17
  %admin_tag_set.i = getelementptr %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 10
  tail call void @blk_mq_free_tag_set(ptr noundef %admin_tag_set.i) #17
  %queues.i = getelementptr %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 1
  %21 = ptrtoint ptr %queues.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %queues.i, align 4
  tail call void @kfree(ptr noundef %22) #17
  %dev.i = getelementptr %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 2
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 8
  tail call void @put_device(ptr noundef %24) #17
  %25 = ptrtoint ptr %rport.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rport.i, align 8
  tail call fastcc void @nvme_fc_rport_put(ptr noundef %26) #17
  %cnum.i = getelementptr %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 5
  %27 = ptrtoint ptr %cnum.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cnum.i, align 4
  tail call void @ida_free(ptr noundef nonnull @nvme_fc_ctrl_cnt, i32 noundef %28) #17
  %opts.i = getelementptr %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 19, i32 93
  %29 = ptrtoint ptr %opts.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %opts.i, align 8
  %tobool15.not.i = icmp eq ptr %30, null
  br i1 %tobool15.not.i, label %list_del.exit.i.nvme_fc_ctrl_free.exit_crit_edge, label %if.then16.i

list_del.exit.i.nvme_fc_ctrl_free.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nvme_fc_ctrl_free.exit

if.then16.i:                                      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @nvmf_free_options(ptr noundef nonnull %30) #17
  br label %nvme_fc_ctrl_free.exit

nvme_fc_ctrl_free.exit:                           ; preds = %if.then16.i, %list_del.exit.i.nvme_fc_ctrl_free.exit_crit_edge
  tail call void @kfree(ptr noundef %ctrl) #17
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %nvme_fc_ctrl_free.exit, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvme_fc_ctrl_get(ptr noundef %ctrl) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ref = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #17
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref, i32 noundef 4) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %2, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #17
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #17
  %4 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #17
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %6 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 %5, i32 %add.i.i.i.i, ptr elementtype(i32) %ref) #17, !srcloc !498
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %5
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !496

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %7 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %8, 1
  %9 = or i32 %add5.i.i.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !496

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 0) #17
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %10 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.i.i.i.i = icmp ne i32 %11, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #17
  %conv.i = zext i1 %tobool12.i.i.i.i to i32
  ret i32 %conv.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__nvme_fc_abort_outstanding_ios(ptr noundef %ctrl, i1 noundef zeroext %start_queues) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl1 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 19
  %queue_count = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 19, i32 30
  %0 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %queue_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %for.cond.preheader, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %queue_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp441 = icmp ugt i32 %3, 1
  br i1 %cmp441, label %for.body.lr.ph, label %for.cond.preheader.if.end_crit_edge

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %queues = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %q.042 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queues, align 4
  %flags = getelementptr %struct.nvme_fc_queue, ptr %5, i32 %q.042, i32 10
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #17
  %inc = add nuw i32 %q.042, 1
  %6 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %queue_count, align 4
  %cmp4 = icmp ult i32 %inc, %7
  br i1 %cmp4, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge, %entry.if.end_crit_edge
  %queues5 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 1
  %8 = ptrtoint ptr %queues5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %queues5, align 4
  %flags7 = getelementptr inbounds %struct.nvme_fc_queue, ptr %9, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags7) #17
  %10 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %queue_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp10 = icmp ugt i32 %11, 1
  br i1 %cmp10, label %if.then11, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

if.then11:                                        ; preds = %if.end
  tail call void @nvme_stop_queues(ptr noundef %ctrl1) #17
  tail call void @nvme_sync_io_queues(ptr noundef %ctrl1) #17
  %tag_set = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 11
  tail call void @blk_mq_tagset_busy_iter(ptr noundef %tag_set, ptr noundef nonnull @nvme_fc_terminate_exchange, ptr noundef %ctrl1) #17
  tail call void @blk_mq_tagset_wait_completed_request(ptr noundef %tag_set) #17
  br i1 %start_queues, label %if.then16, label %if.then11.if.end19_crit_edge

if.then11.if.end19_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

if.then16:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @nvme_start_queues(ptr noundef %ctrl1) #17
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.then11.if.end19_crit_edge, %if.end.if.end19_crit_edge
  tail call void @nvme_stop_admin_queue(ptr noundef %ctrl1) #17
  %admin_q = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 19, i32 6
  %12 = ptrtoint ptr %admin_q to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %admin_q, align 8
  tail call void @blk_sync_queue(ptr noundef %13) #17
  %admin_tag_set = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 10
  tail call void @blk_mq_tagset_busy_iter(ptr noundef %admin_tag_set, ptr noundef nonnull @nvme_fc_terminate_exchange, ptr noundef %ctrl1) #17
  tail call void @blk_mq_tagset_wait_completed_request(ptr noundef %admin_tag_set) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_stop_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_sync_io_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_tagset_busy_iter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nvme_fc_terminate_exchange(ptr noundef %req, ptr noundef %data, i1 noundef zeroext %reserved) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %data, i32 -936
  %add.ptr.i5 = getelementptr %struct.request, ptr %req, i32 1
  %flags = getelementptr inbounds %struct.nvme_request, ptr %add.ptr.i5, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 2
  %2 = or i8 %1, 1
  store i8 %2, ptr %flags, align 2
  %call3 = tail call fastcc i32 @__nvme_fc_abort_op(ptr noundef %add.ptr.i, ptr noundef %add.ptr.i5)
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_tagset_wait_completed_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_start_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_stop_admin_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_sync_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__nvme_fc_abort_op(ptr noundef %ctrl, ptr noundef %op) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctrl) #17
  %state = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !500
  tail call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #17
  %0 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 3, ptr %state) #17, !srcloc !501
  %asmresult.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !502
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i)
  %cmp6.not = icmp eq i32 %asmresult.i.i, 2
  br i1 %cmp6.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i34 = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #17
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %asmresult.i.i, ptr %state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctrl, i32 noundef %call2) #17
  br label %cleanup

if.else:                                          ; preds = %entry
  %flags9 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 15
  %2 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags9, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.else.if.end18_crit_edge, label %if.then11

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end18

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %flags12 = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 6
  %5 = ptrtoint ptr %flags12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags12, align 8
  %or = or i32 %6, 1
  store i32 %or, ptr %flags12, align 8
  %iocnt = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 16
  %7 = ptrtoint ptr %iocnt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iocnt, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %iocnt, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then11, %if.else.if.end18_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctrl, i32 noundef %call2) #17
  %lport = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 3
  %9 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lport, align 4
  %ops = getelementptr inbounds %struct.nvme_fc_lport, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 8
  %fcp_abort = getelementptr inbounds %struct.nvme_fc_port_template, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %fcp_abort to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fcp_abort, align 4
  %rport = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 4
  %15 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rport, align 8
  %queue = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 3
  %17 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %queue, align 4
  %lldd_handle = getelementptr inbounds %struct.nvme_fc_queue, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %lldd_handle to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lldd_handle, align 4
  %fcp_req = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 1
  tail call void %14(ptr noundef %10, ptr noundef %16, ptr noundef %20, ptr noundef %fcp_req) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then
  %retval.0 = phi i32 [ -125, %if.then ], [ 0, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_tag_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_start_admin_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmf_free_options(ptr noundef) local_unnamed_addr #2

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
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvme_fc_create_ctrl(ptr noundef %dev, ptr noundef %opts) #0 align 64 {
entry:
  %laddr = alloca %struct.nvmet_fc_traddr, align 8
  %raddr = alloca %struct.nvmet_fc_traddr, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %laddr) #17
  %0 = call ptr @memset(ptr %laddr, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %raddr) #17
  %1 = call ptr @memset(ptr %raddr, i32 0, i32 16)
  %traddr = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 3
  %2 = ptrtoint ptr %traddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %traddr, align 4
  %call = call fastcc i32 @nvme_fc_parse_traddr(ptr noundef nonnull %raddr, ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %raddr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %raddr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool1.not = icmp eq i64 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %pn = getelementptr inbounds %struct.nvmet_fc_traddr, ptr %raddr, i32 0, i32 1
  %6 = ptrtoint ptr %pn to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pn, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool3.not = icmp eq i64 %7, 0
  br i1 %tobool3.not, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %host_traddr = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 5
  %8 = ptrtoint ptr %host_traddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host_traddr, align 4
  %call5 = call fastcc i32 @nvme_fc_parse_traddr(ptr noundef nonnull %laddr, ptr noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false7:                                   ; preds = %if.end
  %10 = ptrtoint ptr %laddr to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %laddr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool9.not = icmp eq i64 %11, 0
  br i1 %tobool9.not, label %lor.lhs.false7.cleanup_crit_edge, label %lor.lhs.false10

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %pn11 = getelementptr inbounds %struct.nvmet_fc_traddr, ptr %laddr, i32 0, i32 1
  %12 = ptrtoint ptr %pn11 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %pn11, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool12.not = icmp eq i64 %13, 0
  br i1 %tobool12.not, label %lor.lhs.false10.cleanup_crit_edge, label %do.body16

lor.lhs.false10.cleanup_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body16:                                        ; preds = %lor.lhs.false10
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @nvme_fc_lock) #17
  %.pn126 = load ptr, ptr @nvme_fc_lport_list, align 4
  %cmp22.not127 = icmp eq ptr %.pn126, @nvme_fc_lport_list
  br i1 %cmp22.not127, label %do.body16.for.end84_crit_edge, label %do.body16.for.body_crit_edge

do.body16.for.body_crit_edge:                     ; preds = %do.body16
  br label %for.body

do.body16.for.end84_crit_edge:                    ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end84

for.body:                                         ; preds = %for.inc78.for.body_crit_edge, %do.body16.for.body_crit_edge
  %.pn128 = phi ptr [ %.pn, %for.inc78.for.body_crit_edge ], [ %.pn126, %do.body16.for.body_crit_edge ]
  %node_name = getelementptr i8, ptr %.pn128, i32 -84
  %14 = ptrtoint ptr %node_name to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %node_name, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %11)
  %cmp25.not = icmp eq i64 %15, %11
  br i1 %cmp25.not, label %lor.lhs.false27, label %for.body.for.inc78_crit_edge

for.body.for.inc78_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc78

lor.lhs.false27:                                  ; preds = %for.body
  %port_name = getelementptr i8, ptr %.pn128, i32 -76
  %16 = ptrtoint ptr %port_name to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %port_name, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %13)
  %cmp30.not = icmp eq i64 %17, %13
  br i1 %cmp30.not, label %lor.lhs.false32, label %lor.lhs.false27.for.inc78_crit_edge

lor.lhs.false27.for.inc78_crit_edge:              ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc78

lor.lhs.false32:                                  ; preds = %lor.lhs.false27
  %port_state = getelementptr i8, ptr %.pn128, i32 -60
  %18 = ptrtoint ptr %port_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp34.not = icmp eq i32 %19, 2
  br i1 %cmp34.not, label %if.end37, label %lor.lhs.false32.for.inc78_crit_edge

lor.lhs.false32.for.inc78_crit_edge:              ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc78

if.end37:                                         ; preds = %lor.lhs.false32
  %endp_list = getelementptr i8, ptr %.pn128, i32 8
  %20 = ptrtoint ptr %endp_list to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn120123 = load ptr, ptr %endp_list, align 4
  %cmp44.not124 = icmp eq ptr %.pn120123, %endp_list
  br i1 %cmp44.not124, label %if.end37.for.inc78_crit_edge, label %if.end37.for.body47_crit_edge

if.end37.for.body47_crit_edge:                    ; preds = %if.end37
  br label %for.body47

if.end37.for.inc78_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc78

for.body47:                                       ; preds = %for.inc.for.body47_crit_edge, %if.end37.for.body47_crit_edge
  %.pn120125 = phi ptr [ %.pn120, %for.inc.for.body47_crit_edge ], [ %.pn120123, %if.end37.for.body47_crit_edge ]
  %node_name48 = getelementptr i8, ptr %.pn120125, i32 -40
  %21 = ptrtoint ptr %node_name48 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %node_name48, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %5)
  %cmp50.not = icmp eq i64 %22, %5
  br i1 %cmp50.not, label %lor.lhs.false52, label %for.body47.for.inc_crit_edge

for.body47.for.inc_crit_edge:                     ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

lor.lhs.false52:                                  ; preds = %for.body47
  %port_name54 = getelementptr i8, ptr %.pn120125, i32 -32
  %23 = ptrtoint ptr %port_name54 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %port_name54, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %7)
  %cmp56.not = icmp eq i64 %24, %7
  br i1 %cmp56.not, label %lor.lhs.false58, label %lor.lhs.false52.for.inc_crit_edge

lor.lhs.false52.for.inc_crit_edge:                ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

lor.lhs.false58:                                  ; preds = %lor.lhs.false52
  %port_state60 = getelementptr i8, ptr %.pn120125, i32 -8
  %25 = ptrtoint ptr %port_state60 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port_state60, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp61.not = icmp eq i32 %26, 2
  br i1 %cmp61.not, label %if.end64, label %lor.lhs.false58.for.inc_crit_edge

lor.lhs.false58.for.inc_crit_edge:                ; preds = %lor.lhs.false58
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end64:                                         ; preds = %lor.lhs.false58
  %rport.0.le = getelementptr i8, ptr %.pn120125, i32 -48
  %call65 = tail call fastcc i32 @nvme_fc_rport_get(ptr noundef %rport.0.le)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end64.for.inc78_crit_edge, label %if.end68

if.end64.for.inc78_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc78

if.end68:                                         ; preds = %if.end64
  %lport.0.le = getelementptr i8, ptr %.pn128, i32 -92
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @nvme_fc_lock, i32 noundef %call18) #17
  %call69 = tail call fastcc ptr @nvme_fc_init_ctrl(ptr noundef %dev, ptr noundef %opts, ptr noundef %lport.0.le, ptr noundef %rport.0.le)
  %cmp.i = icmp ugt ptr %call69, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then71, label %if.end68.cleanup_crit_edge

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then71:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @nvme_fc_rport_put(ptr noundef %rport.0.le)
  br label %cleanup

for.inc:                                          ; preds = %lor.lhs.false58.for.inc_crit_edge, %lor.lhs.false52.for.inc_crit_edge, %for.body47.for.inc_crit_edge
  %27 = ptrtoint ptr %.pn120125 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn120 = load ptr, ptr %.pn120125, align 4
  %cmp44.not = icmp eq ptr %.pn120, %endp_list
  br i1 %cmp44.not, label %for.inc.for.inc78_crit_edge, label %for.inc.for.body47_crit_edge

for.inc.for.body47_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body47

for.inc.for.inc78_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc78

for.inc78:                                        ; preds = %for.inc.for.inc78_crit_edge, %if.end64.for.inc78_crit_edge, %if.end37.for.inc78_crit_edge, %lor.lhs.false32.for.inc78_crit_edge, %lor.lhs.false27.for.inc78_crit_edge, %for.body.for.inc78_crit_edge
  %28 = ptrtoint ptr %.pn128 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn = load ptr, ptr %.pn128, align 4
  %cmp22.not = icmp eq ptr %.pn, @nvme_fc_lport_list
  br i1 %cmp22.not, label %for.inc78.for.end84_crit_edge, label %for.inc78.for.body_crit_edge

for.inc78.for.body_crit_edge:                     ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc78.for.end84_crit_edge:                    ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end84

for.end84:                                        ; preds = %for.inc78.for.end84_crit_edge, %do.body16.for.end84_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @nvme_fc_lock, i32 noundef %call18) #17
  %29 = ptrtoint ptr %traddr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %traddr, align 4
  %31 = ptrtoint ptr %host_traddr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %host_traddr, align 4
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.103, ptr noundef %30, ptr noundef %32) #21
  br label %cleanup

cleanup:                                          ; preds = %for.end84, %if.then71, %if.end68.cleanup_crit_edge, %lor.lhs.false10.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -2 to ptr), %for.end84 ], [ %call69, %if.then71 ], [ %call69, %if.end68.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false2.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false10.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false7.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %raddr) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %laddr) #17
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvme_fc_parse_traddr(ptr nocapture noundef writeonly %traddr, ptr nocapture noundef readonly %buf) unnamed_addr #0 align 64 {
entry:
  %token64.i1 = alloca i64, align 8
  %token64.i = alloca i64, align 8
  %name = alloca [19 x i8], align 1
  %wwn = alloca %struct.substring_t, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 19, ptr nonnull %name) #17
  %0 = getelementptr inbounds [19 x i8], ptr %name, i32 0, i32 1
  %1 = getelementptr inbounds [19 x i8], ptr %name, i32 0, i32 2
  %2 = getelementptr inbounds [19 x i8], ptr %name, i32 0, i32 18
  %3 = call ptr @memset(ptr %name, i32 255, i32 19)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wwn) #17
  %4 = getelementptr inbounds %struct.substring_t, ptr %wwn, i32 0, i32 1
  %5 = ptrtoint ptr %wwn to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %name, ptr %wwn, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %2, ptr %4, align 4
  %call = call i32 @strnlen(ptr noundef %buf, i32 noundef 256) #23
  %7 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.232)
  switch i32 %call, label %entry.do.end_crit_edge [
    i32 43, label %land.lhs.true
    i32 39, label %land.lhs.true8
  ]

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(6) @.str.104, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true2, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %arrayidx3 = getelementptr i8, ptr %buf, i32 22
  %call4 = call i32 @strncmp(ptr noundef %arrayidx3, ptr noundef nonnull dereferenceable(6) @.str.105, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true2.if.end17_crit_edge, label %land.lhs.true2.do.end_crit_edge

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true2.if.end17_crit_edge:                ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end17

land.lhs.true8:                                   ; preds = %entry
  %call9 = call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(4) @.str.106, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true11, label %land.lhs.true8.do.end_crit_edge

land.lhs.true8.do.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true11:                                  ; preds = %land.lhs.true8
  %arrayidx12 = getelementptr i8, ptr %buf, i32 20
  %call13 = call i32 @strncmp(ptr noundef %arrayidx12, ptr noundef nonnull dereferenceable(4) @.str.107, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true11.if.end17_crit_edge, label %land.lhs.true11.do.end_crit_edge

land.lhs.true11.do.end_crit_edge:                 ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true11.if.end17_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true11.if.end17_crit_edge, %land.lhs.true2.if.end17_crit_edge
  %nnoffset.0 = phi i32 [ 5, %land.lhs.true2.if.end17_crit_edge ], [ 3, %land.lhs.true11.if.end17_crit_edge ]
  %pnoffset.0 = phi i32 [ 27, %land.lhs.true2.if.end17_crit_edge ], [ 23, %land.lhs.true11.if.end17_crit_edge ]
  %8 = ptrtoint ptr %name to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 48, ptr %name, align 1
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 120, ptr %0, align 1
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %2, align 1
  %arrayidx22 = getelementptr i8, ptr %buf, i32 %nnoffset.0
  %11 = call ptr @memcpy(ptr %1, ptr %arrayidx22, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %token64.i) #17
  %12 = ptrtoint ptr %token64.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 -1, ptr %token64.i, align 8, !annotation !503
  %call.i = call i32 @match_u64(ptr noundef nonnull %wwn, ptr noundef nonnull %token64.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end26, label %__nvme_fc_parse_u64.exit

__nvme_fc_parse_u64.exit:                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %token64.i) #17
  br label %do.end

if.end26:                                         ; preds = %if.end17
  %13 = ptrtoint ptr %token64.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %token64.i, align 8
  %15 = ptrtoint ptr %traddr to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %traddr, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %token64.i) #17
  %arrayidx28 = getelementptr i8, ptr %buf, i32 %pnoffset.0
  %16 = call ptr @memcpy(ptr %1, ptr %arrayidx28, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %token64.i1) #17
  %17 = ptrtoint ptr %token64.i1 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 -1, ptr %token64.i1, align 8, !annotation !503
  %call.i2 = call i32 @match_u64(ptr noundef nonnull %wwn, ptr noundef nonnull %token64.i1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %tobool.not.i3 = icmp eq i32 %call.i2, 0
  br i1 %tobool.not.i3, label %__nvme_fc_parse_u64.exit6.thread, label %__nvme_fc_parse_u64.exit6

__nvme_fc_parse_u64.exit6.thread:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  %pn = getelementptr inbounds %struct.nvmet_fc_traddr, ptr %traddr, i32 0, i32 1
  %18 = ptrtoint ptr %token64.i1 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %token64.i1, align 8
  %20 = ptrtoint ptr %pn to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %pn, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %token64.i1) #17
  br label %cleanup

__nvme_fc_parse_u64.exit6:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %token64.i1) #17
  br label %do.end

do.end:                                           ; preds = %__nvme_fc_parse_u64.exit6, %__nvme_fc_parse_u64.exit, %land.lhs.true11.do.end_crit_edge, %land.lhs.true8.do.end_crit_edge, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.109) #21
  br label %cleanup

cleanup:                                          ; preds = %do.end, %__nvme_fc_parse_u64.exit6.thread
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %__nvme_fc_parse_u64.exit6.thread ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wwn) #17
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %name) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nvme_fc_init_ctrl(ptr noundef %dev, ptr noundef %opts, ptr noundef %lport, ptr noundef %rport) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %port_role = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %rport, i32 0, i32 1
  %0 = ptrtoint ptr %port_role to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port_role, align 4
  %and = and i32 %1, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.out_fail_crit_edge, label %if.end

entry.out_fail_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_fail

if.end:                                           ; preds = %entry
  %duplicate_connect = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 11
  %2 = ptrtoint ptr %duplicate_connect to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %duplicate_connect, align 1, !range !499
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %land.lhs.true, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %lock.i = getelementptr inbounds %struct.nvme_fc_rport, ptr %rport, i32 0, i32 8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #17
  %ctrl_list.i = getelementptr inbounds %struct.nvme_fc_rport, ptr %rport, i32 0, i32 2
  %4 = ptrtoint ptr %ctrl_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn27.i = load ptr, ptr %ctrl_list.i, align 4
  %cmp8.not28.i = icmp eq ptr %.pn27.i, %ctrl_list.i
  br i1 %cmp8.not28.i, label %land.lhs.true.nvme_fc_existing_controller.exit.thread_crit_edge, label %for.body.lr.ph.i

land.lhs.true.nvme_fc_existing_controller.exit.thread_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %nvme_fc_existing_controller.exit.thread

for.body.lr.ph.i:                                 ; preds = %land.lhs.true
  %subsysnqn.i.i = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 2
  %host.i.i = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 13
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.backedge.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn29.i = phi ptr [ %.pn27.i, %for.body.lr.ph.i ], [ %.pn.i, %for.cond.backedge.i.for.body.i_crit_edge ]
  %state.i.i = getelementptr i8, ptr %.pn29.i, i32 856
  %5 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state.i.i, align 4
  %.off.i.i = add i32 %6, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i.i)
  %switch.i.i = icmp ult i32 %.off.i.i, 3
  br i1 %switch.i.i, label %for.body.i.for.cond.backedge.i_crit_edge, label %lor.lhs.false6.i.i

for.body.i.for.cond.backedge.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.backedge.i

lor.lhs.false6.i.i:                               ; preds = %for.body.i
  %7 = ptrtoint ptr %subsysnqn.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %subsysnqn.i.i, align 4
  %opts7.i.i = getelementptr i8, ptr %.pn29.i, i32 4268
  %9 = ptrtoint ptr %opts7.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %opts7.i.i, align 8
  %subsysnqn8.i.i = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %subsysnqn8.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %subsysnqn8.i.i, align 4
  %call.i.i = tail call i32 @strcmp(ptr noundef %8, ptr noundef %12) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false9.i.i, label %lor.lhs.false6.i.i.for.cond.backedge.i_crit_edge

lor.lhs.false6.i.i.for.cond.backedge.i_crit_edge: ; preds = %lor.lhs.false6.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.backedge.i

lor.lhs.false9.i.i:                               ; preds = %lor.lhs.false6.i.i
  %13 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %host.i.i, align 4
  %nqn.i.i = getelementptr inbounds %struct.nvmf_host, ptr %14, i32 0, i32 2
  %host11.i.i = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %10, i32 0, i32 13
  %15 = ptrtoint ptr %host11.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %host11.i.i, align 4
  %nqn12.i.i = getelementptr inbounds %struct.nvmf_host, ptr %16, i32 0, i32 2
  %call14.i.i = tail call i32 @strcmp(ptr noundef %nqn.i.i, ptr noundef %nqn12.i.i) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool15.not.i.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool15.not.i.i, label %lor.lhs.false16.i.i, label %lor.lhs.false9.i.i.for.cond.backedge.i_crit_edge

lor.lhs.false9.i.i.for.cond.backedge.i_crit_edge: ; preds = %lor.lhs.false9.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.backedge.i

lor.lhs.false16.i.i:                              ; preds = %lor.lhs.false9.i.i
  %id.i.i = getelementptr inbounds %struct.nvmf_host, ptr %14, i32 0, i32 3
  %id20.i.i = getelementptr inbounds %struct.nvmf_host, ptr %16, i32 0, i32 3
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %id.i.i, ptr noundef dereferenceable(16) %id20.i.i, i32 16) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool22.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool22.not.i.i, label %nvme_fc_existing_controller.exit, label %lor.lhs.false16.i.i.for.cond.backedge.i_crit_edge

lor.lhs.false16.i.i.for.cond.backedge.i_crit_edge: ; preds = %lor.lhs.false16.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.backedge.i

for.cond.backedge.i:                              ; preds = %lor.lhs.false16.i.i.for.cond.backedge.i_crit_edge, %lor.lhs.false9.i.i.for.cond.backedge.i_crit_edge, %lor.lhs.false6.i.i.for.cond.backedge.i_crit_edge, %for.body.i.for.cond.backedge.i_crit_edge
  %17 = ptrtoint ptr %.pn29.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn.i = load ptr, ptr %.pn29.i, align 4
  %cmp8.not.i = icmp eq ptr %.pn.i, %ctrl_list.i
  br i1 %cmp8.not.i, label %for.cond.backedge.i.nvme_fc_existing_controller.exit.thread_crit_edge, label %for.cond.backedge.i.for.body.i_crit_edge

for.cond.backedge.i.for.body.i_crit_edge:         ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.cond.backedge.i.nvme_fc_existing_controller.exit.thread_crit_edge: ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nvme_fc_existing_controller.exit.thread

nvme_fc_existing_controller.exit.thread:          ; preds = %for.cond.backedge.i.nvme_fc_existing_controller.exit.thread_crit_edge, %land.lhs.true.nvme_fc_existing_controller.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #17
  br label %if.end3

nvme_fc_existing_controller.exit:                 ; preds = %lor.lhs.false16.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #17
  br label %out_fail

if.end3:                                          ; preds = %nvme_fc_existing_controller.exit.thread, %if.end.if.end3_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 4496) #22
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.end3.out_fail_crit_edge, label %if.end7

if.end3.out_fail_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_fail

if.end7:                                          ; preds = %if.end3
  %call8 = tail call i32 @ida_alloc_range(ptr noundef nonnull @nvme_fc_ctrl_cnt, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.end7.out_free_ctrl_crit_edge, label %if.end10

if.end7.out_free_ctrl_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_free_ctrl

if.end10:                                         ; preds = %if.end7
  %max_reconnects = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 14
  %19 = ptrtoint ptr %max_reconnects to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_reconnects, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp11.not = icmp eq i32 %20, -1
  br i1 %cmp11.not, label %if.end10.if.end24_crit_edge, label %land.lhs.true12

if.end10.if.end24_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end24

land.lhs.true12:                                  ; preds = %if.end10
  %reconnect_delay = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 9
  %21 = ptrtoint ptr %reconnect_delay to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reconnect_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %22)
  %cmp13 = icmp eq i32 %22, 10
  br i1 %cmp13, label %if.then17, label %land.lhs.true12.if.end24_crit_edge

land.lhs.true12.if.end24_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end24

if.then17:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #19
  %mul = mul i32 %20, 10
  %23 = ptrtoint ptr %reconnect_delay to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %reconnect_delay, align 4
  %div364 = lshr exact i32 %mul, 1
  %24 = ptrtoint ptr %max_reconnects to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %div364, ptr %max_reconnects, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then17, %land.lhs.true12.if.end24_crit_edge, %if.end10.if.end24_crit_edge
  %ctrl25 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 19
  %opts26 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 19, i32 93
  %25 = ptrtoint ptr %opts26 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %opts, ptr %opts26, align 8
  %nr_reconnects = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 19, i32 91
  %26 = ptrtoint ptr %nr_reconnects to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %nr_reconnects, align 8
  %dev28 = getelementptr inbounds %struct.nvme_fc_lport, ptr %lport, i32 0, i32 4
  %27 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev28, align 4
  %29 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 19, i32 11
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %29, align 4
  %ctrl_list = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 9
  %31 = ptrtoint ptr %ctrl_list to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %ctrl_list, ptr %ctrl_list, align 4
  %prev.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 9, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %ctrl_list, ptr %prev.i, align 8
  %lport37 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %lport37 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %lport, ptr %lport37, align 4
  %rport38 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 4
  %34 = ptrtoint ptr %rport38 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %rport, ptr %rport38, align 8
  %dev40 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %dev40 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %28, ptr %dev40, align 8
  %cnum = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 5
  %36 = ptrtoint ptr %cnum to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call8, ptr %cnum, align 4
  %ioq_live = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 6
  %37 = ptrtoint ptr %ioq_live to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %ioq_live, align 8
  %ioabort_wait = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 17
  tail call void @__init_waitqueue_head(ptr noundef %ioabort_wait, ptr noundef nonnull @.str.110, ptr noundef nonnull @nvme_fc_init_ctrl.__key) #17
  %38 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev40, align 8
  %call42 = tail call ptr @get_device(ptr noundef %39) #17
  %ref = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 14
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #17
  %40 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 1, ptr %ref, align 4
  %reset_work = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 19, i32 20
  tail call void @__init_work(ptr noundef %reset_work, i32 noundef 0) #17
  %41 = ptrtoint ptr %reset_work to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -64, ptr %reset_work, align 8
  %lockdep_map = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 19, i32 20, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.112, ptr noundef nonnull @nvme_fc_init_ctrl.__key.111, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry51 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 19, i32 20, i32 1
  %42 = ptrtoint ptr %entry51 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %entry51, ptr %entry51, align 4
  %prev.i365 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 19, i32 20, i32 1, i32 1
  %43 = ptrtoint ptr %prev.i365 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %entry51, ptr %prev.i365, align 8
  %func = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 19, i32 20, i32 2
  %44 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @nvme_fc_reset_ctrl_work, ptr %func, align 4
  %connect_work = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 13
  tail call void @__init_work(ptr noundef %connect_work, i32 noundef 0) #17
  %45 = ptrtoint ptr %connect_work to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -64, ptr %connect_work, align 8
  %lockdep_map65 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 13, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map65, ptr noundef nonnull @.str.114, ptr noundef nonnull @nvme_fc_init_ctrl.__key.113, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry68 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 13, i32 0, i32 1
  %46 = ptrtoint ptr %entry68 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %entry68, ptr %entry68, align 4
  %prev.i366 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 13, i32 0, i32 1, i32 1
  %47 = ptrtoint ptr %prev.i366 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %entry68, ptr %prev.i366, align 8
  %func71 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 13, i32 0, i32 2
  %48 = ptrtoint ptr %func71 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @nvme_fc_connect_ctrl_work, ptr %func71, align 4
  %timer = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 13, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.116, ptr noundef nonnull @nvme_fc_init_ctrl.__key.115) #17
  %ioerr_work = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 12
  tail call void @__init_work(ptr noundef %ioerr_work, i32 noundef 0) #17
  %49 = ptrtoint ptr %ioerr_work to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -64, ptr %ioerr_work, align 4
  %lockdep_map86 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 12, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map86, ptr noundef nonnull @.str.118, ptr noundef nonnull @nvme_fc_init_ctrl.__key.117, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry88 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 12, i32 1
  %50 = ptrtoint ptr %entry88 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %entry88, ptr %entry88, align 8
  %prev.i367 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 12, i32 1, i32 1
  %51 = ptrtoint ptr %prev.i367 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %entry88, ptr %prev.i367, align 4
  %func90 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 12, i32 2
  %52 = ptrtoint ptr %func90 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @nvme_fc_ctrl_ioerr_work, ptr %func90, align 8
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.120, ptr noundef nonnull @nvme_fc_init_ctrl.__key.119, i16 noundef signext 3) #17
  %nr_io_queues = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 8
  %53 = ptrtoint ptr %nr_io_queues to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nr_io_queues, align 4
  %ops = getelementptr inbounds %struct.nvme_fc_lport, ptr %lport, i32 0, i32 5
  %55 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ops, align 8
  %max_hw_queues = getelementptr inbounds %struct.nvme_fc_port_template, ptr %56, i32 0, i32 10
  %57 = ptrtoint ptr %max_hw_queues to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %max_hw_queues, align 8
  %59 = tail call i32 @llvm.umin.i32(i32 %54, i32 %58)
  %queue_count = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 19, i32 30
  %inc = add i32 %59, 1
  %60 = ptrtoint ptr %queue_count to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %inc, ptr %queue_count, align 4
  %queue_size = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 7
  %61 = ptrtoint ptr %queue_size to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %queue_size, align 4
  %63 = trunc i32 %62 to i16
  %conv = add i16 %63, -1
  %sqsize = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 19, i32 44
  %64 = ptrtoint ptr %sqsize to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv, ptr %sqsize, align 2
  %kato = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 12
  %65 = ptrtoint ptr %kato to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %kato, align 4
  %kato104 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 19, i32 59
  %67 = ptrtoint ptr %kato104 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %kato104, align 8
  %cntlid = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 19, i32 27
  %68 = ptrtoint ptr %cntlid to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 -1, ptr %cntlid, align 8
  %69 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %inc, i32 48) #17
  %70 = extractvalue { i32, i1 } %69, 1
  br i1 %70, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !504

kcalloc.exit.thread:                              ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19
  %queues374 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %queues374 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %queues374, align 4
  br label %out_free_ida

if.end7.i.i:                                      ; preds = %if.end24
  %72 = extractvalue { i32, i1 } %69, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %72, i32 noundef 3520) #20
  %queues = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 1
  %73 = ptrtoint ptr %queues to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call8.i.i, ptr %queues, align 4
  %tobool110.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool110.not, label %if.end7.i.i.out_free_ida_crit_edge, label %if.end112

if.end7.i.i.out_free_ida_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_free_ida

if.end112:                                        ; preds = %if.end7.i.i
  %74 = call ptr @memset(ptr %call8.i.i, i32 0, i32 48)
  %75 = ptrtoint ptr %call8.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call7.i.i, ptr %call8.i.i, align 128
  %csn.i = getelementptr %struct.nvme_fc_queue, ptr %call8.i.i, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %csn.i, i32 noundef 4) #17
  %76 = ptrtoint ptr %csn.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile i32 0, ptr %csn.i, align 8
  %77 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev40, align 8
  %dev2.i = getelementptr %struct.nvme_fc_queue, ptr %call8.i.i, i32 0, i32 1
  %79 = ptrtoint ptr %dev2.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %78, ptr %dev2.i, align 4
  %80 = getelementptr %struct.nvme_fc_queue, ptr %call8.i.i, i32 0, i32 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 64, ptr %80, align 16
  %admin_tag_set = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 10
  %82 = call ptr @memset(ptr %admin_tag_set, i32 0, i32 184)
  %ops114 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 10, i32 2
  %83 = ptrtoint ptr %ops114 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @nvme_fc_admin_mq_ops, ptr %ops114, align 4
  %queue_depth = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 10, i32 4
  %84 = ptrtoint ptr %queue_depth to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 30, ptr %queue_depth, align 4
  %reserved_tags = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 10, i32 5
  %85 = ptrtoint ptr %reserved_tags to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1, ptr %reserved_tags, align 8
  %86 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %29, align 4
  %numa_node120 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 10, i32 7
  %88 = ptrtoint ptr %numa_node120 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %numa_node120, align 8
  %89 = ptrtoint ptr %lport37 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %lport37, align 4
  %ops122 = getelementptr inbounds %struct.nvme_fc_lport, ptr %90, i32 0, i32 5
  %91 = ptrtoint ptr %ops122 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ops122, align 8
  %fcprqst_priv_sz = getelementptr inbounds %struct.nvme_fc_port_template, ptr %92, i32 0, i32 17
  %93 = ptrtoint ptr %fcprqst_priv_sz to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %fcprqst_priv_sz, align 4
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %94, i32 304) #17
  %cmd_size = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 10, i32 6
  %95 = ptrtoint ptr %cmd_size to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %spec.select.i, ptr %cmd_size, align 4
  %driver_data = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 10, i32 10
  %96 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call7.i.i, ptr %driver_data, align 4
  %nr_hw_queues = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 10, i32 3
  %97 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 1, ptr %nr_hw_queues, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @admin_timeout to i32))
  %98 = load i32, ptr @admin_timeout, align 4
  %mul127 = mul i32 %98, 100
  %timeout = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 10, i32 8
  %99 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %mul127, ptr %timeout, align 4
  %flags130 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 10, i32 9
  %100 = ptrtoint ptr %flags130 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 64, ptr %flags130, align 8
  %call132 = tail call i32 @blk_mq_alloc_tag_set(ptr noundef %admin_tag_set) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.end135, label %if.end112.out_free_queues_crit_edge

if.end112.out_free_queues_crit_edge:              ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_free_queues

if.end135:                                        ; preds = %if.end112
  %admin_tagset = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 19, i32 13
  %101 = ptrtoint ptr %admin_tagset to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %admin_tag_set, ptr %admin_tagset, align 4
  %call139 = tail call ptr @blk_mq_init_queue(ptr noundef %admin_tag_set) #17
  %fabrics_q = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 19, i32 8
  %102 = ptrtoint ptr %fabrics_q to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call139, ptr %fabrics_q, align 8
  %cmp.i = icmp ugt ptr %call139, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then144, label %if.end148

if.then144:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #19
  %103 = ptrtoint ptr %call139 to i32
  br label %out_free_admin_tag_set

if.end148:                                        ; preds = %if.end135
  %call150 = tail call ptr @blk_mq_init_queue(ptr noundef %admin_tag_set) #17
  %admin_q = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 19, i32 6
  %104 = ptrtoint ptr %admin_q to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call150, ptr %admin_q, align 8
  %cmp.i368 = icmp ugt ptr %call150, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i368, label %if.then155, label %if.end159

if.then155:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #19
  %105 = ptrtoint ptr %call150 to i32
  br label %out_cleanup_fabrics_q

if.end159:                                        ; preds = %if.end148
  %call161 = tail call i32 @nvme_init_ctrl(ptr noundef %ctrl25, ptr noundef %dev, ptr noundef nonnull @nvme_fc_ctrl_ops, i32 noundef 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %do.body166, label %out_cleanup_admin_q

do.body166:                                       ; preds = %if.end159
  %lock170 = getelementptr inbounds %struct.nvme_fc_rport, ptr %rport, i32 0, i32 8
  %call172 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock170) #17
  %ctrl_list178 = getelementptr inbounds %struct.nvme_fc_rport, ptr %rport, i32 0, i32 2
  %prev.i369 = getelementptr inbounds %struct.nvme_fc_rport, ptr %rport, i32 0, i32 2, i32 1
  %106 = ptrtoint ptr %prev.i369 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %prev.i369, align 4
  %call.i.i370 = tail call zeroext i1 @__list_add_valid(ptr noundef %ctrl_list, ptr noundef %107, ptr noundef %ctrl_list178) #17
  br i1 %call.i.i370, label %if.end.i.i371, label %do.body166.list_add_tail.exit_crit_edge

do.body166.list_add_tail.exit_crit_edge:          ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_add_tail.exit

if.end.i.i371:                                    ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #19
  %108 = ptrtoint ptr %prev.i369 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %ctrl_list, ptr %prev.i369, align 4
  %109 = ptrtoint ptr %ctrl_list to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %ctrl_list178, ptr %ctrl_list, align 4
  %110 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %107, ptr %prev.i, align 8
  %111 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %ctrl_list, ptr %107, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i371, %do.body166.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock170, i32 noundef %call172) #17
  %call181 = tail call zeroext i1 @nvme_change_ctrl_state(ptr noundef %ctrl25, i32 noundef 2) #17
  br i1 %call181, label %lor.lhs.false, label %list_add_tail.exit.fail_ctrl_crit_edge

list_add_tail.exit.fail_ctrl_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail_ctrl

lor.lhs.false:                                    ; preds = %list_add_tail.exit
  %call183 = tail call zeroext i1 @nvme_change_ctrl_state(ptr noundef %ctrl25, i32 noundef 3) #17
  br i1 %call183, label %if.end190, label %lor.lhs.false.fail_ctrl_crit_edge

lor.lhs.false.fail_ctrl_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail_ctrl

if.end190:                                        ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nvme_wq to i32))
  %112 = load ptr, ptr @nvme_wq, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %112, ptr noundef %connect_work, i32 noundef 0) #17
  br i1 %call.i, label %if.end200, label %if.end190.fail_ctrl_crit_edge

if.end190.fail_ctrl_crit_edge:                    ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail_ctrl

if.end200:                                        ; preds = %if.end190
  %call202 = tail call zeroext i1 @flush_delayed_work(ptr noundef %connect_work) #17
  %device207 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 19, i32 17
  %113 = ptrtoint ptr %device207 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %device207, align 8
  %115 = ptrtoint ptr %cnum to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %cnum, align 4
  %subsys.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 19, i32 23
  %117 = ptrtoint ptr %subsys.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %subsys.i, align 4
  %tobool.not.i = icmp eq ptr %118, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #19
  %119 = ptrtoint ptr %opts26 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %opts26, align 8
  %subsysnqn.i = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %120, i32 0, i32 2
  %121 = ptrtoint ptr %subsysnqn.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %subsysnqn.i, align 4
  br label %nvmf_ctrl_subsysnqn.exit

if.end.i:                                         ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #19
  %subnqn.i = getelementptr inbounds %struct.nvme_subsystem, ptr %118, i32 0, i32 7
  br label %nvmf_ctrl_subsysnqn.exit

nvmf_ctrl_subsysnqn.exit:                         ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %subnqn.i, %if.end.i ], [ %122, %if.then.i ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %114, ptr noundef nonnull @.str.128, i32 noundef %116, ptr noundef %retval.0.i) #21
  br label %cleanup

fail_ctrl:                                        ; preds = %if.end190.fail_ctrl_crit_edge, %lor.lhs.false.fail_ctrl_crit_edge, %list_add_tail.exit.fail_ctrl_crit_edge
  %.str.125.sink = phi ptr [ @.str.121, %list_add_tail.exit.fail_ctrl_crit_edge ], [ @.str.121, %lor.lhs.false.fail_ctrl_crit_edge ], [ @.str.125, %if.end190.fail_ctrl_crit_edge ]
  %device198 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 19, i32 17
  %123 = ptrtoint ptr %device198 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %device198, align 8
  %125 = ptrtoint ptr %cnum to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %cnum, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull %.str.125.sink, i32 noundef %126) #21
  %call213 = tail call zeroext i1 @nvme_change_ctrl_state(ptr noundef %ctrl25, i32 noundef 4) #17
  %call215 = tail call zeroext i1 @cancel_work_sync(ptr noundef %ioerr_work) #17
  %call218 = tail call zeroext i1 @cancel_work_sync(ptr noundef %reset_work) #17
  %call220 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %connect_work) #17
  %127 = ptrtoint ptr %opts26 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr null, ptr %opts26, align 8
  tail call void @nvme_uninit_ctrl(ptr noundef %ctrl25) #17
  %device.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %call7.i.i, i32 0, i32 19, i32 17
  %128 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %device.i, align 8
  tail call void @put_device(ptr noundef %129) #17
  %call225 = tail call fastcc i32 @nvme_fc_rport_get(ptr noundef %rport)
  br label %cleanup

out_cleanup_admin_q:                              ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #19
  %130 = ptrtoint ptr %admin_q to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %admin_q, align 8
  tail call void @blk_cleanup_queue(ptr noundef %131) #17
  br label %out_cleanup_fabrics_q

out_cleanup_fabrics_q:                            ; preds = %out_cleanup_admin_q, %if.then155
  %ret.0 = phi i32 [ %105, %if.then155 ], [ %call161, %out_cleanup_admin_q ]
  %132 = ptrtoint ptr %fabrics_q to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %fabrics_q, align 8
  tail call void @blk_cleanup_queue(ptr noundef %133) #17
  br label %out_free_admin_tag_set

out_free_admin_tag_set:                           ; preds = %out_cleanup_fabrics_q, %if.then144
  %ret.1 = phi i32 [ %103, %if.then144 ], [ %ret.0, %out_cleanup_fabrics_q ]
  tail call void @blk_mq_free_tag_set(ptr noundef %admin_tag_set) #17
  br label %out_free_queues

out_free_queues:                                  ; preds = %out_free_admin_tag_set, %if.end112.out_free_queues_crit_edge
  %ret.2 = phi i32 [ %call132, %if.end112.out_free_queues_crit_edge ], [ %ret.1, %out_free_admin_tag_set ]
  %134 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %queues, align 4
  tail call void @kfree(ptr noundef %135) #17
  br label %out_free_ida

out_free_ida:                                     ; preds = %out_free_queues, %if.end7.i.i.out_free_ida_crit_edge, %kcalloc.exit.thread
  %ret.3 = phi i32 [ %ret.2, %out_free_queues ], [ -12, %if.end7.i.i.out_free_ida_crit_edge ], [ -12, %kcalloc.exit.thread ]
  %136 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev40, align 8
  tail call void @put_device(ptr noundef %137) #17
  %138 = ptrtoint ptr %cnum to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %cnum, align 4
  tail call void @ida_free(ptr noundef nonnull @nvme_fc_ctrl_cnt, i32 noundef %139) #17
  br label %out_free_ctrl

out_free_ctrl:                                    ; preds = %out_free_ida, %if.end7.out_free_ctrl_crit_edge
  %ret.4 = phi i32 [ %ret.3, %out_free_ida ], [ -28, %if.end7.out_free_ctrl_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %out_fail

out_fail:                                         ; preds = %out_free_ctrl, %if.end3.out_fail_crit_edge, %nvme_fc_existing_controller.exit, %entry.out_fail_crit_edge
  %ret.5 = phi i32 [ %ret.4, %out_free_ctrl ], [ -53, %entry.out_fail_crit_edge ], [ -114, %nvme_fc_existing_controller.exit ], [ -12, %if.end3.out_fail_crit_edge ]
  %140 = inttoptr i32 %ret.5 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out_fail, %fail_ctrl, %nvmf_ctrl_subsysnqn.exit
  %retval.0 = phi ptr [ %140, %out_fail ], [ %ctrl25, %nvmf_ctrl_subsysnqn.exit ], [ inttoptr (i32 -5 to ptr), %fail_ctrl ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_u64(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_fc_reset_ctrl_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2320
  %ctrl1 = getelementptr i8, ptr %work, i32 -1384
  tail call void @nvme_stop_ctrl(ptr noundef %ctrl1) #17
  tail call fastcc void @nvme_fc_delete_association(ptr noundef %add.ptr)
  %call = tail call zeroext i1 @nvme_change_ctrl_state(ptr noundef %ctrl1, i32 noundef 3) #17
  br i1 %call, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %device = getelementptr i8, ptr %work, i32 -168
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 8
  %cnum = getelementptr i8, ptr %work, i32 -2260
  %2 = ptrtoint ptr %cnum to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cnum, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.130, i32 noundef %3) #21
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %rport = getelementptr i8, ptr %work, i32 -2264
  %4 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rport, align 8
  %port_state = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %port_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  br i1 %cmp, label %if.then4, label %if.else16

if.then4:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nvme_wq to i32))
  %8 = load ptr, ptr @nvme_wq, align 4
  %connect_work = getelementptr i8, ptr %work, i32 -1816
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %connect_work, i32 noundef 0) #17
  br i1 %call.i, label %if.else, label %do.end9

do.end9:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  %device11 = getelementptr i8, ptr %work, i32 -168
  %9 = ptrtoint ptr %device11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device11, align 8
  %cnum12 = getelementptr i8, ptr %work, i32 -2260
  %11 = ptrtoint ptr %cnum12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cnum12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.133, i32 noundef %12) #21
  br label %if.end17

if.else:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  %call14 = tail call zeroext i1 @flush_delayed_work(ptr noundef %connect_work) #17
  br label %if.end17

if.else16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @nvme_fc_reconnect_or_delete(ptr noundef %add.ptr, i32 noundef -107)
  br label %if.end17

if.end17:                                         ; preds = %if.else16, %if.else, %do.end9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_fc_connect_ctrl_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -504
  %ctrl1.i = getelementptr i8, ptr %work, i32 432
  %opts2.i = getelementptr i8, ptr %work, i32 3848
  %0 = ptrtoint ptr %opts2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %opts2.i, align 8
  %nr_reconnects.i = getelementptr i8, ptr %work, i32 3840
  %2 = ptrtoint ptr %nr_reconnects.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_reconnects.i, align 8
  %inc.i = add i32 %3, 1
  store i32 %inc.i, ptr %nr_reconnects.i, align 8
  %rport.i = getelementptr i8, ptr %work, i32 -448
  %4 = ptrtoint ptr %rport.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rport.i, align 8
  %port_state.i = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %port_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 2
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.end.i:                                         ; preds = %entry
  %flags.i.i = getelementptr i8, ptr %work, i32 104
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.if.then_crit_edge

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.end.i.i:                                       ; preds = %if.end.i
  %act_ctrl_cnt.i.i = getelementptr inbounds %struct.nvme_fc_rport, ptr %5, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %act_ctrl_cnt.i.i, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !505
  tail call void @llvm.prefetch.p0(ptr %act_ctrl_cnt.i.i, i32 1, i32 3, i32 1) #17
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %act_ctrl_cnt.i.i, ptr %act_ctrl_cnt.i.i, i32 1, ptr elementtype(i32) %act_ctrl_cnt.i.i) #17, !srcloc !506
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !507
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.end.i.i.do.end.i_crit_edge

if.end.i.i.do.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %lport1.i.i.i = getelementptr inbounds %struct.nvme_fc_rport, ptr %5, i32 0, i32 7
  %9 = ptrtoint ptr %lport1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lport1.i.i.i, align 4
  %act_rport_cnt.i.i.i = getelementptr inbounds %struct.nvme_fc_lport, ptr %10, i32 0, i32 7
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %act_rport_cnt.i.i.i, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %act_rport_cnt.i.i.i, i32 1, i32 3, i32 1) #17
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %act_rport_cnt.i.i.i, ptr %act_rport_cnt.i.i.i, i32 1, ptr elementtype(i32) %act_rport_cnt.i.i.i) #17, !srcloc !508
  br label %do.end.i

do.end.i:                                         ; preds = %if.then3.i.i, %if.end.i.i.do.end.i_crit_edge
  %device.i = getelementptr i8, ptr %work, i32 1648
  %12 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device.i, align 8
  %cnum.i = getelementptr i8, ptr %work, i32 -444
  %14 = ptrtoint ptr %cnum.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cnum.i, align 4
  %lport.i = getelementptr i8, ptr %work, i32 -452
  %16 = ptrtoint ptr %lport.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lport.i, align 4
  %port_name.i = getelementptr inbounds %struct.nvme_fc_local_port, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %port_name.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %port_name.i, align 8
  %20 = ptrtoint ptr %rport.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rport.i, align 8
  %port_name9.i = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %port_name9.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %port_name9.i, align 8
  %24 = ptrtoint ptr %opts2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %opts2.i, align 8
  %subsysnqn.i = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %subsysnqn.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %subsysnqn.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.154, i32 noundef %15, i64 noundef %19, i64 noundef %23, ptr noundef %27) #21
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags.i.i) #17
  %queues.i = getelementptr i8, ptr %work, i32 -460
  %28 = ptrtoint ptr %queues.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %queues.i, align 4
  %lldd_handle.i.i = getelementptr inbounds %struct.nvme_fc_queue, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %lldd_handle.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %lldd_handle.i.i, align 4
  %31 = ptrtoint ptr %lport.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %lport.i, align 4
  %ops.i.i = getelementptr inbounds %struct.nvme_fc_lport, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i.i, align 8
  %create_queue.i.i = getelementptr inbounds %struct.nvme_fc_port_template, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %create_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %create_queue.i.i, align 8
  %tobool.not.i248.i = icmp eq ptr %36, null
  br i1 %tobool.not.i248.i, label %do.end.i.if.end16.i_crit_edge, label %__nvme_fc_create_hw_queue.exit.i

do.end.i.if.end16.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16.i

__nvme_fc_create_hw_queue.exit.i:                 ; preds = %do.end.i
  %call.i249.i = tail call i32 %36(ptr noundef %32, i32 noundef 0, i16 noundef zeroext 32, ptr noundef %lldd_handle.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i249.i)
  %tobool14.not.i = icmp eq i32 %call.i249.i, 0
  br i1 %tobool14.not.i, label %__nvme_fc_create_hw_queue.exit.i.if.end16.i_crit_edge, label %__nvme_fc_create_hw_queue.exit.i.out_free_queue.i_crit_edge

__nvme_fc_create_hw_queue.exit.i.out_free_queue.i_crit_edge: ; preds = %__nvme_fc_create_hw_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_free_queue.i

__nvme_fc_create_hw_queue.exit.i.if.end16.i_crit_edge: ; preds = %__nvme_fc_create_hw_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16.i

if.end16.i:                                       ; preds = %__nvme_fc_create_hw_queue.exit.i.if.end16.i_crit_edge, %do.end.i.if.end16.i_crit_edge
  %37 = ptrtoint ptr %queues.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %queues.i, align 4
  %39 = ptrtoint ptr %lport.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lport.i, align 4
  %ops.i8 = getelementptr inbounds %struct.nvme_fc_lport, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %ops.i8 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i8, align 8
  %lsrqst_priv_sz.i = getelementptr inbounds %struct.nvme_fc_port_template, ptr %42, i32 0, i32 16
  %43 = ptrtoint ptr %lsrqst_priv_sz.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %lsrqst_priv_sz.i, align 8
  %add.i9 = add i32 %44, 1208
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i9, i32 noundef 3520) #20
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %out_no_memory.thread.i, label %if.end.i17

out_no_memory.thread.i:                           ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #19
  %45 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %device.i, align 8
  %47 = ptrtoint ptr %cnum.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cnum.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %46, ptr noundef nonnull @.str.168, i32 noundef %48) #21
  br label %nvme_fc_connect_admin_queue.exit

if.end.i17:                                       ; preds = %if.end16.i
  %arrayidx.i = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 1
  %arrayidx2.i = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 9
  %49 = ptrtoint ptr %lport.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %lport.i, align 4
  %ops4.i = getelementptr inbounds %struct.nvme_fc_lport, ptr %50, i32 0, i32 5
  %51 = ptrtoint ptr %ops4.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops4.i, align 8
  %lsrqst_priv_sz5.i = getelementptr inbounds %struct.nvme_fc_port_template, ptr %52, i32 0, i32 16
  %53 = ptrtoint ptr %lsrqst_priv_sz5.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %lsrqst_priv_sz5.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool6.not.i = icmp eq i32 %54, 0
  %arrayidx8.i = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 9, i32 5
  %spec.select.i = select i1 %tobool6.not.i, ptr null, ptr %arrayidx8.i
  %55 = getelementptr inbounds %struct.nvmefc_ls_req, ptr %call9.i.i.i, i32 0, i32 7
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %spec.select.i, ptr %55, align 4
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 3, ptr %arrayidx.i, align 128
  %desc_list_len.i = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 1, i32 0, i32 1
  %58 = ptrtoint ptr %desc_list_len.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1016, ptr %desc_list_len.i, align 4
  %assoc_cmd.i = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 1, i32 0, i32 2
  %59 = ptrtoint ptr %assoc_cmd.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 3, ptr %assoc_cmd.i, align 8
  %desc_len.i = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 1, i32 0, i32 3
  %60 = ptrtoint ptr %desc_len.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1008, ptr %desc_len.i, align 4
  %ersp_ratio14.i = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 1, i32 0, i32 4
  %61 = ptrtoint ptr %ersp_ratio14.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 8, ptr %ersp_ratio14.i, align 16
  %sqsize.i12 = getelementptr inbounds %struct.fcnvme_lsdesc_cr_assoc_cmd, ptr %assoc_cmd.i, i32 0, i32 6
  %62 = ptrtoint ptr %sqsize.i12 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 31, ptr %sqsize.i12, align 2
  %cntlid.i = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 1, i32 5
  %63 = ptrtoint ptr %cntlid.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 -1, ptr %cntlid.i, align 8
  %hostid.i = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 1, i32 6, i32 1
  %64 = ptrtoint ptr %opts2.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %opts2.i, align 8
  %host.i = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %65, i32 0, i32 13
  %66 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %host.i, align 4
  %id.i = getelementptr inbounds %struct.nvmf_host, ptr %67, i32 0, i32 3
  %68 = call ptr @memcpy(ptr %hostid.i, ptr %id.i, i32 16)
  %hostnqn.i = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 1, i32 6, i32 1, i32 0, i32 4
  %host23.i = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %65, i32 0, i32 13
  %69 = ptrtoint ptr %host23.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %host23.i, align 4
  %nqn.i = getelementptr inbounds %struct.nvmf_host, ptr %70, i32 0, i32 2
  %call25.i = tail call ptr @strncpy(ptr noundef %hostnqn.i, ptr noundef %nqn.i, i32 noundef 223) #17
  %subnqn.i = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 3, i32 6, i32 1, i32 0, i32 4
  %subsysnqn.i13 = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %65, i32 0, i32 2
  %71 = ptrtoint ptr %subsysnqn.i13 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %subsysnqn.i13, align 4
  %call30.i = tail call ptr @strncpy(ptr noundef %subnqn.i, ptr noundef %72, i32 noundef 223) #17
  %queue31.i = getelementptr inbounds %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 0, i32 2
  %73 = ptrtoint ptr %queue31.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %38, ptr %queue31.i, align 4
  %74 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %arrayidx.i, ptr %call9.i.i.i, align 128
  %rqstlen.i = getelementptr inbounds %struct.nvmefc_ls_req, ptr %call9.i.i.i, i32 0, i32 2
  %75 = ptrtoint ptr %rqstlen.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1024, ptr %rqstlen.i, align 8
  %rspaddr.i = getelementptr inbounds %struct.nvmefc_ls_req, ptr %call9.i.i.i, i32 0, i32 3
  %76 = ptrtoint ptr %rspaddr.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %arrayidx2.i, ptr %rspaddr.i, align 4
  %rsplen.i = getelementptr inbounds %struct.nvmefc_ls_req, ptr %call9.i.i.i, i32 0, i32 5
  %77 = ptrtoint ptr %rsplen.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 56, ptr %rsplen.i, align 4
  %timeout.i = getelementptr inbounds %struct.nvmefc_ls_req, ptr %call9.i.i.i, i32 0, i32 6
  %78 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 20, ptr %timeout.i, align 8
  %79 = ptrtoint ptr %rport.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rport.i, align 8
  %call.i.i15 = tail call fastcc i32 @__nvme_fc_send_ls_req(ptr noundef %80, ptr noundef nonnull %call9.i.i.i, ptr noundef nonnull @nvme_fc_send_ls_req_done) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i15)
  %tobool.not.i.i16 = icmp eq i32 %call.i.i15, 0
  br i1 %tobool.not.i.i16, label %if.end.i.i18, label %if.end.i17.out_no_memory.thread16.i_crit_edge

if.end.i17.out_no_memory.thread16.i_crit_edge:    ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_no_memory.thread16.i

if.end.i.i18:                                     ; preds = %if.end.i17
  %ls_done.i.i = getelementptr inbounds %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 0, i32 6
  tail call void @wait_for_completion(ptr noundef %ls_done.i.i) #17
  tail call fastcc void @__nvme_fc_finish_ls_req(ptr noundef nonnull %call9.i.i.i) #17
  %ls_error.i.i = getelementptr inbounds %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 0, i32 5
  %81 = ptrtoint ptr %ls_error.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %ls_error.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool1.not.i.i = icmp eq i32 %82, 0
  br i1 %tobool1.not.i.i, label %if.end3.i.i, label %if.end.i.i18.out_no_memory.thread16.i_crit_edge

if.end.i.i18.out_no_memory.thread16.i_crit_edge:  ; preds = %if.end.i.i18
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_no_memory.thread16.i

if.end3.i.i:                                      ; preds = %if.end.i.i18
  %83 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx2.i, align 128
  %85 = zext i8 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.233)
  switch i8 %84, label %if.end3.i.i.if.then105.i_crit_edge [
    i8 1, label %if.end3.i.i.out_no_memory.thread16.i_crit_edge
    i8 2, label %if.else41.i
  ]

if.end3.i.i.out_no_memory.thread16.i_crit_edge:   ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_no_memory.thread16.i

if.end3.i.i.if.then105.i_crit_edge:               ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then105.i

if.else41.i:                                      ; preds = %if.end3.i.i
  %desc_list_len43.i = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 9, i32 0, i32 1
  %86 = ptrtoint ptr %desc_list_len43.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %desc_list_len43.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %87)
  %cmp45.not.i = icmp eq i32 %87, 48
  br i1 %cmp45.not.i, label %if.else48.i, label %if.else41.i.if.then105.i_crit_edge

if.else41.i.if.then105.i_crit_edge:               ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then105.i

if.else48.i:                                      ; preds = %if.else41.i
  %rqst.i = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 9, i32 0, i32 2
  %88 = ptrtoint ptr %rqst.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %rqst.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %89)
  %cmp51.not.i = icmp eq i32 %89, 1
  br i1 %cmp51.not.i, label %if.else54.i, label %if.else48.i.if.then105.i_crit_edge

if.else48.i.if.then105.i_crit_edge:               ; preds = %if.else48.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then105.i

if.else54.i:                                      ; preds = %if.else48.i
  %desc_len57.i = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 9, i32 0, i32 3
  %90 = ptrtoint ptr %desc_len57.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %desc_len57.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %91)
  %cmp59.not.i = icmp eq i32 %91, 8
  br i1 %cmp59.not.i, label %if.else62.i, label %if.else54.i.if.then105.i_crit_edge

if.else54.i.if.then105.i_crit_edge:               ; preds = %if.else54.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then105.i

if.else62.i:                                      ; preds = %if.else54.i
  %w065.i = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 9, i32 0, i32 4
  %92 = ptrtoint ptr %w065.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %w065.i, align 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %93)
  %cmp68.not.i = icmp eq i8 %93, 3
  br i1 %cmp68.not.i, label %if.else71.i, label %if.else62.i.if.then105.i_crit_edge

if.else62.i.if.then105.i_crit_edge:               ; preds = %if.else62.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then105.i

if.else71.i:                                      ; preds = %if.else62.i
  %associd.i = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 9, i32 0, i32 6
  %94 = ptrtoint ptr %associd.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %associd.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %95)
  %cmp73.not.i = icmp eq i32 %95, 7
  br i1 %cmp73.not.i, label %if.else76.i, label %if.else71.i.if.then105.i_crit_edge

if.else71.i.if.then105.i_crit_edge:               ; preds = %if.else71.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then105.i

if.else76.i:                                      ; preds = %if.else71.i
  %desc_len78.i = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 9, i32 0, i32 7
  %96 = ptrtoint ptr %desc_len78.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %desc_len78.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %97)
  %cmp80.not.i = icmp eq i32 %97, 8
  br i1 %cmp80.not.i, label %if.else83.i, label %if.else76.i.if.then105.i_crit_edge

if.else76.i.if.then105.i_crit_edge:               ; preds = %if.else76.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then105.i

if.else83.i:                                      ; preds = %if.else76.i
  %connectid.i = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 9, i32 1
  %98 = ptrtoint ptr %connectid.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %connectid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %99)
  %cmp85.not.i = icmp eq i32 %99, 6
  br i1 %cmp85.not.i, label %if.end103.i, label %if.else83.i.if.then105.i_crit_edge

if.else83.i.if.then105.i_crit_edge:               ; preds = %if.else83.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then105.i

if.end103.i:                                      ; preds = %if.else83.i
  %desc_len90.i = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 9, i32 2
  %100 = ptrtoint ptr %desc_len90.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %desc_len90.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %101)
  %cmp92.not.i = icmp eq i32 %101, 8
  br i1 %cmp92.not.i, label %if.end22.i, label %if.end103.i.if.then105.i_crit_edge

if.end103.i.if.then105.i_crit_edge:               ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then105.i

if.then105.i:                                     ; preds = %if.end103.i.if.then105.i_crit_edge, %if.else83.i.if.then105.i_crit_edge, %if.else76.i.if.then105.i_crit_edge, %if.else71.i.if.then105.i_crit_edge, %if.else62.i.if.then105.i_crit_edge, %if.else54.i.if.then105.i_crit_edge, %if.else48.i.if.then105.i_crit_edge, %if.else41.i.if.then105.i_crit_edge, %if.end3.i.i.if.then105.i_crit_edge
  %fcret.011.i = phi i32 [ 14, %if.end103.i.if.then105.i_crit_edge ], [ 13, %if.else83.i.if.then105.i_crit_edge ], [ 11, %if.else76.i.if.then105.i_crit_edge ], [ 10, %if.else71.i.if.then105.i_crit_edge ], [ 32, %if.else62.i.if.then105.i_crit_edge ], [ 31, %if.else54.i.if.then105.i_crit_edge ], [ 30, %if.else48.i.if.then105.i_crit_edge ], [ 33, %if.else41.i.if.then105.i_crit_edge ], [ 29, %if.end3.i.i.if.then105.i_crit_edge ]
  %dev.i = getelementptr i8, ptr %work, i32 -456
  %102 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev.i, align 8
  %qnum.i = getelementptr inbounds %struct.nvme_fc_queue, ptr %38, i32 0, i32 5
  %104 = ptrtoint ptr %qnum.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %qnum.i, align 4
  %arrayidx109.i = getelementptr [38 x ptr], ptr @validation_errors, i32 0, i32 %fcret.011.i
  %106 = ptrtoint ptr %arrayidx109.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx109.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.171, i32 noundef %105, ptr noundef %107) #21
  br label %out_no_memory.thread16.i

out_no_memory.thread16.i:                         ; preds = %if.then105.i, %if.end3.i.i.out_no_memory.thread16.i_crit_edge, %if.end.i.i18.out_no_memory.thread16.i_crit_edge, %if.end.i17.out_no_memory.thread16.i_crit_edge
  %ret.0.ph.i = phi i32 [ -9, %if.then105.i ], [ %call.i.i15, %if.end.i17.out_no_memory.thread16.i_crit_edge ], [ %82, %if.end.i.i18.out_no_memory.thread16.i_crit_edge ], [ -6, %if.end3.i.i.out_no_memory.thread16.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #17
  br label %nvme_fc_connect_admin_queue.exit

nvme_fc_connect_admin_queue.exit:                 ; preds = %out_no_memory.thread16.i, %out_no_memory.thread.i
  %ret.114.i = phi i32 [ -12, %out_no_memory.thread.i ], [ %ret.0.ph.i, %out_no_memory.thread16.i ]
  %dev133.i = getelementptr i8, ptr %work, i32 -456
  %108 = ptrtoint ptr %dev133.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev133.i, align 8
  %qnum134.i = getelementptr inbounds %struct.nvme_fc_queue, ptr %38, i32 0, i32 5
  %110 = ptrtoint ptr %qnum134.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %qnum134.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.174, i32 noundef %111, i32 noundef %ret.114.i) #21
  br label %out_delete_hw_queue.i

if.end22.i:                                       ; preds = %if.end103.i
  %call116.i21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #17
  %association_id.i22 = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 9, i32 0, i32 8
  %112 = ptrtoint ptr %association_id.i22 to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %association_id.i22, align 32
  %association_id122.i = getelementptr i8, ptr %work, i32 -432
  %114 = ptrtoint ptr %association_id122.i to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %113, ptr %association_id122.i, align 8
  %connection_id.i = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 9, i32 3
  %115 = ptrtoint ptr %connection_id.i to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %connection_id.i, align 16
  %connection_id124.i = getelementptr inbounds %struct.nvme_fc_queue, ptr %38, i32 0, i32 8
  %117 = ptrtoint ptr %connection_id124.i to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %116, ptr %connection_id124.i, align 8
  %flags125.i = getelementptr inbounds %struct.nvme_fc_queue, ptr %38, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags125.i) #17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call116.i21) #17
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #17
  %call24.i = tail call i32 @nvmf_connect_admin_queue(ptr noundef %ctrl1.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %if.end22.i.out_disconnect_admin_queue.i_crit_edge

if.end22.i.out_disconnect_admin_queue.i_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_disconnect_admin_queue.i

if.end27.i:                                       ; preds = %if.end22.i
  %118 = ptrtoint ptr %queues.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %queues.i, align 4
  %flags30.i = getelementptr inbounds %struct.nvme_fc_queue, ptr %119, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags30.i) #17
  %call32.i = tail call i32 @nvme_enable_ctrl(ptr noundef %ctrl1.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %lor.lhs.false.i, label %if.end27.i.out_disconnect_admin_queue.i_crit_edge

if.end27.i.out_disconnect_admin_queue.i_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_disconnect_admin_queue.i

lor.lhs.false.i:                                  ; preds = %if.end27.i
  %120 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %flags.i.i, align 4
  %122 = and i32 %121, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool36.not.i = icmp eq i32 %122, 0
  br i1 %tobool36.not.i, label %if.end38.i, label %lor.lhs.false.i.out_disconnect_admin_queue.i_crit_edge

lor.lhs.false.i.out_disconnect_admin_queue.i_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_disconnect_admin_queue.i

if.end38.i:                                       ; preds = %lor.lhs.false.i
  %123 = ptrtoint ptr %lport.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %lport.i, align 4
  %ops.i = getelementptr inbounds %struct.nvme_fc_lport, ptr %124, i32 0, i32 5
  %125 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ops.i, align 8
  %max_sgl_segments.i = getelementptr inbounds %struct.nvme_fc_port_template, ptr %126, i32 0, i32 11
  %127 = ptrtoint ptr %max_sgl_segments.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %max_sgl_segments.i, align 4
  %conv.i = zext i16 %128 to i32
  %max_segments.i = getelementptr i8, ptr %work, i32 2012
  %129 = ptrtoint ptr %max_segments.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %conv.i, ptr %max_segments.i, align 4
  %shl.i = shl nuw nsw i32 %conv.i, 3
  %max_hw_sectors.i = getelementptr i8, ptr %work, i32 2008
  %130 = ptrtoint ptr %max_hw_sectors.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %shl.i, ptr %max_hw_sectors.i, align 8
  tail call void @nvme_start_admin_queue(ptr noundef %ctrl1.i) #17
  %call46.i = tail call i32 @nvme_init_ctrl_finish(ptr noundef %ctrl1.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %lor.lhs.false48.i, label %if.end38.i.out_disconnect_admin_queue.i_crit_edge

if.end38.i.out_disconnect_admin_queue.i_crit_edge: ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_disconnect_admin_queue.i

lor.lhs.false48.i:                                ; preds = %if.end38.i
  %131 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile i32, ptr %flags.i.i, align 4
  %133 = and i32 %132, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool51.not.i = icmp eq i32 %133, 0
  br i1 %tobool51.not.i, label %if.end53.i, label %lor.lhs.false48.i.out_disconnect_admin_queue.i_crit_edge

lor.lhs.false48.i.out_disconnect_admin_queue.i_crit_edge: ; preds = %lor.lhs.false48.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_disconnect_admin_queue.i

if.end53.i:                                       ; preds = %lor.lhs.false48.i
  %icdoff.i = getelementptr i8, ptr %work, i32 3836
  %134 = ptrtoint ptr %icdoff.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %icdoff.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %135)
  %tobool55.not.i = icmp eq i16 %135, 0
  br i1 %tobool55.not.i, label %if.end65.i, label %do.end59.i

do.end59.i:                                       ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #19
  %136 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %device.i, align 8
  %conv64.i = zext i16 %135 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %137, ptr noundef nonnull @.str.157, i32 noundef %conv64.i) #21
  br label %out_disconnect_admin_queue.i

if.end65.i:                                       ; preds = %if.end53.i
  %sgls.i.i = getelementptr i8, ptr %work, i32 2068
  %138 = ptrtoint ptr %sgls.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %sgls.i.i, align 4
  %and.i.i = and i32 %139, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %do.end71.i, label %if.end74.i

do.end71.i:                                       ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #19
  %140 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %device.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %141, ptr noundef nonnull @.str.160) #21
  br label %out_disconnect_admin_queue.i

if.end74.i:                                       ; preds = %if.end65.i
  %queue_size.i = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %1, i32 0, i32 7
  %142 = ptrtoint ptr %queue_size.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %queue_size.i, align 4
  %maxcmd.i = getelementptr i8, ptr %work, i32 3838
  %144 = ptrtoint ptr %maxcmd.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %maxcmd.i, align 2
  %conv76.i = zext i16 %145 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %143, i32 %conv76.i)
  %cmp77.i = icmp ugt i32 %143, %conv76.i
  br i1 %cmp77.i, label %do.end82.i, label %if.end74.i.if.end93.i_crit_edge

if.end74.i.if.end93.i_crit_edge:                  ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end93.i

do.end82.i:                                       ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #19
  %146 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %device.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %147, ptr noundef nonnull @.str.163, i32 noundef %143, i32 noundef %conv76.i) #21
  %148 = ptrtoint ptr %maxcmd.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %maxcmd.i, align 2
  %conv91.i = zext i16 %149 to i32
  %150 = ptrtoint ptr %queue_size.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %conv91.i, ptr %queue_size.i, align 4
  br label %if.end93.i

if.end93.i:                                       ; preds = %do.end82.i, %if.end74.i.if.end93.i_crit_edge
  %151 = ptrtoint ptr %queue_size.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %queue_size.i, align 4
  %sqsize.i = getelementptr i8, ptr %work, i32 2050
  %153 = ptrtoint ptr %sqsize.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %sqsize.i, align 2
  %conv96.i = zext i16 %154 to i32
  %add.i = add nuw nsw i32 %conv96.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %152, i32 %add.i)
  %cmp97.i = icmp ugt i32 %152, %add.i
  br i1 %cmp97.i, label %do.end102.i, label %if.end93.i.if.end115.i_crit_edge

if.end93.i.if.end115.i_crit_edge:                 ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end115.i

do.end102.i:                                      ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #19
  %155 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %device.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %156, ptr noundef nonnull @.str.166, i32 noundef %152, i32 noundef %add.i) #21
  %157 = ptrtoint ptr %sqsize.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %sqsize.i, align 2
  %conv112.i = zext i16 %158 to i32
  %add113.i = add nuw nsw i32 %conv112.i, 1
  %159 = ptrtoint ptr %queue_size.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %add113.i, ptr %queue_size.i, align 4
  br label %if.end115.i

if.end115.i:                                      ; preds = %do.end102.i, %if.end93.i.if.end115.i_crit_edge
  %call116.i = tail call fastcc i32 @nvme_fc_init_aen_ops(ptr noundef %add.ptr) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116.i)
  %tobool117.not.i = icmp eq i32 %call116.i, 0
  br i1 %tobool117.not.i, label %if.end119.i, label %if.end115.i.out_term_aen_ops.i_crit_edge

if.end115.i.out_term_aen_ops.i_crit_edge:         ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_term_aen_ops.i

if.end119.i:                                      ; preds = %if.end115.i
  %queue_count.i = getelementptr i8, ptr %work, i32 1996
  %160 = ptrtoint ptr %queue_count.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %queue_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %161)
  %cmp121.i = icmp ugt i32 %161, 1
  br i1 %cmp121.i, label %if.then123.i, label %if.end119.i.lor.lhs.false131.i_crit_edge

if.end119.i.lor.lhs.false131.i_crit_edge:         ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false131.i

if.then123.i:                                     ; preds = %if.end119.i
  %ioq_live.i = getelementptr i8, ptr %work, i32 -440
  %162 = ptrtoint ptr %ioq_live.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %ioq_live.i, align 8, !range !499
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool124.not.i = icmp eq i8 %163, 0
  br i1 %tobool124.not.i, label %if.then125.i, label %if.else.i

if.then125.i:                                     ; preds = %if.then123.i
  call void @__sanitizer_cov_trace_pc() #19
  %call126.i = tail call fastcc i32 @nvme_fc_create_io_queues(ptr noundef %add.ptr) #17
  br label %if.end129.i

if.else.i:                                        ; preds = %if.then123.i
  call void @__sanitizer_cov_trace_pc() #19
  %call127.i = tail call fastcc i32 @nvme_fc_recreate_io_queues(ptr noundef %add.ptr) #17
  br label %if.end129.i

if.end129.i:                                      ; preds = %if.else.i, %if.then125.i
  %ret.0.i = phi i32 [ %call127.i, %if.else.i ], [ %call126.i, %if.then125.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool130.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool130.not.i, label %if.end129.i.lor.lhs.false131.i_crit_edge, label %if.end129.i.out_term_aen_ops.i_crit_edge

if.end129.i.out_term_aen_ops.i_crit_edge:         ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_term_aen_ops.i

if.end129.i.lor.lhs.false131.i_crit_edge:         ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false131.i

lor.lhs.false131.i:                               ; preds = %if.end129.i.lor.lhs.false131.i_crit_edge, %if.end119.i.lor.lhs.false131.i_crit_edge
  %164 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load volatile i32, ptr %flags.i.i, align 4
  %166 = and i32 %165, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool134.not.i = icmp eq i32 %166, 0
  br i1 %tobool134.not.i, label %if.end136.i, label %lor.lhs.false131.i.out_term_aen_ops.i_crit_edge

lor.lhs.false131.i.out_term_aen_ops.i_crit_edge:  ; preds = %lor.lhs.false131.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_term_aen_ops.i

if.end136.i:                                      ; preds = %lor.lhs.false131.i
  %call138.i = tail call zeroext i1 @nvme_change_ctrl_state(ptr noundef %ctrl1.i, i32 noundef 1) #17
  %167 = ptrtoint ptr %nr_reconnects.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 0, ptr %nr_reconnects.i, align 8
  br i1 %call138.i, label %if.then142.i, label %if.end136.i.do.end_crit_edge

if.end136.i.do.end_crit_edge:                     ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.then142.i:                                     ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @nvme_start_ctrl(ptr noundef %ctrl1.i) #17
  br label %do.end

out_term_aen_ops.i:                               ; preds = %lor.lhs.false131.i.out_term_aen_ops.i_crit_edge, %if.end129.i.out_term_aen_ops.i_crit_edge, %if.end115.i.out_term_aen_ops.i_crit_edge
  %ret.1.i = phi i32 [ %call116.i, %if.end115.i.out_term_aen_ops.i_crit_edge ], [ %ret.0.i, %if.end129.i.out_term_aen_ops.i_crit_edge ], [ 0, %lor.lhs.false131.i.out_term_aen_ops.i_crit_edge ]
  tail call fastcc void @nvme_fc_term_aen_ops(ptr noundef %add.ptr) #17
  br label %out_disconnect_admin_queue.i

out_disconnect_admin_queue.i:                     ; preds = %out_term_aen_ops.i, %do.end71.i, %do.end59.i, %lor.lhs.false48.i.out_disconnect_admin_queue.i_crit_edge, %if.end38.i.out_disconnect_admin_queue.i_crit_edge, %lor.lhs.false.i.out_disconnect_admin_queue.i_crit_edge, %if.end27.i.out_disconnect_admin_queue.i_crit_edge, %if.end22.i.out_disconnect_admin_queue.i_crit_edge
  %ret.2.i = phi i32 [ %call24.i, %if.end22.i.out_disconnect_admin_queue.i_crit_edge ], [ %call32.i, %if.end27.i.out_disconnect_admin_queue.i_crit_edge ], [ 0, %lor.lhs.false.i.out_disconnect_admin_queue.i_crit_edge ], [ %call46.i, %if.end38.i.out_disconnect_admin_queue.i_crit_edge ], [ 0, %lor.lhs.false48.i.out_disconnect_admin_queue.i_crit_edge ], [ 16386, %do.end59.i ], [ %ret.1.i, %out_term_aen_ops.i ], [ 16386, %do.end71.i ]
  tail call fastcc void @nvme_fc_xmt_disconnect_assoc(ptr noundef %add.ptr) #17
  %call150.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #17
  %168 = ptrtoint ptr %association_id122.i to i32
  call void @__asan_store8_noabort(i32 %168)
  store i64 0, ptr %association_id122.i, align 8
  %rcv_disconn.i = getelementptr i8, ptr %work, i32 -424
  %169 = ptrtoint ptr %rcv_disconn.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %rcv_disconn.i, align 8
  store ptr null, ptr %rcv_disconn.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call150.i) #17
  %tobool157.not.i = icmp eq ptr %170, null
  br i1 %tobool157.not.i, label %out_disconnect_admin_queue.i.out_delete_hw_queue.i_crit_edge, label %if.then158.i

out_disconnect_admin_queue.i.out_delete_hw_queue.i_crit_edge: ; preds = %out_disconnect_admin_queue.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_delete_hw_queue.i

if.then158.i:                                     ; preds = %out_disconnect_admin_queue.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @nvme_fc_xmt_ls_rsp(ptr noundef nonnull %170) #17
  br label %out_delete_hw_queue.i

out_delete_hw_queue.i:                            ; preds = %if.then158.i, %out_disconnect_admin_queue.i.out_delete_hw_queue.i_crit_edge, %nvme_fc_connect_admin_queue.exit
  %ret.3.i = phi i32 [ %ret.114.i, %nvme_fc_connect_admin_queue.exit ], [ %ret.2.i, %if.then158.i ], [ %ret.2.i, %out_disconnect_admin_queue.i.out_delete_hw_queue.i_crit_edge ]
  %171 = ptrtoint ptr %queues.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %queues.i, align 4
  %173 = ptrtoint ptr %lport.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %lport.i, align 4
  %ops.i252.i = getelementptr inbounds %struct.nvme_fc_lport, ptr %174, i32 0, i32 5
  %175 = ptrtoint ptr %ops.i252.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %ops.i252.i, align 8
  %delete_queue.i.i = getelementptr inbounds %struct.nvme_fc_port_template, ptr %176, i32 0, i32 3
  %177 = ptrtoint ptr %delete_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %delete_queue.i.i, align 4
  %tobool.not.i253.i = icmp eq ptr %178, null
  br i1 %tobool.not.i253.i, label %out_delete_hw_queue.i.__nvme_fc_delete_hw_queue.exit.i_crit_edge, label %if.then.i255.i

out_delete_hw_queue.i.__nvme_fc_delete_hw_queue.exit.i_crit_edge: ; preds = %out_delete_hw_queue.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__nvme_fc_delete_hw_queue.exit.i

if.then.i255.i:                                   ; preds = %out_delete_hw_queue.i
  call void @__sanitizer_cov_trace_pc() #19
  %lldd_handle.i254.i = getelementptr inbounds %struct.nvme_fc_queue, ptr %172, i32 0, i32 3
  %179 = ptrtoint ptr %lldd_handle.i254.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %lldd_handle.i254.i, align 4
  tail call void %178(ptr noundef %174, i32 noundef 0, ptr noundef %180) #17
  br label %__nvme_fc_delete_hw_queue.exit.i

__nvme_fc_delete_hw_queue.exit.i:                 ; preds = %if.then.i255.i, %out_delete_hw_queue.i.__nvme_fc_delete_hw_queue.exit.i_crit_edge
  %lldd_handle5.i.i = getelementptr inbounds %struct.nvme_fc_queue, ptr %172, i32 0, i32 3
  %181 = ptrtoint ptr %lldd_handle5.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr null, ptr %lldd_handle5.i.i, align 4
  br label %out_free_queue.i

out_free_queue.i:                                 ; preds = %__nvme_fc_delete_hw_queue.exit.i, %__nvme_fc_create_hw_queue.exit.i.out_free_queue.i_crit_edge
  %ret.4.i = phi i32 [ %call.i249.i, %__nvme_fc_create_hw_queue.exit.i.out_free_queue.i_crit_edge ], [ %ret.3.i, %__nvme_fc_delete_hw_queue.exit.i ]
  %182 = ptrtoint ptr %queues.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %queues.i, align 4
  %flags.i257.i = getelementptr inbounds %struct.nvme_fc_queue, ptr %183, i32 0, i32 10
  %call.i258.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags.i257.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i258.i)
  %tobool.not.i259.i = icmp eq i32 %call.i258.i, 0
  br i1 %tobool.not.i259.i, label %out_free_queue.i.nvme_fc_create_association.exit_crit_edge, label %if.end.i261.i

out_free_queue.i.nvme_fc_create_association.exit_crit_edge: ; preds = %out_free_queue.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nvme_fc_create_association.exit

if.end.i261.i:                                    ; preds = %out_free_queue.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags.i257.i) #17
  %connection_id.i.i = getelementptr inbounds %struct.nvme_fc_queue, ptr %183, i32 0, i32 8
  %184 = ptrtoint ptr %connection_id.i.i to i32
  call void @__asan_store8_noabort(i32 %184)
  store i64 0, ptr %connection_id.i.i, align 8
  %csn.i.i = getelementptr inbounds %struct.nvme_fc_queue, ptr %183, i32 0, i32 9
  %call.i.i.i260.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %csn.i.i, i32 noundef 4) #17
  %185 = ptrtoint ptr %csn.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store volatile i32 0, ptr %csn.i.i, align 4
  br label %nvme_fc_create_association.exit

nvme_fc_create_association.exit:                  ; preds = %if.end.i261.i, %out_free_queue.i.nvme_fc_create_association.exit_crit_edge
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i.i) #17
  tail call fastcc void @nvme_fc_ctlr_inactive_on_rport(ptr noundef %add.ptr) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.4.i)
  %tobool.not = icmp eq i32 %ret.4.i, 0
  br i1 %tobool.not, label %nvme_fc_create_association.exit.do.end_crit_edge, label %nvme_fc_create_association.exit.if.then_crit_edge

nvme_fc_create_association.exit.if.then_crit_edge: ; preds = %nvme_fc_create_association.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

nvme_fc_create_association.exit.do.end_crit_edge: ; preds = %nvme_fc_create_association.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.then:                                          ; preds = %nvme_fc_create_association.exit.if.then_crit_edge, %if.end.i.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i31 = phi i32 [ %ret.4.i, %nvme_fc_create_association.exit.if.then_crit_edge ], [ -76, %if.end.i.if.then_crit_edge ], [ -19, %entry.if.then_crit_edge ]
  tail call fastcc void @nvme_fc_reconnect_or_delete(ptr noundef %add.ptr, i32 noundef %retval.0.i31)
  br label %if.end

do.end:                                           ; preds = %nvme_fc_create_association.exit.do.end_crit_edge, %if.then142.i, %if.end136.i.do.end_crit_edge
  %186 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %device.i, align 8
  %188 = ptrtoint ptr %cnum.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %cnum.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %187, ptr noundef nonnull @.str.152, i32 noundef %189) #21
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_fc_ctrl_ioerr_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr i8, ptr %work, i32 480
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.234)
  switch i32 %1, label %entry.nvme_fc_error_recovery.exit_crit_edge [
    i32 3, label %if.then.i
    i32 1, label %do.end.i
  ]

entry.nvme_fc_error_recovery.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %nvme_fc_error_recovery.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr = getelementptr i8, ptr %work, i32 -460
  tail call fastcc void @__nvme_fc_abort_outstanding_ios(ptr noundef %add.ptr, i1 noundef zeroext true) #17
  %flags.i = getelementptr i8, ptr %work, i32 148
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags.i) #17
  br label %nvme_fc_error_recovery.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %ctrl1.i = getelementptr i8, ptr %work, i32 476
  %device.i = getelementptr i8, ptr %work, i32 1692
  %3 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device.i, align 8
  %cnum.i = getelementptr i8, ptr %work, i32 -400
  %5 = ptrtoint ptr %cnum.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cnum.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.82, i32 noundef %6, ptr noundef nonnull @.str.212) #21
  %7 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device.i, align 8
  %9 = ptrtoint ptr %cnum.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cnum.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.85, i32 noundef %10) #21
  %call.i = tail call i32 @nvme_reset_ctrl(ptr noundef %ctrl1.i) #17
  br label %nvme_fc_error_recovery.exit

nvme_fc_error_recovery.exit:                      ; preds = %do.end.i, %if.then.i, %entry.nvme_fc_error_recovery.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_alloc_tag_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blk_mq_init_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_init_ctrl(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvme_change_ctrl_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_uninit_ctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_stop_ctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvme_fc_delete_association(ptr noundef %ctrl) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 15
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup62_crit_edge, label %do.body2

entry.cleanup62_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup62

do.body2:                                         ; preds = %entry
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctrl) #17
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags1) #17
  %iocnt = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 16
  %0 = ptrtoint ptr %iocnt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %iocnt, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctrl, i32 noundef %call4) #17
  tail call fastcc void @__nvme_fc_abort_outstanding_ios(ptr noundef %ctrl, i1 noundef zeroext false)
  %flags.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 18, i32 0, i32 6
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body2.nvme_fc_abort_aen_ops.exit_crit_edge, label %if.end.i

do.body2.nvme_fc_abort_aen_ops.exit_crit_edge:    ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #19
  br label %nvme_fc_abort_aen_ops.exit

if.end.i:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #19
  %aen_ops.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 18
  %call.i = tail call fastcc i32 @__nvme_fc_abort_op(ptr noundef %ctrl, ptr noundef %aen_ops.i) #17
  br label %nvme_fc_abort_aen_ops.exit

nvme_fc_abort_aen_ops.exit:                       ; preds = %if.end.i, %do.body2.nvme_fc_abort_aen_ops.exit_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef %ctrl) #17
  %3 = ptrtoint ptr %iocnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iocnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp12 = icmp eq i32 %4, 0
  br i1 %cmp12, label %nvme_fc_abort_aen_ops.exit.do.end27_crit_edge, label %if.end15

nvme_fc_abort_aen_ops.exit.do.end27_crit_edge:    ; preds = %nvme_fc_abort_aen_ops.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end27

if.end15:                                         ; preds = %nvme_fc_abort_aen_ops.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #17
  %5 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #17
  %ioabort_wait = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 17
  %call16119 = call i32 @prepare_to_wait_event(ptr noundef %ioabort_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #17
  %6 = ptrtoint ptr %iocnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iocnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp18120 = icmp eq i32 %7, 0
  br i1 %cmp18120, label %if.end15.for.end_crit_edge, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  br label %cleanup

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end15.cleanup_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %ctrl) #17
  call void @schedule() #17
  call void @_raw_spin_lock_irq(ptr noundef %ctrl) #17
  %call16 = call i32 @prepare_to_wait_event(ptr noundef %ioabort_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #17
  %8 = ptrtoint ptr %iocnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iocnt, align 4
  %cmp18 = icmp eq i32 %9, 0
  br i1 %cmp18, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end15.for.end_crit_edge
  call void @finish_wait(ptr noundef %ioabort_wait, ptr noundef nonnull %__wq_entry) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #17
  br label %do.end27

do.end27:                                         ; preds = %for.end, %nvme_fc_abort_aen_ops.exit.do.end27_crit_edge
  call void @_clear_bit(i32 noundef 2, ptr noundef %flags1) #17
  call void @_raw_spin_unlock_irq(ptr noundef %ctrl) #17
  call fastcc void @nvme_fc_term_aen_ops(ptr noundef %ctrl)
  %association_id = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 7
  %10 = ptrtoint ptr %association_id to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %association_id, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool30.not = icmp eq i64 %11, 0
  br i1 %tobool30.not, label %do.end27.do.body34_crit_edge, label %if.then31

do.end27.do.body34_crit_edge:                     ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body34

if.then31:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @nvme_fc_xmt_disconnect_assoc(ptr noundef %ctrl)
  br label %do.body34

do.body34:                                        ; preds = %if.then31, %do.end27.do.body34_crit_edge
  %call42 = call i32 @_raw_spin_lock_irqsave(ptr noundef %ctrl) #17
  %12 = ptrtoint ptr %association_id to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %association_id, align 8
  %rcv_disconn = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 8
  %13 = ptrtoint ptr %rcv_disconn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rcv_disconn, align 8
  store ptr null, ptr %rcv_disconn, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %ctrl, i32 noundef %call42) #17
  %tobool50.not = icmp eq ptr %14, null
  br i1 %tobool50.not, label %do.body34.if.end52_crit_edge, label %if.then51

do.body34.if.end52_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end52

if.then51:                                        ; preds = %do.body34
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %lport2.i = getelementptr inbounds %struct.nvme_fc_rport, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %lport2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lport2.i, align 4
  %rqstbuf.i = getelementptr inbounds %struct.nvmefc_ls_rcv_op, ptr %14, i32 0, i32 2
  %19 = ptrtoint ptr %rqstbuf.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rqstbuf.i, align 8
  %dev.i = getelementptr inbounds %struct.nvme_fc_lport, ptr %18, i32 0, i32 4
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %if.then51.fc_dma_sync_single_for_device.exit.i_crit_edge, label %if.then.i.i

if.then51.fc_dma_sync_single_for_device.exit.i_crit_edge: ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #19
  br label %fc_dma_sync_single_for_device.exit.i

if.then.i.i:                                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #19
  %rspdma.i = getelementptr inbounds %struct.nvmefc_ls_rcv_op, ptr %14, i32 0, i32 6
  %23 = ptrtoint ptr %rspdma.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rspdma.i, align 4
  call void @dma_sync_single_for_device(ptr noundef nonnull %22, i32 noundef %24, i32 noundef 128, i32 noundef 1) #17
  br label %fc_dma_sync_single_for_device.exit.i

fc_dma_sync_single_for_device.exit.i:             ; preds = %if.then.i.i, %if.then51.fc_dma_sync_single_for_device.exit.i_crit_edge
  %ops.i = getelementptr inbounds %struct.nvme_fc_lport, ptr %18, i32 0, i32 5
  %25 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i, align 8
  %xmt_ls_rsp.i = getelementptr inbounds %struct.nvme_fc_port_template, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %xmt_ls_rsp.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %xmt_ls_rsp.i, align 8
  %lsrsp.i = getelementptr inbounds %struct.nvmefc_ls_rcv_op, ptr %14, i32 0, i32 1
  %29 = ptrtoint ptr %lsrsp.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lsrsp.i, align 4
  %call.i100 = call i32 %28(ptr noundef %18, ptr noundef %16, ptr noundef %30) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100)
  %tobool.not.i101 = icmp eq i32 %call.i100, 0
  br i1 %tobool.not.i101, label %fc_dma_sync_single_for_device.exit.i.if.end52_crit_edge, label %do.end.i

fc_dma_sync_single_for_device.exit.i.if.end52_crit_edge: ; preds = %fc_dma_sync_single_for_device.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end52

do.end.i:                                         ; preds = %fc_dma_sync_single_for_device.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  %33 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %20, align 1
  %conv.i = zext i8 %34 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.87, i32 noundef %conv.i, i32 noundef %call.i100) #21
  %35 = ptrtoint ptr %lsrsp.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lsrsp.i, align 4
  call void @nvme_fc_xmt_ls_rsp_done(ptr noundef %36) #17
  br label %if.end52

if.end52:                                         ; preds = %do.end.i, %fc_dma_sync_single_for_device.exit.i.if.end52_crit_edge, %do.body34.if.end52_crit_edge
  %ctrl53 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 19
  %tagset = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 19, i32 12
  %37 = ptrtoint ptr %tagset to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tagset, align 8
  %tobool54.not = icmp eq ptr %38, null
  br i1 %tobool54.not, label %if.end52.if.end56_crit_edge, label %if.then55

if.end52.if.end56_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end56

if.then55:                                        ; preds = %if.end52
  %queue_count.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 19, i32 30
  %39 = ptrtoint ptr %queue_count.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %queue_count.i, align 4
  %sub.i = add i32 %40, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp11.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp11.i, label %for.body.lr.ph.i, label %if.then55.nvme_fc_delete_hw_io_queues.exit_crit_edge

if.then55.nvme_fc_delete_hw_io_queues.exit_crit_edge: ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #19
  br label %nvme_fc_delete_hw_io_queues.exit

for.body.lr.ph.i:                                 ; preds = %if.then55
  %queues.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 1
  %41 = ptrtoint ptr %queues.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %queues.i, align 4
  %arrayidx.i = getelementptr %struct.nvme_fc_queue, ptr %42, i32 %sub.i
  %lport.i.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %__nvme_fc_delete_hw_queue.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.013.i = phi i32 [ %sub.i, %for.body.lr.ph.i ], [ %dec.i, %__nvme_fc_delete_hw_queue.exit.i.for.body.i_crit_edge ]
  %queue.012.i = phi ptr [ %arrayidx.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %__nvme_fc_delete_hw_queue.exit.i.for.body.i_crit_edge ]
  %43 = ptrtoint ptr %lport.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %lport.i.i, align 4
  %ops.i.i = getelementptr inbounds %struct.nvme_fc_lport, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops.i.i, align 8
  %delete_queue.i.i = getelementptr inbounds %struct.nvme_fc_port_template, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %delete_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %delete_queue.i.i, align 4
  %tobool.not.i.i102 = icmp eq ptr %48, null
  br i1 %tobool.not.i.i102, label %for.body.i.__nvme_fc_delete_hw_queue.exit.i_crit_edge, label %if.then.i.i103

for.body.i.__nvme_fc_delete_hw_queue.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__nvme_fc_delete_hw_queue.exit.i

if.then.i.i103:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %lldd_handle.i.i = getelementptr inbounds %struct.nvme_fc_queue, ptr %queue.012.i, i32 0, i32 3
  %49 = ptrtoint ptr %lldd_handle.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %lldd_handle.i.i, align 4
  call void %48(ptr noundef %44, i32 noundef %i.013.i, ptr noundef %50) #17
  br label %__nvme_fc_delete_hw_queue.exit.i

__nvme_fc_delete_hw_queue.exit.i:                 ; preds = %if.then.i.i103, %for.body.i.__nvme_fc_delete_hw_queue.exit.i_crit_edge
  %lldd_handle5.i.i = getelementptr inbounds %struct.nvme_fc_queue, ptr %queue.012.i, i32 0, i32 3
  %51 = ptrtoint ptr %lldd_handle5.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %lldd_handle5.i.i, align 4
  %dec.i = add nsw i32 %i.013.i, -1
  %incdec.ptr.i = getelementptr %struct.nvme_fc_queue, ptr %queue.012.i, i32 -1
  %cmp.i = icmp sgt i32 %i.013.i, 1
  br i1 %cmp.i, label %__nvme_fc_delete_hw_queue.exit.i.for.body.i_crit_edge, label %nvme_fc_delete_hw_io_queues.exitthread-pre-split

__nvme_fc_delete_hw_queue.exit.i.for.body.i_crit_edge: ; preds = %__nvme_fc_delete_hw_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

nvme_fc_delete_hw_io_queues.exitthread-pre-split: ; preds = %__nvme_fc_delete_hw_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %52 = ptrtoint ptr %queue_count.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pr = load i32, ptr %queue_count.i, align 4
  br label %nvme_fc_delete_hw_io_queues.exit

nvme_fc_delete_hw_io_queues.exit:                 ; preds = %nvme_fc_delete_hw_io_queues.exitthread-pre-split, %if.then55.nvme_fc_delete_hw_io_queues.exit_crit_edge
  %53 = phi i32 [ %.pr, %nvme_fc_delete_hw_io_queues.exitthread-pre-split ], [ %40, %if.then55.nvme_fc_delete_hw_io_queues.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp5.i = icmp ugt i32 %53, 1
  br i1 %cmp5.i, label %for.body.lr.ph.i106, label %nvme_fc_delete_hw_io_queues.exit.if.end56_crit_edge

nvme_fc_delete_hw_io_queues.exit.if.end56_crit_edge: ; preds = %nvme_fc_delete_hw_io_queues.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end56

for.body.lr.ph.i106:                              ; preds = %nvme_fc_delete_hw_io_queues.exit
  %queues.i105 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 1
  br label %for.body.i108

for.body.i108:                                    ; preds = %nvme_fc_free_queue.exit.i.for.body.i108_crit_edge, %for.body.lr.ph.i106
  %i.06.i = phi i32 [ 1, %for.body.lr.ph.i106 ], [ %inc.i, %nvme_fc_free_queue.exit.i.for.body.i108_crit_edge ]
  %54 = ptrtoint ptr %queues.i105 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %queues.i105, align 4
  %flags.i.i = getelementptr %struct.nvme_fc_queue, ptr %55, i32 %i.06.i, i32 10
  %call.i.i = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i107 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i107, label %for.body.i108.nvme_fc_free_queue.exit.i_crit_edge, label %if.end.i.i

for.body.i108.nvme_fc_free_queue.exit.i_crit_edge: ; preds = %for.body.i108
  call void @__sanitizer_cov_trace_pc() #19
  br label %nvme_fc_free_queue.exit.i

if.end.i.i:                                       ; preds = %for.body.i108
  call void @__sanitizer_cov_trace_pc() #19
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags.i.i) #17
  %connection_id.i.i = getelementptr %struct.nvme_fc_queue, ptr %55, i32 %i.06.i, i32 8
  %56 = ptrtoint ptr %connection_id.i.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 0, ptr %connection_id.i.i, align 8
  %csn.i.i = getelementptr %struct.nvme_fc_queue, ptr %55, i32 %i.06.i, i32 9
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %csn.i.i, i32 noundef 4) #17
  %57 = ptrtoint ptr %csn.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile i32 0, ptr %csn.i.i, align 4
  br label %nvme_fc_free_queue.exit.i

nvme_fc_free_queue.exit.i:                        ; preds = %if.end.i.i, %for.body.i108.nvme_fc_free_queue.exit.i_crit_edge
  %inc.i = add nuw i32 %i.06.i, 1
  %58 = ptrtoint ptr %queue_count.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %queue_count.i, align 4
  %cmp.i109 = icmp ult i32 %inc.i, %59
  br i1 %cmp.i109, label %nvme_fc_free_queue.exit.i.for.body.i108_crit_edge, label %nvme_fc_free_queue.exit.i.if.end56_crit_edge

nvme_fc_free_queue.exit.i.if.end56_crit_edge:     ; preds = %nvme_fc_free_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end56

nvme_fc_free_queue.exit.i.for.body.i108_crit_edge: ; preds = %nvme_fc_free_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i108

if.end56:                                         ; preds = %nvme_fc_free_queue.exit.i.if.end56_crit_edge, %nvme_fc_delete_hw_io_queues.exit.if.end56_crit_edge, %if.end52.if.end56_crit_edge
  %queues = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 1
  %60 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %queues, align 4
  %lport.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 3
  %62 = ptrtoint ptr %lport.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %lport.i, align 4
  %ops.i110 = getelementptr inbounds %struct.nvme_fc_lport, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %ops.i110 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops.i110, align 8
  %delete_queue.i = getelementptr inbounds %struct.nvme_fc_port_template, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %delete_queue.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %delete_queue.i, align 4
  %tobool.not.i111 = icmp eq ptr %67, null
  br i1 %tobool.not.i111, label %if.end56.__nvme_fc_delete_hw_queue.exit_crit_edge, label %if.then.i

if.end56.__nvme_fc_delete_hw_queue.exit_crit_edge: ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #19
  br label %__nvme_fc_delete_hw_queue.exit

if.then.i:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #19
  %lldd_handle.i = getelementptr inbounds %struct.nvme_fc_queue, ptr %61, i32 0, i32 3
  %68 = ptrtoint ptr %lldd_handle.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %lldd_handle.i, align 4
  call void %67(ptr noundef %63, i32 noundef 0, ptr noundef %69) #17
  br label %__nvme_fc_delete_hw_queue.exit

__nvme_fc_delete_hw_queue.exit:                   ; preds = %if.then.i, %if.end56.__nvme_fc_delete_hw_queue.exit_crit_edge
  %lldd_handle5.i = getelementptr inbounds %struct.nvme_fc_queue, ptr %61, i32 0, i32 3
  %70 = ptrtoint ptr %lldd_handle5.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %lldd_handle5.i, align 4
  %71 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %queues, align 4
  %flags.i113 = getelementptr inbounds %struct.nvme_fc_queue, ptr %72, i32 0, i32 10
  %call.i114 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags.i113) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %tobool.not.i115 = icmp eq i32 %call.i114, 0
  br i1 %tobool.not.i115, label %__nvme_fc_delete_hw_queue.exit.nvme_fc_free_queue.exit_crit_edge, label %if.end.i116

__nvme_fc_delete_hw_queue.exit.nvme_fc_free_queue.exit_crit_edge: ; preds = %__nvme_fc_delete_hw_queue.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %nvme_fc_free_queue.exit

if.end.i116:                                      ; preds = %__nvme_fc_delete_hw_queue.exit
  call void @__sanitizer_cov_trace_pc() #19
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags.i113) #17
  %connection_id.i = getelementptr inbounds %struct.nvme_fc_queue, ptr %72, i32 0, i32 8
  %73 = ptrtoint ptr %connection_id.i to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 0, ptr %connection_id.i, align 8
  %csn.i = getelementptr inbounds %struct.nvme_fc_queue, ptr %72, i32 0, i32 9
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %csn.i, i32 noundef 4) #17
  %74 = ptrtoint ptr %csn.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile i32 0, ptr %csn.i, align 4
  br label %nvme_fc_free_queue.exit

nvme_fc_free_queue.exit:                          ; preds = %if.end.i116, %__nvme_fc_delete_hw_queue.exit.nvme_fc_free_queue.exit_crit_edge
  call void @nvme_start_admin_queue(ptr noundef %ctrl53) #17
  call void @nvme_start_queues(ptr noundef %ctrl53) #17
  call fastcc void @nvme_fc_ctlr_inactive_on_rport(ptr noundef %ctrl)
  br label %cleanup62

cleanup62:                                        ; preds = %nvme_fc_free_queue.exit, %entry.cleanup62_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvme_fc_reconnect_or_delete(ptr noundef %ctrl, i32 noundef %status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %rport1 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 4
  %0 = ptrtoint ptr %rport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rport1, align 8
  %ctrl2 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 19
  %opts = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 19, i32 93
  %2 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %opts, align 8
  %reconnect_delay = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %reconnect_delay to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reconnect_delay, align 4
  %mul = mul i32 %5, 100
  %state = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 19, i32 1
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp.not = icmp eq i32 %7, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %port_state = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %port_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp4 = icmp eq i32 %9, 2
  br i1 %cmp4, label %do.end, label %if.else

do.end:                                           ; preds = %if.end
  %device = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 19, i32 17
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device, align 8
  %cnum = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 5
  %12 = ptrtoint ptr %cnum to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cnum, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.138, i32 noundef %13, i32 noundef %status) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %status)
  %cmp7 = icmp slt i32 %status, 1
  %and = and i32 %status, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = or i1 %cmp7, %tobool.not
  br i1 %or.cond, label %do.end.land.lhs.true15_crit_edge, label %do.end.if.else37_crit_edge

do.end.if.else37_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else37

do.end.land.lhs.true15_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true15

if.else:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %dev_loss_end = getelementptr inbounds %struct.nvme_fc_rport, ptr %1, i32 0, i32 11
  %15 = ptrtoint ptr %dev_loss_end to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dev_loss_end, align 4
  %sub = sub i32 %14, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp10 = icmp slt i32 %sub, 0
  br i1 %cmp10, label %if.else.land.lhs.true15_crit_edge, label %if.else.if.else37_crit_edge

if.else.if.else37_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else37

if.else.land.lhs.true15_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true15

land.lhs.true15:                                  ; preds = %if.else.land.lhs.true15_crit_edge, %do.end.land.lhs.true15_crit_edge
  %call = tail call zeroext i1 @nvmf_should_reconnect(ptr noundef %ctrl2) #17
  br i1 %call, label %if.then17, label %land.lhs.true15.if.else37_crit_edge

land.lhs.true15.if.else37_crit_edge:              ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else37

if.then17:                                        ; preds = %land.lhs.true15
  %17 = ptrtoint ptr %port_state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp19 = icmp eq i32 %18, 2
  br i1 %cmp19, label %do.end23, label %if.else27

do.end23:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #19
  %device25 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 19, i32 17
  %19 = ptrtoint ptr %device25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device25, align 8
  %cnum26 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 5
  %21 = ptrtoint ptr %cnum26 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cnum26, align 4
  %div = udiv i32 %mul, 100
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.141, i32 noundef %22, i32 noundef %div) #21
  br label %if.end35

if.else27:                                        ; preds = %if.then17
  %dev_loss_end28 = getelementptr inbounds %struct.nvme_fc_rport, ptr %1, i32 0, i32 11
  %23 = ptrtoint ptr %dev_loss_end28 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dev_loss_end28, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %26 = add i32 %mul, %25
  %sub29 = sub i32 %24, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub29)
  %cmp30 = icmp slt i32 %sub29, 0
  br i1 %cmp30, label %if.then31, label %if.else27.if.end35_crit_edge

if.else27.if.end35_crit_edge:                     ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end35

if.then31:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %sub33 = sub i32 %24, %27
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %if.else27.if.end35_crit_edge, %do.end23
  %recon_delay.0 = phi i32 [ %mul, %do.end23 ], [ %sub33, %if.then31 ], [ %mul, %if.else27.if.end35_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nvme_wq to i32))
  %28 = load ptr, ptr @nvme_wq, align 4
  %connect_work = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 13
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %28, ptr noundef %connect_work, i32 noundef %recon_delay.0) #17
  br label %cleanup

if.else37:                                        ; preds = %land.lhs.true15.if.else37_crit_edge, %if.else.if.else37_crit_edge, %do.end.if.else37_crit_edge
  %29 = ptrtoint ptr %port_state to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp39 = icmp eq i32 %30, 2
  br i1 %cmp39, label %if.then40, label %do.end64

if.then40:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %status)
  %cmp41 = icmp slt i32 %status, 1
  %and43 = and i32 %status, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  %or.cond141 = or i1 %cmp41, %tobool44.not
  %device57 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 19, i32 17
  %31 = ptrtoint ptr %device57 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %device57, align 8
  %cnum58 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 5
  %33 = ptrtoint ptr %cnum58 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cnum58, align 4
  br i1 %or.cond141, label %do.end55, label %do.end48

do.end48:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.144, i32 noundef %34) #21
  br label %if.end75

do.end55:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #19
  %nr_reconnects = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 19, i32 91
  %35 = ptrtoint ptr %nr_reconnects to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nr_reconnects, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.147, i32 noundef %34, i32 noundef %36) #21
  br label %if.end75

do.end64:                                         ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #19
  %device66 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 19, i32 17
  %37 = ptrtoint ptr %device66 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %device66, align 8
  %cnum67 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 5
  %39 = ptrtoint ptr %cnum67 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cnum67, align 4
  %dev_loss_tmo = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %1, i32 0, i32 6
  %41 = ptrtoint ptr %dev_loss_tmo to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dev_loss_tmo, align 8
  %43 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %opts, align 8
  %max_reconnects = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %44, i32 0, i32 14
  %45 = ptrtoint ptr %max_reconnects to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %max_reconnects, align 4
  %reconnect_delay72 = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %44, i32 0, i32 9
  %47 = ptrtoint ptr %reconnect_delay72 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %reconnect_delay72, align 4
  %mul73 = mul i32 %48, %46
  %49 = tail call i32 @llvm.smin.i32(i32 %42, i32 %mul73)
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.150, i32 noundef %40, i32 noundef %49) #21
  br label %if.end75

if.end75:                                         ; preds = %do.end64, %do.end55, %do.end48
  %call77 = tail call i32 @nvme_delete_ctrl(ptr noundef %ctrl2) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end75.cleanup_crit_edge, label %do.end90, !prof !496

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end90:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 3346, i32 noundef 9, ptr noundef null) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end90, %if.end75.cleanup_crit_edge, %if.end35, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvme_fc_term_aen_ops(ptr noundef %ctrl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %async_event_work = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 19, i32 66
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %async_event_work) #17
  %lport.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 3
  %0 = ptrtoint ptr %lport.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lport.i, align 4
  %dev.i = getelementptr inbounds %struct.nvme_fc_lport, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %entry.fc_dma_unmap_single.exit.i_crit_edge, label %if.then.i.i

entry.fc_dma_unmap_single.exit.i_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %fc_dma_unmap_single.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %rspdma.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 18, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %rspdma.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rspdma.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef nonnull %3, i32 noundef %5, i32 noundef 32, i32 noundef 2, i32 noundef 0) #17
  br label %fc_dma_unmap_single.exit.i

fc_dma_unmap_single.exit.i:                       ; preds = %if.then.i.i, %entry.fc_dma_unmap_single.exit.i_crit_edge
  %6 = ptrtoint ptr %lport.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lport.i, align 4
  %dev2.i = getelementptr inbounds %struct.nvme_fc_lport, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev2.i, align 4
  %tobool.not.i7.i = icmp eq ptr %9, null
  br i1 %tobool.not.i7.i, label %fc_dma_unmap_single.exit.i.__nvme_fc_exit_request.exit_crit_edge, label %if.then.i8.i

fc_dma_unmap_single.exit.i.__nvme_fc_exit_request.exit_crit_edge: ; preds = %fc_dma_unmap_single.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__nvme_fc_exit_request.exit

if.then.i8.i:                                     ; preds = %fc_dma_unmap_single.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %cmddma.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 18, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %cmddma.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cmddma.i, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef nonnull %9, i32 noundef %11, i32 noundef 96, i32 noundef 1, i32 noundef 0) #17
  br label %__nvme_fc_exit_request.exit

__nvme_fc_exit_request.exit:                      ; preds = %if.then.i8.i, %fc_dma_unmap_single.exit.i.__nvme_fc_exit_request.exit_crit_edge
  %state.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 18, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state.i, i32 noundef 4) #17
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 0, ptr %state.i, align 4
  %private = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 18, i32 0, i32 1, i32 13
  %13 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private, align 8
  tail call void @kfree(ptr noundef %14) #17
  %15 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %private, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvme_fc_xmt_disconnect_assoc(ptr nocapture noundef readonly %ctrl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %lport = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 3
  %0 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lport, align 4
  %ops = getelementptr inbounds %struct.nvme_fc_lport, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 8
  %lsrqst_priv_sz = getelementptr inbounds %struct.nvme_fc_port_template, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %lsrqst_priv_sz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lsrqst_priv_sz, align 8
  %add = add i32 %5, 200
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #20
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %device = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 19, i32 17
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 8
  %cnum = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 5
  %8 = ptrtoint ptr %cnum to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cnum, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.135, i32 noundef %9) #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i, i32 1
  %arrayidx2 = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i, i32 1, i32 3
  %10 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lport, align 4
  %ops4 = getelementptr inbounds %struct.nvme_fc_lport, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %ops4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops4, align 8
  %lsrqst_priv_sz5 = getelementptr inbounds %struct.nvme_fc_port_template, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %lsrqst_priv_sz5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lsrqst_priv_sz5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool6.not = icmp eq i32 %15, 0
  %arrayidx8 = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i, i32 1, i32 6, i32 1, i32 0, i32 2
  %spec.select = select i1 %tobool6.not, ptr null, ptr %arrayidx8
  %16 = getelementptr inbounds %struct.nvmefc_ls_req, ptr %call9.i.i, i32 0, i32 7
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %spec.select, ptr %16, align 4
  %association_id = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 7
  %18 = ptrtoint ptr %association_id to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %association_id, align 8
  %20 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx, ptr %call9.i.i, align 128
  %rqstlen.i = getelementptr inbounds %struct.nvmefc_ls_req, ptr %call9.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %rqstlen.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 48, ptr %rqstlen.i, align 8
  %rspaddr.i = getelementptr inbounds %struct.nvmefc_ls_req, ptr %call9.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %rspaddr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %arrayidx2, ptr %rspaddr.i, align 4
  %rsplen.i = getelementptr inbounds %struct.nvmefc_ls_req, ptr %call9.i.i, i32 0, i32 5
  %23 = ptrtoint ptr %rsplen.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 24, ptr %rsplen.i, align 4
  %timeout.i = getelementptr inbounds %struct.nvmefc_ls_req, ptr %call9.i.i, i32 0, i32 6
  %24 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 20, ptr %timeout.i, align 8
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 5, ptr %arrayidx, align 128
  %desc_list_len.i = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i, i32 1, i32 0, i32 1
  %26 = ptrtoint ptr %desc_list_len.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 40, ptr %desc_list_len.i, align 4
  %associd.i = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i, i32 1, i32 0, i32 2
  %27 = ptrtoint ptr %associd.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 7, ptr %associd.i, align 8
  %desc_len.i = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i, i32 1, i32 0, i32 3
  %28 = ptrtoint ptr %desc_len.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 8, ptr %desc_len.i, align 4
  %association_id3.i = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i, i32 1, i32 0, i32 4
  %29 = ptrtoint ptr %association_id3.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %19, ptr %association_id3.i, align 16
  %discon_cmd.i = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i, i32 1, i32 0, i32 6
  %30 = ptrtoint ptr %discon_cmd.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 5, ptr %discon_cmd.i, align 8
  %desc_len7.i = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i, i32 1, i32 0, i32 7
  %31 = ptrtoint ptr %desc_len7.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 16, ptr %desc_len7.i, align 4
  %rport = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 4
  %32 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rport, align 8
  %call.i = tail call fastcc i32 @__nvme_fc_send_ls_req(ptr noundef %33, ptr noundef nonnull %call9.i.i, ptr noundef nonnull @nvme_fc_disconnect_assoc_done) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  br i1 %tobool12.not, label %if.end.cleanup_crit_edge, label %if.then13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvme_fc_ctlr_inactive_on_rport(ptr nocapture noundef readonly %ctrl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %rport1 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 4
  %0 = ptrtoint ptr %rport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rport1, align 8
  %lport2 = getelementptr inbounds %struct.nvme_fc_rport, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %lport2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lport2, align 4
  %act_ctrl_cnt = getelementptr inbounds %struct.nvme_fc_rport, ptr %1, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %act_ctrl_cnt, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !509
  tail call void @llvm.prefetch.p0(ptr %act_ctrl_cnt, i32 1, i32 3, i32 1) #17
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %act_ctrl_cnt, ptr %act_ctrl_cnt, i32 1, ptr elementtype(i32) %act_ctrl_cnt) #17, !srcloc !510
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6

if.then:                                          ; preds = %entry
  %port_state = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %port_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %6)
  %cmp3 = icmp eq i32 %6, 10
  br i1 %cmp3, label %if.then4, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %ops = getelementptr inbounds %struct.nvme_fc_lport, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 8
  %remoteport_delete = getelementptr inbounds %struct.nvme_fc_port_template, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %remoteport_delete to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %remoteport_delete, align 4
  tail call void %10(ptr noundef %1) #17
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %11 = ptrtoint ptr %lport2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lport2, align 4
  %act_rport_cnt.i = getelementptr inbounds %struct.nvme_fc_lport, ptr %12, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %act_rport_cnt.i, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !509
  tail call void @llvm.prefetch.p0(ptr %act_rport_cnt.i, i32 1, i32 3, i32 1) #17
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %act_rport_cnt.i, ptr %act_rport_cnt.i, i32 1, ptr elementtype(i32) %act_rport_cnt.i) #17, !srcloc !510
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6

land.lhs.true.i:                                  ; preds = %if.end
  %port_state.i = getelementptr inbounds %struct.nvme_fc_local_port, ptr %12, i32 0, i32 6
  %14 = ptrtoint ptr %port_state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %15)
  %cmp2.i = icmp eq i32 %15, 10
  br i1 %cmp2.i, label %if.then.i, label %land.lhs.true.i.if.end6_crit_edge

land.lhs.true.i.if.end6_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  %ops.i = getelementptr inbounds %struct.nvme_fc_lport, ptr %12, i32 0, i32 5
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  tail call void %19(ptr noundef %12) #17
  br label %if.end6

if.end6:                                          ; preds = %if.then.i, %land.lhs.true.i.if.end6_crit_edge, %if.end.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_fc_disconnect_assoc_done(ptr noundef %lsreq, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__nvme_fc_finish_ls_req(ptr noundef %lsreq)
  tail call void @kfree(ptr noundef %lsreq) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__nvme_fc_send_ls_req(ptr noundef %rport, ptr noundef %lsop, ptr noundef %done) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %port_state = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %rport, i32 0, i32 8
  %0 = ptrtoint ptr %port_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @nvme_fc_rport_get(ptr noundef %rport)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %done3 = getelementptr inbounds %struct.nvmefc_ls_req, ptr %lsop, i32 0, i32 8
  %2 = ptrtoint ptr %done3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %done, ptr %done3, align 8
  %rport4 = getelementptr inbounds %struct.nvmefc_ls_req_op, ptr %lsop, i32 0, i32 1
  %3 = ptrtoint ptr %rport4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %rport, ptr %rport4, align 8
  %req_queued = getelementptr inbounds %struct.nvmefc_ls_req_op, ptr %lsop, i32 0, i32 8
  %4 = ptrtoint ptr %req_queued to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %req_queued, align 4
  %lsreq_list = getelementptr inbounds %struct.nvmefc_ls_req_op, ptr %lsop, i32 0, i32 7
  %5 = ptrtoint ptr %lsreq_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %lsreq_list, ptr %lsreq_list, align 4
  %prev.i = getelementptr inbounds %struct.nvmefc_ls_req_op, ptr %lsop, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %lsreq_list, ptr %prev.i, align 4
  %ls_done = getelementptr inbounds %struct.nvmefc_ls_req_op, ptr %lsop, i32 0, i32 6
  %7 = ptrtoint ptr %ls_done to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %ls_done, align 4
  %wait.i = getelementptr inbounds %struct.nvmefc_ls_req_op, ptr %lsop, i32 0, i32 6, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.137, ptr noundef nonnull @init_completion.__key) #17
  %dev = getelementptr inbounds %struct.nvme_fc_rport, ptr %rport, i32 0, i32 6
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %10 = ptrtoint ptr %lsop to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lsop, align 8
  %rqstlen = getelementptr inbounds %struct.nvmefc_ls_req, ptr %lsop, i32 0, i32 2
  %12 = ptrtoint ptr %rqstlen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rqstlen, align 8
  %rsplen = getelementptr inbounds %struct.nvmefc_ls_req, ptr %lsop, i32 0, i32 5
  %14 = ptrtoint ptr %rsplen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rsplen, align 4
  %add = add i32 %15, %13
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end2.fc_dma_map_single.exit_crit_edge, label %cond.true.i

if.end2.fc_dma_map_single.exit_crit_edge:         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #19
  br label %fc_dma_map_single.exit

cond.true.i:                                      ; preds = %if.end2
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %11) #17
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %cond.true.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.fc_dma_map_single.exit_crit_edge, label %if.then.i.i, !prof !496

land.rhs.i.i.fc_dma_map_single.exit_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fc_dma_map_single.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef nonnull %9) #17
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 3
  %16 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %9, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %19, %if.end.i.i.i ], [ %17, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.96, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.97, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #17
  br label %fc_dma_map_single.exit

if.end39.i.i:                                     ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @debug_dma_map_single(ptr noundef nonnull %9, ptr noundef %11, i32 noundef %add) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %20 = load ptr, ptr @mem_map, align 4
  %21 = ptrtoint ptr %11 to i32
  %sub.i.i = add i32 %21, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %20, i32 %shr.i.i
  %and.i.i = and i32 %21, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef nonnull %9, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %add, i32 noundef 0, i32 noundef 0) #17
  br label %fc_dma_map_single.exit

fc_dma_map_single.exit:                           ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.fc_dma_map_single.exit_crit_edge, %if.end2.fc_dma_map_single.exit_crit_edge
  %cond.i = phi i32 [ 0, %if.end2.fc_dma_map_single.exit_crit_edge ], [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.fc_dma_map_single.exit_crit_edge ]
  %rqstdma = getelementptr inbounds %struct.nvmefc_ls_req, ptr %lsop, i32 0, i32 1
  %22 = ptrtoint ptr %rqstdma to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cond.i, ptr %rqstdma, align 4
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 8
  %tobool.not.i93 = icmp eq ptr %24, null
  br i1 %tobool.not.i93, label %fc_dma_map_single.exit.if.end11_crit_edge, label %cond.true.i94

fc_dma_map_single.exit.if.end11_crit_edge:        ; preds = %fc_dma_map_single.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

cond.true.i94:                                    ; preds = %fc_dma_map_single.exit
  tail call void @debug_dma_mapping_error(ptr noundef nonnull %24, i32 noundef %cond.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond.i)
  %cmp.i.i = icmp eq i32 %cond.i, -1
  br i1 %cmp.i.i, label %cond.true.i94.out_putrport_crit_edge, label %cond.true.i94.if.end11_crit_edge

cond.true.i94.if.end11_crit_edge:                 ; preds = %cond.true.i94
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

cond.true.i94.out_putrport_crit_edge:             ; preds = %cond.true.i94
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_putrport

if.end11:                                         ; preds = %cond.true.i94.if.end11_crit_edge, %fc_dma_map_single.exit.if.end11_crit_edge
  %25 = ptrtoint ptr %rqstdma to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rqstdma, align 4
  %27 = ptrtoint ptr %rqstlen to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rqstlen, align 8
  %add14 = add i32 %28, %26
  %rspdma = getelementptr inbounds %struct.nvmefc_ls_req, ptr %lsop, i32 0, i32 4
  %29 = ptrtoint ptr %rspdma to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add14, ptr %rspdma, align 8
  %lock = getelementptr inbounds %struct.nvme_fc_rport, ptr %rport, i32 0, i32 8
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #17
  %ls_req_list = getelementptr inbounds %struct.nvme_fc_rport, ptr %rport, i32 0, i32 3
  %prev.i96 = getelementptr inbounds %struct.nvme_fc_rport, ptr %rport, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %prev.i96 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i96, align 4
  %call.i.i97 = tail call zeroext i1 @__list_add_valid(ptr noundef %lsreq_list, ptr noundef %31, ptr noundef %ls_req_list) #17
  br i1 %call.i.i97, label %if.end.i.i, label %if.end11.list_add_tail.exit_crit_edge

if.end11.list_add_tail.exit_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  %32 = ptrtoint ptr %prev.i96 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %lsreq_list, ptr %prev.i96, align 4
  %33 = ptrtoint ptr %lsreq_list to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %ls_req_list, ptr %lsreq_list, align 4
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %lsreq_list, ptr %31, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end11.list_add_tail.exit_crit_edge
  %36 = ptrtoint ptr %req_queued to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %req_queued, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call18) #17
  %lport = getelementptr inbounds %struct.nvme_fc_rport, ptr %rport, i32 0, i32 7
  %37 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lport, align 4
  %ops = getelementptr inbounds %struct.nvme_fc_lport, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops, align 8
  %ls_req24 = getelementptr inbounds %struct.nvme_fc_port_template, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %ls_req24 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ls_req24, align 8
  %call27 = tail call i32 %42(ptr noundef %38, ptr noundef %rport, ptr noundef %lsop) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %list_add_tail.exit.cleanup_crit_edge, label %out_unlink

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

out_unlink:                                       ; preds = %list_add_tail.exit
  %ls_error = getelementptr inbounds %struct.nvmefc_ls_req_op, ptr %lsop, i32 0, i32 5
  %43 = ptrtoint ptr %ls_error to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call27, ptr %ls_error, align 8
  %call40 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #17
  %44 = ptrtoint ptr %req_queued to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %req_queued, align 4
  %call.i.i98 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lsreq_list) #17
  br i1 %call.i.i98, label %if.end.i.i99, label %out_unlink.list_del.exit_crit_edge

out_unlink.list_del.exit_crit_edge:               ; preds = %out_unlink
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del.exit

if.end.i.i99:                                     ; preds = %out_unlink
  call void @__sanitizer_cov_trace_pc() #19
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i, align 4
  %47 = ptrtoint ptr %lsreq_list to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %lsreq_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev1.i.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %48, ptr %46, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i99, %out_unlink.list_del.exit_crit_edge
  %51 = ptrtoint ptr %lsreq_list to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 256 to ptr), ptr %lsreq_list, align 4
  %52 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call40) #17
  %53 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev, align 8
  %tobool.not.i101 = icmp eq ptr %54, null
  br i1 %tobool.not.i101, label %list_del.exit.out_putrport_crit_edge, label %if.then.i

list_del.exit.out_putrport_crit_edge:             ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_putrport

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #19
  %55 = ptrtoint ptr %rqstlen to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rqstlen, align 8
  %57 = ptrtoint ptr %rsplen to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rsplen, align 4
  %add52 = add i32 %58, %56
  %59 = ptrtoint ptr %rqstdma to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rqstdma, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef nonnull %54, i32 noundef %60, i32 noundef %add52, i32 noundef 0, i32 noundef 0) #17
  br label %out_putrport

out_putrport:                                     ; preds = %if.then.i, %list_del.exit.out_putrport_crit_edge, %cond.true.i94.out_putrport_crit_edge
  %ret.0 = phi i32 [ -14, %cond.true.i94.out_putrport_crit_edge ], [ %call27, %list_del.exit.out_putrport_crit_edge ], [ %call27, %if.then.i ]
  tail call fastcc void @nvme_fc_rport_put(ptr noundef %rport)
  br label %cleanup

cleanup:                                          ; preds = %out_putrport, %list_add_tail.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_putrport ], [ -111, %entry.cleanup_crit_edge ], [ -108, %if.end.cleanup_crit_edge ], [ 0, %list_add_tail.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__nvme_fc_finish_ls_req(ptr noundef %lsop) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %rport1 = getelementptr inbounds %struct.nvmefc_ls_req_op, ptr %lsop, i32 0, i32 1
  %0 = ptrtoint ptr %rport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rport1, align 8
  %lock = getelementptr inbounds %struct.nvme_fc_rport, ptr %1, i32 0, i32 8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #17
  %req_queued = getelementptr inbounds %struct.nvmefc_ls_req_op, ptr %lsop, i32 0, i32 8
  %2 = ptrtoint ptr %req_queued to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %req_queued, align 4, !range !499
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %lsreq_list = getelementptr inbounds %struct.nvmefc_ls_req_op, ptr %lsop, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lsreq_list) #17
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.nvmefc_ls_req_op, ptr %lsop, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %lsreq_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lsreq_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %10 = ptrtoint ptr %lsreq_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %lsreq_list, align 4
  %prev.i = getelementptr inbounds %struct.nvmefc_ls_req_op, ptr %lsop, i32 0, i32 7, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %12 = ptrtoint ptr %req_queued to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %req_queued, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #17
  %dev = getelementptr inbounds %struct.nvme_fc_rport, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %list_del.exit.fc_dma_unmap_single.exit_crit_edge, label %if.then.i

list_del.exit.fc_dma_unmap_single.exit_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %fc_dma_unmap_single.exit

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #19
  %rqstlen = getelementptr inbounds %struct.nvmefc_ls_req, ptr %lsop, i32 0, i32 2
  %15 = ptrtoint ptr %rqstlen to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rqstlen, align 8
  %rsplen = getelementptr inbounds %struct.nvmefc_ls_req, ptr %lsop, i32 0, i32 5
  %17 = ptrtoint ptr %rsplen to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rsplen, align 4
  %add = add i32 %18, %16
  %rqstdma = getelementptr inbounds %struct.nvmefc_ls_req, ptr %lsop, i32 0, i32 1
  %19 = ptrtoint ptr %rqstdma to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rqstdma, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef nonnull %14, i32 noundef %20, i32 noundef %add, i32 noundef 0, i32 noundef 0) #17
  br label %fc_dma_unmap_single.exit

fc_dma_unmap_single.exit:                         ; preds = %if.then.i, %list_del.exit.fc_dma_unmap_single.exit_crit_edge
  tail call fastcc void @nvme_fc_rport_put(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %fc_dma_unmap_single.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvmf_should_reconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmf_connect_admin_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_enable_ctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_init_ctrl_finish(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvme_fc_init_aen_ops(ptr noundef %ctrl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %aen_ops = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 18
  %lport = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 3
  %queues = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 1
  %0 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lport, align 4
  %ops = getelementptr inbounds %struct.nvme_fc_lport, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 8
  %fcprqst_priv_sz = getelementptr inbounds %struct.nvme_fc_port_template, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %fcprqst_priv_sz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fcprqst_priv_sz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.end8.i.i

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6

if.end8.i.i:                                      ; preds = %entry
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #20
  %tobool4.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool4.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end8.i.i.if.end6_crit_edge

if.end8.i.i.if.end6_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end6:                                          ; preds = %if.end8.i.i.if.end6_crit_edge, %entry.if.end6_crit_edge
  %private.1 = phi ptr [ %call9.i.i, %if.end8.i.i.if.end6_crit_edge ], [ null, %entry.if.end6_crit_edge ]
  %6 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %queues, align 4
  %call8 = tail call fastcc i32 @__nvme_fc_init_request(ptr noundef %ctrl, ptr noundef %7, ptr noundef %aen_ops, ptr noundef null, i32 noundef 31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree(ptr noundef %private.1) #17
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  %sqe7 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 18, i32 0, i32 9, i32 9
  %flags = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 18, i32 0, i32 6
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %flags, align 8
  %private12 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 18, i32 0, i32 1, i32 13
  %9 = ptrtoint ptr %private12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %private.1, ptr %private12, align 8
  %10 = call ptr @memset(ptr %sqe7, i32 0, i32 64)
  %11 = ptrtoint ptr %sqe7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 12, ptr %sqe7, align 8
  %command_id = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 18, i32 0, i32 9, i32 9, i32 0, i32 0, i32 2
  %12 = ptrtoint ptr %command_id to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 31, ptr %command_id, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then10, %if.end8.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then10 ], [ 0, %if.end11 ], [ -12, %if.end8.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvme_fc_create_io_queues(ptr noundef %ctrl) unnamed_addr #0 align 64 {
entry:
  %nr_io_queues = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl1 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 19
  %opts2 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 19, i32 93
  %0 = ptrtoint ptr %opts2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %opts2, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_io_queues) #17
  %nr_io_queues3 = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %nr_io_queues3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_io_queues3, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %4 = load volatile i32, ptr @__num_online_cpus, align 4
  %5 = tail call i32 @llvm.umin.i32(i32 %3, i32 %4)
  %lport = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 3
  %6 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lport, align 4
  %ops = getelementptr inbounds %struct.nvme_fc_lport, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 8
  %max_hw_queues = getelementptr inbounds %struct.nvme_fc_port_template, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %max_hw_queues to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_hw_queues, align 8
  %12 = tail call i32 @llvm.umin.i32(i32 %5, i32 %11)
  %13 = ptrtoint ptr %nr_io_queues to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %nr_io_queues, align 4
  %call11 = call i32 @nvme_set_queue_count(ptr noundef %ctrl1, ptr noundef nonnull %nr_io_queues) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %device = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 19, i32 17
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.192, i32 noundef %call11) #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = ptrtoint ptr %nr_io_queues to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_io_queues, align 4
  %add = add i32 %17, 1
  %queue_count = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 19, i32 30
  %18 = ptrtoint ptr %queue_count to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add, ptr %queue_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool14.not = icmp eq i32 %17, 0
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add)
  %cmp5.i = icmp ugt i32 %add, 1
  br i1 %cmp5.i, label %for.body.lr.ph.i, label %if.end16.nvme_fc_init_io_queues.exit_crit_edge

if.end16.nvme_fc_init_io_queues.exit_crit_edge:   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %nvme_fc_init_io_queues.exit

for.body.lr.ph.i:                                 ; preds = %if.end16
  %queues.i.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 1
  %dev.i.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 2
  %ioccsz.i.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 19, i32 87
  br label %for.body.i

for.body.i:                                       ; preds = %nvme_fc_init_queue.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.06.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %inc.i, %nvme_fc_init_queue.exit.i.for.body.i_crit_edge ]
  %19 = ptrtoint ptr %queues.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %queues.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.nvme_fc_queue, ptr %20, i32 %i.06.i
  %21 = call ptr @memset(ptr %arrayidx.i.i, i32 0, i32 48)
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %ctrl, ptr %arrayidx.i.i, align 8
  %qnum.i.i = getelementptr %struct.nvme_fc_queue, ptr %20, i32 %i.06.i, i32 5
  %23 = ptrtoint ptr %qnum.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %i.06.i, ptr %qnum.i.i, align 4
  %csn.i.i = getelementptr %struct.nvme_fc_queue, ptr %20, i32 %i.06.i, i32 9
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %csn.i.i, i32 noundef 4) #17
  %24 = ptrtoint ptr %csn.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 0, ptr %csn.i.i, align 4
  %25 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i.i, align 8
  %dev2.i.i = getelementptr %struct.nvme_fc_queue, ptr %20, i32 %i.06.i, i32 1
  %27 = ptrtoint ptr %dev2.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %dev2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.06.i)
  %cmp.i.i = icmp sgt i32 %i.06.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %for.body.i.nvme_fc_init_queue.exit.i_crit_edge

for.body.i.nvme_fc_init_queue.exit.i_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nvme_fc_init_queue.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %28 = ptrtoint ptr %ioccsz.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ioccsz.i.i, align 4
  %mul.i.i = shl i32 %29, 4
  br label %nvme_fc_init_queue.exit.i

nvme_fc_init_queue.exit.i:                        ; preds = %if.then.i.i, %for.body.i.nvme_fc_init_queue.exit.i_crit_edge
  %.sink.i.i = phi i32 [ %mul.i.i, %if.then.i.i ], [ 64, %for.body.i.nvme_fc_init_queue.exit.i_crit_edge ]
  %30 = getelementptr %struct.nvme_fc_queue, ptr %20, i32 %i.06.i, i32 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink.i.i, ptr %30, align 8
  %inc.i = add nuw i32 %i.06.i, 1
  %32 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %queue_count, align 4
  %cmp.i = icmp ult i32 %inc.i, %33
  br i1 %cmp.i, label %nvme_fc_init_queue.exit.i.for.body.i_crit_edge, label %nvme_fc_init_queue.exit.i.nvme_fc_init_io_queues.exit_crit_edge

nvme_fc_init_queue.exit.i.nvme_fc_init_io_queues.exit_crit_edge: ; preds = %nvme_fc_init_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nvme_fc_init_io_queues.exit

nvme_fc_init_queue.exit.i.for.body.i_crit_edge:   ; preds = %nvme_fc_init_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

nvme_fc_init_io_queues.exit:                      ; preds = %nvme_fc_init_queue.exit.i.nvme_fc_init_io_queues.exit_crit_edge, %if.end16.nvme_fc_init_io_queues.exit_crit_edge
  %tag_set = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 11
  %34 = call ptr @memset(ptr %tag_set, i32 0, i32 184)
  %ops18 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 11, i32 2
  %35 = ptrtoint ptr %ops18 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @nvme_fc_mq_ops, ptr %ops18, align 4
  %36 = ptrtoint ptr %opts2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %opts2, align 8
  %queue_size = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %queue_size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %queue_size, align 4
  %queue_depth = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 11, i32 4
  %40 = ptrtoint ptr %queue_depth to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %queue_depth, align 4
  %reserved_tags = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 11, i32 5
  %41 = ptrtoint ptr %reserved_tags to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %reserved_tags, align 4
  %numa_node = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 19, i32 11
  %42 = ptrtoint ptr %numa_node to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %numa_node, align 4
  %numa_node25 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 11, i32 7
  %44 = ptrtoint ptr %numa_node25 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %numa_node25, align 4
  %flags = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 11, i32 9
  %45 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %flags, align 4
  %46 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %lport, align 4
  %ops28 = getelementptr inbounds %struct.nvme_fc_lport, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %ops28 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops28, align 8
  %fcprqst_priv_sz = getelementptr inbounds %struct.nvme_fc_port_template, ptr %49, i32 0, i32 17
  %50 = ptrtoint ptr %fcprqst_priv_sz to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %fcprqst_priv_sz, align 4
  %spec.select.i = call i32 @llvm.uadd.sat.i32(i32 %51, i32 304) #17
  %cmd_size = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 11, i32 6
  %52 = ptrtoint ptr %cmd_size to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %spec.select.i, ptr %cmd_size, align 4
  %driver_data = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 11, i32 10
  %53 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %ctrl, ptr %driver_data, align 4
  %54 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %queue_count, align 4
  %sub = add i32 %55, -1
  %nr_hw_queues = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 11, i32 3
  %56 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %sub, ptr %nr_hw_queues, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nvme_io_timeout to i32))
  %57 = load i32, ptr @nvme_io_timeout, align 4
  %mul = mul i32 %57, 100
  %timeout = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 11, i32 8
  %58 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %mul, ptr %timeout, align 4
  %call37 = call i32 @blk_mq_alloc_tag_set(ptr noundef %tag_set) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %nvme_fc_init_io_queues.exit.cleanup_crit_edge

nvme_fc_init_io_queues.exit.cleanup_crit_edge:    ; preds = %nvme_fc_init_io_queues.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end40:                                         ; preds = %nvme_fc_init_io_queues.exit
  %tagset = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 19, i32 12
  %59 = ptrtoint ptr %tagset to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %tag_set, ptr %tagset, align 8
  %call44 = call ptr @blk_mq_init_queue(ptr noundef %tag_set) #17
  %connect_q = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 19, i32 7
  %60 = ptrtoint ptr %connect_q to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call44, ptr %connect_q, align 4
  %cmp.i126 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i126, label %if.then49, label %if.end53

if.then49:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #19
  %61 = ptrtoint ptr %call44 to i32
  br label %out_free_tag_set

if.end53:                                         ; preds = %if.end40
  %sqsize = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 19, i32 44
  %62 = ptrtoint ptr %sqsize to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %sqsize, align 2
  %add55 = add i16 %63, 1
  %queues.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 1
  %64 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %queue_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %cmp33.i = icmp ugt i32 %65, 1
  br i1 %cmp33.i, label %for.body.lr.ph.i128, label %if.end53.if.end60_crit_edge

if.end53.if.end60_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end60

for.body.lr.ph.i128:                              ; preds = %if.end53
  %66 = ptrtoint ptr %queues.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %queues.i, align 4
  br label %for.body.i129

for.body.i129:                                    ; preds = %for.inc.i.for.body.i129_crit_edge, %for.body.lr.ph.i128
  %i.035.i = phi i32 [ 1, %for.body.lr.ph.i128 ], [ %inc.i130, %for.inc.i.for.body.i129_crit_edge ]
  %.pn34.i = phi ptr [ %67, %for.body.lr.ph.i128 ], [ %queue.037.i, %for.inc.i.for.body.i129_crit_edge ]
  %queue.037.i = getelementptr %struct.nvme_fc_queue, ptr %.pn34.i, i32 1
  %lldd_handle.i.i = getelementptr %struct.nvme_fc_queue, ptr %.pn34.i, i32 1, i32 3
  %68 = ptrtoint ptr %lldd_handle.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %lldd_handle.i.i, align 4
  %69 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %lport, align 4
  %ops.i.i = getelementptr inbounds %struct.nvme_fc_lport, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ops.i.i, align 8
  %create_queue.i.i = getelementptr inbounds %struct.nvme_fc_port_template, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %create_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %create_queue.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %74, null
  br i1 %tobool.not.i.i, label %for.body.i129.for.inc.i_crit_edge, label %__nvme_fc_create_hw_queue.exit.i

for.body.i129.for.inc.i_crit_edge:                ; preds = %for.body.i129
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

__nvme_fc_create_hw_queue.exit.i:                 ; preds = %for.body.i129
  %call.i.i = call i32 %74(ptr noundef %70, i32 noundef %i.035.i, i16 noundef zeroext %add55, ptr noundef %lldd_handle.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %__nvme_fc_create_hw_queue.exit.i.for.inc.i_crit_edge, label %for.cond2.preheader.i

__nvme_fc_create_hw_queue.exit.i.for.inc.i_crit_edge: ; preds = %__nvme_fc_create_hw_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

for.cond2.preheader.i:                            ; preds = %__nvme_fc_create_hw_queue.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.035.i)
  %cmp338.i = icmp sgt i32 %i.035.i, 0
  br i1 %cmp338.i, label %for.cond2.preheader.i.for.body4.i_crit_edge, label %for.cond2.preheader.i.out_cleanup_blk_queue_crit_edge

for.cond2.preheader.i.out_cleanup_blk_queue_crit_edge: ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_cleanup_blk_queue

for.cond2.preheader.i.for.body4.i_crit_edge:      ; preds = %for.cond2.preheader.i
  br label %for.body4.i

for.inc.i:                                        ; preds = %__nvme_fc_create_hw_queue.exit.i.for.inc.i_crit_edge, %for.body.i129.for.inc.i_crit_edge
  %inc.i130 = add nuw i32 %i.035.i, 1
  %75 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %queue_count, align 4
  %cmp.i131 = icmp ult i32 %inc.i130, %76
  br i1 %cmp.i131, label %for.inc.i.for.body.i129_crit_edge, label %for.inc.i.if.end60_crit_edge

for.inc.i.if.end60_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end60

for.inc.i.for.body.i129_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i129

for.body4.i:                                      ; preds = %__nvme_fc_delete_hw_queue.exit.i.for.body4.i_crit_edge, %for.cond2.preheader.i.for.body4.i_crit_edge
  %i.139.i = phi i32 [ %dec.i, %__nvme_fc_delete_hw_queue.exit.i.for.body4.i_crit_edge ], [ %i.035.i, %for.cond2.preheader.i.for.body4.i_crit_edge ]
  %77 = ptrtoint ptr %queues.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %queues.i, align 4
  %79 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %lport, align 4
  %ops.i24.i = getelementptr inbounds %struct.nvme_fc_lport, ptr %80, i32 0, i32 5
  %81 = ptrtoint ptr %ops.i24.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ops.i24.i, align 8
  %delete_queue.i.i = getelementptr inbounds %struct.nvme_fc_port_template, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %delete_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %delete_queue.i.i, align 4
  %tobool.not.i25.i = icmp eq ptr %84, null
  br i1 %tobool.not.i25.i, label %for.body4.i.__nvme_fc_delete_hw_queue.exit.i_crit_edge, label %if.then.i27.i

for.body4.i.__nvme_fc_delete_hw_queue.exit.i_crit_edge: ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__nvme_fc_delete_hw_queue.exit.i

if.then.i27.i:                                    ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #19
  %lldd_handle.i26.i = getelementptr %struct.nvme_fc_queue, ptr %78, i32 %i.139.i, i32 3
  %85 = ptrtoint ptr %lldd_handle.i26.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %lldd_handle.i26.i, align 4
  call void %84(ptr noundef %80, i32 noundef %i.139.i, ptr noundef %86) #17
  br label %__nvme_fc_delete_hw_queue.exit.i

__nvme_fc_delete_hw_queue.exit.i:                 ; preds = %if.then.i27.i, %for.body4.i.__nvme_fc_delete_hw_queue.exit.i_crit_edge
  %lldd_handle5.i.i = getelementptr %struct.nvme_fc_queue, ptr %78, i32 %i.139.i, i32 3
  %87 = ptrtoint ptr %lldd_handle5.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %lldd_handle5.i.i, align 4
  %dec.i = add nsw i32 %i.139.i, -1
  %cmp3.i = icmp sgt i32 %i.139.i, 1
  br i1 %cmp3.i, label %__nvme_fc_delete_hw_queue.exit.i.for.body4.i_crit_edge, label %__nvme_fc_delete_hw_queue.exit.i.out_cleanup_blk_queue_crit_edge

__nvme_fc_delete_hw_queue.exit.i.out_cleanup_blk_queue_crit_edge: ; preds = %__nvme_fc_delete_hw_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_cleanup_blk_queue

__nvme_fc_delete_hw_queue.exit.i.for.body4.i_crit_edge: ; preds = %__nvme_fc_delete_hw_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body4.i

if.end60:                                         ; preds = %for.inc.i.if.end60_crit_edge, %if.end53.if.end60_crit_edge
  %88 = ptrtoint ptr %sqsize to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %sqsize, align 2
  %add64 = add i16 %89, 1
  %call66 = call fastcc i32 @nvme_fc_connect_io_queues(ptr noundef %ctrl, i16 noundef zeroext %add64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %out_delete_hw_queues

if.end69:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #19
  %ioq_live = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 6
  %90 = ptrtoint ptr %ioq_live to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %ioq_live, align 8
  br label %cleanup

out_delete_hw_queues:                             ; preds = %if.end60
  %91 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %queue_count, align 4
  %sub.i = add i32 %92, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp11.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp11.i, label %for.body.lr.ph.i135, label %out_delete_hw_queues.out_cleanup_blk_queue_crit_edge

out_delete_hw_queues.out_cleanup_blk_queue_crit_edge: ; preds = %out_delete_hw_queues
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_cleanup_blk_queue

for.body.lr.ph.i135:                              ; preds = %out_delete_hw_queues
  %93 = ptrtoint ptr %queues.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %queues.i, align 4
  %arrayidx.i = getelementptr %struct.nvme_fc_queue, ptr %94, i32 %sub.i
  br label %for.body.i139

for.body.i139:                                    ; preds = %__nvme_fc_delete_hw_queue.exit.i145.for.body.i139_crit_edge, %for.body.lr.ph.i135
  %i.013.i = phi i32 [ %sub.i, %for.body.lr.ph.i135 ], [ %dec.i143, %__nvme_fc_delete_hw_queue.exit.i145.for.body.i139_crit_edge ]
  %queue.012.i = phi ptr [ %arrayidx.i, %for.body.lr.ph.i135 ], [ %incdec.ptr.i, %__nvme_fc_delete_hw_queue.exit.i145.for.body.i139_crit_edge ]
  %95 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %lport, align 4
  %ops.i.i136 = getelementptr inbounds %struct.nvme_fc_lport, ptr %96, i32 0, i32 5
  %97 = ptrtoint ptr %ops.i.i136 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ops.i.i136, align 8
  %delete_queue.i.i137 = getelementptr inbounds %struct.nvme_fc_port_template, ptr %98, i32 0, i32 3
  %99 = ptrtoint ptr %delete_queue.i.i137 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %delete_queue.i.i137, align 4
  %tobool.not.i.i138 = icmp eq ptr %100, null
  br i1 %tobool.not.i.i138, label %for.body.i139.__nvme_fc_delete_hw_queue.exit.i145_crit_edge, label %if.then.i.i141

for.body.i139.__nvme_fc_delete_hw_queue.exit.i145_crit_edge: ; preds = %for.body.i139
  call void @__sanitizer_cov_trace_pc() #19
  br label %__nvme_fc_delete_hw_queue.exit.i145

if.then.i.i141:                                   ; preds = %for.body.i139
  call void @__sanitizer_cov_trace_pc() #19
  %lldd_handle.i.i140 = getelementptr inbounds %struct.nvme_fc_queue, ptr %queue.012.i, i32 0, i32 3
  %101 = ptrtoint ptr %lldd_handle.i.i140 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %lldd_handle.i.i140, align 4
  call void %100(ptr noundef %96, i32 noundef %i.013.i, ptr noundef %102) #17
  br label %__nvme_fc_delete_hw_queue.exit.i145

__nvme_fc_delete_hw_queue.exit.i145:              ; preds = %if.then.i.i141, %for.body.i139.__nvme_fc_delete_hw_queue.exit.i145_crit_edge
  %lldd_handle5.i.i142 = getelementptr inbounds %struct.nvme_fc_queue, ptr %queue.012.i, i32 0, i32 3
  %103 = ptrtoint ptr %lldd_handle5.i.i142 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %lldd_handle5.i.i142, align 4
  %dec.i143 = add nsw i32 %i.013.i, -1
  %incdec.ptr.i = getelementptr %struct.nvme_fc_queue, ptr %queue.012.i, i32 -1
  %cmp.i144 = icmp sgt i32 %i.013.i, 1
  br i1 %cmp.i144, label %__nvme_fc_delete_hw_queue.exit.i145.for.body.i139_crit_edge, label %__nvme_fc_delete_hw_queue.exit.i145.out_cleanup_blk_queue_crit_edge

__nvme_fc_delete_hw_queue.exit.i145.out_cleanup_blk_queue_crit_edge: ; preds = %__nvme_fc_delete_hw_queue.exit.i145
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_cleanup_blk_queue

__nvme_fc_delete_hw_queue.exit.i145.for.body.i139_crit_edge: ; preds = %__nvme_fc_delete_hw_queue.exit.i145
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i139

out_cleanup_blk_queue:                            ; preds = %__nvme_fc_delete_hw_queue.exit.i145.out_cleanup_blk_queue_crit_edge, %out_delete_hw_queues.out_cleanup_blk_queue_crit_edge, %__nvme_fc_delete_hw_queue.exit.i.out_cleanup_blk_queue_crit_edge, %for.cond2.preheader.i.out_cleanup_blk_queue_crit_edge
  %ret.0 = phi i32 [ %call66, %out_delete_hw_queues.out_cleanup_blk_queue_crit_edge ], [ %call.i.i, %for.cond2.preheader.i.out_cleanup_blk_queue_crit_edge ], [ %call66, %__nvme_fc_delete_hw_queue.exit.i145.out_cleanup_blk_queue_crit_edge ], [ %call.i.i, %__nvme_fc_delete_hw_queue.exit.i.out_cleanup_blk_queue_crit_edge ]
  %104 = ptrtoint ptr %connect_q to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %connect_q, align 4
  call void @blk_cleanup_queue(ptr noundef %105) #17
  br label %out_free_tag_set

out_free_tag_set:                                 ; preds = %out_cleanup_blk_queue, %if.then49
  %ret.1 = phi i32 [ %61, %if.then49 ], [ %ret.0, %out_cleanup_blk_queue ]
  call void @blk_mq_free_tag_set(ptr noundef %tag_set) #17
  %106 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %queue_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %107)
  %cmp5.i147 = icmp ugt i32 %107, 1
  br i1 %cmp5.i147, label %for.body.lr.ph.i149, label %out_free_tag_set.nvme_fc_free_io_queues.exit_crit_edge

out_free_tag_set.nvme_fc_free_io_queues.exit_crit_edge: ; preds = %out_free_tag_set
  call void @__sanitizer_cov_trace_pc() #19
  br label %nvme_fc_free_io_queues.exit

for.body.lr.ph.i149:                              ; preds = %out_free_tag_set
  %queues.i148 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 1
  br label %for.body.i153

for.body.i153:                                    ; preds = %nvme_fc_free_queue.exit.i.for.body.i153_crit_edge, %for.body.lr.ph.i149
  %i.06.i150 = phi i32 [ 1, %for.body.lr.ph.i149 ], [ %inc.i156, %nvme_fc_free_queue.exit.i.for.body.i153_crit_edge ]
  %108 = ptrtoint ptr %queues.i148 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %queues.i148, align 4
  %flags.i.i = getelementptr %struct.nvme_fc_queue, ptr %109, i32 %i.06.i150, i32 10
  %call.i.i151 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i151)
  %tobool.not.i.i152 = icmp eq i32 %call.i.i151, 0
  br i1 %tobool.not.i.i152, label %for.body.i153.nvme_fc_free_queue.exit.i_crit_edge, label %if.end.i.i

for.body.i153.nvme_fc_free_queue.exit.i_crit_edge: ; preds = %for.body.i153
  call void @__sanitizer_cov_trace_pc() #19
  br label %nvme_fc_free_queue.exit.i

if.end.i.i:                                       ; preds = %for.body.i153
  call void @__sanitizer_cov_trace_pc() #19
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags.i.i) #17
  %connection_id.i.i = getelementptr %struct.nvme_fc_queue, ptr %109, i32 %i.06.i150, i32 8
  %110 = ptrtoint ptr %connection_id.i.i to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 0, ptr %connection_id.i.i, align 8
  %csn.i.i154 = getelementptr %struct.nvme_fc_queue, ptr %109, i32 %i.06.i150, i32 9
  %call.i.i.i.i155 = call zeroext i1 @__kasan_check_write(ptr noundef %csn.i.i154, i32 noundef 4) #17
  %111 = ptrtoint ptr %csn.i.i154 to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile i32 0, ptr %csn.i.i154, align 4
  br label %nvme_fc_free_queue.exit.i

nvme_fc_free_queue.exit.i:                        ; preds = %if.end.i.i, %for.body.i153.nvme_fc_free_queue.exit.i_crit_edge
  %inc.i156 = add nuw i32 %i.06.i150, 1
  %112 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %queue_count, align 4
  %cmp.i157 = icmp ult i32 %inc.i156, %113
  br i1 %cmp.i157, label %nvme_fc_free_queue.exit.i.for.body.i153_crit_edge, label %nvme_fc_free_queue.exit.i.nvme_fc_free_io_queues.exit_crit_edge

nvme_fc_free_queue.exit.i.nvme_fc_free_io_queues.exit_crit_edge: ; preds = %nvme_fc_free_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nvme_fc_free_io_queues.exit

nvme_fc_free_queue.exit.i.for.body.i153_crit_edge: ; preds = %nvme_fc_free_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i153

nvme_fc_free_io_queues.exit:                      ; preds = %nvme_fc_free_queue.exit.i.nvme_fc_free_io_queues.exit_crit_edge, %out_free_tag_set.nvme_fc_free_io_queues.exit_crit_edge
  %114 = ptrtoint ptr %tagset to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr null, ptr %tagset, align 8
  br label %cleanup

cleanup:                                          ; preds = %nvme_fc_free_io_queues.exit, %if.end69, %nvme_fc_init_io_queues.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call11, %do.end ], [ %ret.1, %nvme_fc_free_io_queues.exit ], [ 0, %if.end69 ], [ 0, %if.end.cleanup_crit_edge ], [ %call37, %nvme_fc_init_io_queues.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_io_queues) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvme_fc_recreate_io_queues(ptr noundef %ctrl) unnamed_addr #0 align 64 {
entry:
  %nr_io_queues = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl1 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 19
  %opts2 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 19, i32 93
  %0 = ptrtoint ptr %opts2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %opts2, align 8
  %queue_count = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 19, i32 30
  %2 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %queue_count, align 4
  %sub = add i32 %3, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_io_queues) #17
  %nr_io_queues4 = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %nr_io_queues4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_io_queues4, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %6 = load volatile i32, ptr @__num_online_cpus, align 4
  %7 = tail call i32 @llvm.umin.i32(i32 %5, i32 %6)
  %lport = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 3
  %8 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lport, align 4
  %ops = getelementptr inbounds %struct.nvme_fc_lport, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 8
  %max_hw_queues = getelementptr inbounds %struct.nvme_fc_port_template, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %max_hw_queues to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_hw_queues, align 8
  %14 = tail call i32 @llvm.umin.i32(i32 %7, i32 %13)
  %15 = ptrtoint ptr %nr_io_queues to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %nr_io_queues, align 4
  %call12 = call i32 @nvme_set_queue_count(ptr noundef %ctrl1, ptr noundef nonnull %nr_io_queues) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %device = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 19, i32 17
  %16 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.192, i32 noundef %call12) #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %18 = ptrtoint ptr %nr_io_queues to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr_io_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool14.not = icmp ne i32 %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool15.not = icmp eq i32 %sub, 0
  %or.cond = select i1 %tobool14.not, i1 true, i1 %tobool15.not
  br i1 %or.cond, label %if.end22, label %do.end19

do.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %device21 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 19, i32 17
  %20 = ptrtoint ptr %device21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device21, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.207, i32 noundef %sub) #21
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %add = add i32 %19, 1
  %22 = ptrtoint ptr %queue_count to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add, ptr %queue_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp27 = icmp eq i32 %19, 0
  br i1 %cmp27, label %if.end22.cleanup_crit_edge, label %if.end29

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %19)
  %cmp30.not = icmp eq i32 %sub, %19
  br i1 %cmp30.not, label %if.end29.if.end37_crit_edge, label %do.end34

if.end29.if.end37_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end37

do.end34:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #19
  %device36 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 19, i32 17
  %23 = ptrtoint ptr %device36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device36, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.210, i32 noundef %sub, i32 noundef %19) #21
  %tag_set = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 11
  %25 = ptrtoint ptr %nr_io_queues to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr_io_queues, align 4
  call void @blk_mq_update_nr_hw_queues(ptr noundef %tag_set, i32 noundef %26) #17
  %27 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr = load i32, ptr %queue_count, align 4
  br label %if.end37

if.end37:                                         ; preds = %do.end34, %if.end29.if.end37_crit_edge
  %28 = phi i32 [ %.pr, %do.end34 ], [ %add, %if.end29.if.end37_crit_edge ]
  %sqsize = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 19, i32 44
  %29 = ptrtoint ptr %sqsize to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %sqsize, align 2
  %add39 = add i16 %30, 1
  %queues.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp33.i = icmp ugt i32 %28, 1
  br i1 %cmp33.i, label %for.body.lr.ph.i, label %if.end37.if.end44_crit_edge

if.end37.if.end44_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end44

for.body.lr.ph.i:                                 ; preds = %if.end37
  %31 = ptrtoint ptr %queues.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %queues.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.035.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %.pn34.i = phi ptr [ %32, %for.body.lr.ph.i ], [ %queue.037.i, %for.inc.i.for.body.i_crit_edge ]
  %queue.037.i = getelementptr %struct.nvme_fc_queue, ptr %.pn34.i, i32 1
  %lldd_handle.i.i = getelementptr %struct.nvme_fc_queue, ptr %.pn34.i, i32 1, i32 3
  %33 = ptrtoint ptr %lldd_handle.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %lldd_handle.i.i, align 4
  %34 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lport, align 4
  %ops.i.i = getelementptr inbounds %struct.nvme_fc_lport, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops.i.i, align 8
  %create_queue.i.i = getelementptr inbounds %struct.nvme_fc_port_template, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %create_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %create_queue.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i, label %for.body.i.for.inc.i_crit_edge, label %__nvme_fc_create_hw_queue.exit.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

__nvme_fc_create_hw_queue.exit.i:                 ; preds = %for.body.i
  %call.i.i = call i32 %39(ptr noundef %35, i32 noundef %i.035.i, i16 noundef zeroext %add39, ptr noundef %lldd_handle.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %__nvme_fc_create_hw_queue.exit.i.for.inc.i_crit_edge, label %for.cond2.preheader.i

__nvme_fc_create_hw_queue.exit.i.for.inc.i_crit_edge: ; preds = %__nvme_fc_create_hw_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

for.cond2.preheader.i:                            ; preds = %__nvme_fc_create_hw_queue.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.035.i)
  %cmp338.i = icmp sgt i32 %i.035.i, 0
  br i1 %cmp338.i, label %for.cond2.preheader.i.for.body4.i_crit_edge, label %for.cond2.preheader.i.out_free_io_queuesthread-pre-split_crit_edge

for.cond2.preheader.i.out_free_io_queuesthread-pre-split_crit_edge: ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_free_io_queuesthread-pre-split

for.cond2.preheader.i.for.body4.i_crit_edge:      ; preds = %for.cond2.preheader.i
  br label %for.body4.i

for.inc.i:                                        ; preds = %__nvme_fc_create_hw_queue.exit.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.035.i, 1
  %40 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %queue_count, align 4
  %cmp.i = icmp ult i32 %inc.i, %41
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end44_crit_edge

for.inc.i.if.end44_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end44

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.body4.i:                                      ; preds = %__nvme_fc_delete_hw_queue.exit.i.for.body4.i_crit_edge, %for.cond2.preheader.i.for.body4.i_crit_edge
  %i.139.i = phi i32 [ %dec.i, %__nvme_fc_delete_hw_queue.exit.i.for.body4.i_crit_edge ], [ %i.035.i, %for.cond2.preheader.i.for.body4.i_crit_edge ]
  %42 = ptrtoint ptr %queues.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %queues.i, align 4
  %44 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %lport, align 4
  %ops.i24.i = getelementptr inbounds %struct.nvme_fc_lport, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %ops.i24.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops.i24.i, align 8
  %delete_queue.i.i = getelementptr inbounds %struct.nvme_fc_port_template, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %delete_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %delete_queue.i.i, align 4
  %tobool.not.i25.i = icmp eq ptr %49, null
  br i1 %tobool.not.i25.i, label %for.body4.i.__nvme_fc_delete_hw_queue.exit.i_crit_edge, label %if.then.i27.i

for.body4.i.__nvme_fc_delete_hw_queue.exit.i_crit_edge: ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__nvme_fc_delete_hw_queue.exit.i

if.then.i27.i:                                    ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #19
  %lldd_handle.i26.i = getelementptr %struct.nvme_fc_queue, ptr %43, i32 %i.139.i, i32 3
  %50 = ptrtoint ptr %lldd_handle.i26.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %lldd_handle.i26.i, align 4
  call void %49(ptr noundef %45, i32 noundef %i.139.i, ptr noundef %51) #17
  br label %__nvme_fc_delete_hw_queue.exit.i

__nvme_fc_delete_hw_queue.exit.i:                 ; preds = %if.then.i27.i, %for.body4.i.__nvme_fc_delete_hw_queue.exit.i_crit_edge
  %lldd_handle5.i.i = getelementptr %struct.nvme_fc_queue, ptr %43, i32 %i.139.i, i32 3
  %52 = ptrtoint ptr %lldd_handle5.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %lldd_handle5.i.i, align 4
  %dec.i = add nsw i32 %i.139.i, -1
  %cmp3.i = icmp sgt i32 %i.139.i, 1
  br i1 %cmp3.i, label %__nvme_fc_delete_hw_queue.exit.i.for.body4.i_crit_edge, label %__nvme_fc_delete_hw_queue.exit.i.out_free_io_queuesthread-pre-split_crit_edge

__nvme_fc_delete_hw_queue.exit.i.out_free_io_queuesthread-pre-split_crit_edge: ; preds = %__nvme_fc_delete_hw_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_free_io_queuesthread-pre-split

__nvme_fc_delete_hw_queue.exit.i.for.body4.i_crit_edge: ; preds = %__nvme_fc_delete_hw_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body4.i

if.end44:                                         ; preds = %for.inc.i.if.end44_crit_edge, %if.end37.if.end44_crit_edge
  %53 = ptrtoint ptr %sqsize to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %sqsize, align 2
  %add48 = add i16 %54, 1
  %call50 = call fastcc i32 @nvme_fc_connect_io_queues(ptr noundef %ctrl, i16 noundef zeroext %add48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end44.cleanup_crit_edge, label %out_delete_hw_queues

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

out_delete_hw_queues:                             ; preds = %if.end44
  %55 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %queue_count, align 4
  %sub.i = add i32 %56, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp11.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp11.i, label %for.body.lr.ph.i89, label %out_delete_hw_queues.out_free_io_queues_crit_edge

out_delete_hw_queues.out_free_io_queues_crit_edge: ; preds = %out_delete_hw_queues
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_free_io_queues

for.body.lr.ph.i89:                               ; preds = %out_delete_hw_queues
  %57 = ptrtoint ptr %queues.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %queues.i, align 4
  %arrayidx.i = getelementptr %struct.nvme_fc_queue, ptr %58, i32 %sub.i
  br label %for.body.i93

for.body.i93:                                     ; preds = %__nvme_fc_delete_hw_queue.exit.i98.for.body.i93_crit_edge, %for.body.lr.ph.i89
  %i.013.i = phi i32 [ %sub.i, %for.body.lr.ph.i89 ], [ %dec.i96, %__nvme_fc_delete_hw_queue.exit.i98.for.body.i93_crit_edge ]
  %queue.012.i = phi ptr [ %arrayidx.i, %for.body.lr.ph.i89 ], [ %incdec.ptr.i, %__nvme_fc_delete_hw_queue.exit.i98.for.body.i93_crit_edge ]
  %59 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %lport, align 4
  %ops.i.i90 = getelementptr inbounds %struct.nvme_fc_lport, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %ops.i.i90 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ops.i.i90, align 8
  %delete_queue.i.i91 = getelementptr inbounds %struct.nvme_fc_port_template, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %delete_queue.i.i91 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %delete_queue.i.i91, align 4
  %tobool.not.i.i92 = icmp eq ptr %64, null
  br i1 %tobool.not.i.i92, label %for.body.i93.__nvme_fc_delete_hw_queue.exit.i98_crit_edge, label %if.then.i.i

for.body.i93.__nvme_fc_delete_hw_queue.exit.i98_crit_edge: ; preds = %for.body.i93
  call void @__sanitizer_cov_trace_pc() #19
  br label %__nvme_fc_delete_hw_queue.exit.i98

if.then.i.i:                                      ; preds = %for.body.i93
  call void @__sanitizer_cov_trace_pc() #19
  %lldd_handle.i.i94 = getelementptr inbounds %struct.nvme_fc_queue, ptr %queue.012.i, i32 0, i32 3
  %65 = ptrtoint ptr %lldd_handle.i.i94 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %lldd_handle.i.i94, align 4
  call void %64(ptr noundef %60, i32 noundef %i.013.i, ptr noundef %66) #17
  br label %__nvme_fc_delete_hw_queue.exit.i98

__nvme_fc_delete_hw_queue.exit.i98:               ; preds = %if.then.i.i, %for.body.i93.__nvme_fc_delete_hw_queue.exit.i98_crit_edge
  %lldd_handle5.i.i95 = getelementptr inbounds %struct.nvme_fc_queue, ptr %queue.012.i, i32 0, i32 3
  %67 = ptrtoint ptr %lldd_handle5.i.i95 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %lldd_handle5.i.i95, align 4
  %dec.i96 = add nsw i32 %i.013.i, -1
  %incdec.ptr.i = getelementptr %struct.nvme_fc_queue, ptr %queue.012.i, i32 -1
  %cmp.i97 = icmp sgt i32 %i.013.i, 1
  br i1 %cmp.i97, label %__nvme_fc_delete_hw_queue.exit.i98.for.body.i93_crit_edge, label %__nvme_fc_delete_hw_queue.exit.i98.out_free_io_queuesthread-pre-split_crit_edge

__nvme_fc_delete_hw_queue.exit.i98.out_free_io_queuesthread-pre-split_crit_edge: ; preds = %__nvme_fc_delete_hw_queue.exit.i98
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_free_io_queuesthread-pre-split

__nvme_fc_delete_hw_queue.exit.i98.for.body.i93_crit_edge: ; preds = %__nvme_fc_delete_hw_queue.exit.i98
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i93

out_free_io_queuesthread-pre-split:               ; preds = %__nvme_fc_delete_hw_queue.exit.i98.out_free_io_queuesthread-pre-split_crit_edge, %__nvme_fc_delete_hw_queue.exit.i.out_free_io_queuesthread-pre-split_crit_edge, %for.cond2.preheader.i.out_free_io_queuesthread-pre-split_crit_edge
  %ret.0.ph = phi i32 [ %call.i.i, %for.cond2.preheader.i.out_free_io_queuesthread-pre-split_crit_edge ], [ %call50, %__nvme_fc_delete_hw_queue.exit.i98.out_free_io_queuesthread-pre-split_crit_edge ], [ %call.i.i, %__nvme_fc_delete_hw_queue.exit.i.out_free_io_queuesthread-pre-split_crit_edge ]
  %68 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pr112 = load i32, ptr %queue_count, align 4
  br label %out_free_io_queues

out_free_io_queues:                               ; preds = %out_free_io_queuesthread-pre-split, %out_delete_hw_queues.out_free_io_queues_crit_edge
  %69 = phi i32 [ %.pr112, %out_free_io_queuesthread-pre-split ], [ %56, %out_delete_hw_queues.out_free_io_queues_crit_edge ]
  %ret.0 = phi i32 [ %ret.0.ph, %out_free_io_queuesthread-pre-split ], [ %call50, %out_delete_hw_queues.out_free_io_queues_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %69)
  %cmp5.i = icmp ugt i32 %69, 1
  br i1 %cmp5.i, label %out_free_io_queues.for.body.i104_crit_edge, label %out_free_io_queues.cleanup_crit_edge

out_free_io_queues.cleanup_crit_edge:             ; preds = %out_free_io_queues
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

out_free_io_queues.for.body.i104_crit_edge:       ; preds = %out_free_io_queues
  br label %for.body.i104

for.body.i104:                                    ; preds = %nvme_fc_free_queue.exit.i.for.body.i104_crit_edge, %out_free_io_queues.for.body.i104_crit_edge
  %i.06.i = phi i32 [ %inc.i105, %nvme_fc_free_queue.exit.i.for.body.i104_crit_edge ], [ 1, %out_free_io_queues.for.body.i104_crit_edge ]
  %70 = ptrtoint ptr %queues.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %queues.i, align 4
  %flags.i.i = getelementptr %struct.nvme_fc_queue, ptr %71, i32 %i.06.i, i32 10
  %call.i.i102 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i102)
  %tobool.not.i.i103 = icmp eq i32 %call.i.i102, 0
  br i1 %tobool.not.i.i103, label %for.body.i104.nvme_fc_free_queue.exit.i_crit_edge, label %if.end.i.i

for.body.i104.nvme_fc_free_queue.exit.i_crit_edge: ; preds = %for.body.i104
  call void @__sanitizer_cov_trace_pc() #19
  br label %nvme_fc_free_queue.exit.i

if.end.i.i:                                       ; preds = %for.body.i104
  call void @__sanitizer_cov_trace_pc() #19
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags.i.i) #17
  %connection_id.i.i = getelementptr %struct.nvme_fc_queue, ptr %71, i32 %i.06.i, i32 8
  %72 = ptrtoint ptr %connection_id.i.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 0, ptr %connection_id.i.i, align 8
  %csn.i.i = getelementptr %struct.nvme_fc_queue, ptr %71, i32 %i.06.i, i32 9
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %csn.i.i, i32 noundef 4) #17
  %73 = ptrtoint ptr %csn.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile i32 0, ptr %csn.i.i, align 4
  br label %nvme_fc_free_queue.exit.i

nvme_fc_free_queue.exit.i:                        ; preds = %if.end.i.i, %for.body.i104.nvme_fc_free_queue.exit.i_crit_edge
  %inc.i105 = add nuw i32 %i.06.i, 1
  %74 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %queue_count, align 4
  %cmp.i106 = icmp ult i32 %inc.i105, %75
  br i1 %cmp.i106, label %nvme_fc_free_queue.exit.i.for.body.i104_crit_edge, label %nvme_fc_free_queue.exit.i.cleanup_crit_edge

nvme_fc_free_queue.exit.i.cleanup_crit_edge:      ; preds = %nvme_fc_free_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

nvme_fc_free_queue.exit.i.for.body.i104_crit_edge: ; preds = %nvme_fc_free_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i104

cleanup:                                          ; preds = %nvme_fc_free_queue.exit.i.cleanup_crit_edge, %out_free_io_queues.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %do.end19, %do.end
  %retval.0 = phi i32 [ %call12, %do.end ], [ -28, %do.end19 ], [ 0, %if.end22.cleanup_crit_edge ], [ 0, %if.end44.cleanup_crit_edge ], [ %ret.0, %out_free_io_queues.cleanup_crit_edge ], [ %ret.0, %nvme_fc_free_queue.exit.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_io_queues) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_start_ctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_fc_send_ls_req_done(ptr noundef %lsreq, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_error = getelementptr inbounds %struct.nvmefc_ls_req_op, ptr %lsreq, i32 0, i32 5
  %0 = ptrtoint ptr %ls_error to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %status, ptr %ls_error, align 8
  %ls_done = getelementptr inbounds %struct.nvmefc_ls_req_op, ptr %lsreq, i32 0, i32 6
  tail call void @complete(ptr noundef %ls_done) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__nvme_fc_init_request(ptr noundef %ctrl, ptr noundef %queue, ptr noundef %op, ptr noundef %rq, i32 noundef %rqno) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_iu = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 9
  %0 = call ptr @memset(ptr %op, i32 0, i32 264)
  %fcp_req = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 1
  %1 = ptrtoint ptr %fcp_req to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %cmd_iu, ptr %fcp_req, align 8
  %cmdlen = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %cmdlen to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 96, ptr %cmdlen, align 8
  %rsp_iu = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 10
  %rspaddr = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %rspaddr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %rsp_iu, ptr %rspaddr, align 4
  %rsplen = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %rsplen to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 32, ptr %rsplen, align 2
  %done = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 1, i32 12
  %5 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @nvme_fc_fcpio_done, ptr %done, align 4
  %ctrl6 = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 2
  %6 = ptrtoint ptr %ctrl6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ctrl, ptr %ctrl6, align 8
  %queue7 = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 3
  %7 = ptrtoint ptr %queue7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %queue, ptr %queue7, align 4
  %rq8 = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 4
  %8 = ptrtoint ptr %rq8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %rq, ptr %rq8, align 8
  %rqno9 = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 7
  %9 = ptrtoint ptr %rqno9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %rqno, ptr %rqno9, align 4
  %10 = ptrtoint ptr %cmd_iu to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -3, ptr %cmd_iu, align 8
  %fc_id = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 9, i32 1
  %11 = ptrtoint ptr %fc_id to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 40, ptr %fc_id, align 1
  %iu_len = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 9, i32 2
  %12 = ptrtoint ptr %iu_len to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 24, ptr %iu_len, align 2
  %qnum = getelementptr inbounds %struct.nvme_fc_queue, ptr %queue, i32 0, i32 5
  %13 = ptrtoint ptr %qnum to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %qnum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  %spec.select = select i1 %tobool.not, i8 1, i8 8
  %15 = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 9, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %spec.select, ptr %15, align 2
  %lport = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 3
  %17 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lport, align 4
  %dev = getelementptr inbounds %struct.nvme_fc_lport, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %entry.fc_dma_map_single.exit_crit_edge, label %cond.true.i

entry.fc_dma_map_single.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %fc_dma_map_single.exit

cond.true.i:                                      ; preds = %entry
  %call.i.i72 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %cmd_iu) #17
  br i1 %call.i.i72, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %cond.true.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.fc_dma_map_single.exit_crit_edge, label %if.then.i.i, !prof !496

land.rhs.i.i.fc_dma_map_single.exit_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fc_dma_map_single.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef nonnull %20) #17
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %24, %if.end.i.i.i ], [ %22, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.96, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.97, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #17
  br label %fc_dma_map_single.exit

if.end39.i.i:                                     ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @debug_dma_map_single(ptr noundef nonnull %20, ptr noundef %cmd_iu, i32 noundef 96) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %25 = load ptr, ptr @mem_map, align 4
  %26 = ptrtoint ptr %cmd_iu to i32
  %sub.i.i = add i32 %26, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %25, i32 %shr.i.i
  %and.i.i = and i32 %26, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef nonnull %20, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef 96, i32 noundef 1, i32 noundef 0) #17
  br label %fc_dma_map_single.exit

fc_dma_map_single.exit:                           ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.fc_dma_map_single.exit_crit_edge, %entry.fc_dma_map_single.exit_crit_edge
  %cond.i = phi i32 [ 0, %entry.fc_dma_map_single.exit_crit_edge ], [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.fc_dma_map_single.exit_crit_edge ]
  %cmddma = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 1, i32 2
  %27 = ptrtoint ptr %cmddma to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cond.i, ptr %cmddma, align 8
  %28 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lport, align 4
  %dev16 = getelementptr inbounds %struct.nvme_fc_lport, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev16, align 4
  %tobool.not.i73 = icmp eq ptr %31, null
  br i1 %tobool.not.i73, label %fc_dma_map_single.exit.if.end23_crit_edge, label %cond.true.i74

fc_dma_map_single.exit.if.end23_crit_edge:        ; preds = %fc_dma_map_single.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23

cond.true.i74:                                    ; preds = %fc_dma_map_single.exit
  tail call void @debug_dma_mapping_error(ptr noundef nonnull %31, i32 noundef %cond.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond.i)
  %cmp.i.i = icmp eq i32 %cond.i, -1
  br i1 %cmp.i.i, label %do.end, label %cond.true.i74.if.end23_crit_edge

cond.true.i74.if.end23_crit_edge:                 ; preds = %cond.true.i74
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23

do.end:                                           ; preds = %cond.true.i74
  call void @__sanitizer_cov_trace_pc() #19
  %dev22 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 2
  %32 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev22, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.176) #21
  br label %out_on_error

if.end23:                                         ; preds = %cond.true.i74.if.end23_crit_edge, %fc_dma_map_single.exit.if.end23_crit_edge
  %34 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lport, align 4
  %dev25 = getelementptr inbounds %struct.nvme_fc_lport, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev25, align 4
  %tobool.not.i76 = icmp eq ptr %37, null
  br i1 %tobool.not.i76, label %if.end23.fc_dma_map_single.exit95_crit_edge, label %cond.true.i78

if.end23.fc_dma_map_single.exit95_crit_edge:      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %fc_dma_map_single.exit95

cond.true.i78:                                    ; preds = %if.end23
  %call.i.i77 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %rsp_iu) #17
  br i1 %call.i.i77, label %land.rhs.i.i80, label %if.end39.i.i93

land.rhs.i.i80:                                   ; preds = %cond.true.i78
  %.b1.i.i79 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i79, label %land.rhs.i.i80.fc_dma_map_single.exit95_crit_edge, label %if.then.i.i84, !prof !496

land.rhs.i.i80.fc_dma_map_single.exit95_crit_edge: ; preds = %land.rhs.i.i80
  call void @__sanitizer_cov_trace_pc() #19
  br label %fc_dma_map_single.exit95

if.then.i.i84:                                    ; preds = %land.rhs.i.i80
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i81 = tail call ptr @dev_driver_string(ptr noundef nonnull %37) #17
  %init_name.i.i.i82 = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %init_name.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %init_name.i.i.i82, align 8
  %tobool.not.i.i.i83 = icmp eq ptr %39, null
  br i1 %tobool.not.i.i.i83, label %if.end.i.i.i85, label %if.then.i.i84.dev_name.exit.i.i87_crit_edge

if.then.i.i84.dev_name.exit.i.i87_crit_edge:      ; preds = %if.then.i.i84
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_name.exit.i.i87

if.end.i.i.i85:                                   ; preds = %if.then.i.i84
  call void @__sanitizer_cov_trace_pc() #19
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %37, align 4
  br label %dev_name.exit.i.i87

dev_name.exit.i.i87:                              ; preds = %if.end.i.i.i85, %if.then.i.i84.dev_name.exit.i.i87_crit_edge
  %retval.0.i.i.i86 = phi ptr [ %41, %if.end.i.i.i85 ], [ %39, %if.then.i.i84.dev_name.exit.i.i87_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.96, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.97, ptr noundef %call16.i.i81, ptr noundef %retval.0.i.i.i86) #17
  br label %fc_dma_map_single.exit95

if.end39.i.i93:                                   ; preds = %cond.true.i78
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @debug_dma_map_single(ptr noundef nonnull %37, ptr noundef %rsp_iu, i32 noundef 32) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %42 = load ptr, ptr @mem_map, align 4
  %43 = ptrtoint ptr %rsp_iu to i32
  %sub.i.i88 = add i32 %43, 1073741824
  %shr.i.i89 = lshr i32 %sub.i.i88, 12
  %add.ptr.i.i90 = getelementptr %struct.page, ptr %42, i32 %shr.i.i89
  %and.i.i91 = and i32 %43, 4095
  %call41.i.i92 = tail call i32 @dma_map_page_attrs(ptr noundef nonnull %37, ptr noundef %add.ptr.i.i90, i32 noundef %and.i.i91, i32 noundef 32, i32 noundef 2, i32 noundef 0) #17
  br label %fc_dma_map_single.exit95

fc_dma_map_single.exit95:                         ; preds = %if.end39.i.i93, %dev_name.exit.i.i87, %land.rhs.i.i80.fc_dma_map_single.exit95_crit_edge, %if.end23.fc_dma_map_single.exit95_crit_edge
  %cond.i94 = phi i32 [ 0, %if.end23.fc_dma_map_single.exit95_crit_edge ], [ %call41.i.i92, %if.end39.i.i93 ], [ -1, %dev_name.exit.i.i87 ], [ -1, %land.rhs.i.i80.fc_dma_map_single.exit95_crit_edge ]
  %rspdma = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 1, i32 3
  %44 = ptrtoint ptr %rspdma to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %cond.i94, ptr %rspdma, align 4
  %45 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %lport, align 4
  %dev30 = getelementptr inbounds %struct.nvme_fc_lport, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev30, align 4
  %tobool.not.i96 = icmp eq ptr %48, null
  br i1 %tobool.not.i96, label %fc_dma_map_single.exit95.if.end40_crit_edge, label %cond.true.i99

fc_dma_map_single.exit95.if.end40_crit_edge:      ; preds = %fc_dma_map_single.exit95
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end40

cond.true.i99:                                    ; preds = %fc_dma_map_single.exit95
  tail call void @debug_dma_mapping_error(ptr noundef nonnull %48, i32 noundef %cond.i94) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond.i94)
  %cmp.i.i97 = icmp eq i32 %cond.i94, -1
  br i1 %cmp.i.i97, label %do.end38, label %cond.true.i99.if.end40_crit_edge

cond.true.i99.if.end40_crit_edge:                 ; preds = %cond.true.i99
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end40

do.end38:                                         ; preds = %cond.true.i99
  call void @__sanitizer_cov_trace_pc() #19
  %dev39 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 2
  %49 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev39, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.179) #21
  br label %if.end40

if.end40:                                         ; preds = %do.end38, %cond.true.i99.if.end40_crit_edge, %fc_dma_map_single.exit95.if.end40_crit_edge
  %ret.0 = phi i32 [ -14, %do.end38 ], [ 0, %cond.true.i99.if.end40_crit_edge ], [ 0, %fc_dma_map_single.exit95.if.end40_crit_edge ]
  %state = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #17
  %51 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile i32 1, ptr %state, align 4
  br label %out_on_error

out_on_error:                                     ; preds = %if.end40, %do.end
  %ret.1 = phi i32 [ -14, %do.end ], [ %ret.0, %if.end40 ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_fc_fcpio_done(ptr noundef %req) #0 align 64 {
entry:
  %result = alloca %union.nvme_result, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %rq1 = getelementptr i8, ptr %req, i32 80
  %0 = ptrtoint ptr %rq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq1, align 8
  %ctrl2 = getelementptr i8, ptr %req, i32 72
  %2 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl2, align 8
  %queue3 = getelementptr i8, ptr %req, i32 76
  %4 = ptrtoint ptr %queue3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue3, align 4
  %rsp_iu = getelementptr i8, ptr %req, i32 200
  %cqe4 = getelementptr i8, ptr %req, i32 216
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %result) #17
  %6 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %result, align 8, !annotation !503
  %state = getelementptr i8, ptr %req, i32 84
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !500
  tail call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #17
  %7 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 4, ptr %state) #17, !srcloc !501
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !502
  %lport = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lport, align 4
  %dev = getelementptr inbounds %struct.nvme_fc_lport, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %entry.fc_dma_sync_single_for_cpu.exit_crit_edge, label %if.then.i

entry.fc_dma_sync_single_for_cpu.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %fc_dma_sync_single_for_cpu.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %rspdma = getelementptr i8, ptr %req, i32 12
  %12 = ptrtoint ptr %rspdma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rspdma, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef nonnull %11, i32 noundef %13, i32 noundef 32, i32 noundef 2) #17
  br label %fc_dma_sync_single_for_cpu.exit

fc_dma_sync_single_for_cpu.exit:                  ; preds = %if.then.i, %entry.fc_dma_sync_single_for_cpu.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %asmresult.i.i)
  %cmp = icmp eq i32 %asmresult.i.i, 3
  br i1 %cmp, label %done.thread, label %if.else

if.else:                                          ; preds = %fc_dma_sync_single_for_cpu.exit
  %status8 = getelementptr i8, ptr %req, i32 68
  %14 = ptrtoint ptr %status8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %status8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %if.end15, label %if.then9

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %device = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %3, i32 0, i32 19, i32 17
  %16 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device, align 8
  %cnum = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %3, i32 0, i32 5
  %18 = ptrtoint ptr %cnum to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cnum, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.181, i32 noundef %19, i32 noundef %15) #21
  br label %done

if.end15:                                         ; preds = %if.else
  %rcv_rsplen = getelementptr i8, ptr %req, i32 64
  %20 = ptrtoint ptr %rcv_rsplen to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %rcv_rsplen, align 8
  %22 = zext i16 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.235)
  switch i16 %21, label %sw.default [
    i16 0, label %if.end15.sw.bb_crit_edge
    i16 12, label %if.end15.sw.bb_crit_edge210
    i16 32, label %sw.bb30
  ]

if.end15.sw.bb_crit_edge210:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

if.end15.sw.bb_crit_edge:                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

sw.bb:                                            ; preds = %if.end15.sw.bb_crit_edge, %if.end15.sw.bb_crit_edge210
  %transferred_length = getelementptr i8, ptr %req, i32 60
  %23 = ptrtoint ptr %transferred_length to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %transferred_length, align 4
  %data_len = getelementptr i8, ptr %req, i32 124
  %25 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp17.not = icmp eq i32 %24, %26
  br i1 %cmp17.not, label %if.end29, label %if.then19

if.then19:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  %device24 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %3, i32 0, i32 19, i32 17
  %27 = ptrtoint ptr %device24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device24, align 8
  %cnum25 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %3, i32 0, i32 5
  %29 = ptrtoint ptr %cnum25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cnum25, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.184, i32 noundef %30, i32 noundef %24, i32 noundef %26) #21
  br label %done

if.end29:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  %31 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 0, ptr %result, align 8
  br label %done

sw.bb30:                                          ; preds = %if.end15
  %iu_len = getelementptr i8, ptr %req, i32 202
  %32 = ptrtoint ptr %iu_len to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %iu_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %33)
  %cmp35.not = icmp eq i16 %33, 8
  br i1 %cmp35.not, label %lor.lhs.false, label %sw.bb30.if.then52_crit_edge, !prof !496

sw.bb30.if.then52_crit_edge:                      ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then52

lor.lhs.false:                                    ; preds = %sw.bb30
  %xfrd_len = getelementptr i8, ptr %req, i32 208
  %34 = ptrtoint ptr %xfrd_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %xfrd_len, align 8
  %transferred_length38 = getelementptr i8, ptr %req, i32 60
  %36 = ptrtoint ptr %transferred_length38 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %transferred_length38, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp39.not = icmp eq i32 %35, %37
  br i1 %cmp39.not, label %lor.lhs.false41, label %lor.lhs.false.if.then52_crit_edge, !prof !496

lor.lhs.false.if.then52_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then52

lor.lhs.false41:                                  ; preds = %lor.lhs.false
  %38 = ptrtoint ptr %rsp_iu to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %rsp_iu, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool44.not = icmp eq i8 %39, 0
  br i1 %tobool44.not, label %lor.rhs, label %lor.lhs.false41.if.then52_crit_edge, !prof !496

lor.lhs.false41.if.then52_crit_edge:              ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then52

lor.rhs:                                          ; preds = %lor.lhs.false41
  %command_id = getelementptr i8, ptr %req, i32 130
  %40 = ptrtoint ptr %command_id to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %command_id, align 2
  %command_id46 = getelementptr i8, ptr %req, i32 228
  %42 = ptrtoint ptr %command_id46 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %command_id46, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %43)
  %cmp48.not = icmp eq i16 %41, %43
  br i1 %cmp48.not, label %if.end72, label %lor.rhs.if.then52_crit_edge, !prof !496

lor.rhs.if.then52_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then52

if.then52:                                        ; preds = %lor.rhs.if.then52_crit_edge, %lor.lhs.false41.if.then52_crit_edge, %lor.lhs.false.if.then52_crit_edge, %sw.bb30.if.then52_crit_edge
  %device57 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %3, i32 0, i32 19, i32 17
  %44 = ptrtoint ptr %device57 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %device57, align 8
  %cnum58 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %3, i32 0, i32 5
  %46 = ptrtoint ptr %cnum58 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cnum58, align 4
  %conv61 = zext i16 %33 to i32
  %xfrd_len63 = getelementptr i8, ptr %req, i32 208
  %48 = ptrtoint ptr %xfrd_len63 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %xfrd_len63, align 8
  %transferred_length64 = getelementptr i8, ptr %req, i32 60
  %50 = ptrtoint ptr %transferred_length64 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %transferred_length64, align 4
  %52 = ptrtoint ptr %rsp_iu to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %rsp_iu, align 8
  %conv67 = zext i8 %53 to i32
  %command_id68 = getelementptr i8, ptr %req, i32 130
  %54 = ptrtoint ptr %command_id68 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %command_id68, align 2
  %conv69 = zext i16 %55 to i32
  %command_id70 = getelementptr i8, ptr %req, i32 228
  %56 = ptrtoint ptr %command_id70 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %command_id70, align 4
  %conv71 = zext i16 %57 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %45, ptr noundef nonnull @.str.187, i32 noundef %47, i32 noundef %conv61, i32 noundef %49, i32 noundef %51, i32 noundef %conv67, i32 noundef %conv69, i32 noundef %conv71) #21
  br label %done

if.end72:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #19
  %58 = ptrtoint ptr %cqe4 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %cqe4, align 8
  %60 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %result, align 8
  %status74 = getelementptr i8, ptr %req, i32 230
  %61 = ptrtoint ptr %status74 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %status74, align 2
  br label %done

sw.default:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  %conv = zext i16 %21 to i32
  %device79 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %3, i32 0, i32 19, i32 17
  %63 = ptrtoint ptr %device79 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %device79, align 8
  %cnum80 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %3, i32 0, i32 5
  %65 = ptrtoint ptr %cnum80 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cnum80, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %64, ptr noundef nonnull @.str.190, i32 noundef %66, i32 noundef %conv) #21
  br label %done

done:                                             ; preds = %sw.default, %if.end72, %if.then52, %if.end29, %if.then19, %if.then9
  %status.2 = phi i16 [ -8186, %sw.default ], [ -8186, %if.then52 ], [ -8186, %if.then19 ], [ %62, %if.end72 ], [ 0, %if.end29 ], [ -8186, %if.then9 ]
  %terminate_assoc.0.off0 = phi i1 [ true, %sw.default ], [ true, %if.then52 ], [ true, %if.then19 ], [ false, %if.end72 ], [ false, %if.end29 ], [ true, %if.then9 ]
  %flags = getelementptr i8, ptr %req, i32 88
  %67 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags, align 8
  %and = and i32 %68, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool83.not = icmp eq i32 %and, 0
  br i1 %tobool83.not, label %done.__nvme_fc_fcpop_chk_teardowns.exit174_crit_edge, label %if.then84

done.__nvme_fc_fcpop_chk_teardowns.exit174_crit_edge: ; preds = %done
  call void @__sanitizer_cov_trace_pc() #19
  br label %__nvme_fc_fcpop_chk_teardowns.exit174

done.thread:                                      ; preds = %fc_dma_sync_single_for_cpu.exit
  %flags183 = getelementptr i8, ptr %req, i32 88
  %69 = ptrtoint ptr %flags183 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flags183, align 8
  %and184 = and i32 %70, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and184)
  %tobool83.not185 = icmp eq i32 %and184, 0
  br i1 %tobool83.not185, label %do.body1.i162, label %do.body1.i

if.then84:                                        ; preds = %done
  %71 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %5, align 8
  %ctrl86 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %72, i32 0, i32 19
  call void @nvme_complete_async_event(ptr noundef %ctrl86, i16 noundef zeroext %status.2, ptr noundef nonnull %result) #17
  %call.i.i156 = call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #17
  %73 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile i32 1, ptr %state, align 4
  %74 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 2, ptr %flags, align 8
  call fastcc void @nvme_fc_ctrl_put(ptr noundef %3)
  br i1 %terminate_assoc.0.off0, label %if.then84.land.lhs.true_crit_edge, label %if.then84.if.end101_crit_edge

if.then84.if.end101_crit_edge:                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end101

if.then84.land.lhs.true_crit_edge:                ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true

do.body1.i:                                       ; preds = %done.thread
  %75 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %5, align 8
  %ctrl86205 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %76, i32 0, i32 19
  call void @nvme_complete_async_event(ptr noundef %ctrl86205, i16 noundef zeroext -7674, ptr noundef nonnull %result) #17
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #17
  %flags6.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %3, i32 0, i32 15
  %77 = ptrtoint ptr %flags6.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %flags6.i, align 4
  %79 = and i32 %78, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.not.i157 = icmp eq i32 %79, 0
  br i1 %tobool.not.i157, label %do.body1.i.if.end13.i_crit_edge, label %land.lhs.true.i

do.body1.i.if.end13.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13.i

land.lhs.true.i:                                  ; preds = %do.body1.i
  %80 = ptrtoint ptr %flags183 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %flags183, align 8
  %and.i = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i.if.end13.i_crit_edge, label %if.then10.i

land.lhs.true.i.if.end13.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13.i

if.then10.i:                                      ; preds = %land.lhs.true.i
  %iocnt.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %3, i32 0, i32 16
  %82 = ptrtoint ptr %iocnt.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %iocnt.i, align 4
  %dec.i = add i32 %83, -1
  store i32 %dec.i, ptr %iocnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool11.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool11.not.i, label %if.then12.i, label %if.then10.i.if.end13.i_crit_edge

if.then10.i.if.end13.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13.i

if.then12.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #19
  %ioabort_wait.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %3, i32 0, i32 17
  call void @__wake_up(ptr noundef %ioabort_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #17
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then12.i, %if.then10.i.if.end13.i_crit_edge, %land.lhs.true.i.if.end13.i_crit_edge, %do.body1.i.if.end13.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call3.i) #17
  %call.i.i156.c = call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #17
  %84 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile i32 1, ptr %state, align 4
  %85 = ptrtoint ptr %flags183 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 2, ptr %flags183, align 8
  call fastcc void @nvme_fc_ctrl_put(ptr noundef %3)
  br label %land.lhs.true

do.body1.i162:                                    ; preds = %done.thread
  %call3.i159 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #17
  %flags6.i160 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %3, i32 0, i32 15
  %86 = ptrtoint ptr %flags6.i160 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %flags6.i160, align 4
  %88 = and i32 %87, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool.not.i161 = icmp eq i32 %88, 0
  br i1 %tobool.not.i161, label %do.body1.i162.if.end13.i173_crit_edge, label %land.lhs.true.i166

do.body1.i162.if.end13.i173_crit_edge:            ; preds = %do.body1.i162
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13.i173

land.lhs.true.i166:                               ; preds = %do.body1.i162
  %89 = ptrtoint ptr %flags183 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %flags183, align 8
  %and.i164 = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i164)
  %tobool9.not.i165 = icmp eq i32 %and.i164, 0
  br i1 %tobool9.not.i165, label %land.lhs.true.i166.if.end13.i173_crit_edge, label %if.then10.i170

land.lhs.true.i166.if.end13.i173_crit_edge:       ; preds = %land.lhs.true.i166
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13.i173

if.then10.i170:                                   ; preds = %land.lhs.true.i166
  %iocnt.i167 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %3, i32 0, i32 16
  %91 = ptrtoint ptr %iocnt.i167 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %iocnt.i167, align 4
  %dec.i168 = add i32 %92, -1
  store i32 %dec.i168, ptr %iocnt.i167, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i168)
  %tobool11.not.i169 = icmp eq i32 %dec.i168, 0
  br i1 %tobool11.not.i169, label %if.then12.i172, label %if.then10.i170.if.end13.i173_crit_edge

if.then10.i170.if.end13.i173_crit_edge:           ; preds = %if.then10.i170
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13.i173

if.then12.i172:                                   ; preds = %if.then10.i170
  call void @__sanitizer_cov_trace_pc() #19
  %ioabort_wait.i171 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %3, i32 0, i32 17
  tail call void @__wake_up(ptr noundef %ioabort_wait.i171, i32 noundef 3, i32 noundef 1, ptr noundef null) #17
  br label %if.end13.i173

if.end13.i173:                                    ; preds = %if.then12.i172, %if.then10.i170.if.end13.i173_crit_edge, %land.lhs.true.i166.if.end13.i173_crit_edge, %do.body1.i162.if.end13.i173_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call3.i159) #17
  br label %__nvme_fc_fcpop_chk_teardowns.exit174

__nvme_fc_fcpop_chk_teardowns.exit174:            ; preds = %if.end13.i173, %done.__nvme_fc_fcpop_chk_teardowns.exit174_crit_edge
  %status.2187200 = phi i16 [ -7674, %if.end13.i173 ], [ %status.2, %done.__nvme_fc_fcpop_chk_teardowns.exit174_crit_edge ]
  %terminate_assoc.0.off0190197 = phi i1 [ true, %if.end13.i173 ], [ %terminate_assoc.0.off0, %done.__nvme_fc_fcpop_chk_teardowns.exit174_crit_edge ]
  %93 = ptrtoint ptr %result to i32
  call void @__asan_load8_noabort(i32 %93)
  %.fca.0.load = load i64, ptr %result, align 8
  %ctrl1.i = getelementptr %struct.request, ptr %1, i32 1, i32 6
  %94 = ptrtoint ptr %ctrl1.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ctrl1.i, align 8
  %quirks.i = getelementptr inbounds %struct.nvme_ctrl, ptr %95, i32 0, i32 61
  %96 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %quirks.i, align 8
  %and.i175 = and i32 %97, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i175)
  %tobool.not.i176 = icmp eq i32 %and.i175, 0
  br i1 %tobool.not.i176, label %if.then.i177, label %__nvme_fc_fcpop_chk_teardowns.exit174.if.end.i_crit_edge

__nvme_fc_fcpop_chk_teardowns.exit174.if.end.i_crit_edge: ; preds = %__nvme_fc_fcpop_chk_teardowns.exit174
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.then.i177:                                     ; preds = %__nvme_fc_fcpop_chk_teardowns.exit174
  call void @__sanitizer_cov_trace_pc() #19
  %genctr.i = getelementptr %struct.request, ptr %1, i32 1, i32 4
  %98 = ptrtoint ptr %genctr.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %genctr.i, align 8
  %inc.i = add i8 %99, 1
  store i8 %inc.i, ptr %genctr.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i177, %__nvme_fc_fcpop_chk_teardowns.exit174.if.end.i_crit_edge
  %100 = tail call i16 @llvm.bswap.i16(i16 %status.2187200) #17
  %101 = lshr i16 %100, 1
  %status3.i = getelementptr %struct.request, ptr %1, i32 1, i32 5
  %102 = ptrtoint ptr %status3.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %101, ptr %status3.i, align 4
  %result4.i = getelementptr %struct.request, ptr %1, i32 1, i32 2
  %103 = ptrtoint ptr %result4.i to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %.fca.0.load, ptr %result4.i, align 8
  tail call void @nvme_should_fail(ptr noundef %1) #17
  %104 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %1, align 8
  %queue_flags.i.i = getelementptr inbounds %struct.request_queue, ptr %105, i32 0, i32 11
  %106 = ptrtoint ptr %queue_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %queue_flags.i.i, align 4
  %108 = and i32 %107, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool.not.i.i = icmp eq i32 %108, 0
  br i1 %tobool.not.i.i, label %if.end.i.nvme_try_complete_req.exit_crit_edge, label %blk_should_fake_timeout.exit.i

if.end.i.nvme_try_complete_req.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nvme_try_complete_req.exit

blk_should_fake_timeout.exit.i:                   ; preds = %if.end.i
  %call1.i.i = tail call zeroext i1 @__blk_should_fake_timeout(ptr noundef %105) #17
  br i1 %call1.i.i, label %blk_should_fake_timeout.exit.i.check_error_crit_edge, label %blk_should_fake_timeout.exit.i.nvme_try_complete_req.exit_crit_edge, !prof !504

blk_should_fake_timeout.exit.i.nvme_try_complete_req.exit_crit_edge: ; preds = %blk_should_fake_timeout.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nvme_try_complete_req.exit

blk_should_fake_timeout.exit.i.check_error_crit_edge: ; preds = %blk_should_fake_timeout.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %check_error

nvme_try_complete_req.exit:                       ; preds = %blk_should_fake_timeout.exit.i.nvme_try_complete_req.exit_crit_edge, %if.end.i.nvme_try_complete_req.exit_crit_edge
  %call10.i = tail call zeroext i1 @blk_mq_complete_request_remote(ptr noundef %1) #17
  br i1 %call10.i, label %nvme_try_complete_req.exit.check_error_crit_edge, label %if.then91

nvme_try_complete_req.exit.check_error_crit_edge: ; preds = %nvme_try_complete_req.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %check_error

if.then91:                                        ; preds = %nvme_try_complete_req.exit
  tail call void @nvme_fc_complete_rq(ptr noundef %1)
  br i1 %terminate_assoc.0.off0190197, label %if.then91.land.lhs.true_crit_edge, label %if.then91.if.end101_crit_edge

if.then91.if.end101_crit_edge:                    ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end101

if.then91.land.lhs.true_crit_edge:                ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true

check_error:                                      ; preds = %nvme_try_complete_req.exit.check_error_crit_edge, %blk_should_fake_timeout.exit.i.check_error_crit_edge
  br i1 %terminate_assoc.0.off0190197, label %check_error.land.lhs.true_crit_edge, label %check_error.if.end101_crit_edge

check_error.if.end101_crit_edge:                  ; preds = %check_error
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end101

check_error.land.lhs.true_crit_edge:              ; preds = %check_error
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %check_error.land.lhs.true_crit_edge, %if.then91.land.lhs.true_crit_edge, %if.end13.i, %if.then84.land.lhs.true_crit_edge
  %state96 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %3, i32 0, i32 19, i32 1
  %109 = ptrtoint ptr %state96 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %state96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %110)
  %cmp97.not = icmp eq i32 %110, 2
  br i1 %cmp97.not, label %land.lhs.true.if.end101_crit_edge, label %if.then99

land.lhs.true.if.end101_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end101

if.then99:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nvme_reset_wq to i32))
  %111 = load ptr, ptr @nvme_reset_wq, align 4
  %ioerr_work = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %3, i32 0, i32 12
  %call.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %111, ptr noundef %ioerr_work) #17
  br label %if.end101

if.end101:                                        ; preds = %if.then99, %land.lhs.true.if.end101_crit_edge, %check_error.if.end101_crit_edge, %if.then91.if.end101_crit_edge, %if.then84.if.end101_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_complete_async_event(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_fc_complete_rq(ptr noundef %rq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl1 = getelementptr %struct.request, ptr %rq, i32 1, i32 21
  %0 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl1, align 8
  %state = getelementptr %struct.request, ptr %rq, i32 1, i32 25
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #17
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %state, align 4
  %flags = getelementptr %struct.request, ptr %rq, i32 1, i32 26
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 8
  %and = and i32 %4, -2
  store i32 %and, ptr %flags, align 8
  %sg_cnt.i = getelementptr %struct.request, ptr %rq, i32 1, i32 14
  %5 = ptrtoint ptr %sg_cnt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sg_cnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %entry.nvme_fc_unmap_data.exit_crit_edge, label %if.end.i

entry.nvme_fc_unmap_data.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %nvme_fc_unmap_data.exit

if.end.i:                                         ; preds = %entry
  %lport.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %lport.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lport.i, align 4
  %dev.i = getelementptr inbounds %struct.nvme_fc_lport, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %sg_table.i = getelementptr %struct.request, ptr %rq, i32 1, i32 12
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end.i.fc_dma_unmap_sg.exit.i_crit_edge, label %if.then.i.i

if.end.i.fc_dma_unmap_sg.exit.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fc_dma_unmap_sg.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %cmd_flags.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 3
  %11 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cmd_flags.i, align 4
  %and.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %cond.i = select i1 %tobool.i.not.i, i32 2, i32 1
  %nents.i = getelementptr %struct.request, ptr %rq, i32 1, i32 28
  %13 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nents.i, align 8
  %15 = ptrtoint ptr %sg_table.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sg_table.i, align 8
  tail call void @dma_unmap_sg_attrs(ptr noundef nonnull %10, ptr noundef %16, i32 noundef %14, i32 noundef %cond.i, i32 noundef 0) #17
  br label %fc_dma_unmap_sg.exit.i

fc_dma_unmap_sg.exit.i:                           ; preds = %if.then.i.i, %if.end.i.fc_dma_unmap_sg.exit.i_crit_edge
  tail call void @sg_free_table_chained(ptr noundef %sg_table.i, i32 noundef 2) #17
  %17 = ptrtoint ptr %sg_cnt.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %sg_cnt.i, align 8
  br label %nvme_fc_unmap_data.exit

nvme_fc_unmap_data.exit:                          ; preds = %fc_dma_unmap_sg.exit.i, %entry.nvme_fc_unmap_data.exit_crit_edge
  tail call void @nvme_complete_rq(ptr noundef %rq) #17
  tail call fastcc void @nvme_fc_ctrl_put(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_should_fail(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_mq_complete_request_remote(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__blk_should_fake_timeout(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_complete_rq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table_chained(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_set_queue_count(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvme_fc_connect_io_queues(ptr noundef %ctrl, i16 noundef zeroext %qsize) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl1 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 19
  %queue_count = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 19, i32 30
  %0 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %queue_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp34 = icmp ugt i32 %1, 1
  br i1 %cmp34, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %queues = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 1
  %2 = udiv i16 %qsize, 5
  %lport.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 3
  %association_id.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 7
  %sub.i = add i16 %qsize, -1
  %rport.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end8.for.body_crit_edge, %for.body.lr.ph
  %i.035 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %if.end8.for.body_crit_edge ]
  %3 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %queues, align 4
  %5 = ptrtoint ptr %lport.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lport.i, align 4
  %ops.i = getelementptr inbounds %struct.nvme_fc_lport, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 8
  %lsrqst_priv_sz.i = getelementptr inbounds %struct.nvme_fc_port_template, ptr %8, i32 0, i32 16
  %9 = ptrtoint ptr %lsrqst_priv_sz.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lsrqst_priv_sz.i, align 8
  %add.i = add i32 %10, 248
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #20
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %out_no_memory.thread.i, label %if.end.i

out_no_memory.thread.i:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %device.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 19, i32 17
  %11 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device.i, align 8
  %cnum.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 5
  %13 = ptrtoint ptr %cnum.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cnum.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.197, i32 noundef %14) #21
  br label %nvme_fc_connect_queue.exit

if.end.i:                                         ; preds = %for.body
  %arrayidx = getelementptr %struct.nvme_fc_queue, ptr %4, i32 %i.035
  %arrayidx.i = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 1
  %arrayidx2.i = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 1, i32 6, i32 1, i32 0, i32 4
  %15 = ptrtoint ptr %lport.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lport.i, align 4
  %ops4.i = getelementptr inbounds %struct.nvme_fc_lport, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %ops4.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops4.i, align 8
  %lsrqst_priv_sz5.i = getelementptr inbounds %struct.nvme_fc_port_template, ptr %18, i32 0, i32 16
  %19 = ptrtoint ptr %lsrqst_priv_sz5.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lsrqst_priv_sz5.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool6.not.i = icmp eq i32 %20, 0
  %arrayidx8.i = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 1, i32 7, i32 1
  %spec.select.i = select i1 %tobool6.not.i, ptr null, ptr %arrayidx8.i
  %21 = getelementptr inbounds %struct.nvmefc_ls_req, ptr %call9.i.i.i, i32 0, i32 7
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %spec.select.i, ptr %21, align 4
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 4, ptr %arrayidx.i, align 128
  %desc_list_len.i = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 1, i32 0, i32 1
  %24 = ptrtoint ptr %desc_list_len.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 72, ptr %desc_list_len.i, align 4
  %associd.i = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 1, i32 0, i32 2
  %25 = ptrtoint ptr %associd.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 7, ptr %associd.i, align 8
  %desc_len.i = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 1, i32 0, i32 3
  %26 = ptrtoint ptr %desc_len.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 8, ptr %desc_len.i, align 4
  %27 = ptrtoint ptr %association_id.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %association_id.i, align 8
  %association_id14.i = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 1, i32 0, i32 4
  %29 = ptrtoint ptr %association_id14.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %association_id14.i, align 16
  %connect_cmd.i = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 1, i32 0, i32 6
  %30 = ptrtoint ptr %connect_cmd.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 4, ptr %connect_cmd.i, align 8
  %desc_len18.i = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 1, i32 0, i32 7
  %31 = ptrtoint ptr %desc_len18.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 48, ptr %desc_len18.i, align 4
  %ersp_ratio20.i = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 1, i32 0, i32 8
  %32 = ptrtoint ptr %ersp_ratio20.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %2, ptr %ersp_ratio20.i, align 32
  %qnum.i = getelementptr %struct.nvme_fc_queue, ptr %4, i32 %i.035, i32 5
  %33 = ptrtoint ptr %qnum.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %qnum.i, align 4
  %conv.i = trunc i32 %34 to i16
  %qid.i = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 1, i32 6, i32 1, i32 0, i32 2
  %35 = ptrtoint ptr %qid.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i, ptr %qid.i, align 8
  %sqsize.i = getelementptr inbounds %struct.fcnvme_lsdesc_cr_conn_cmd, ptr %connect_cmd.i, i32 0, i32 6
  %36 = ptrtoint ptr %sqsize.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %sub.i, ptr %sqsize.i, align 2
  %queue25.i = getelementptr inbounds %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %queue25.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %arrayidx, ptr %queue25.i, align 4
  %38 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %arrayidx.i, ptr %call9.i.i.i, align 128
  %rqstlen.i = getelementptr inbounds %struct.nvmefc_ls_req, ptr %call9.i.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %rqstlen.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 80, ptr %rqstlen.i, align 8
  %rspaddr.i = getelementptr inbounds %struct.nvmefc_ls_req, ptr %call9.i.i.i, i32 0, i32 3
  %40 = ptrtoint ptr %rspaddr.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %arrayidx2.i, ptr %rspaddr.i, align 4
  %rsplen.i = getelementptr inbounds %struct.nvmefc_ls_req, ptr %call9.i.i.i, i32 0, i32 5
  %41 = ptrtoint ptr %rsplen.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 40, ptr %rsplen.i, align 4
  %timeout.i = getelementptr inbounds %struct.nvmefc_ls_req, ptr %call9.i.i.i, i32 0, i32 6
  %42 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 20, ptr %timeout.i, align 8
  %43 = ptrtoint ptr %rport.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rport.i, align 8
  %call.i.i = tail call fastcc i32 @__nvme_fc_send_ls_req(ptr noundef %44, ptr noundef nonnull %call9.i.i.i, ptr noundef nonnull @nvme_fc_send_ls_req_done) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.out_no_memory.thread165.i_crit_edge

if.end.i.out_no_memory.thread165.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_no_memory.thread165.i

if.end.i.i:                                       ; preds = %if.end.i
  %ls_done.i.i = getelementptr inbounds %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 0, i32 6
  tail call void @wait_for_completion(ptr noundef %ls_done.i.i) #17
  tail call fastcc void @__nvme_fc_finish_ls_req(ptr noundef nonnull %call9.i.i.i) #17
  %ls_error.i.i = getelementptr inbounds %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 0, i32 5
  %45 = ptrtoint ptr %ls_error.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ls_error.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool1.not.i.i = icmp eq i32 %46, 0
  br i1 %tobool1.not.i.i, label %if.end3.i.i, label %if.end.i.i.out_no_memory.thread165.i_crit_edge

if.end.i.i.out_no_memory.thread165.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_no_memory.thread165.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %47 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx2.i, align 16
  %49 = zext i8 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.236)
  switch i8 %48, label %if.end3.i.i.if.then85.i_crit_edge [
    i8 1, label %if.end3.i.i.out_no_memory.thread165.i_crit_edge
    i8 2, label %if.else35.i
  ]

if.end3.i.i.out_no_memory.thread165.i_crit_edge:  ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_no_memory.thread165.i

if.end3.i.i.if.then85.i_crit_edge:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then85.i

if.else35.i:                                      ; preds = %if.end3.i.i
  %desc_list_len37.i = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 1, i32 6, i32 1, i32 0, i32 4, i32 1
  %50 = ptrtoint ptr %desc_list_len37.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %desc_list_len37.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %51)
  %cmp39.not.i = icmp eq i32 %51, 32
  br i1 %cmp39.not.i, label %if.else42.i, label %if.else35.i.if.then85.i_crit_edge

if.else35.i.if.then85.i_crit_edge:                ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then85.i

if.else42.i:                                      ; preds = %if.else35.i
  %rqst.i = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 1, i32 6, i32 1, i32 0, i32 4, i32 1, i32 1
  %52 = ptrtoint ptr %rqst.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rqst.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp45.not.i = icmp eq i32 %53, 1
  br i1 %cmp45.not.i, label %if.else48.i, label %if.else42.i.if.then85.i_crit_edge

if.else42.i.if.then85.i_crit_edge:                ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then85.i

if.else48.i:                                      ; preds = %if.else42.i
  %desc_len51.i = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 1, i32 6, i32 1, i32 0, i32 4, i32 2
  %54 = ptrtoint ptr %desc_len51.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %desc_len51.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %55)
  %cmp53.not.i = icmp eq i32 %55, 8
  br i1 %cmp53.not.i, label %if.else56.i, label %if.else48.i.if.then85.i_crit_edge

if.else48.i.if.then85.i_crit_edge:                ; preds = %if.else48.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then85.i

if.else56.i:                                      ; preds = %if.else48.i
  %w059.i = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 1, i32 6, i32 1, i32 0, i32 4, i32 3
  %56 = ptrtoint ptr %w059.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %w059.i, align 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %57)
  %cmp62.not.i = icmp eq i8 %57, 4
  br i1 %cmp62.not.i, label %if.else65.i, label %if.else56.i.if.then85.i_crit_edge

if.else56.i.if.then85.i_crit_edge:                ; preds = %if.else56.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then85.i

if.else65.i:                                      ; preds = %if.else56.i
  %connectid.i = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 1, i32 6, i32 1, i32 0, i32 4, i32 7
  %58 = ptrtoint ptr %connectid.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %connectid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %59)
  %cmp67.not.i = icmp eq i32 %59, 6
  br i1 %cmp67.not.i, label %if.end83.i, label %if.else65.i.if.then85.i_crit_edge

if.else65.i.if.then85.i_crit_edge:                ; preds = %if.else65.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then85.i

if.end83.i:                                       ; preds = %if.else65.i
  %desc_len72.i = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 1, i32 6, i32 1, i32 1
  %60 = ptrtoint ptr %desc_len72.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %desc_len72.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %61)
  %cmp74.not.i = icmp eq i32 %61, 8
  br i1 %cmp74.not.i, label %if.end, label %if.end83.i.if.then85.i_crit_edge

if.end83.i.if.then85.i_crit_edge:                 ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then85.i

if.then85.i:                                      ; preds = %if.end83.i.if.then85.i_crit_edge, %if.else65.i.if.then85.i_crit_edge, %if.else56.i.if.then85.i_crit_edge, %if.else48.i.if.then85.i_crit_edge, %if.else42.i.if.then85.i_crit_edge, %if.else35.i.if.then85.i_crit_edge, %if.end3.i.i.if.then85.i_crit_edge
  %fcret.0160.i = phi i32 [ 14, %if.end83.i.if.then85.i_crit_edge ], [ 13, %if.else65.i.if.then85.i_crit_edge ], [ 34, %if.else56.i.if.then85.i_crit_edge ], [ 31, %if.else48.i.if.then85.i_crit_edge ], [ 30, %if.else42.i.if.then85.i_crit_edge ], [ 35, %if.else35.i.if.then85.i_crit_edge ], [ 29, %if.end3.i.i.if.then85.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 2
  %62 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i, align 8
  %64 = ptrtoint ptr %qnum.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %qnum.i, align 4
  %arrayidx90.i = getelementptr [38 x ptr], ptr @validation_errors, i32 0, i32 %fcret.0160.i
  %66 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx90.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.200, i32 noundef %65, ptr noundef %67) #21
  br label %out_no_memory.thread165.i

out_no_memory.thread165.i:                        ; preds = %if.then85.i, %if.end3.i.i.out_no_memory.thread165.i_crit_edge, %if.end.i.i.out_no_memory.thread165.i_crit_edge, %if.end.i.out_no_memory.thread165.i_crit_edge
  %ret.0.ph.i = phi i32 [ -9, %if.then85.i ], [ %call.i.i, %if.end.i.out_no_memory.thread165.i_crit_edge ], [ %46, %if.end.i.i.out_no_memory.thread165.i_crit_edge ], [ -6, %if.end3.i.i.out_no_memory.thread165.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #17
  br label %nvme_fc_connect_queue.exit

nvme_fc_connect_queue.exit:                       ; preds = %out_no_memory.thread165.i, %out_no_memory.thread.i
  %ret.1163.i = phi i32 [ -12, %out_no_memory.thread.i ], [ %ret.0.ph.i, %out_no_memory.thread165.i ]
  %dev100.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 2
  %68 = ptrtoint ptr %dev100.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev100.i, align 8
  %qnum101.i = getelementptr %struct.nvme_fc_queue, ptr %4, i32 %i.035, i32 5
  %70 = ptrtoint ptr %qnum101.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %qnum101.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.203, i32 noundef %71, i32 noundef %ret.1163.i) #21
  br label %for.end

if.end:                                           ; preds = %if.end83.i
  %connection_id.i = getelementptr %struct.nvmefc_ls_req_op, ptr %call9.i.i.i, i32 1, i32 6, i32 1, i32 1, i32 1
  %72 = ptrtoint ptr %connection_id.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %connection_id.i, align 16
  %connection_id93.i = getelementptr %struct.nvme_fc_queue, ptr %4, i32 %i.035, i32 8
  %74 = ptrtoint ptr %connection_id93.i to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %73, ptr %connection_id93.i, align 8
  %flags.i = getelementptr %struct.nvme_fc_queue, ptr %4, i32 %i.035, i32 10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #17
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #17
  %conv4 = trunc i32 %i.035 to i16
  %call5 = tail call i32 @nvmf_connect_io_queue(ptr noundef %ctrl1, i16 noundef zeroext %conv4) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

if.end8:                                          ; preds = %if.end
  %75 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %queues, align 4
  %flags = getelementptr %struct.nvme_fc_queue, ptr %76, i32 %i.035, i32 10
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #17
  %inc = add nuw i32 %i.035, 1
  %77 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %queue_count, align 4
  %cmp = icmp ult i32 %inc, %78
  br i1 %cmp, label %if.end8.for.body_crit_edge, label %if.end8.for.end_crit_edge

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %if.end8.for.end_crit_edge, %if.end.for.end_crit_edge, %nvme_fc_connect_queue.exit, %entry.for.end_crit_edge
  %ret.1 = phi i32 [ %ret.1163.i, %nvme_fc_connect_queue.exit ], [ 0, %entry.for.end_crit_edge ], [ 0, %if.end8.for.end_crit_edge ], [ %call5, %if.end.for.end_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @nvme_fc_queue_rq(ptr nocapture noundef readonly %hctx, ptr nocapture noundef readonly %bd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 7
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 8
  %queuedata = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %queuedata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queuedata, align 4
  %driver_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 9
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data, align 128
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %8 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bd, align 4
  %add.ptr.i = getelementptr %struct.request, ptr %9, i32 1
  %flags = getelementptr inbounds %struct.nvme_fc_queue, ptr %5, i32 0, i32 10
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %rport = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %7, i32 0, i32 4
  %12 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rport, align 8
  %port_state = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %port_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.not = icmp eq i32 %15, 2
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %16 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool = icmp ne i32 %16, 0
  %ctrl6 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %7, i32 0, i32 19
  %state.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %7, i32 0, i32 19, i32 1
  %17 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.i = icmp eq i32 %18, 1
  br i1 %cmp.i, label %lor.lhs.false.if.end_crit_edge, label %if.end.i, !prof !496

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false
  %ops.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %7, i32 0, i32 19, i32 5
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %flags.i = getelementptr inbounds %struct.nvme_ctrl_ops, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %cmp4.i = icmp eq i32 %18, 4
  %or.cond.i = select i1 %tobool2.not.i, i1 %cmp4.i, i1 false
  br i1 %or.cond.i, label %nvme_check_ready.exit, label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__nvme_check_ready(ptr noundef %ctrl6, ptr noundef %9, i1 noundef zeroext %tobool) #17
  br i1 %call.i, label %if.end7.i.if.end_crit_edge, label %if.end7.i.if.then_crit_edge

if.end7.i.if.then_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.end7.i.if.end_crit_edge:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

nvme_check_ready.exit:                            ; preds = %if.end.i
  br i1 %tobool, label %nvme_check_ready.exit.if.end_crit_edge, label %nvme_check_ready.exit.if.then_crit_edge

nvme_check_ready.exit.if.then_crit_edge:          ; preds = %nvme_check_ready.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

nvme_check_ready.exit.if.end_crit_edge:           ; preds = %nvme_check_ready.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %nvme_check_ready.exit.if.then_crit_edge, %if.end7.i.if.then_crit_edge, %entry.if.then_crit_edge
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %5, align 8
  %ctrl10 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %24, i32 0, i32 19
  %call11 = tail call zeroext i8 @nvme_fail_nonready_command(ptr noundef %ctrl10, ptr noundef %9) #17
  br label %cleanup

if.end:                                           ; preds = %nvme_check_ready.exit.if.end_crit_edge, %if.end7.i.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %call12 = tail call zeroext i8 @nvme_setup_cmd(ptr noundef %3, ptr noundef %9) #17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call12)
  %tobool13.not = icmp eq i8 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %rq_flags.i = getelementptr inbounds %struct.request, ptr %9, i32 0, i32 4
  %25 = ptrtoint ptr %rq_flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rq_flags.i, align 8
  %and.i46 = and i32 %26, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i46)
  %tobool.not.i = icmp eq i32 %and.i46, 0
  br i1 %tobool.not.i, label %blk_rq_nr_phys_segments.exit, label %if.end15.if.then18_crit_edge

if.end15.if.then18_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then18

blk_rq_nr_phys_segments.exit:                     ; preds = %if.end15
  %nr_phys_segments.i = getelementptr inbounds %struct.request, ptr %9, i32 0, i32 19
  %27 = ptrtoint ptr %nr_phys_segments.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %nr_phys_segments.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool17.not = icmp eq i16 %28, 0
  br i1 %tobool17.not, label %blk_rq_nr_phys_segments.exit.if.end23_crit_edge, label %blk_rq_nr_phys_segments.exit.if.then18_crit_edge

blk_rq_nr_phys_segments.exit.if.then18_crit_edge: ; preds = %blk_rq_nr_phys_segments.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then18

blk_rq_nr_phys_segments.exit.if.end23_crit_edge:  ; preds = %blk_rq_nr_phys_segments.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23

if.then18:                                        ; preds = %blk_rq_nr_phys_segments.exit.if.then18_crit_edge, %if.end15.if.then18_crit_edge
  %bv_len.i = getelementptr inbounds %struct.request, ptr %9, i32 0, i32 29, i32 0, i32 1
  %__data_len.i.i = getelementptr inbounds %struct.request, ptr %9, i32 0, i32 8
  %retval.0.in.i = select i1 %tobool.not.i, ptr %__data_len.i.i, ptr %bv_len.i
  %29 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %retval.0.i52 = load i32, ptr %retval.0.in.i, align 4
  %cmd_flags = getelementptr inbounds %struct.request, ptr %9, i32 0, i32 3
  %30 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cmd_flags, align 4
  %and.i53 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i53)
  %tobool.i.not = icmp eq i32 %and.i53, 0
  %cond22 = select i1 %tobool.i.not, i32 2, i32 1
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %blk_rq_nr_phys_segments.exit.if.end23_crit_edge
  %io_dir.0 = phi i32 [ %cond22, %if.then18 ], [ 0, %blk_rq_nr_phys_segments.exit.if.end23_crit_edge ]
  %data_len.0 = phi i32 [ %retval.0.i52, %if.then18 ], [ 0, %blk_rq_nr_phys_segments.exit.if.end23_crit_edge ]
  %call24 = tail call fastcc zeroext i8 @nvme_fc_start_fcp_op(ptr noundef %7, ptr noundef %5, ptr noundef %add.ptr.i, i32 noundef %data_len.0, i32 noundef %io_dir.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i8 [ %call11, %if.then ], [ %call24, %if.end23 ], [ %call12, %if.end.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_fc_timeout(ptr noundef %rq, i1 noundef zeroext %reserved) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.request, ptr %rq, i32 1
  %ctrl1 = getelementptr %struct.request, ptr %rq, i32 1, i32 21
  %0 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl1, align 8
  %sqe2 = getelementptr %struct.request, ptr %rq, i32 1, i32 30, i32 0, i32 2
  %device = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %1, i32 0, i32 19, i32 17
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 8
  %cnum = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %cnum to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cnum, align 4
  %queue = getelementptr %struct.request, ptr %rq, i32 1, i32 22
  %6 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %queue, align 4
  %qnum = getelementptr inbounds %struct.nvme_fc_queue, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %qnum to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qnum, align 4
  %10 = ptrtoint ptr %sqe2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sqe2, align 8
  %conv = zext i8 %11 to i32
  %fctype = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %add.ptr.i, i32 0, i32 9, i32 9, i32 0, i32 0, i32 3
  %12 = ptrtoint ptr %fctype to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %fctype, align 4
  %conv4 = zext i8 %13 to i32
  %cdw10 = getelementptr %struct.request, ptr %rq, i32 2, i32 2
  %14 = ptrtoint ptr %cdw10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cdw10, align 8
  %cdw11 = getelementptr %struct.request, ptr %rq, i32 2, i32 3
  %16 = ptrtoint ptr %cdw11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cdw11, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.194, i32 noundef %5, i32 noundef %9, i32 noundef %conv, i32 noundef %conv4, i32 noundef %15, i32 noundef %17) #21
  %call5 = tail call fastcc i32 @__nvme_fc_abort_op(ptr noundef %1, ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  %state.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %1, i32 0, i32 19, i32 1
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state.i, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.237)
  switch i32 %19, label %if.then.if.end_crit_edge [
    i32 3, label %if.then.i
    i32 1, label %do.end.i
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @__nvme_fc_abort_outstanding_ios(ptr noundef %1, i1 noundef zeroext true) #17
  %flags.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %1, i32 0, i32 15
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags.i) #17
  br label %if.end

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %ctrl1.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %1, i32 0, i32 19
  %21 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device, align 8
  %23 = ptrtoint ptr %cnum to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cnum, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.82, i32 noundef %24, ptr noundef nonnull @.str.196) #21
  %25 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device, align 8
  %27 = ptrtoint ptr %cnum to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cnum, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.85, i32 noundef %28) #21
  %call.i = tail call i32 @nvme_reset_ctrl(ptr noundef %ctrl1.i) #17
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nvme_fc_init_hctx(ptr noundef %hctx, ptr nocapture noundef readonly %data, i32 noundef %hctx_idx) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %hctx_idx, 1
  %queues.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %queues.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queues.i, align 4
  %arrayidx.i = getelementptr %struct.nvme_fc_queue, ptr %1, i32 %add
  %driver_data.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 9
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %arrayidx.i, ptr %driver_data.i, align 128
  %hctx1.i = getelementptr %struct.nvme_fc_queue, ptr %1, i32 %add, i32 2
  %3 = ptrtoint ptr %hctx1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %hctx, ptr %hctx1.i, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_fc_init_request(ptr noundef readonly %set, ptr noundef %rq, i32 noundef %hctx_idx, i32 noundef %numa_node) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.blk_mq_tag_set, ptr %set, i32 0, i32 10
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %add.ptr.i = getelementptr %struct.request, ptr %rq, i32 1
  %tag_set = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %1, i32 0, i32 11
  %cmp = icmp eq ptr %tag_set, %set
  %add = add i32 %hctx_idx, 1
  %spec.select = select i1 %cmp, i32 %add, i32 0
  %queues = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queues, align 4
  %arrayidx = getelementptr %struct.nvme_fc_queue, ptr %3, i32 %spec.select
  %rqcnt = getelementptr %struct.nvme_fc_queue, ptr %3, i32 %spec.select, i32 6
  %4 = ptrtoint ptr %rqcnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rqcnt, align 8
  %inc = add i32 %5, 1
  store i32 %inc, ptr %rqcnt, align 8
  %call2 = tail call fastcc i32 @__nvme_fc_init_request(ptr noundef %1, ptr noundef %arrayidx, ptr noundef %add.ptr.i, ptr noundef %rq, i32 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %sgl = getelementptr %struct.request, ptr %rq, i32 2, i32 14
  %first_sgl = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %add.ptr.i, i32 0, i32 1, i32 8
  %6 = ptrtoint ptr %first_sgl to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %sgl, ptr %first_sgl, align 4
  %priv = getelementptr %struct.request, ptr %rq, i32 2, i32 23
  %private = getelementptr %struct.request, ptr %rq, i32 1, i32 16
  %7 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %priv, ptr %private, align 8
  %ctrl7 = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %1, i32 0, i32 19
  %ctrl9 = getelementptr %struct.request, ptr %rq, i32 1, i32 6
  %8 = ptrtoint ptr %ctrl9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ctrl7, ptr %ctrl9, align 8
  %sqe = getelementptr %struct.request, ptr %rq, i32 1, i32 30, i32 0, i32 2
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %sqe, ptr %add.ptr.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_fc_exit_request(ptr nocapture noundef readonly %set, ptr noundef %rq, i32 noundef %hctx_idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.blk_mq_tag_set, ptr %set, i32 0, i32 10
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %lport.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %lport.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lport.i, align 4
  %dev.i = getelementptr inbounds %struct.nvme_fc_lport, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %entry.fc_dma_unmap_single.exit.i_crit_edge, label %if.then.i.i

entry.fc_dma_unmap_single.exit.i_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %fc_dma_unmap_single.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr.i = getelementptr %struct.request, ptr %rq, i32 1
  %rspdma.i = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %add.ptr.i, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %rspdma.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rspdma.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef nonnull %5, i32 noundef %7, i32 noundef 32, i32 noundef 2, i32 noundef 0) #17
  br label %fc_dma_unmap_single.exit.i

fc_dma_unmap_single.exit.i:                       ; preds = %if.then.i.i, %entry.fc_dma_unmap_single.exit.i_crit_edge
  %8 = ptrtoint ptr %lport.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lport.i, align 4
  %dev2.i = getelementptr inbounds %struct.nvme_fc_lport, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev2.i, align 4
  %tobool.not.i7.i = icmp eq ptr %11, null
  br i1 %tobool.not.i7.i, label %fc_dma_unmap_single.exit.i.__nvme_fc_exit_request.exit_crit_edge, label %if.then.i8.i

fc_dma_unmap_single.exit.i.__nvme_fc_exit_request.exit_crit_edge: ; preds = %fc_dma_unmap_single.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__nvme_fc_exit_request.exit

if.then.i8.i:                                     ; preds = %fc_dma_unmap_single.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %cmddma.i = getelementptr %struct.request, ptr %rq, i32 1, i32 9
  %12 = ptrtoint ptr %cmddma.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cmddma.i, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef nonnull %11, i32 noundef %13, i32 noundef 96, i32 noundef 1, i32 noundef 0) #17
  br label %__nvme_fc_exit_request.exit

__nvme_fc_exit_request.exit:                      ; preds = %if.then.i8.i, %fc_dma_unmap_single.exit.i.__nvme_fc_exit_request.exit_crit_edge
  %state.i = getelementptr %struct.request, ptr %rq, i32 1, i32 25
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state.i, i32 noundef 4) #17
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 0, ptr %state.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_fc_map_queues(ptr noundef %set) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_maps = getelementptr inbounds %struct.blk_mq_tag_set, ptr %set, i32 0, i32 1
  %0 = ptrtoint ptr %nr_maps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_maps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp43.not = icmp eq i32 %1, 0
  br i1 %cmp43.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %driver_data = getelementptr inbounds %struct.blk_mq_tag_set, ptr %set, i32 0, i32 10
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data, align 4
  %lport = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %3, i32 0, i32 3
  %nr_queues.peel = getelementptr [3 x %struct.blk_mq_queue_map], ptr %set, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %nr_queues.peel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_queues.peel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.peel = icmp eq i32 %5, 0
  br i1 %tobool.not.peel, label %do.end.peel, label %if.end23.peel

if.end23.peel:                                    ; preds = %for.body.lr.ph
  %6 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lport, align 4
  %ops.peel = getelementptr inbounds %struct.nvme_fc_lport, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %ops.peel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.peel, align 8
  %map_queues.peel = getelementptr inbounds %struct.nvme_fc_port_template, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %map_queues.peel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map_queues.peel, align 4
  %tobool24.not.peel = icmp eq ptr %11, null
  br i1 %tobool24.not.peel, label %if.else.peel, label %if.then25.peel

if.then25.peel:                                   ; preds = %if.end23.peel
  call void @__sanitizer_cov_trace_pc() #19
  tail call void %11(ptr noundef %7, ptr noundef %set) #17
  br label %cleanup.peel

if.else.peel:                                     ; preds = %if.end23.peel
  call void @__sanitizer_cov_trace_pc() #19
  %call.peel = tail call i32 @blk_mq_map_queues(ptr noundef %set) #17
  br label %cleanup.peel

do.end.peel:                                      ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 2854, i32 noundef 9, ptr noundef null) #17
  br label %cleanup.peel

cleanup.peel:                                     ; preds = %do.end.peel, %if.else.peel, %if.then25.peel
  %12 = ptrtoint ptr %nr_maps to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_maps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.peel = icmp ugt i32 %13, 1
  br i1 %cmp.peel, label %cleanup.peel.for.body_crit_edge, label %cleanup.peel.for.end_crit_edge

cleanup.peel.for.end_crit_edge:                   ; preds = %cleanup.peel
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

cleanup.peel.for.body_crit_edge:                  ; preds = %cleanup.peel
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %cleanup.peel.for.body_crit_edge
  %i.044 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 1, %cleanup.peel.for.body_crit_edge ]
  %arrayidx = getelementptr [3 x %struct.blk_mq_queue_map], ptr %set, i32 0, i32 %i.044
  %nr_queues = getelementptr [3 x %struct.blk_mq_queue_map], ptr %set, i32 0, i32 %i.044, i32 1
  %14 = ptrtoint ptr %nr_queues to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end23

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end23:                                         ; preds = %for.body
  %16 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lport, align 4
  %ops = getelementptr inbounds %struct.nvme_fc_lport, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 8
  %map_queues = getelementptr inbounds %struct.nvme_fc_port_template, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %map_queues to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %map_queues, align 4
  %tobool24.not = icmp eq ptr %21, null
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  tail call void %21(ptr noundef %17, ptr noundef %arrayidx) #17
  br label %cleanup

if.else:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  %call = tail call i32 @blk_mq_map_queues(ptr noundef %arrayidx) #17
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then25, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.044, 1
  %22 = ptrtoint ptr %nr_maps to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr_maps, align 4
  %cmp = icmp ult i32 %inc, %23
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge, !llvm.loop !512

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %cleanup.peel.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvme_fail_nonready_command(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvme_setup_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @nvme_fc_start_fcp_op(ptr noundef %ctrl, ptr noundef %queue, ptr noundef %op, i32 noundef %data_len, i32 noundef %io_dir) unnamed_addr #0 align 64 {
entry:
  %last_sg.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %rport = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 4
  %0 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rport, align 8
  %port_state = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %port_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @nvme_fc_ctrl_get(ptr noundef %ctrl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %connection_id = getelementptr inbounds %struct.nvme_fc_queue, ptr %queue, i32 0, i32 8
  %4 = ptrtoint ptr %connection_id to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %connection_id, align 8
  %connection_id4 = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 9, i32 6
  %6 = ptrtoint ptr %connection_id4 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %connection_id4, align 8
  %data_len5 = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 9, i32 8
  %7 = ptrtoint ptr %data_len5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %data_len, ptr %data_len5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %io_dir)
  %8 = icmp ult i32 %io_dir, 3
  br i1 %8, label %switch.lookup, label %if.end3.sw.epilog_crit_edge

if.end3.sw.epilog_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  %switch.idx.cast = trunc i32 %io_dir to i8
  %flags9 = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 9, i32 5
  %9 = ptrtoint ptr %flags9 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %switch.idx.cast, ptr %flags9, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end3.sw.epilog_crit_edge
  %fcp_req = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 1
  %payload_length = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 1, i32 6
  %10 = ptrtoint ptr %payload_length to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %data_len, ptr %payload_length, align 4
  %io_dir11 = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 1, i32 10
  %11 = ptrtoint ptr %io_dir11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %io_dir, ptr %io_dir11, align 4
  %transferred_length = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 1, i32 14
  %12 = ptrtoint ptr %transferred_length to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %transferred_length, align 4
  %rcv_rsplen = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 1, i32 15
  %13 = ptrtoint ptr %rcv_rsplen to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %rcv_rsplen, align 8
  %status = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 1, i32 16
  %14 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %status, align 4
  %qnum = getelementptr inbounds %struct.nvme_fc_queue, ptr %queue, i32 0, i32 5
  %15 = ptrtoint ptr %qnum to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qnum, align 4
  %conv = trunc i32 %16 to i16
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %sqid = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 1, i32 11
  %18 = ptrtoint ptr %sqid to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %sqid, align 8
  %metadata = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 9, i32 9, i32 0, i32 0, i32 5
  %19 = ptrtoint ptr %metadata to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %metadata, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20)
  %tobool16.not = icmp eq i64 %20, 0
  br i1 %tobool16.not, label %sw.epilog.if.end47_crit_edge, label %land.rhs

sw.epilog.if.end47_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end47

land.rhs:                                         ; preds = %sw.epilog
  %.b169 = load i1, ptr @nvme_fc_start_fcp_op.__already_done, align 1
  br i1 %.b169, label %land.rhs.if.end47_crit_edge, label %if.then25, !prof !496

land.rhs.if.end47_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end47

if.then25:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @nvme_fc_start_fcp_op.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 2697, i32 noundef 9, ptr noundef null) #17
  br label %if.end47

if.end47:                                         ; preds = %if.then25, %land.rhs.if.end47_crit_edge, %sw.epilog.if.end47_crit_edge
  %flags55 = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 9, i32 9, i32 0, i32 0, i32 1
  %21 = ptrtoint ptr %flags55 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %flags55, align 1
  %23 = or i8 %22, 64
  store i8 %23, ptr %flags55, align 1
  %dptr = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 9, i32 9, i32 0, i32 0, i32 6
  %type = getelementptr inbounds %struct.nvme_sgl_desc, ptr %dptr, i32 0, i32 3
  %24 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 90, ptr %type, align 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %data_len)
  %length = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 9, i32 9, i32 0, i32 0, i32 6, i32 0, i32 1
  %26 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %length, align 8
  %27 = ptrtoint ptr %dptr to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 0, ptr %dptr, align 8
  %flags60 = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 6
  %28 = ptrtoint ptr %flags60 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags60, align 8
  %and = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool61.not = icmp eq i32 %and, 0
  br i1 %tobool61.not, label %if.then62, label %if.end47.if.end75_crit_edge

if.end47.if.end75_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end75

if.then62:                                        ; preds = %if.end47
  %rq = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 4
  %30 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rq, align 8
  %sg_cnt.i = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 1, i32 9
  %32 = ptrtoint ptr %sg_cnt.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %sg_cnt.i, align 8
  %rq_flags.i.i = getelementptr inbounds %struct.request, ptr %31, i32 0, i32 4
  %33 = ptrtoint ptr %rq_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rq_flags.i.i, align 8
  %and.i.i = and i32 %34, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %blk_rq_nr_phys_segments.exit.i, label %if.then62.if.end.i_crit_edge

if.then62.if.end.i_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

blk_rq_nr_phys_segments.exit.i:                   ; preds = %if.then62
  %nr_phys_segments.i.i = getelementptr inbounds %struct.request, ptr %31, i32 0, i32 19
  %35 = ptrtoint ptr %nr_phys_segments.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %nr_phys_segments.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool.not.i = icmp eq i16 %36, 0
  br i1 %tobool.not.i, label %blk_rq_nr_phys_segments.exit.i.if.end75_crit_edge, label %blk_rq_nr_phys_segments.exit.i.if.end.i_crit_edge

blk_rq_nr_phys_segments.exit.i.if.end.i_crit_edge: ; preds = %blk_rq_nr_phys_segments.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

blk_rq_nr_phys_segments.exit.i.if.end75_crit_edge: ; preds = %blk_rq_nr_phys_segments.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end75

if.end.i:                                         ; preds = %blk_rq_nr_phys_segments.exit.i.if.end.i_crit_edge, %if.then62.if.end.i_crit_edge
  %first_sgl.i = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 1, i32 8
  %37 = ptrtoint ptr %first_sgl.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %first_sgl.i, align 4
  %sg_table.i = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 1, i32 7
  %39 = ptrtoint ptr %sg_table.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %sg_table.i, align 8
  %40 = ptrtoint ptr %rq_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rq_flags.i.i, align 8
  %and.i78.i = and i32 %41, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i78.i)
  %tobool.not.i79.i = icmp eq i32 %and.i78.i, 0
  br i1 %tobool.not.i79.i, label %if.end.i81.i, label %if.end.i.blk_rq_nr_phys_segments.exit83.i_crit_edge

if.end.i.blk_rq_nr_phys_segments.exit83.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %blk_rq_nr_phys_segments.exit83.i

if.end.i81.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %nr_phys_segments.i80.i = getelementptr inbounds %struct.request, ptr %31, i32 0, i32 19
  %42 = ptrtoint ptr %nr_phys_segments.i80.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %nr_phys_segments.i80.i, align 4
  %phi.cast.i = zext i16 %43 to i32
  br label %blk_rq_nr_phys_segments.exit83.i

blk_rq_nr_phys_segments.exit83.i:                 ; preds = %if.end.i81.i, %if.end.i.blk_rq_nr_phys_segments.exit83.i_crit_edge
  %retval.0.i82.i = phi i32 [ %phi.cast.i, %if.end.i81.i ], [ 1, %if.end.i.blk_rq_nr_phys_segments.exit83.i_crit_edge ]
  %call5.i = tail call i32 @sg_alloc_table_chained(ptr noundef %sg_table.i, i32 noundef %retval.0.i82.i, ptr noundef %38, i32 noundef 2) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %blk_rq_nr_phys_segments.exit83.i.if.then66_crit_edge

blk_rq_nr_phys_segments.exit83.i.if.then66_crit_edge: ; preds = %blk_rq_nr_phys_segments.exit83.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then66

if.end8.i:                                        ; preds = %blk_rq_nr_phys_segments.exit83.i
  %44 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %31, align 8
  %46 = ptrtoint ptr %sg_table.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sg_table.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last_sg.i.i) #17
  %48 = ptrtoint ptr %last_sg.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %last_sg.i.i, align 4
  %call.i.i173 = call i32 @__blk_rq_map_sg(ptr noundef %45, ptr noundef %31, ptr noundef %47, ptr noundef nonnull %last_sg.i.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last_sg.i.i) #17
  %nents.i = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 8
  %49 = ptrtoint ptr %nents.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call.i.i173, ptr %nents.i, align 8
  %50 = ptrtoint ptr %rq_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rq_flags.i.i, align 8
  %and.i85.i = and i32 %51, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i85.i)
  %tobool.not.i86.i = icmp eq i32 %and.i85.i, 0
  br i1 %tobool.not.i86.i, label %if.end.i88.i, label %if.end8.i.blk_rq_nr_phys_segments.exit90.i_crit_edge

if.end8.i.blk_rq_nr_phys_segments.exit90.i_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %blk_rq_nr_phys_segments.exit90.i

if.end.i88.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #19
  %nr_phys_segments.i87.i = getelementptr inbounds %struct.request, ptr %31, i32 0, i32 19
  %52 = ptrtoint ptr %nr_phys_segments.i87.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %nr_phys_segments.i87.i, align 4
  %phi.cast98.i = zext i16 %53 to i32
  br label %blk_rq_nr_phys_segments.exit90.i

blk_rq_nr_phys_segments.exit90.i:                 ; preds = %if.end.i88.i, %if.end8.i.blk_rq_nr_phys_segments.exit90.i_crit_edge
  %retval.0.i89.i = phi i32 [ %phi.cast98.i, %if.end.i88.i ], [ 1, %if.end8.i.blk_rq_nr_phys_segments.exit90.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i173, i32 %retval.0.i89.i)
  %cmp.i = icmp ugt i32 %call.i.i173, %retval.0.i89.i
  br i1 %cmp.i, label %do.end.i, label %blk_rq_nr_phys_segments.exit90.i.if.end30.i_crit_edge, !prof !504

blk_rq_nr_phys_segments.exit90.i.if.end30.i_crit_edge: ; preds = %blk_rq_nr_phys_segments.exit90.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end30.i

do.end.i:                                         ; preds = %blk_rq_nr_phys_segments.exit90.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 2598, i32 noundef 9, ptr noundef null) #17
  br label %if.end30.i

if.end30.i:                                       ; preds = %do.end.i, %blk_rq_nr_phys_segments.exit90.i.if.end30.i_crit_edge
  %lport.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 3
  %54 = ptrtoint ptr %lport.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %lport.i, align 4
  %dev.i = getelementptr inbounds %struct.nvme_fc_lport, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i, align 4
  %58 = ptrtoint ptr %sg_table.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sg_table.i, align 8
  %60 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nents.i, align 8
  %tobool.not.i92.i = icmp eq ptr %57, null
  br i1 %tobool.not.i92.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #19
  %cmd_flags.i = getelementptr inbounds %struct.request, ptr %31, i32 0, i32 3
  %62 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cmd_flags.i, align 4
  %and.i91.i = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i91.i)
  %tobool.i.not.i = icmp eq i32 %and.i91.i, 0
  %cond.i = select i1 %tobool.i.not.i, i32 2, i32 1
  %call.i93.i = call i32 @dma_map_sg_attrs(ptr noundef nonnull %57, ptr noundef %59, i32 noundef %61, i32 noundef %cond.i, i32 noundef 0) #17
  br label %fc_dma_map_sg.exit.i

cond.false.i.i:                                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp.i.i.i = icmp eq i32 %61, 0
  br i1 %cmp.i.i.i, label %cond.false.i.i.do.end.i.i.i_crit_edge, label %lor.rhs.i.i.i

cond.false.i.i.do.end.i.i.i_crit_edge:            ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i.i

lor.rhs.i.i.i:                                    ; preds = %cond.false.i.i
  %length.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %59, i32 0, i32 2
  %64 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %length.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp1.i.i.i = icmp eq i32 %65, 0
  br i1 %cmp1.i.i.i, label %lor.rhs.i.i.i.do.end.i.i.i_crit_edge, label %lor.rhs.i.i.i.if.end.i.i.i_crit_edge, !prof !504

lor.rhs.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i.i

lor.rhs.i.i.i.do.end.i.i.i_crit_edge:             ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %lor.rhs.i.i.i.do.end.i.i.i_crit_edge, %cond.false.i.i.do.end.i.i.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1004, i32 noundef 9, ptr noundef null) #17
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %lor.rhs.i.i.i.if.end.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp2030.i.i.i = icmp sgt i32 %61, 0
  br i1 %cmp2030.i.i.i, label %if.end.i.i.i.for.body.i.i.i_crit_edge, label %fc_dma_map_sg.exit.thread.i

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  br label %for.body.i.i.i

fc_dma_map_sg.exit.thread.i:                      ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %66 = ptrtoint ptr %sg_cnt.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %61, ptr %sg_cnt.i, align 8
  br label %if.then53.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.end.i.i.i.for.body.i.i.i_crit_edge
  %s.032.i.i.i = phi ptr [ %call.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %59, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %i.031.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %dma_address.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %s.032.i.i.i, i32 0, i32 3
  %67 = ptrtoint ptr %dma_address.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %dma_address.i.i.i, align 4
  %length21.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %s.032.i.i.i, i32 0, i32 2
  %68 = ptrtoint ptr %length21.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %length21.i.i.i, align 4
  %dma_length.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %s.032.i.i.i, i32 0, i32 4
  %70 = ptrtoint ptr %dma_length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %dma_length.i.i.i, align 4
  %inc.i.i.i = add nuw nsw i32 %i.031.i.i.i, 1
  %call.i.i.i = call ptr @sg_next(ptr noundef %s.032.i.i.i) #17
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %61
  br i1 %exitcond.not.i.i.i, label %for.body.i.i.i.fc_dma_map_sg.exit.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i.i

for.body.i.i.i.fc_dma_map_sg.exit.i_crit_edge:    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fc_dma_map_sg.exit.i

fc_dma_map_sg.exit.i:                             ; preds = %for.body.i.i.i.fc_dma_map_sg.exit.i_crit_edge, %cond.true.i.i
  %cond.i.i = phi i32 [ %call.i93.i, %cond.true.i.i ], [ %61, %for.body.i.i.i.fc_dma_map_sg.exit.i_crit_edge ]
  %71 = ptrtoint ptr %sg_cnt.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %cond.i.i, ptr %sg_cnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond.i.i)
  %cmp45.i = icmp slt i32 %cond.i.i, 1
  br i1 %cmp45.i, label %fc_dma_map_sg.exit.i.if.then53.i_crit_edge, label %fc_dma_map_sg.exit.i.if.end75_crit_edge, !prof !504

fc_dma_map_sg.exit.i.if.end75_crit_edge:          ; preds = %fc_dma_map_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end75

fc_dma_map_sg.exit.i.if.then53.i_crit_edge:       ; preds = %fc_dma_map_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then53.i

if.then53.i:                                      ; preds = %fc_dma_map_sg.exit.i.if.then53.i_crit_edge, %fc_dma_map_sg.exit.thread.i
  call void @sg_free_table_chained(ptr noundef %sg_table.i, i32 noundef 2) #17
  %72 = ptrtoint ptr %sg_cnt.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %sg_cnt.i, align 8
  br label %if.then66

if.then66:                                        ; preds = %if.then53.i, %blk_rq_nr_phys_segments.exit83.i.if.then66_crit_edge
  %spec.select = phi i8 [ 10, %if.then53.i ], [ 9, %blk_rq_nr_phys_segments.exit83.i.if.then66_crit_edge ]
  %73 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rq, align 8
  call void @nvme_cleanup_cmd(ptr noundef %74) #17
  call fastcc void @nvme_fc_ctrl_put(ptr noundef %ctrl)
  br label %cleanup

if.end75:                                         ; preds = %fc_dma_map_sg.exit.i.if.end75_crit_edge, %blk_rq_nr_phys_segments.exit.i.if.end75_crit_edge, %if.end47.if.end75_crit_edge
  %lport = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 3
  %75 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %lport, align 4
  %dev = getelementptr inbounds %struct.nvme_fc_lport, ptr %76, i32 0, i32 4
  %77 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev, align 4
  %tobool.not.i174 = icmp eq ptr %78, null
  br i1 %tobool.not.i174, label %if.end75.fc_dma_sync_single_for_device.exit_crit_edge, label %if.then.i

if.end75.fc_dma_sync_single_for_device.exit_crit_edge: ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #19
  br label %fc_dma_sync_single_for_device.exit

if.then.i:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #19
  %cmddma = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 1, i32 2
  %79 = ptrtoint ptr %cmddma to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %cmddma, align 8
  call void @dma_sync_single_for_device(ptr noundef nonnull %78, i32 noundef %80, i32 noundef 96, i32 noundef 1) #17
  br label %fc_dma_sync_single_for_device.exit

fc_dma_sync_single_for_device.exit:               ; preds = %if.then.i, %if.end75.fc_dma_sync_single_for_device.exit_crit_edge
  %state = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 5
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #17
  %81 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile i32 2, ptr %state, align 4
  %82 = ptrtoint ptr %flags60 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %flags60, align 8
  %and78 = and i32 %83, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.then80, label %fc_dma_sync_single_for_device.exit.if.end82_crit_edge

fc_dma_sync_single_for_device.exit.if.end82_crit_edge: ; preds = %fc_dma_sync_single_for_device.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end82

if.then80:                                        ; preds = %fc_dma_sync_single_for_device.exit
  call void @__sanitizer_cov_trace_pc() #19
  %rq81 = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 4
  %84 = ptrtoint ptr %rq81 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rq81, align 8
  call void @blk_mq_start_request(ptr noundef %85) #17
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %fc_dma_sync_single_for_device.exit.if.end82_crit_edge
  %csn = getelementptr inbounds %struct.nvme_fc_queue, ptr %queue, i32 0, i32 9
  %call.i.i171 = call zeroext i1 @__kasan_check_write(ptr noundef %csn, i32 noundef 4) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !505
  call void @llvm.prefetch.p0(ptr %csn, i32 1, i32 3, i32 1) #17
  %86 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %csn, ptr %csn, i32 1, ptr elementtype(i32) %csn) #17, !srcloc !506
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %86, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !507
  %csn84 = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 9, i32 7
  %87 = ptrtoint ptr %csn84 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %asmresult.i.i.i.i, ptr %csn84, align 8
  %88 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %lport, align 4
  %ops = getelementptr inbounds %struct.nvme_fc_lport, ptr %89, i32 0, i32 5
  %90 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ops, align 8
  %fcp_io = getelementptr inbounds %struct.nvme_fc_port_template, ptr %91, i32 0, i32 5
  %92 = ptrtoint ptr %fcp_io to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %fcp_io, align 4
  %94 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rport, align 8
  %lldd_handle = getelementptr inbounds %struct.nvme_fc_queue, ptr %queue, i32 0, i32 3
  %96 = ptrtoint ptr %lldd_handle to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %lldd_handle, align 4
  %call90 = call i32 %93(ptr noundef %89, ptr noundef %95, ptr noundef %97, ptr noundef %fcp_req) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end82.cleanup_crit_edge, label %if.then92

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then92:                                        ; preds = %if.end82
  %call.i.i172 = call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !500
  call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #17
  %98 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 4, ptr %state) #17, !srcloc !501
  %asmresult.i.i = extractvalue { i32, i32 } %98, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !502
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %asmresult.i.i)
  %cmp.i176 = icmp eq i32 %asmresult.i.i, 3
  br i1 %cmp.i176, label %do.body1.i, label %if.then92.__nvme_fc_fcpop_chk_teardowns.exit_crit_edge

if.then92.__nvme_fc_fcpop_chk_teardowns.exit_crit_edge: ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #19
  br label %__nvme_fc_fcpop_chk_teardowns.exit

do.body1.i:                                       ; preds = %if.then92
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %ctrl) #17
  %flags6.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 15
  %99 = ptrtoint ptr %flags6.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %flags6.i, align 4
  %101 = and i32 %100, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool.not.i177 = icmp eq i32 %101, 0
  br i1 %tobool.not.i177, label %do.body1.i.if.end13.i_crit_edge, label %land.lhs.true.i

do.body1.i.if.end13.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13.i

land.lhs.true.i:                                  ; preds = %do.body1.i
  %102 = ptrtoint ptr %flags60 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %flags60, align 8
  %and.i = and i32 %103, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i.if.end13.i_crit_edge, label %if.then10.i

land.lhs.true.i.if.end13.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13.i

if.then10.i:                                      ; preds = %land.lhs.true.i
  %iocnt.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 16
  %104 = ptrtoint ptr %iocnt.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %iocnt.i, align 4
  %dec.i = add i32 %105, -1
  store i32 %dec.i, ptr %iocnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool11.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool11.not.i, label %if.then12.i, label %if.then10.i.if.end13.i_crit_edge

if.then10.i.if.end13.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13.i

if.then12.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #19
  %ioabort_wait.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %ctrl, i32 0, i32 17
  call void @__wake_up(ptr noundef %ioabort_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #17
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then12.i, %if.then10.i.if.end13.i_crit_edge, %land.lhs.true.i.if.end13.i_crit_edge, %do.body1.i.if.end13.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %ctrl, i32 noundef %call3.i) #17
  br label %__nvme_fc_fcpop_chk_teardowns.exit

__nvme_fc_fcpop_chk_teardowns.exit:               ; preds = %if.end13.i, %if.then92.__nvme_fc_fcpop_chk_teardowns.exit_crit_edge
  %106 = ptrtoint ptr %flags60 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %flags60, align 8
  %and96 = and i32 %107, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.then98, label %__nvme_fc_fcpop_chk_teardowns.exit.if.end101_crit_edge

__nvme_fc_fcpop_chk_teardowns.exit.if.end101_crit_edge: ; preds = %__nvme_fc_fcpop_chk_teardowns.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end101

if.then98:                                        ; preds = %__nvme_fc_fcpop_chk_teardowns.exit
  %rq99 = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 4
  %108 = ptrtoint ptr %rq99 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %rq99, align 8
  %sg_cnt.i178 = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 1, i32 9
  %110 = ptrtoint ptr %sg_cnt.i178 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %sg_cnt.i178, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool.not.i179 = icmp eq i32 %111, 0
  br i1 %tobool.not.i179, label %if.then98.nvme_fc_unmap_data.exit_crit_edge, label %if.end.i184

if.then98.nvme_fc_unmap_data.exit_crit_edge:      ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #19
  br label %nvme_fc_unmap_data.exit

if.end.i184:                                      ; preds = %if.then98
  %112 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %lport, align 4
  %dev.i181 = getelementptr inbounds %struct.nvme_fc_lport, ptr %113, i32 0, i32 4
  %114 = ptrtoint ptr %dev.i181 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev.i181, align 4
  %sg_table.i182 = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 1, i32 7
  %tobool.not.i.i183 = icmp eq ptr %115, null
  br i1 %tobool.not.i.i183, label %if.end.i184.fc_dma_unmap_sg.exit.i_crit_edge, label %if.then.i.i

if.end.i184.fc_dma_unmap_sg.exit.i_crit_edge:     ; preds = %if.end.i184
  call void @__sanitizer_cov_trace_pc() #19
  br label %fc_dma_unmap_sg.exit.i

if.then.i.i:                                      ; preds = %if.end.i184
  call void @__sanitizer_cov_trace_pc() #19
  %cmd_flags.i185 = getelementptr inbounds %struct.request, ptr %109, i32 0, i32 3
  %116 = ptrtoint ptr %cmd_flags.i185 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %cmd_flags.i185, align 4
  %and.i.i186 = and i32 %117, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i186)
  %tobool.i.not.i187 = icmp eq i32 %and.i.i186, 0
  %cond.i188 = select i1 %tobool.i.not.i187, i32 2, i32 1
  %nents.i189 = getelementptr inbounds %struct.nvme_fc_fcp_op, ptr %op, i32 0, i32 8
  %118 = ptrtoint ptr %nents.i189 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %nents.i189, align 8
  %120 = ptrtoint ptr %sg_table.i182 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %sg_table.i182, align 8
  call void @dma_unmap_sg_attrs(ptr noundef nonnull %115, ptr noundef %121, i32 noundef %119, i32 noundef %cond.i188, i32 noundef 0) #17
  br label %fc_dma_unmap_sg.exit.i

fc_dma_unmap_sg.exit.i:                           ; preds = %if.then.i.i, %if.end.i184.fc_dma_unmap_sg.exit.i_crit_edge
  call void @sg_free_table_chained(ptr noundef %sg_table.i182, i32 noundef 2) #17
  %122 = ptrtoint ptr %sg_cnt.i178 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %sg_cnt.i178, align 8
  br label %nvme_fc_unmap_data.exit

nvme_fc_unmap_data.exit:                          ; preds = %fc_dma_unmap_sg.exit.i, %if.then98.nvme_fc_unmap_data.exit_crit_edge
  %123 = ptrtoint ptr %rq99 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %rq99, align 8
  call void @nvme_cleanup_cmd(ptr noundef %124) #17
  br label %if.end101

if.end101:                                        ; preds = %nvme_fc_unmap_data.exit, %__nvme_fc_fcpop_chk_teardowns.exit.if.end101_crit_edge
  call fastcc void @nvme_fc_ctrl_put(ptr noundef %ctrl)
  %125 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %rport, align 8
  %port_state104 = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %126, i32 0, i32 8
  %127 = ptrtoint ptr %port_state104 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %port_state104, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %128)
  %cmp105 = icmp ne i32 %128, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call90)
  %cmp107.not = icmp eq i32 %call90, -16
  %or.cond = select i1 %cmp105, i1 true, i1 %cmp107.not
  %spec.select170 = select i1 %or.cond, i8 9, i8 10
  br label %cleanup

cleanup:                                          ; preds = %if.end101, %if.end82.cleanup_crit_edge, %if.then66, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 9, %entry.cleanup_crit_edge ], [ 10, %if.end.cleanup_crit_edge ], [ 0, %if.end82.cleanup_crit_edge ], [ %spec.select, %if.then66 ], [ %spec.select170, %if.end101 ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__nvme_check_ready(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_cleanup_cmd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_start_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table_chained(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__blk_rq_map_sg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_map_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmf_connect_io_queue(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_update_nr_hw_queues(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nvme_fc_init_admin_hctx(ptr noundef %hctx, ptr nocapture noundef readonly %data, i32 noundef %hctx_idx) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %queues.i = getelementptr inbounds %struct.nvme_fc_ctrl, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %queues.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queues.i, align 4
  %arrayidx.i = getelementptr %struct.nvme_fc_queue, ptr %1, i32 %hctx_idx
  %driver_data.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 9
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %arrayidx.i, ptr %driver_data.i, align 128
  %hctx1.i = getelementptr %struct.nvme_fc_queue, ptr %1, i32 %hctx_idx, i32 2
  %3 = ptrtoint ptr %hctx1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %hctx, ptr %hctx1.i, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmf_reg_read32(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmf_reg_write32(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmf_reg_read64(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_fc_nvme_ctrl_freed(ptr noundef %nctrl) #0 align 64 {
if.end:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %nctrl, i32 -936
  tail call fastcc void @nvme_fc_ctrl_put(ptr noundef %add.ptr.i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_fc_submit_async_event(ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %arg, i32 -328
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %arg, i32 -936
  %aen_ops = getelementptr i8, ptr %arg, i32 -264
  %queue = getelementptr i8, ptr %arg, i32 -156
  %3 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %queue, align 4
  %call2 = tail call fastcc zeroext i8 @nvme_fc_start_fcp_op(ptr noundef %add.ptr.i, ptr noundef %4, ptr noundef %aen_ops, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call2)
  %tobool3.not = icmp eq i8 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %device = getelementptr i8, ptr %arg, i32 1216
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.213) #21
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_fc_delete_ctrl(ptr noundef %nctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %nctrl, i32 -936
  %ioerr_work = getelementptr i8, ptr %nctrl, i32 -476
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %ioerr_work) #17
  %connect_work = getelementptr i8, ptr %nctrl, i32 -432
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %connect_work) #17
  tail call fastcc void @nvme_fc_delete_association(ptr noundef %add.ptr.i)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmf_get_address(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_fc_nvme_discovery_store(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef returned %count) #0 align 64 {
entry:
  %hostaddr.i = alloca [64 x i8], align 1
  %tgtaddr.i = alloca [64 x i8], align 1
  %envp.i = alloca [4 x ptr], align 4
  %local_disc_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %local_disc_list) #17
  %0 = getelementptr inbounds %struct.list_head, ptr %local_disc_list, i32 0, i32 1
  %1 = ptrtoint ptr %local_disc_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %local_disc_list, ptr %local_disc_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %local_disc_list, ptr %0, align 4
  %call2 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @nvme_fc_lock) #17
  br label %restart

restart:                                          ; preds = %if.then22.restart_crit_edge, %entry
  %failcnt.0 = phi i32 [ 0, %entry ], [ %inc, %if.then22.restart_crit_edge ]
  %.pn99 = load ptr, ptr @nvme_fc_lport_list, align 4
  %cmp6.not101 = icmp eq ptr %.pn99, @nvme_fc_lport_list
  br i1 %cmp6.not101, label %restart.process_local_list_crit_edge, label %restart.for.body_crit_edge

restart.for.body_crit_edge:                       ; preds = %restart
  br label %for.body

restart.process_local_list_crit_edge:             ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #19
  br label %process_local_list

for.cond.loopexit:                                ; preds = %for.inc.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %3 = ptrtoint ptr %.pn102 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn102, align 4
  %cmp6.not = icmp eq ptr %.pn, @nvme_fc_lport_list
  br i1 %cmp6.not, label %for.cond.loopexit.process_local_list_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.cond.loopexit.process_local_list_crit_edge:   ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #19
  br label %process_local_list

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %restart.for.body_crit_edge
  %.pn102 = phi ptr [ %.pn, %for.cond.loopexit.for.body_crit_edge ], [ %.pn99, %restart.for.body_crit_edge ]
  %lport.0103 = getelementptr i8, ptr %.pn102, i32 -92
  %endp_list = getelementptr i8, ptr %.pn102, i32 8
  %4 = ptrtoint ptr %endp_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn8894 = load ptr, ptr %endp_list, align 4
  %cmp15.not96 = icmp eq ptr %.pn8894, %endp_list
  br i1 %cmp15.not96, label %for.body.for.cond.loopexit_crit_edge, label %for.body.for.body18_crit_edge

for.body.for.body18_crit_edge:                    ; preds = %for.body
  br label %for.body18

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.loopexit

for.body18:                                       ; preds = %for.inc.for.body18_crit_edge, %for.body.for.body18_crit_edge
  %.pn8897 = phi ptr [ %.pn88, %for.inc.for.body18_crit_edge ], [ %.pn8894, %for.body.for.body18_crit_edge ]
  %call19 = call fastcc i32 @nvme_fc_lport_get(ptr noundef %lport.0103)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %for.body18.for.inc_crit_edge, label %if.end

for.body18.for.inc_crit_edge:                     ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end:                                           ; preds = %for.body18
  %rport.098 = getelementptr i8, ptr %.pn8897, i32 -48
  %call20 = call fastcc i32 @nvme_fc_rport_get(ptr noundef %rport.098)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %if.end32

if.then22:                                        ; preds = %if.end
  call fastcc void @nvme_fc_lport_put(ptr noundef %lport.0103)
  %inc = add nuw nsw i32 %failcnt.0, 1
  %exitcond.not = icmp eq i32 %inc, 21
  br i1 %exitcond.not, label %do.end29, label %if.then22.restart_crit_edge

if.then22.restart_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #19
  br label %restart

do.end29:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #19
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.217) #21
  br label %process_local_list

if.end32:                                         ; preds = %if.end
  %disc_list = getelementptr i8, ptr %.pn8897, i32 32
  %5 = ptrtoint ptr %disc_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %disc_list, align 4
  %cmp.i.not = icmp eq ptr %6, %disc_list
  br i1 %cmp.i.not, label %if.then35, label %if.end32.for.inc_crit_edge

if.end32.for.inc_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then35:                                        ; preds = %if.end32
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %0, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %disc_list, ptr noundef %8, ptr noundef nonnull %local_disc_list) #17
  br i1 %call.i.i, label %if.end.i.i, label %if.then35.for.inc_crit_edge

if.then35.for.inc_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end.i.i:                                       ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #19
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %disc_list, ptr %0, align 4
  %10 = ptrtoint ptr %disc_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %local_disc_list, ptr %disc_list, align 4
  %prev3.i.i = getelementptr i8, ptr %.pn8897, i32 36
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %disc_list, ptr %8, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i, %if.then35.for.inc_crit_edge, %if.end32.for.inc_crit_edge, %for.body18.for.inc_crit_edge
  %13 = ptrtoint ptr %.pn8897 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn88 = load ptr, ptr %.pn8897, align 4
  %cmp15.not = icmp eq ptr %.pn88, %endp_list
  br i1 %cmp15.not, label %for.inc.for.cond.loopexit_crit_edge, label %for.inc.for.body18_crit_edge

for.inc.for.body18_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body18

for.inc.for.cond.loopexit_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.loopexit

process_local_list:                               ; preds = %do.end29, %for.cond.loopexit.process_local_list_crit_edge, %restart.process_local_list_crit_edge
  %14 = ptrtoint ptr %local_disc_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %local_disc_list, align 4
  %cmp.i89.not104 = icmp eq ptr %15, %local_disc_list
  br i1 %cmp.i89.not104, label %process_local_list.while.end_crit_edge, label %while.body.lr.ph

process_local_list.while.end_crit_edge:           ; preds = %process_local_list
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body.lr.ph:                                 ; preds = %process_local_list
  %16 = getelementptr inbounds [4 x ptr], ptr %envp.i, i32 0, i32 1
  %17 = getelementptr inbounds [4 x ptr], ptr %envp.i, i32 0, i32 2
  %18 = getelementptr inbounds [4 x ptr], ptr %envp.i, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %nvme_fc_signal_discovery_scan.exit.while.body_crit_edge, %while.body.lr.ph
  %19 = phi ptr [ %15, %while.body.lr.ph ], [ %48, %nvme_fc_signal_discovery_scan.exit.while.body_crit_edge ]
  %flags.0105 = phi i32 [ %call2, %while.body.lr.ph ], [ %call67, %nvme_fc_signal_discovery_scan.exit.while.body_crit_edge ]
  %add.ptr56 = getelementptr i8, ptr %19, i32 -80
  %call.i.i91 = call zeroext i1 @__list_del_entry_valid(ptr noundef %19) #17
  br i1 %call.i.i91, label %if.end.i.i92, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_init.exit

if.end.i.i92:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i92, %while.body.list_del_init.exit_crit_edge
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %19, ptr %19, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %19, ptr %prev.i3.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @nvme_fc_lock, i32 noundef %flags.0105) #17
  %lport58 = getelementptr i8, ptr %19, i32 12
  %28 = ptrtoint ptr %lport58 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lport58, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hostaddr.i) #17
  %30 = call ptr @memset(ptr %hostaddr.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tgtaddr.i) #17
  %31 = call ptr @memset(ptr %tgtaddr.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %envp.i) #17
  %32 = ptrtoint ptr %envp.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.31, ptr %envp.i, align 4
  %33 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %hostaddr.i, ptr %16, align 4
  %34 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %tgtaddr.i, ptr %17, align 4
  %35 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %18, align 4
  %port_role.i = getelementptr i8, ptr %19, i32 -76
  %36 = ptrtoint ptr %port_role.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port_role.i, align 4
  %and.i = and i32 %37, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %list_del_init.exit.nvme_fc_signal_discovery_scan.exit_crit_edge, label %if.end.i

list_del_init.exit.nvme_fc_signal_discovery_scan.exit_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %nvme_fc_signal_discovery_scan.exit

if.end.i:                                         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #19
  %node_name.i = getelementptr inbounds %struct.nvme_fc_local_port, ptr %29, i32 0, i32 2
  %38 = ptrtoint ptr %node_name.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %node_name.i, align 8
  %port_name.i = getelementptr inbounds %struct.nvme_fc_local_port, ptr %29, i32 0, i32 3
  %40 = ptrtoint ptr %port_name.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %port_name.i, align 8
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %hostaddr.i, i32 noundef 64, ptr noundef nonnull @.str.32, i64 noundef %39, i64 noundef %41) #17
  %node_name8.i = getelementptr i8, ptr %19, i32 -72
  %42 = ptrtoint ptr %node_name8.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %node_name8.i, align 8
  %port_name10.i = getelementptr i8, ptr %19, i32 -64
  %44 = ptrtoint ptr %port_name10.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %port_name10.i, align 8
  %call11.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tgtaddr.i, i32 noundef 64, ptr noundef nonnull @.str.33, i64 noundef %43, i64 noundef %45) #17
  %46 = load ptr, ptr @fc_udev_device, align 4
  %call13.i = call i32 @kobject_uevent_env(ptr noundef %46, i32 noundef 2, ptr noundef nonnull %envp.i) #17
  br label %nvme_fc_signal_discovery_scan.exit

nvme_fc_signal_discovery_scan.exit:               ; preds = %if.end.i, %list_del_init.exit.nvme_fc_signal_discovery_scan.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %envp.i) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tgtaddr.i) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hostaddr.i) #17
  call fastcc void @nvme_fc_rport_put(ptr noundef %add.ptr56)
  call fastcc void @nvme_fc_lport_put(ptr noundef %29)
  %call67 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @nvme_fc_lock) #17
  %47 = ptrtoint ptr %local_disc_list to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %local_disc_list, align 4
  %cmp.i89.not = icmp eq ptr %48, %local_disc_list
  br i1 %cmp.i89.not, label %nvme_fc_signal_discovery_scan.exit.while.end_crit_edge, label %nvme_fc_signal_discovery_scan.exit.while.body_crit_edge

nvme_fc_signal_discovery_scan.exit.while.body_crit_edge: ; preds = %nvme_fc_signal_discovery_scan.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

nvme_fc_signal_discovery_scan.exit.while.end_crit_edge: ; preds = %nvme_fc_signal_discovery_scan.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.end:                                        ; preds = %nvme_fc_signal_discovery_scan.exit.while.end_crit_edge, %process_local_list.while.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call2, %process_local_list.while.end_crit_edge ], [ %call67, %nvme_fc_signal_discovery_scan.exit.while.end_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @nvme_fc_lock, i32 noundef %flags.0.lcssa) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %local_disc_list) #17
  ret i32 %count
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fc_appid_store(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %cgrp_id.i.i = alloca [17 x i8], align 1
  %cgrp_id.i = alloca i64, align 8
  %app_id.i = alloca [129 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cgrp_id.i) #17
  %0 = ptrtoint ptr %cgrp_id.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %cgrp_id.i, align 8, !annotation !503
  call void @llvm.lifetime.start.p0(i64 129, ptr nonnull %app_id.i) #17
  %1 = call ptr @memset(ptr %app_id.i, i32 255, i32 129)
  %sub.i = add i32 %count, -1
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %sub.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp.i = icmp eq i8 %3, 10
  %spec.select.i = select i1 %cmp.i, i32 %sub.i, i32 %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 146, i32 %spec.select.i)
  %cmp2.i = icmp ugt i32 %spec.select.i, 146
  br i1 %cmp2.i, label %entry._crit_edge, label %lor.lhs.false.i

entry._crit_edge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %79

lor.lhs.false.i:                                  ; preds = %entry
  %call.i = tail call ptr @strchr(ptr noundef %buf, i32 noundef 58) #17
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %lor.lhs.false.i._crit_edge, label %if.end5.i

lor.lhs.false.i._crit_edge:                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %79

if.end5.i:                                        ; preds = %lor.lhs.false.i
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %cgrp_id.i.i) #17
  %4 = getelementptr inbounds [17 x i8], ptr %cgrp_id.i.i, i32 0, i32 1
  %5 = getelementptr inbounds [17 x i8], ptr %cgrp_id.i.i, i32 0, i32 2
  %6 = getelementptr inbounds [17 x i8], ptr %cgrp_id.i.i, i32 0, i32 3
  %7 = getelementptr inbounds [17 x i8], ptr %cgrp_id.i.i, i32 0, i32 4
  %8 = getelementptr inbounds [17 x i8], ptr %cgrp_id.i.i, i32 0, i32 5
  %9 = getelementptr inbounds [17 x i8], ptr %cgrp_id.i.i, i32 0, i32 6
  %10 = getelementptr inbounds [17 x i8], ptr %cgrp_id.i.i, i32 0, i32 7
  %11 = getelementptr inbounds [17 x i8], ptr %cgrp_id.i.i, i32 0, i32 8
  %12 = getelementptr inbounds [17 x i8], ptr %cgrp_id.i.i, i32 0, i32 9
  %13 = getelementptr inbounds [17 x i8], ptr %cgrp_id.i.i, i32 0, i32 10
  %14 = getelementptr inbounds [17 x i8], ptr %cgrp_id.i.i, i32 0, i32 11
  %15 = getelementptr inbounds [17 x i8], ptr %cgrp_id.i.i, i32 0, i32 12
  %16 = getelementptr inbounds [17 x i8], ptr %cgrp_id.i.i, i32 0, i32 13
  %17 = getelementptr inbounds [17 x i8], ptr %cgrp_id.i.i, i32 0, i32 14
  %18 = getelementptr inbounds [17 x i8], ptr %cgrp_id.i.i, i32 0, i32 15
  %19 = call ptr @memset(ptr %cgrp_id.i.i, i32 0, i32 17)
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %21)
  %cmp1.not.i.i = icmp eq i8 %21, 58
  br i1 %cmp1.not.i.i, label %if.end5.i.if.end6.i.i_crit_edge, label %if.then.i.i

if.end5.i.if.end6.i.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6.i.i

if.then.i.i:                                      ; preds = %if.end5.i
  %22 = ptrtoint ptr %cgrp_id.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %cgrp_id.i.i, align 1
  %arrayidx.1.i.i = getelementptr i8, ptr %buf, i32 1
  %23 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %24)
  %cmp1.not.1.i.i = icmp eq i8 %24, 58
  br i1 %cmp1.not.1.i.i, label %if.then.i.i.if.end6.i.i_crit_edge, label %if.then.1.i.i

if.then.i.i.if.end6.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6.i.i

if.then.1.i.i:                                    ; preds = %if.then.i.i
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %4, align 1
  %arrayidx.2.i.i = getelementptr i8, ptr %buf, i32 2
  %26 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %27)
  %cmp1.not.2.i.i = icmp eq i8 %27, 58
  br i1 %cmp1.not.2.i.i, label %if.then.1.i.i.if.end6.i.i_crit_edge, label %if.then.2.i.i

if.then.1.i.i.if.end6.i.i_crit_edge:              ; preds = %if.then.1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6.i.i

if.then.2.i.i:                                    ; preds = %if.then.1.i.i
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %5, align 1
  %arrayidx.3.i.i = getelementptr i8, ptr %buf, i32 3
  %29 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.3.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %30)
  %cmp1.not.3.i.i = icmp eq i8 %30, 58
  br i1 %cmp1.not.3.i.i, label %if.then.2.i.i.if.end6.i.i_crit_edge, label %if.then.3.i.i

if.then.2.i.i.if.end6.i.i_crit_edge:              ; preds = %if.then.2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6.i.i

if.then.3.i.i:                                    ; preds = %if.then.2.i.i
  %31 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %6, align 1
  %arrayidx.4.i.i = getelementptr i8, ptr %buf, i32 4
  %32 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.4.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %33)
  %cmp1.not.4.i.i = icmp eq i8 %33, 58
  br i1 %cmp1.not.4.i.i, label %if.then.3.i.i.if.end6.i.i_crit_edge, label %if.then.4.i.i

if.then.3.i.i.if.end6.i.i_crit_edge:              ; preds = %if.then.3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6.i.i

if.then.4.i.i:                                    ; preds = %if.then.3.i.i
  %34 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %7, align 1
  %arrayidx.5.i.i = getelementptr i8, ptr %buf, i32 5
  %35 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.5.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %36)
  %cmp1.not.5.i.i = icmp eq i8 %36, 58
  br i1 %cmp1.not.5.i.i, label %if.then.4.i.i.if.end6.i.i_crit_edge, label %if.then.5.i.i

if.then.4.i.i.if.end6.i.i_crit_edge:              ; preds = %if.then.4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6.i.i

if.then.5.i.i:                                    ; preds = %if.then.4.i.i
  %37 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %8, align 1
  %arrayidx.6.i.i = getelementptr i8, ptr %buf, i32 6
  %38 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.6.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %39)
  %cmp1.not.6.i.i = icmp eq i8 %39, 58
  br i1 %cmp1.not.6.i.i, label %if.then.5.i.i.if.end6.i.i_crit_edge, label %if.then.6.i.i

if.then.5.i.i.if.end6.i.i_crit_edge:              ; preds = %if.then.5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6.i.i

if.then.6.i.i:                                    ; preds = %if.then.5.i.i
  %40 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %9, align 1
  %arrayidx.7.i.i = getelementptr i8, ptr %buf, i32 7
  %41 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.7.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %42)
  %cmp1.not.7.i.i = icmp eq i8 %42, 58
  br i1 %cmp1.not.7.i.i, label %if.then.6.i.i.if.end6.i.i_crit_edge, label %if.then.7.i.i

if.then.6.i.i.if.end6.i.i_crit_edge:              ; preds = %if.then.6.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6.i.i

if.then.7.i.i:                                    ; preds = %if.then.6.i.i
  %43 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %10, align 1
  %arrayidx.8.i.i = getelementptr i8, ptr %buf, i32 8
  %44 = ptrtoint ptr %arrayidx.8.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.8.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %45)
  %cmp1.not.8.i.i = icmp eq i8 %45, 58
  br i1 %cmp1.not.8.i.i, label %if.then.7.i.i.if.end6.i.i_crit_edge, label %if.then.8.i.i

if.then.7.i.i.if.end6.i.i_crit_edge:              ; preds = %if.then.7.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6.i.i

if.then.8.i.i:                                    ; preds = %if.then.7.i.i
  %46 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %11, align 1
  %arrayidx.9.i.i = getelementptr i8, ptr %buf, i32 9
  %47 = ptrtoint ptr %arrayidx.9.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.9.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %48)
  %cmp1.not.9.i.i = icmp eq i8 %48, 58
  br i1 %cmp1.not.9.i.i, label %if.then.8.i.i.if.end6.i.i_crit_edge, label %if.then.9.i.i

if.then.8.i.i.if.end6.i.i_crit_edge:              ; preds = %if.then.8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6.i.i

if.then.9.i.i:                                    ; preds = %if.then.8.i.i
  %49 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %12, align 1
  %arrayidx.10.i.i = getelementptr i8, ptr %buf, i32 10
  %50 = ptrtoint ptr %arrayidx.10.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.10.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %51)
  %cmp1.not.10.i.i = icmp eq i8 %51, 58
  br i1 %cmp1.not.10.i.i, label %if.then.9.i.i.if.end6.i.i_crit_edge, label %if.then.10.i.i

if.then.9.i.i.if.end6.i.i_crit_edge:              ; preds = %if.then.9.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6.i.i

if.then.10.i.i:                                   ; preds = %if.then.9.i.i
  %52 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %13, align 1
  %arrayidx.11.i.i = getelementptr i8, ptr %buf, i32 11
  %53 = ptrtoint ptr %arrayidx.11.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.11.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %54)
  %cmp1.not.11.i.i = icmp eq i8 %54, 58
  br i1 %cmp1.not.11.i.i, label %if.then.10.i.i.if.end6.i.i_crit_edge, label %if.then.11.i.i

if.then.10.i.i.if.end6.i.i_crit_edge:             ; preds = %if.then.10.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6.i.i

if.then.11.i.i:                                   ; preds = %if.then.10.i.i
  %55 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %14, align 1
  %arrayidx.12.i.i = getelementptr i8, ptr %buf, i32 12
  %56 = ptrtoint ptr %arrayidx.12.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.12.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %57)
  %cmp1.not.12.i.i = icmp eq i8 %57, 58
  br i1 %cmp1.not.12.i.i, label %if.then.11.i.i.if.end6.i.i_crit_edge, label %if.then.12.i.i

if.then.11.i.i.if.end6.i.i_crit_edge:             ; preds = %if.then.11.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6.i.i

if.then.12.i.i:                                   ; preds = %if.then.11.i.i
  %58 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %15, align 1
  %arrayidx.13.i.i = getelementptr i8, ptr %buf, i32 13
  %59 = ptrtoint ptr %arrayidx.13.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.13.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %60)
  %cmp1.not.13.i.i = icmp eq i8 %60, 58
  br i1 %cmp1.not.13.i.i, label %if.then.12.i.i.if.end6.i.i_crit_edge, label %if.then.13.i.i

if.then.12.i.i.if.end6.i.i_crit_edge:             ; preds = %if.then.12.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6.i.i

if.then.13.i.i:                                   ; preds = %if.then.12.i.i
  %61 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %16, align 1
  %arrayidx.14.i.i = getelementptr i8, ptr %buf, i32 14
  %62 = ptrtoint ptr %arrayidx.14.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.14.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %63)
  %cmp1.not.14.i.i = icmp eq i8 %63, 58
  br i1 %cmp1.not.14.i.i, label %if.then.13.i.i.if.end6.i.i_crit_edge, label %if.then.14.i.i

if.then.13.i.i.if.end6.i.i_crit_edge:             ; preds = %if.then.13.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6.i.i

if.then.14.i.i:                                   ; preds = %if.then.13.i.i
  %64 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %17, align 1
  %arrayidx.15.i.i = getelementptr i8, ptr %buf, i32 15
  %65 = ptrtoint ptr %arrayidx.15.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.15.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %66)
  %cmp1.not.15.i.i = icmp eq i8 %66, 58
  br i1 %cmp1.not.15.i.i, label %if.then.14.i.i.if.end6.i.i_crit_edge, label %if.then.15.i.i

if.then.14.i.i.if.end6.i.i_crit_edge:             ; preds = %if.then.14.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6.i.i

if.then.15.i.i:                                   ; preds = %if.then.14.i.i
  %67 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %18, align 1
  %arrayidx.16.i.i = getelementptr i8, ptr %buf, i32 16
  %68 = ptrtoint ptr %arrayidx.16.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.16.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %69)
  %cmp1.not.16.i.i = icmp eq i8 %69, 58
  br i1 %cmp1.not.16.i.i, label %if.then.15.i.i.if.end6.i.i_crit_edge, label %if.then.15.i.i.fc_parse_cgrpid.exit.thread.i_crit_edge

if.then.15.i.i.fc_parse_cgrpid.exit.thread.i_crit_edge: ; preds = %if.then.15.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fc_parse_cgrpid.exit.thread.i

if.then.15.i.i.if.end6.i.i_crit_edge:             ; preds = %if.then.15.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then.15.i.i.if.end6.i.i_crit_edge, %if.then.14.i.i.if.end6.i.i_crit_edge, %if.then.13.i.i.if.end6.i.i_crit_edge, %if.then.12.i.i.if.end6.i.i_crit_edge, %if.then.11.i.i.if.end6.i.i_crit_edge, %if.then.10.i.i.if.end6.i.i_crit_edge, %if.then.9.i.i.if.end6.i.i_crit_edge, %if.then.8.i.i.if.end6.i.i_crit_edge, %if.then.7.i.i.if.end6.i.i_crit_edge, %if.then.6.i.i.if.end6.i.i_crit_edge, %if.then.5.i.i.if.end6.i.i_crit_edge, %if.then.4.i.i.if.end6.i.i_crit_edge, %if.then.3.i.i.if.end6.i.i_crit_edge, %if.then.2.i.i.if.end6.i.i_crit_edge, %if.then.1.i.i.if.end6.i.i_crit_edge, %if.then.i.i.if.end6.i.i_crit_edge, %if.end5.i.if.end6.i.i_crit_edge
  %cgrpid_len.021.lcssa.i.i = phi i32 [ 0, %if.end5.i.if.end6.i.i_crit_edge ], [ 1, %if.then.i.i.if.end6.i.i_crit_edge ], [ 2, %if.then.1.i.i.if.end6.i.i_crit_edge ], [ 3, %if.then.2.i.i.if.end6.i.i_crit_edge ], [ 4, %if.then.3.i.i.if.end6.i.i_crit_edge ], [ 5, %if.then.4.i.i.if.end6.i.i_crit_edge ], [ 6, %if.then.5.i.i.if.end6.i.i_crit_edge ], [ 7, %if.then.6.i.i.if.end6.i.i_crit_edge ], [ 8, %if.then.7.i.i.if.end6.i.i_crit_edge ], [ 9, %if.then.8.i.i.if.end6.i.i_crit_edge ], [ 10, %if.then.9.i.i.if.end6.i.i_crit_edge ], [ 11, %if.then.10.i.i.if.end6.i.i_crit_edge ], [ 12, %if.then.11.i.i.if.end6.i.i_crit_edge ], [ 13, %if.then.12.i.i.if.end6.i.i_crit_edge ], [ 14, %if.then.13.i.i.if.end6.i.i_crit_edge ], [ 15, %if.then.14.i.i.if.end6.i.i_crit_edge ], [ 16, %if.then.15.i.i.if.end6.i.i_crit_edge ]
  %call.i.i.i = call i32 @kstrtoull(ptr noundef nonnull %cgrp_id.i.i, i32 noundef 16, ptr noundef nonnull %cgrp_id.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp8.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp8.i.i, label %if.end6.i.i.fc_parse_cgrpid.exit.thread.i_crit_edge, label %if.end10.i

if.end6.i.i.fc_parse_cgrpid.exit.thread.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fc_parse_cgrpid.exit.thread.i

fc_parse_cgrpid.exit.thread.i:                    ; preds = %if.end6.i.i.fc_parse_cgrpid.exit.thread.i_crit_edge, %if.then.15.i.i.fc_parse_cgrpid.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %cgrp_id.i.i) #17
  br label %79

if.end10.i:                                       ; preds = %if.end6.i.i
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %cgrp_id.i.i) #17
  %70 = xor i32 %cgrpid_len.021.lcssa.i.i, -1
  %sub12.i = add i32 %spec.select.i, %70
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %sub12.i)
  %cmp13.i = icmp sgt i32 %sub12.i, 129
  br i1 %cmp13.i, label %if.end10.i._crit_edge, label %if.end16.i

if.end10.i._crit_edge:                            ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %79

if.end16.i:                                       ; preds = %if.end10.i
  %add.i = add nuw nsw i32 %cgrpid_len.021.lcssa.i.i, 1
  %arrayidx18.i = getelementptr i8, ptr %buf, i32 %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %sub12.i)
  %71 = icmp ugt i32 %sub12.i, 128
  %72 = sub i32 129, %sub12.i
  %73 = select i1 %71, i32 0, i32 %72
  %74 = getelementptr i8, ptr %app_id.i, i32 %sub12.i
  %75 = call ptr @memset(ptr %74, i32 0, i32 %73)
  %76 = call ptr @memcpy(ptr %app_id.i, ptr %arrayidx18.i, i32 %sub12.i)
  %77 = ptrtoint ptr %cgrp_id.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %cgrp_id.i, align 8
  %call.i.i = call ptr @cgroup_get_from_id(i64 noundef %78) #17
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end16.i._crit_edge, label %if.end2.i.i

if.end16.i._crit_edge:                            ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %79

if.end2.i.i:                                      ; preds = %if.end16.i
  %call3.i.i = call ptr @cgroup_get_e_css(ptr noundef nonnull %call.i.i, ptr noundef nonnull @io_cgrp_subsys) #17
  %tobool4.not.i.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool4.not.i.i, label %blkcg_set_fc_appid.exit.thread47.i, label %fc_update_appid.exit

blkcg_set_fc_appid.exit.thread47.i:               ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @css_put(ptr noundef nonnull %call.i.i) #17
  br label %79

fc_update_appid.exit:                             ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %fc_app_id.i.i = getelementptr inbounds %struct.blkcg, ptr %call3.i.i, i32 0, i32 8
  %call8.i.i = call i32 @strlcpy(ptr noundef %fc_app_id.i.i, ptr noundef nonnull %app_id.i, i32 noundef 129) #17
  call fastcc void @css_put(ptr noundef nonnull %call3.i.i) #17
  call fastcc void @css_put(ptr noundef nonnull %call.i.i) #17
  call void @llvm.lifetime.end.p0(i64 129, ptr nonnull %app_id.i) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cgrp_id.i) #17
  br label %80

79:                                               ; preds = %blkcg_set_fc_appid.exit.thread47.i, %if.end16.i._crit_edge, %if.end10.i._crit_edge, %fc_parse_cgrpid.exit.thread.i, %lor.lhs.false.i._crit_edge, %entry._crit_edge
  call void @llvm.lifetime.end.p0(i64 129, ptr nonnull %app_id.i) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cgrp_id.i) #17
  br label %80

80:                                               ; preds = %79, %fc_update_appid.exit
  %81 = phi i32 [ -22, %79 ], [ %count, %fc_update_appid.exit ]
  ret i32 %81
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cgroup_get_from_id(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cgroup_get_e_css(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @css_put(ptr noundef %css) unnamed_addr #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %flags = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css, i32 0, i32 7
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  %refcnt = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css, i32 0, i32 2
  %2 = tail call i32 @llvm.read_register.i32(metadata !484) #17
  %and.i.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !514
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i.i.i, label %if.then.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.rcu_read_lock.exit.i.i_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.220, i32 noundef 696, ptr noundef nonnull @.str.221) #17
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.then.rcu_read_lock.exit.i.i_crit_edge
  %6 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %refcnt, align 4
  %and.i.i.i = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i1.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i1.i.i, label %do.body1.i.i, label %if.else.i.i, !prof !496

do.body1.i.i:                                     ; preds = %rcu_read_lock.exit.i.i
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !515
  %9 = tail call i32 @llvm.read_register.i32(metadata !484) #17
  %and.i2.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i2.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %14, %7
  %15 = inttoptr i32 %add.i.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add15.i.i = add i32 %17, -1
  store i32 %add15.i.i, ptr %15, align 4
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !516
  %and.i.i.i.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then29.i.i, label %do.body1.i.i.do.end31.i.i_crit_edge, !prof !504

do.body1.i.i.do.end31.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end31.i.i

if.then29.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @warn_bogus_irq_restore() #17
  br label %do.end31.i.i

do.end31.i.i:                                     ; preds = %if.then29.i.i, %do.body1.i.i.do.end31.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #17, !srcloc !517
  br label %if.end48.i.i

if.else.i.i:                                      ; preds = %rcu_read_lock.exit.i.i
  %data.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %20, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !509
  tail call void @llvm.prefetch.p0(ptr %20, i32 1, i32 3, i32 1) #17
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #17, !srcloc !510
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %if.then45.i.i, label %if.else.i.i.if.end48.i.i_crit_edge, !prof !504

if.else.i.i.if.end48.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end48.i.i

if.then45.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %22 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i, align 4
  %release.i.i = getelementptr inbounds %struct.percpu_ref_data, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %release.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %release.i.i, align 4
  tail call void %25(ptr noundef %refcnt) #17
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.then45.i.i, %if.else.i.i.if.end48.i.i_crit_edge, %do.end31.i.i
  %call.i3.i.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i3.i.i, label %if.end48.i.i.percpu_ref_put.exit_crit_edge, label %land.lhs.true.i6.i.i

if.end48.i.i.percpu_ref_put.exit_crit_edge:       ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %percpu_ref_put.exit

land.lhs.true.i6.i.i:                             ; preds = %if.end48.i.i
  %call1.i4.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %call1.i4.i.i, 0
  br i1 %tobool.not.i5.i.i, label %land.lhs.true.i6.i.i.percpu_ref_put.exit_crit_edge, label %land.lhs.true2.i8.i.i

land.lhs.true.i6.i.i.percpu_ref_put.exit_crit_edge: ; preds = %land.lhs.true.i6.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %percpu_ref_put.exit

land.lhs.true2.i8.i.i:                            ; preds = %land.lhs.true.i6.i.i
  %.b4.i7.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i, label %land.lhs.true2.i8.i.i.percpu_ref_put.exit_crit_edge, label %if.then.i9.i.i

land.lhs.true2.i8.i.i.percpu_ref_put.exit_crit_edge: ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %percpu_ref_put.exit

if.then.i9.i.i:                                   ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.220, i32 noundef 724, ptr noundef nonnull @.str.222) #17
  br label %percpu_ref_put.exit

percpu_ref_put.exit:                              ; preds = %if.then.i9.i.i, %land.lhs.true2.i8.i.i.percpu_ref_put.exit_crit_edge, %land.lhs.true.i6.i.i.percpu_ref_put.exit_crit_edge, %if.end48.i.i.percpu_ref_put.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !518
  %26 = tail call i32 @llvm.read_register.i32(metadata !484) #17
  %and.i.i.i.i.i10.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i10.i.i to ptr
  %preempt_count.i.i.i.i11.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i, align 4
  %sub.i.i.i.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  br label %if.end

if.end:                                           ; preds = %percpu_ref_put.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #15

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmf_register_transport(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

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
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 253)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 253)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nounwind readonly }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind allocsize(2) }
attributes #23 = { nobuiltin }
attributes #24 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !24, !26, !28, !29, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !49, !50, !51, !52, !54, !55, !56, !58, !60, !62, !63, !65, !67, !69, !70, !72, !73, !75, !76, !78, !80, !81, !82, !83, !85, !87, !89, !91, !93, !94, !95, !96, !98, !99, !100, !102, !103, !104, !105, !107, !109, !110, !111, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !193, !194, !195, !197, !198, !199, !201, !202, !203, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !223, !224, !226, !227, !228, !229, !231, !232, !234, !236, !238, !239, !240, !241, !243, !245, !247, !249, !251, !252, !253, !254, !256, !257, !259, !260, !262, !263, !264, !265, !267, !268, !270, !271, !273, !274, !275, !276, !277, !279, !280, !281, !283, !284, !285, !287, !288, !289, !290, !292, !293, !294, !296, !297, !298, !299, !301, !302, !304, !305, !306, !307, !309, !310, !311, !313, !314, !315, !317, !318, !319, !321, !322, !323, !325, !326, !327, !328, !330, !331, !332, !333, !335, !336, !337, !339, !340, !341, !343, !344, !345, !347, !348, !349, !351, !352, !353, !354, !356, !357, !358, !360, !361, !362, !364, !365, !366, !367, !369, !370, !371, !373, !374, !375, !376, !378, !379, !380, !382, !383, !384, !386, !387, !388, !390, !391, !392, !393, !395, !397, !399, !400, !401, !402, !404, !406, !407, !408, !409, !411, !412, !413, !415, !416, !417, !419, !420, !421, !423, !424, !425, !427, !428, !429, !431, !433, !435, !437, !438, !439, !440, !442, !443, !445, !447, !449, !451, !453, !454, !456, !457, !458, !459, !461, !462, !464, !465, !466, !468, !469, !471, !473, !475, !476, !477, !478, !480, !482, !483}
!llvm.named.register.sp = !{!484}
!llvm.module.flags = !{!485, !486, !487, !488, !489, !490, !491, !492}
!llvm.ident = !{!493}

!0 = !{ptr @__ksymtab_nvme_fc_register_localport, !1, !"__ksymtab_nvme_fc_register_localport", i1 false, i1 false}
!1 = !{!"../drivers/nvme/host/fc.c", i32 450, i32 1}
!2 = !{ptr @__ksymtab_nvme_fc_unregister_localport, !3, !"__ksymtab_nvme_fc_unregister_localport", i1 false, i1 false}
!3 = !{!"../drivers/nvme/host/fc.c", i32 488, i32 1}
!4 = !{ptr @nvme_fc_register_remoteport.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/nvme/host/fc.c", i32 728, i32 2}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @nvme_fc_register_remoteport.__key.1, !8, !"__key", i1 false, i1 false}
!8 = !{!"../drivers/nvme/host/fc.c", i32 744, i32 2}
!9 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__ksymtab_nvme_fc_register_remoteport, !11, !"__ksymtab_nvme_fc_register_remoteport", i1 false, i1 false}
!11 = !{!"../drivers/nvme/host/fc.c", i32 763, i32 1}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/nvme/host/fc.c", i32 875, i32 4}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @nvme_fc_unregister_remoteport._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @nvme_fc_unregister_remoteport._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @__ksymtab_nvme_fc_unregister_remoteport, !21, !"__ksymtab_nvme_fc_unregister_remoteport", i1 false, i1 false}
!21 = !{!"../drivers/nvme/host/fc.c", i32 899, i32 1}
!22 = !{ptr @__ksymtab_nvme_fc_rescan_remoteport, !23, !"__ksymtab_nvme_fc_rescan_remoteport", i1 false, i1 false}
!23 = !{!"../drivers/nvme/host/fc.c", i32 916, i32 1}
!24 = !{ptr @__ksymtab_nvme_fc_set_remoteport_devloss, !25, !"__ksymtab_nvme_fc_set_remoteport_devloss", i1 false, i1 false}
!25 = !{!"../drivers/nvme/host/fc.c", i32 939, i32 1}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/nvme/host/fc.c", i32 1737, i32 3}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @nvme_fc_rcv_ls_req._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @nvme_fc_rcv_ls_req._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/nvme/host/fc.c", i32 1746, i32 3}
!35 = !{ptr @nvme_fc_rcv_ls_req._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @nvme_fc_rcv_ls_req._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/nvme/host/fc.c", i32 1759, i32 3}
!39 = !{ptr @nvme_fc_rcv_ls_req._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @nvme_fc_rcv_ls_req._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/nvme/host/fc.c", i32 1773, i32 3}
!43 = !{ptr @nvme_fc_rcv_ls_req._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @nvme_fc_rcv_ls_req._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @__ksymtab_nvme_fc_rcv_ls_req, !46, !"__ksymtab_nvme_fc_rcv_ls_req", i1 false, i1 false}
!46 = !{!"../drivers/nvme/host/fc.c", i32 1809, i32 1}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/nvme/host/fc.c", i32 4023, i32 3}
!49 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @nvme_fc_exit_module._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @nvme_fc_exit_module._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/nvme/host/fc.c", i32 4025, i32 3}
!54 = !{ptr @nvme_fc_exit_module._entry.23, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @nvme_fc_exit_module._entry_ptr.25, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @__initcall__kmod_nvme_fc__389_4038_nvme_fc_init_module6, !57, !"__initcall__kmod_nvme_fc__389_4038_nvme_fc_init_module6", i1 false, i1 false}
!57 = !{!"../drivers/nvme/host/fc.c", i32 4038, i32 1}
!58 = !{ptr @__exitcall_nvme_fc_exit_module, !59, !"__exitcall_nvme_fc_exit_module", i1 false, i1 false}
!59 = !{!"../drivers/nvme/host/fc.c", i32 4039, i32 1}
!60 = !{ptr @__UNIQUE_ID_file390, !61, !"__UNIQUE_ID_file390", i1 false, i1 false}
!61 = !{!"../drivers/nvme/host/fc.c", i32 4041, i32 1}
!62 = !{ptr @__UNIQUE_ID_license391, !61, !"__UNIQUE_ID_license391", i1 false, i1 false}
!63 = !{ptr @nvme_fc_wq, !64, !"nvme_fc_wq", i1 false, i1 false}
!64 = !{!"../drivers/nvme/host/fc.c", i32 224, i32 33}
!65 = distinct !{null, !66, !"nvme_fc_waiting_to_unload", i1 false, i1 false}
!66 = !{!"../drivers/nvme/host/fc.c", i32 226, i32 13}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/nvme/host/fc.c", i32 221, i32 8}
!69 = !{ptr @nvme_fc_local_port_cnt, !68, !"nvme_fc_local_port_cnt", i1 false, i1 false}
!70 = !{ptr @xa_init_flags.__key, !71, !"__key", i1 false, i1 false}
!71 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!72 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/nvme/host/fc.c", i32 218, i32 8}
!75 = !{ptr @nvme_fc_lock, !74, !"nvme_fc_lock", i1 false, i1 false}
!76 = !{ptr @nvme_fc_lport_list, !77, !"nvme_fc_lport_list", i1 false, i1 false}
!77 = !{!"../drivers/nvme/host/fc.c", i32 220, i32 8}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/nvme/host/fc.c", i32 567, i32 3}
!80 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @nvme_fc_resume_controller._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @nvme_fc_resume_controller._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/nvme/host/fc.c", i32 506, i32 20}
!85 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/nvme/host/fc.c", i32 512, i32 3}
!87 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/nvme/host/fc.c", i32 515, i32 3}
!89 = !{ptr @fc_udev_device, !90, !"fc_udev_device", i1 false, i1 false}
!90 = !{!"../drivers/nvme/host/fc.c", i32 233, i32 23}
!91 = !{ptr @.str.34, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/nvme/host/fc.c", i32 792, i32 2}
!93 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @nvme_fc_ctrl_connectivity_loss._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @nvme_fc_ctrl_connectivity_loss._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/nvme/host/fc.c", i32 807, i32 4}
!98 = !{ptr @nvme_fc_ctrl_connectivity_loss._entry.36, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @nvme_fc_ctrl_connectivity_loss._entry_ptr.38, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/nvme/host/fc.c", i32 1580, i32 3}
!102 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @nvme_fc_ls_disconnect_assoc._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @nvme_fc_ls_disconnect_assoc._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/nvme/host/fc.c", i32 1608, i32 31}
!107 = !{ptr @.str.42, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/nvme/host/fc.c", i32 1538, i32 3}
!109 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @nvme_fc_match_disconn_ls._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @nvme_fc_match_disconn_ls._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.44, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/nvme/host/fc.h", i32 109, i32 2}
!114 = !{ptr @.str.45, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/nvme/host/fc.h", i32 110, i32 2}
!116 = !{ptr @.str.46, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/nvme/host/fc.h", i32 111, i32 2}
!118 = !{ptr @.str.47, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/nvme/host/fc.h", i32 112, i32 2}
!120 = !{ptr @.str.48, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/nvme/host/fc.h", i32 113, i32 2}
!122 = !{ptr @.str.49, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/nvme/host/fc.h", i32 114, i32 2}
!124 = !{ptr @.str.50, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/nvme/host/fc.h", i32 115, i32 2}
!126 = !{ptr @.str.51, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/nvme/host/fc.h", i32 116, i32 2}
!128 = !{ptr @.str.52, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/nvme/host/fc.h", i32 117, i32 2}
!130 = !{ptr @.str.53, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/nvme/host/fc.h", i32 118, i32 2}
!132 = !{ptr @.str.54, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/nvme/host/fc.h", i32 119, i32 2}
!134 = !{ptr @.str.55, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/nvme/host/fc.h", i32 120, i32 2}
!136 = !{ptr @.str.56, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/nvme/host/fc.h", i32 121, i32 2}
!138 = !{ptr @.str.57, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/nvme/host/fc.h", i32 122, i32 2}
!140 = !{ptr @.str.58, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/nvme/host/fc.h", i32 123, i32 2}
!142 = !{ptr @.str.59, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/nvme/host/fc.h", i32 124, i32 2}
!144 = !{ptr @.str.60, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/nvme/host/fc.h", i32 125, i32 2}
!146 = !{ptr @.str.61, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/nvme/host/fc.h", i32 126, i32 2}
!148 = !{ptr @.str.62, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/nvme/host/fc.h", i32 127, i32 2}
!150 = !{ptr @.str.63, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/nvme/host/fc.h", i32 128, i32 2}
!152 = !{ptr @.str.64, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/nvme/host/fc.h", i32 129, i32 2}
!154 = !{ptr @.str.65, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/nvme/host/fc.h", i32 130, i32 2}
!156 = !{ptr @.str.66, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/nvme/host/fc.h", i32 131, i32 2}
!158 = !{ptr @.str.67, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/nvme/host/fc.h", i32 132, i32 2}
!160 = !{ptr @.str.68, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/nvme/host/fc.h", i32 133, i32 2}
!162 = !{ptr @.str.69, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/nvme/host/fc.h", i32 134, i32 2}
!164 = !{ptr @.str.70, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/nvme/host/fc.h", i32 135, i32 2}
!166 = !{ptr @.str.71, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/nvme/host/fc.h", i32 136, i32 2}
!168 = !{ptr @.str.72, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/nvme/host/fc.h", i32 137, i32 2}
!170 = !{ptr @.str.73, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/nvme/host/fc.h", i32 138, i32 2}
!172 = !{ptr @.str.74, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/nvme/host/fc.h", i32 139, i32 2}
!174 = !{ptr @.str.75, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/nvme/host/fc.h", i32 140, i32 2}
!176 = !{ptr @.str.76, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/nvme/host/fc.h", i32 141, i32 2}
!178 = !{ptr @.str.77, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/nvme/host/fc.h", i32 142, i32 2}
!180 = !{ptr @.str.78, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/nvme/host/fc.h", i32 143, i32 2}
!182 = !{ptr @.str.79, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/nvme/host/fc.h", i32 144, i32 2}
!184 = !{ptr @.str.80, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/nvme/host/fc.h", i32 145, i32 2}
!186 = !{ptr @.str.81, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/nvme/host/fc.h", i32 146, i32 2}
!188 = !{ptr @validation_errors, !189, !"validation_errors", i1 false, i1 false}
!189 = !{!"../drivers/nvme/host/fc.h", i32 108, i32 14}
!190 = !{ptr @.str.82, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/nvme/host/fc.c", i32 2541, i32 2}
!192 = !{ptr @.str.83, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @nvme_fc_error_recovery._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @nvme_fc_error_recovery._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.85, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/nvme/host/fc.c", i32 2544, i32 2}
!197 = !{ptr @nvme_fc_error_recovery._entry.84, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @nvme_fc_error_recovery._entry_ptr.86, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.87, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/nvme/host/fc.c", i32 1497, i32 3}
!201 = !{ptr @.str.88, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @nvme_fc_xmt_ls_rsp._entry, !200, !"_entry", i1 false, i1 false}
!203 = !{ptr @nvme_fc_xmt_ls_rsp._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.89, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/nvme/host/fc.h", i32 152, i32 2}
!206 = !{ptr @.str.90, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/nvme/host/fc.h", i32 153, i32 2}
!208 = !{ptr @.str.91, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/nvme/host/fc.h", i32 154, i32 2}
!210 = !{ptr @.str.92, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/nvme/host/fc.h", i32 155, i32 2}
!212 = !{ptr @.str.93, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/nvme/host/fc.h", i32 156, i32 2}
!214 = !{ptr @.str.94, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/nvme/host/fc.h", i32 157, i32 2}
!216 = !{ptr @.str.95, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/nvme/host/fc.h", i32 158, i32 2}
!218 = !{ptr @nvmefc_ls_names, !219, !"nvmefc_ls_names", i1 false, i1 false}
!219 = !{!"../drivers/nvme/host/fc.h", i32 151, i32 14}
!220 = distinct !{null, !221, !"__already_done", i1 false, i1 false}
!221 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!222 = !{ptr @.str.96, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.97, !221, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @.str.98, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/nvme/host/fc.c", i32 3989, i32 3}
!226 = !{ptr @.str.99, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @nvme_fc_delete_controllers._entry, !225, !"_entry", i1 false, i1 false}
!228 = !{ptr @nvme_fc_delete_controllers._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.100, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/nvme/host/fc.c", i32 227, i32 8}
!231 = !{ptr @nvme_fc_unload_proceed, !230, !"nvme_fc_unload_proceed", i1 false, i1 false}
!232 = !{ptr @.str.101, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/nvme/host/fc.c", i32 3766, i32 11}
!234 = !{ptr @nvme_fc_transport, !235, !"nvme_fc_transport", i1 false, i1 false}
!235 = !{!"../drivers/nvme/host/fc.c", i32 3765, i32 34}
!236 = !{ptr @.str.102, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/nvme/host/fc.c", i32 3759, i32 2}
!238 = !{ptr @.str.103, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @nvme_fc_create_ctrl._entry, !237, !"_entry", i1 false, i1 false}
!240 = !{ptr @nvme_fc_create_ctrl._entry_ptr, !237, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.104, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/nvme/host/fc.c", i32 3678, i32 18}
!243 = !{ptr @.str.105, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/nvme/host/fc.c", i32 3680, i32 5}
!245 = !{ptr @.str.106, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/nvme/host/fc.c", i32 3685, i32 18}
!247 = !{ptr @.str.107, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/nvme/host/fc.c", i32 3687, i32 5}
!249 = !{ptr @.str.108, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/nvme/host/fc.c", i32 3708, i32 2}
!251 = !{ptr @.str.109, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @nvme_fc_parse_traddr._entry, !250, !"_entry", i1 false, i1 false}
!253 = !{ptr @nvme_fc_parse_traddr._entry_ptr, !250, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @nvme_fc_init_ctrl.__key, !255, !"__key", i1 false, i1 false}
!255 = !{!"../drivers/nvme/host/fc.c", i32 3506, i32 2}
!256 = !{ptr @.str.110, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @nvme_fc_init_ctrl.__key.111, !258, !"__key", i1 false, i1 false}
!258 = !{!"../drivers/nvme/host/fc.c", i32 3511, i32 2}
!259 = !{ptr @.str.112, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @nvme_fc_init_ctrl.__key.113, !261, !"__key", i1 false, i1 false}
!261 = !{!"../drivers/nvme/host/fc.c", i32 3512, i32 2}
!262 = !{ptr @.str.114, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @nvme_fc_init_ctrl.__key.115, !261, !"__key", i1 false, i1 false}
!264 = !{ptr @.str.116, !261, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @nvme_fc_init_ctrl.__key.117, !266, !"__key", i1 false, i1 false}
!266 = !{!"../drivers/nvme/host/fc.c", i32 3513, i32 2}
!267 = !{ptr @.str.118, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @nvme_fc_init_ctrl.__key.119, !269, !"__key", i1 false, i1 false}
!269 = !{!"../drivers/nvme/host/fc.c", i32 3514, i32 2}
!270 = !{ptr @.str.120, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @.str.121, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/nvme/host/fc.c", i32 3583, i32 3}
!273 = !{ptr @.str.122, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @.str.123, !272, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @nvme_fc_init_ctrl._entry, !272, !"_entry", i1 false, i1 false}
!276 = !{ptr @nvme_fc_init_ctrl._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.125, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/nvme/host/fc.c", i32 3589, i32 3}
!279 = !{ptr @nvme_fc_init_ctrl._entry.124, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @nvme_fc_init_ctrl._entry_ptr.126, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.128, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/nvme/host/fc.c", i32 3597, i32 2}
!283 = !{ptr @nvme_fc_init_ctrl._entry.127, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @nvme_fc_init_ctrl._entry_ptr.129, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.130, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/nvme/host/fc.c", i32 3362, i32 3}
!287 = !{ptr @.str.131, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @nvme_fc_reset_ctrl_work._entry, !286, !"_entry", i1 false, i1 false}
!289 = !{ptr @nvme_fc_reset_ctrl_work._entry_ptr, !286, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.133, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/nvme/host/fc.c", i32 3368, i32 4}
!292 = !{ptr @nvme_fc_reset_ctrl_work._entry.132, !291, !"_entry", i1 false, i1 false}
!293 = !{ptr @nvme_fc_reset_ctrl_work._entry_ptr.134, !291, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.135, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/nvme/host/fc.c", i32 1437, i32 3}
!296 = !{ptr @.str.136, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @nvme_fc_xmt_disconnect_assoc._entry, !295, !"_entry", i1 false, i1 false}
!298 = !{ptr @nvme_fc_xmt_disconnect_assoc._entry_ptr, !295, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @init_completion.__key, !300, !"__key", i1 false, i1 false}
!300 = !{!"../include/linux/completion.h", i32 87, i32 2}
!301 = !{ptr @.str.137, !300, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @.str.138, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/nvme/host/fc.c", i32 3310, i32 3}
!304 = !{ptr @.str.139, !303, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @nvme_fc_reconnect_or_delete._entry, !303, !"_entry", i1 false, i1 false}
!306 = !{ptr @nvme_fc_reconnect_or_delete._entry_ptr, !303, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.141, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/nvme/host/fc.c", i32 3320, i32 4}
!309 = !{ptr @nvme_fc_reconnect_or_delete._entry.140, !308, !"_entry", i1 false, i1 false}
!310 = !{ptr @nvme_fc_reconnect_or_delete._entry_ptr.142, !308, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.144, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/nvme/host/fc.c", i32 3331, i32 5}
!313 = !{ptr @nvme_fc_reconnect_or_delete._entry.143, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @nvme_fc_reconnect_or_delete._entry_ptr.145, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.147, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/nvme/host/fc.c", i32 3335, i32 5}
!317 = !{ptr @nvme_fc_reconnect_or_delete._entry.146, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @nvme_fc_reconnect_or_delete._entry_ptr.148, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.150, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/nvme/host/fc.c", i32 3340, i32 4}
!321 = !{ptr @nvme_fc_reconnect_or_delete._entry.149, !320, !"_entry", i1 false, i1 false}
!322 = !{ptr @nvme_fc_reconnect_or_delete._entry_ptr.151, !320, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.152, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/nvme/host/fc.c", i32 3406, i32 3}
!325 = !{ptr @.str.153, !324, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @nvme_fc_connect_ctrl_work._entry, !324, !"_entry", i1 false, i1 false}
!327 = !{ptr @nvme_fc_connect_ctrl_work._entry_ptr, !324, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.154, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/nvme/host/fc.c", i32 3079, i32 2}
!330 = !{ptr @.str.155, !329, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @nvme_fc_create_association._entry, !329, !"_entry", i1 false, i1 false}
!332 = !{ptr @nvme_fc_create_association._entry_ptr, !329, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.157, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/nvme/host/fc.c", i32 3132, i32 3}
!335 = !{ptr @nvme_fc_create_association._entry.156, !334, !"_entry", i1 false, i1 false}
!336 = !{ptr @nvme_fc_create_association._entry_ptr.158, !334, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.160, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/nvme/host/fc.c", i32 3140, i32 3}
!339 = !{ptr @nvme_fc_create_association._entry.159, !338, !"_entry", i1 false, i1 false}
!340 = !{ptr @nvme_fc_create_association._entry_ptr.161, !338, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @.str.163, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/nvme/host/fc.c", i32 3148, i32 3}
!343 = !{ptr @nvme_fc_create_association._entry.162, !342, !"_entry", i1 false, i1 false}
!344 = !{ptr @nvme_fc_create_association._entry_ptr.164, !342, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @.str.166, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/nvme/host/fc.c", i32 3157, i32 3}
!347 = !{ptr @nvme_fc_create_association._entry.165, !346, !"_entry", i1 false, i1 false}
!348 = !{ptr @nvme_fc_create_association._entry_ptr.167, !346, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @.str.168, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/nvme/host/fc.c", i32 1191, i32 3}
!351 = !{ptr @.str.169, !350, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @nvme_fc_connect_admin_queue._entry, !350, !"_entry", i1 false, i1 false}
!353 = !{ptr @nvme_fc_connect_admin_queue._entry_ptr, !350, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.171, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/nvme/host/fc.c", i32 1270, i32 3}
!356 = !{ptr @nvme_fc_connect_admin_queue._entry.170, !355, !"_entry", i1 false, i1 false}
!357 = !{ptr @nvme_fc_connect_admin_queue._entry_ptr.172, !355, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @.str.174, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/nvme/host/fc.c", i32 1287, i32 3}
!360 = !{ptr @nvme_fc_connect_admin_queue._entry.173, !359, !"_entry", i1 false, i1 false}
!361 = !{ptr @nvme_fc_connect_admin_queue._entry_ptr.175, !359, !"_entry_ptr", i1 false, i1 false}
!362 = !{ptr @.str.176, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/nvme/host/fc.c", i32 2096, i32 3}
!364 = !{ptr @.str.177, !363, !"<string literal>", i1 false, i1 false}
!365 = !{ptr @__nvme_fc_init_request._entry, !363, !"_entry", i1 false, i1 false}
!366 = !{ptr @__nvme_fc_init_request._entry_ptr, !363, !"_entry_ptr", i1 false, i1 false}
!367 = !{ptr @.str.179, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/nvme/host/fc.c", i32 2106, i32 3}
!369 = !{ptr @__nvme_fc_init_request._entry.178, !368, !"_entry", i1 false, i1 false}
!370 = !{ptr @__nvme_fc_init_request._entry_ptr.180, !368, !"_entry_ptr", i1 false, i1 false}
!371 = !{ptr @.str.181, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/nvme/host/fc.c", i32 1963, i32 3}
!373 = !{ptr @.str.182, !372, !"<string literal>", i1 false, i1 false}
!374 = !{ptr @nvme_fc_fcpio_done._entry, !372, !"_entry", i1 false, i1 false}
!375 = !{ptr @nvme_fc_fcpio_done._entry_ptr, !372, !"_entry_ptr", i1 false, i1 false}
!376 = !{ptr @.str.184, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/nvme/host/fc.c", i32 1995, i32 4}
!378 = !{ptr @nvme_fc_fcpio_done._entry.183, !377, !"_entry", i1 false, i1 false}
!379 = !{ptr @nvme_fc_fcpio_done._entry_ptr.185, !377, !"_entry_ptr", i1 false, i1 false}
!380 = !{ptr @.str.187, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/nvme/host/fc.c", i32 2017, i32 4}
!382 = !{ptr @nvme_fc_fcpio_done._entry.186, !381, !"_entry", i1 false, i1 false}
!383 = !{ptr @nvme_fc_fcpio_done._entry_ptr.188, !381, !"_entry_ptr", i1 false, i1 false}
!384 = !{ptr @.str.190, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/nvme/host/fc.c", i32 2035, i32 3}
!386 = !{ptr @nvme_fc_fcpio_done._entry.189, !385, !"_entry", i1 false, i1 false}
!387 = !{ptr @nvme_fc_fcpio_done._entry_ptr.191, !385, !"_entry_ptr", i1 false, i1 false}
!388 = !{ptr @.str.192, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/nvme/host/fc.c", i32 2889, i32 3}
!390 = !{ptr @.str.193, !389, !"<string literal>", i1 false, i1 false}
!391 = !{ptr @nvme_fc_create_io_queues._entry, !389, !"_entry", i1 false, i1 false}
!392 = !{ptr @nvme_fc_create_io_queues._entry_ptr, !389, !"_entry_ptr", i1 false, i1 false}
!393 = !{ptr @nvme_fc_mq_ops, !394, !"nvme_fc_mq_ops", i1 false, i1 false}
!394 = !{!"../drivers/nvme/host/fc.c", i32 2868, i32 32}
!395 = distinct !{null, !396, !"__already_done", i1 false, i1 false}
!396 = !{!"../drivers/nvme/host/fc.c", i32 2697, i32 2}
!397 = !{ptr @.str.194, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/nvme/host/fc.c", i32 2562, i32 2}
!399 = !{ptr @.str.195, !398, !"<string literal>", i1 false, i1 false}
!400 = !{ptr @nvme_fc_timeout._entry, !398, !"_entry", i1 false, i1 false}
!401 = !{ptr @nvme_fc_timeout._entry_ptr, !398, !"_entry_ptr", i1 false, i1 false}
!402 = !{ptr @.str.196, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/nvme/host/fc.c", i32 2568, i32 32}
!404 = !{ptr @.str.197, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/nvme/host/fc.c", i32 1307, i32 3}
!406 = !{ptr @.str.198, !405, !"<string literal>", i1 false, i1 false}
!407 = !{ptr @nvme_fc_connect_queue._entry, !405, !"_entry", i1 false, i1 false}
!408 = !{ptr @nvme_fc_connect_queue._entry_ptr, !405, !"_entry_ptr", i1 false, i1 false}
!409 = !{ptr @.str.200, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/nvme/host/fc.c", i32 1376, i32 3}
!411 = !{ptr @nvme_fc_connect_queue._entry.199, !410, !"_entry", i1 false, i1 false}
!412 = !{ptr @nvme_fc_connect_queue._entry_ptr.201, !410, !"_entry_ptr", i1 false, i1 false}
!413 = !{ptr @.str.203, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/nvme/host/fc.c", i32 1389, i32 3}
!415 = !{ptr @nvme_fc_connect_queue._entry.202, !414, !"_entry", i1 false, i1 false}
!416 = !{ptr @nvme_fc_connect_queue._entry_ptr.204, !414, !"_entry_ptr", i1 false, i1 false}
!417 = !{ptr @.str.205, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/nvme/host/fc.c", i32 2963, i32 3}
!419 = !{ptr @nvme_fc_recreate_io_queues._entry, !418, !"_entry", i1 false, i1 false}
!420 = !{ptr @nvme_fc_recreate_io_queues._entry_ptr, !418, !"_entry_ptr", i1 false, i1 false}
!421 = !{ptr @.str.207, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/nvme/host/fc.c", i32 2969, i32 3}
!423 = !{ptr @nvme_fc_recreate_io_queues._entry.206, !422, !"_entry", i1 false, i1 false}
!424 = !{ptr @nvme_fc_recreate_io_queues._entry_ptr.208, !422, !"_entry_ptr", i1 false, i1 false}
!425 = !{ptr @.str.210, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/nvme/host/fc.c", i32 2981, i32 3}
!427 = !{ptr @nvme_fc_recreate_io_queues._entry.209, !426, !"_entry", i1 false, i1 false}
!428 = !{ptr @nvme_fc_recreate_io_queues._entry_ptr.211, !426, !"_entry_ptr", i1 false, i1 false}
!429 = !{ptr @.str.212, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/nvme/host/fc.c", i32 1899, i32 31}
!431 = !{ptr @nvme_fc_admin_mq_ops, !432, !"nvme_fc_admin_mq_ops", i1 false, i1 false}
!432 = !{!"../drivers/nvme/host/fc.c", i32 3412, i32 32}
!433 = !{ptr @nvme_fc_ctrl_ops, !434, !"nvme_fc_ctrl_ops", i1 false, i1 false}
!434 = !{!"../drivers/nvme/host/fc.c", i32 3380, i32 35}
!435 = !{ptr @.str.213, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/nvme/host/fc.c", i32 2827, i32 3}
!437 = !{ptr @.str.214, !436, !"<string literal>", i1 false, i1 false}
!438 = !{ptr @nvme_fc_submit_async_event._entry, !436, !"_entry", i1 false, i1 false}
!439 = !{ptr @nvme_fc_submit_async_event._entry_ptr, !436, !"_entry_ptr", i1 false, i1 false}
!440 = !{ptr @.str.215, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/nvme/host/fc.c", i32 222, i32 8}
!442 = !{ptr @nvme_fc_ctrl_cnt, !441, !"nvme_fc_ctrl_cnt", i1 false, i1 false}
!443 = !{ptr @fc_class, !444, !"fc_class", i1 false, i1 false}
!444 = !{!"../drivers/nvme/host/fc.c", i32 3921, i32 21}
!445 = !{ptr @nvme_fc_attr_groups, !446, !"nvme_fc_attr_groups", i1 false, i1 false}
!446 = !{!"../drivers/nvme/host/fc.c", i32 3916, i32 38}
!447 = !{ptr @nvme_fc_attr_group, !448, !"nvme_fc_attr_group", i1 false, i1 false}
!448 = !{!"../drivers/nvme/host/fc.c", i32 3912, i32 37}
!449 = !{ptr @nvme_fc_attrs, !450, !"nvme_fc_attrs", i1 false, i1 false}
!450 = !{!"../drivers/nvme/host/fc.c", i32 3906, i32 26}
!451 = !{ptr @.str.216, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/nvme/host/fc.c", i32 3903, i32 8}
!453 = !{ptr @dev_attr_nvme_discovery, !452, !"dev_attr_nvme_discovery", i1 false, i1 false}
!454 = !{ptr @.str.217, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/nvme/host/fc.c", i32 3806, i32 5}
!456 = !{ptr @.str.218, !455, !"<string literal>", i1 false, i1 false}
!457 = !{ptr @nvme_fc_nvme_discovery_store._entry, !455, !"_entry", i1 false, i1 false}
!458 = !{ptr @nvme_fc_nvme_discovery_store._entry_ptr, !455, !"_entry_ptr", i1 false, i1 false}
!459 = !{ptr @.str.219, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/nvme/host/fc.c", i32 3904, i32 8}
!461 = !{ptr @dev_attr_appid_store, !460, !"dev_attr_appid_store", i1 false, i1 false}
!462 = distinct !{null, !463, !"__warned", i1 false, i1 false}
!463 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!464 = !{ptr @.str.220, !463, !"<string literal>", i1 false, i1 false}
!465 = !{ptr @.str.221, !463, !"<string literal>", i1 false, i1 false}
!466 = distinct !{null, !467, !"__warned", i1 false, i1 false}
!467 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!468 = !{ptr @.str.222, !467, !"<string literal>", i1 false, i1 false}
!469 = !{ptr @.str.223, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/nvme/host/fc.c", i32 3931, i32 31}
!471 = !{ptr @nvme_fc_init_module.__key, !472, !"__key", i1 false, i1 false}
!472 = !{!"../drivers/nvme/host/fc.c", i32 3949, i32 8}
!473 = !{ptr @.str.224, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/nvme/host/fc.c", i32 3951, i32 3}
!475 = !{ptr @.str.225, !474, !"<string literal>", i1 false, i1 false}
!476 = !{ptr @nvme_fc_init_module._entry, !474, !"_entry", i1 false, i1 false}
!477 = !{ptr @nvme_fc_init_module._entry_ptr, !474, !"_entry_ptr", i1 false, i1 false}
!478 = !{ptr @.str.226, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/nvme/host/fc.c", i32 3959, i32 5}
!480 = !{ptr @.str.228, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/nvme/host/fc.c", i32 3961, i32 3}
!482 = !{ptr @nvme_fc_init_module._entry.227, !481, !"_entry", i1 false, i1 false}
!483 = !{ptr @nvme_fc_init_module._entry_ptr.229, !481, !"_entry_ptr", i1 false, i1 false}
!484 = !{!"sp"}
!485 = !{i32 1, !"wchar_size", i32 2}
!486 = !{i32 1, !"min_enum_size", i32 4}
!487 = !{i32 8, !"branch-target-enforcement", i32 0}
!488 = !{i32 8, !"sign-return-address", i32 0}
!489 = !{i32 8, !"sign-return-address-all", i32 0}
!490 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!491 = !{i32 7, !"uwtable", i32 1}
!492 = !{i32 7, !"frame-pointer", i32 2}
!493 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!494 = !{i64 2148538787}
!495 = !{i64 2148453227, i64 2148453259, i64 2148453288, i64 2148453322, i64 2148453353, i64 2148453376}
!496 = !{!"branch_weights", i32 2000, i32 1}
!497 = !{i64 2149414901}
!498 = !{i64 933765, i64 933789, i64 933810, i64 933827, i64 933844}
!499 = !{i8 0, i8 2}
!500 = !{i64 2148709132}
!501 = !{i64 956000, i64 956017, i64 956041, i64 956067, i64 956085}
!502 = !{i64 2148709502}
!503 = !{!"auto-init"}
!504 = !{!"branch_weights", i32 1, i32 2000}
!505 = !{i64 2148534667}
!506 = !{i64 2148449952, i64 2148449984, i64 2148450013, i64 2148450047, i64 2148450078, i64 2148450101}
!507 = !{i64 2148534896}
!508 = !{i64 2148449232, i64 2148449258, i64 2148449287, i64 2148449321, i64 2148449352, i64 2148449375}
!509 = !{i64 2148537708}
!510 = !{i64 2148452417, i64 2148452449, i64 2148452478, i64 2148452512, i64 2148452543, i64 2148452566}
!511 = !{i64 2148537937}
!512 = distinct !{!512, !513}
!513 = !{!"llvm.loop.peeled.count", i32 1}
!514 = !{i64 2149465391}
!515 = !{i64 852932, i64 852993}
!516 = !{i64 855664}
!517 = !{i64 855949}
!518 = !{i64 2149465657}

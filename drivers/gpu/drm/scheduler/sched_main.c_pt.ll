; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/scheduler/sched_main.c_pt.bc'
source_filename = "../drivers/gpu/drm/scheduler/sched_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+drm_sched_dependency_optimized\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_sched_dependency_optimized\09\09\09\09"
module asm "\09.long\09__crc_drm_sched_dependency_optimized\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_dependency_optimized:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_dependency_optimized\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_dependency_optimized:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_sched_fault\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_sched_fault\09\09\09\09"
module asm "\09.long\09__crc_drm_sched_fault\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_fault:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_fault\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_fault:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_sched_suspend_timeout\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_sched_suspend_timeout\09\09\09\09"
module asm "\09.long\09__crc_drm_sched_suspend_timeout\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_suspend_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_suspend_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_suspend_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_sched_resume_timeout\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_sched_resume_timeout\09\09\09\09"
module asm "\09.long\09__crc_drm_sched_resume_timeout\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_resume_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_resume_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_resume_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_sched_increase_karma\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_sched_increase_karma\09\09\09\09"
module asm "\09.long\09__crc_drm_sched_increase_karma\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_increase_karma:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_increase_karma\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_increase_karma:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_sched_reset_karma\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_sched_reset_karma\09\09\09\09"
module asm "\09.long\09__crc_drm_sched_reset_karma\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_reset_karma:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_reset_karma\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_reset_karma:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_sched_stop\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_sched_stop\09\09\09\09"
module asm "\09.long\09__crc_drm_sched_stop\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_stop\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_sched_start\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_sched_start\09\09\09\09"
module asm "\09.long\09__crc_drm_sched_start\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_start:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_start\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_sched_resubmit_jobs\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_sched_resubmit_jobs\09\09\09\09"
module asm "\09.long\09__crc_drm_sched_resubmit_jobs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_resubmit_jobs:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_resubmit_jobs\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_resubmit_jobs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_sched_resubmit_jobs_ext\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_sched_resubmit_jobs_ext\09\09\09\09"
module asm "\09.long\09__crc_drm_sched_resubmit_jobs_ext\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_resubmit_jobs_ext:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_resubmit_jobs_ext\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_resubmit_jobs_ext:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_sched_job_init\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_sched_job_init\09\09\09\09"
module asm "\09.long\09__crc_drm_sched_job_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_job_init:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_job_init\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_job_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_sched_job_arm\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_sched_job_arm\09\09\09\09"
module asm "\09.long\09__crc_drm_sched_job_arm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_job_arm:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_job_arm\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_job_arm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_sched_job_add_dependency\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_sched_job_add_dependency\09\09\09\09"
module asm "\09.long\09__crc_drm_sched_job_add_dependency\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_job_add_dependency:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_job_add_dependency\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_job_add_dependency:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_sched_job_add_implicit_dependencies\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_sched_job_add_implicit_dependencies\09\09\09\09"
module asm "\09.long\09__crc_drm_sched_job_add_implicit_dependencies\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_job_add_implicit_dependencies:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_job_add_implicit_dependencies\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_job_add_implicit_dependencies:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_sched_job_cleanup\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_sched_job_cleanup\09\09\09\09"
module asm "\09.long\09__crc_drm_sched_job_cleanup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_job_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_job_cleanup\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_job_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_sched_pick_best\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_sched_pick_best\09\09\09\09"
module asm "\09.long\09__crc_drm_sched_pick_best\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_pick_best:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_pick_best\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_pick_best:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_sched_init\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_sched_init\09\09\09\09"
module asm "\09.long\09__crc_drm_sched_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_init:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_init\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_sched_fini\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_sched_fini\09\09\09\09"
module asm "\09.long\09__crc_drm_sched_fini\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_fini:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_fini\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_fini:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_sched_increase_karma_ext\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_sched_increase_karma_ext\09\09\09\09"
module asm "\09.long\09__crc_drm_sched_increase_karma_ext\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sched_increase_karma_ext:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sched_increase_karma_ext\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sched_increase_karma_ext:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.97 }
%union.anon.97 = type { %struct.anon.98 }
%struct.anon.98 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.99, %struct.trace_event, ptr, ptr, %union.anon.100, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.99 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.100 = type { ptr }
%union.anon.101 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.102 = type { %struct.bpf_raw_event_map }
%union.anon.103 = type { %struct.bpf_raw_event_map }
%union.anon.104 = type { %struct.bpf_raw_event_map }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_drm_sched_job = type { %struct.trace_entry, ptr, ptr, ptr, i64, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.68, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.68 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.4 }
%struct.llist_node = type { ptr }
%union.anon.4 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_sched_fence = type { %struct.dma_fence, %struct.dma_fence, ptr, ptr, %struct.spinlock, ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.3, i64, i64, i32, %struct.kref, i32 }
%union.anon.3 = type { i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.drm_sched_entity = type { %struct.list_head, ptr, ptr, i32, i32, %struct.spinlock, %struct.spsc_queue, %struct.atomic_t, i64, ptr, %struct.dma_fence_cb, ptr, ptr, ptr, i8, %struct.completion }
%struct.spsc_queue = type { ptr, %struct.atomic_t, %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_drm_run_job = type { %struct.trace_entry, ptr, ptr, ptr, i64, i32, i32, [0 x i8] }
%struct.trace_event_raw_drm_sched_process_job = type { %struct.trace_entry, ptr, [0 x i8] }
%struct.trace_event_raw_drm_sched_job_wait_dep = type { %struct.trace_entry, ptr, i64, ptr, i64, i32, [0 x i8] }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_sched_backend_ops = type { ptr, ptr, ptr, ptr }
%struct.dma_resv_iter = type { ptr, i8, ptr, i32, i32, ptr, i32, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_drm_sched_job = internal constant [14 x i8] c"drm_sched_job\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_drm_sched_job = dso_local global %struct.static_call_key { ptr @__traceiter_drm_sched_job }, align 4
@__tracepoint_drm_sched_job = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_drm_sched_job, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_drm_sched_job, ptr null, ptr @__traceiter_drm_sched_job, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_drm_sched_job = internal constant ptr @__tracepoint_drm_sched_job, section "__tracepoints_ptrs", align 4
@__tpstrtab_drm_run_job = internal constant [12 x i8] c"drm_run_job\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_drm_run_job = dso_local global %struct.static_call_key { ptr @__traceiter_drm_run_job }, align 4
@__tracepoint_drm_run_job = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_drm_run_job, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_drm_run_job, ptr null, ptr @__traceiter_drm_run_job, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_drm_run_job = internal constant ptr @__tracepoint_drm_run_job, section "__tracepoints_ptrs", align 4
@__tpstrtab_drm_sched_process_job = internal constant [22 x i8] c"drm_sched_process_job\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_drm_sched_process_job = dso_local global %struct.static_call_key { ptr @__traceiter_drm_sched_process_job }, align 4
@__tracepoint_drm_sched_process_job = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_drm_sched_process_job, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_drm_sched_process_job, ptr null, ptr @__traceiter_drm_sched_process_job, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_drm_sched_process_job = internal constant ptr @__tracepoint_drm_sched_process_job, section "__tracepoints_ptrs", align 4
@__tpstrtab_drm_sched_job_wait_dep = internal constant [23 x i8] c"drm_sched_job_wait_dep\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_drm_sched_job_wait_dep = dso_local global %struct.static_call_key { ptr @__traceiter_drm_sched_job_wait_dep }, align 4
@__tracepoint_drm_sched_job_wait_dep = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_drm_sched_job_wait_dep, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_drm_sched_job_wait_dep, ptr null, ptr @__traceiter_drm_sched_job_wait_dep, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_drm_sched_job_wait_dep = internal constant ptr @__tracepoint_drm_sched_job_wait_dep, section "__tracepoints_ptrs", align 4
@str__gpu_scheduler__trace_system_name = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gpu_scheduler\00", [18 x i8] zeroinitializer }, align 32
@trace_event_fields_drm_sched_job = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.14, %union.anon.97 { %struct.anon.98 { ptr @.str.15, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.97 { %struct.anon.98 { ptr @.str.17, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.97 { %struct.anon.98 { ptr @.str.19, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon.97 { %struct.anon.98 { ptr @.str.21, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.22, %union.anon.97 { %struct.anon.98 { ptr @.str.23, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.24, %union.anon.97 { %struct.anon.98 { ptr @.str.25, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_drm_sched_job = internal global %struct.trace_event_class { ptr @str__gpu_scheduler__trace_system_name, ptr @trace_event_raw_event_drm_sched_job, ptr @perf_trace_drm_sched_job, ptr @trace_event_reg, ptr @trace_event_fields_drm_sched_job, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_drm_sched_job, i64 24), ptr getelementptr (i8, ptr @event_class_drm_sched_job, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_drm_sched_job = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_drm_sched_job, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_drm_sched_job = internal global { [151 x i8], [41 x i8] } { [151 x i8] c"\22entity=%p, id=%llu, fence=%p, ring=%s, job count:%u, hw job count:%d\22, REC->entity, REC->id, REC->fence, REC->name, REC->job_count, REC->hw_job_count\00", [41 x i8] zeroinitializer }, align 32
@event_drm_sched_job = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_drm_sched_job, %union.anon.99 { ptr @__tracepoint_drm_sched_job }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_drm_sched_job }, ptr @print_fmt_drm_sched_job, ptr null, %union.anon.100 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_drm_sched_job = internal global ptr @event_drm_sched_job, section "_ftrace_events", align 4
@trace_event_fields_drm_run_job = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.14, %union.anon.97 { %struct.anon.98 { ptr @.str.15, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.97 { %struct.anon.98 { ptr @.str.17, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.97 { %struct.anon.98 { ptr @.str.19, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon.97 { %struct.anon.98 { ptr @.str.21, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.22, %union.anon.97 { %struct.anon.98 { ptr @.str.23, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.24, %union.anon.97 { %struct.anon.98 { ptr @.str.25, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_drm_run_job = internal global %struct.trace_event_class { ptr @str__gpu_scheduler__trace_system_name, ptr @trace_event_raw_event_drm_run_job, ptr @perf_trace_drm_run_job, ptr @trace_event_reg, ptr @trace_event_fields_drm_run_job, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_drm_run_job, i64 24), ptr getelementptr (i8, ptr @event_class_drm_run_job, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_drm_run_job = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_drm_run_job, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_drm_run_job = internal global { [151 x i8], [41 x i8] } { [151 x i8] c"\22entity=%p, id=%llu, fence=%p, ring=%s, job count:%u, hw job count:%d\22, REC->entity, REC->id, REC->fence, REC->name, REC->job_count, REC->hw_job_count\00", [41 x i8] zeroinitializer }, align 32
@event_drm_run_job = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_drm_run_job, %union.anon.99 { ptr @__tracepoint_drm_run_job }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_drm_run_job }, ptr @print_fmt_drm_run_job, ptr null, %union.anon.100 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_drm_run_job = internal global ptr @event_drm_run_job, section "_ftrace_events", align 4
@trace_event_fields_drm_sched_process_job = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.16, %union.anon.97 { %struct.anon.98 { ptr @.str.17, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_drm_sched_process_job = internal global %struct.trace_event_class { ptr @str__gpu_scheduler__trace_system_name, ptr @trace_event_raw_event_drm_sched_process_job, ptr @perf_trace_drm_sched_process_job, ptr @trace_event_reg, ptr @trace_event_fields_drm_sched_process_job, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_drm_sched_process_job, i64 24), ptr getelementptr (i8, ptr @event_class_drm_sched_process_job, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_drm_sched_process_job = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_drm_sched_process_job, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_drm_sched_process_job = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\22fence=%p signaled\22, REC->fence\00", [32 x i8] zeroinitializer }, align 32
@event_drm_sched_process_job = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_drm_sched_process_job, %union.anon.99 { ptr @__tracepoint_drm_sched_process_job }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_drm_sched_process_job }, ptr @print_fmt_drm_sched_process_job, ptr null, %union.anon.100 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_drm_sched_process_job = internal global ptr @event_drm_sched_process_job, section "_ftrace_events", align 4
@trace_event_fields_drm_sched_job_wait_dep = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.18, %union.anon.97 { %struct.anon.98 { ptr @.str.19, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon.97 { %struct.anon.98 { ptr @.str.21, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.97 { %struct.anon.98 { ptr @.str.17, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon.97 { %struct.anon.98 { ptr @.str.28, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.97 { %struct.anon.98 { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_drm_sched_job_wait_dep = internal global %struct.trace_event_class { ptr @str__gpu_scheduler__trace_system_name, ptr @trace_event_raw_event_drm_sched_job_wait_dep, ptr @perf_trace_drm_sched_job_wait_dep, ptr @trace_event_reg, ptr @trace_event_fields_drm_sched_job_wait_dep, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_drm_sched_job_wait_dep, i64 24), ptr getelementptr (i8, ptr @event_class_drm_sched_job_wait_dep, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_drm_sched_job_wait_dep = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_drm_sched_job_wait_dep, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_drm_sched_job_wait_dep = internal global { [117 x i8], [43 x i8] } { [117 x i8] c"\22job ring=%s, id=%llu, depends fence=%p, context=%llu, seq=%u\22, REC->name, REC->id, REC->fence, REC->ctx, REC->seqno\00", [43 x i8] zeroinitializer }, align 32
@event_drm_sched_job_wait_dep = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_drm_sched_job_wait_dep, %union.anon.99 { ptr @__tracepoint_drm_sched_job_wait_dep }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_drm_sched_job_wait_dep }, ptr @print_fmt_drm_sched_job_wait_dep, ptr null, %union.anon.100 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_drm_sched_job_wait_dep = internal global ptr @event_drm_sched_job_wait_dep, section "_ftrace_events", align 4
@__bpf_trace_tp_map_drm_sched_job = internal global %union.anon.101 { %struct.bpf_raw_event_map { ptr @__tracepoint_drm_sched_job, ptr @__bpf_trace_drm_sched_job, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_drm_run_job = internal global %union.anon.102 { %struct.bpf_raw_event_map { ptr @__tracepoint_drm_run_job, ptr @__bpf_trace_drm_run_job, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_drm_sched_process_job = internal global %union.anon.103 { %struct.bpf_raw_event_map { ptr @__tracepoint_drm_sched_process_job, ptr @__bpf_trace_drm_sched_process_job, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_drm_sched_job_wait_dep = internal global %union.anon.104 { %struct.bpf_raw_event_map { ptr @__tracepoint_drm_sched_job_wait_dep, ptr @__bpf_trace_drm_sched_job_wait_dep, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__kstrtab_drm_sched_dependency_optimized = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_dependency_optimized = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_dependency_optimized = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_dependency_optimized to i32), ptr @__kstrtab_drm_sched_dependency_optimized, ptr @__kstrtabns_drm_sched_dependency_optimized }, section "___ksymtab+drm_sched_dependency_optimized", align 4
@__kstrtab_drm_sched_fault = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_fault = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_fault = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_fault to i32), ptr @__kstrtab_drm_sched_fault, ptr @__kstrtabns_drm_sched_fault }, section "___ksymtab+drm_sched_fault", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__kstrtab_drm_sched_suspend_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_suspend_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_suspend_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_suspend_timeout to i32), ptr @__kstrtab_drm_sched_suspend_timeout, ptr @__kstrtabns_drm_sched_suspend_timeout }, section "___ksymtab+drm_sched_suspend_timeout", align 4
@__kstrtab_drm_sched_resume_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_resume_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_resume_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_resume_timeout to i32), ptr @__kstrtab_drm_sched_resume_timeout, ptr @__kstrtabns_drm_sched_resume_timeout }, section "___ksymtab+drm_sched_resume_timeout", align 4
@__kstrtab_drm_sched_increase_karma = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_increase_karma = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_increase_karma = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_increase_karma to i32), ptr @__kstrtab_drm_sched_increase_karma, ptr @__kstrtabns_drm_sched_increase_karma }, section "___ksymtab+drm_sched_increase_karma", align 4
@__kstrtab_drm_sched_reset_karma = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_reset_karma = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_reset_karma = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_reset_karma to i32), ptr @__kstrtab_drm_sched_reset_karma, ptr @__kstrtabns_drm_sched_reset_karma }, section "___ksymtab+drm_sched_reset_karma", align 4
@__kstrtab_drm_sched_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_stop to i32), ptr @__kstrtab_drm_sched_stop, ptr @__kstrtabns_drm_sched_stop }, section "___ksymtab+drm_sched_stop", align 4
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"fence add callback failed (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@__kstrtab_drm_sched_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_start = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_start to i32), ptr @__kstrtab_drm_sched_start, ptr @__kstrtabns_drm_sched_start }, section "___ksymtab+drm_sched_start", align 4
@__kstrtab_drm_sched_resubmit_jobs = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_resubmit_jobs = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_resubmit_jobs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_resubmit_jobs to i32), ptr @__kstrtab_drm_sched_resubmit_jobs, ptr @__kstrtabns_drm_sched_resubmit_jobs }, section "___ksymtab+drm_sched_resubmit_jobs", align 4
@__kstrtab_drm_sched_resubmit_jobs_ext = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_resubmit_jobs_ext = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_resubmit_jobs_ext = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_resubmit_jobs_ext to i32), ptr @__kstrtab_drm_sched_resubmit_jobs_ext, ptr @__kstrtabns_drm_sched_resubmit_jobs_ext }, section "___ksymtab+drm_sched_resubmit_jobs_ext", align 4
@__kstrtab_drm_sched_job_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_job_init = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_job_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_job_init to i32), ptr @__kstrtab_drm_sched_job_init, ptr @__kstrtabns_drm_sched_job_init }, section "___ksymtab+drm_sched_job_init", align 4
@__kstrtab_drm_sched_job_arm = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_job_arm = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_job_arm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_job_arm to i32), ptr @__kstrtab_drm_sched_job_arm, ptr @__kstrtabns_drm_sched_job_arm }, section "___ksymtab+drm_sched_job_arm", align 4
@__kstrtab_drm_sched_job_add_dependency = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_job_add_dependency = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_job_add_dependency = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_job_add_dependency to i32), ptr @__kstrtab_drm_sched_job_add_dependency, ptr @__kstrtabns_drm_sched_job_add_dependency }, section "___ksymtab+drm_sched_job_add_dependency", align 4
@__kstrtab_drm_sched_job_add_implicit_dependencies = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_job_add_implicit_dependencies = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_job_add_implicit_dependencies = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_job_add_implicit_dependencies to i32), ptr @__kstrtab_drm_sched_job_add_implicit_dependencies, ptr @__kstrtabns_drm_sched_job_add_implicit_dependencies }, section "___ksymtab+drm_sched_job_add_implicit_dependencies", align 4
@__kstrtab_drm_sched_job_cleanup = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_job_cleanup = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_job_cleanup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_job_cleanup to i32), ptr @__kstrtab_drm_sched_job_cleanup, ptr @__kstrtabns_drm_sched_job_cleanup }, section "___ksymtab+drm_sched_job_cleanup", align 4
@drm_sched_pick_best._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 871, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014[drm] scheduler %s is not ready, skipping\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drm_sched_pick_best\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/scheduler/sched_main.c\00", [57 x i8] zeroinitializer }, align 32
@drm_sched_pick_best._entry_ptr = internal global ptr @drm_sched_pick_best._entry, section ".printk_index", align 4
@__kstrtab_drm_sched_pick_best = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_pick_best = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_pick_best = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_pick_best to i32), ptr @__kstrtab_drm_sched_pick_best, ptr @__kstrtabns_drm_sched_pick_best }, section "___ksymtab+drm_sched_pick_best", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@drm_sched_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&sched->wake_up_worker\00", [41 x i8] zeroinitializer }, align 32
@drm_sched_init.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&sched->job_scheduled\00", [42 x i8] zeroinitializer }, align 32
@drm_sched_init.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&sched->job_list_lock\00", [42 x i8] zeroinitializer }, align 32
@drm_sched_init.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&(&sched->work_tdr)->work)\00", [51 x i8] zeroinitializer }, align 32
@drm_sched_init.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&(&sched->work_tdr)->timer\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to create scheduler for %s.\0A\00", [60 x i8] zeroinitializer }, align 32
@__kstrtab_drm_sched_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_init = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_init to i32), ptr @__kstrtab_drm_sched_init, ptr @__kstrtabns_drm_sched_init }, section "___ksymtab+drm_sched_init", align 4
@__kstrtab_drm_sched_fini = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_fini = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_fini = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_fini to i32), ptr @__kstrtab_drm_sched_fini, ptr @__kstrtabns_drm_sched_fini }, section "___ksymtab+drm_sched_fini", align 4
@__kstrtab_drm_sched_increase_karma_ext = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sched_increase_karma_ext = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sched_increase_karma_ext = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sched_increase_karma_ext to i32), ptr @__kstrtab_drm_sched_increase_karma_ext, ptr @__kstrtabns_drm_sched_increase_karma_ext }, section "___ksymtab+drm_sched_increase_karma_ext", align 4
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"struct drm_sched_entity *\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"entity\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"struct dma_fence *\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fence\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"const char *\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uint64_t\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"id\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"job_count\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hw_job_count\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"entity=%p, id=%llu, fence=%p, ring=%s, job count:%u, hw job count:%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fence=%p signaled\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ctx\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"unsigned\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"seqno\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"job ring=%s, id=%llu, depends fence=%p, context=%llu, seq=%u\0A\00", [34 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.32 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/gpu/drm/scheduler/gpu_scheduler_trace.h\00", [48 x i8] zeroinitializer }, align 32
@trace_drm_sched_process_job.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dma-fence.h\00", [38 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@drm_sched_rq_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&rq->lock\00", [22 x i8] zeroinitializer }, align 32
@trace_drm_run_job.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@___asan_gen_.40 = private unnamed_addr constant [38 x i8] c"str__gpu_scheduler__trace_system_name\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 36, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant [33 x i8] c"trace_event_fields_drm_sched_job\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [37 x i8] c"trace_event_type_funcs_drm_sched_job\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [24 x i8] c"print_fmt_drm_sched_job\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [20 x i8] c"event_drm_sched_job\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [31 x i8] c"trace_event_fields_drm_run_job\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [35 x i8] c"trace_event_type_funcs_drm_run_job\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [22 x i8] c"print_fmt_drm_run_job\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [18 x i8] c"event_drm_run_job\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 62, i32 1 }
@___asan_gen_.67 = private unnamed_addr constant [41 x i8] c"trace_event_fields_drm_sched_process_job\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [45 x i8] c"trace_event_type_funcs_drm_sched_process_job\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [32 x i8] c"print_fmt_drm_sched_process_job\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [28 x i8] c"event_drm_sched_process_job\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [42 x i8] c"trace_event_fields_drm_sched_job_wait_dep\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [46 x i8] c"trace_event_type_funcs_drm_sched_job_wait_dep\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [33 x i8] c"print_fmt_drm_sched_job_wait_dep\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [29 x i8] c"event_drm_sched_job_wait_dep\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 494, i32 5 }
@___asan_gen_.94 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 870, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1007, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1008, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1010, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1012, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1021, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 35, i32 1 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 102, i32 1 }
@___asan_gen_.197 = private unnamed_addr constant [71 x i8] c"../include/trace/../../drivers/gpu/drm/scheduler/gpu_scheduler_trace.h\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 89, i32 1 }
@___asan_gen_.200 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 108, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant [29 x i8] c"../include/linux/dma-fence.h\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 545, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 378, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.215 = private constant [42 x i8] c"../drivers/gpu/drm/scheduler/sched_main.c\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 76, i32 2 }
@llvm.compiler.used = appending global [99 x ptr] [ptr @__bpf_trace_tp_map_drm_run_job, ptr @__bpf_trace_tp_map_drm_sched_job, ptr @__bpf_trace_tp_map_drm_sched_job_wait_dep, ptr @__bpf_trace_tp_map_drm_sched_process_job, ptr @__event_drm_run_job, ptr @__event_drm_sched_job, ptr @__event_drm_sched_job_wait_dep, ptr @__event_drm_sched_process_job, ptr @__ksymtab_drm_sched_dependency_optimized, ptr @__ksymtab_drm_sched_fault, ptr @__ksymtab_drm_sched_fini, ptr @__ksymtab_drm_sched_increase_karma, ptr @__ksymtab_drm_sched_increase_karma_ext, ptr @__ksymtab_drm_sched_init, ptr @__ksymtab_drm_sched_job_add_dependency, ptr @__ksymtab_drm_sched_job_add_implicit_dependencies, ptr @__ksymtab_drm_sched_job_arm, ptr @__ksymtab_drm_sched_job_cleanup, ptr @__ksymtab_drm_sched_job_init, ptr @__ksymtab_drm_sched_pick_best, ptr @__ksymtab_drm_sched_reset_karma, ptr @__ksymtab_drm_sched_resubmit_jobs, ptr @__ksymtab_drm_sched_resubmit_jobs_ext, ptr @__ksymtab_drm_sched_resume_timeout, ptr @__ksymtab_drm_sched_start, ptr @__ksymtab_drm_sched_stop, ptr @__ksymtab_drm_sched_suspend_timeout, ptr @__tracepoint_drm_run_job, ptr @__tracepoint_drm_sched_job, ptr @__tracepoint_drm_sched_job_wait_dep, ptr @__tracepoint_drm_sched_process_job, ptr @__tracepoint_ptr_drm_run_job, ptr @__tracepoint_ptr_drm_sched_job, ptr @__tracepoint_ptr_drm_sched_job_wait_dep, ptr @__tracepoint_ptr_drm_sched_process_job, ptr @drm_sched_pick_best._entry, ptr @drm_sched_pick_best._entry_ptr, ptr @event_class_drm_run_job, ptr @event_class_drm_sched_job, ptr @event_class_drm_sched_job_wait_dep, ptr @event_class_drm_sched_process_job, ptr @event_drm_run_job, ptr @event_drm_sched_job, ptr @event_drm_sched_job_wait_dep, ptr @event_drm_sched_process_job, ptr @str__gpu_scheduler__trace_system_name, ptr @trace_event_fields_drm_sched_job, ptr @trace_event_type_funcs_drm_sched_job, ptr @print_fmt_drm_sched_job, ptr @trace_event_fields_drm_run_job, ptr @trace_event_type_funcs_drm_run_job, ptr @print_fmt_drm_run_job, ptr @trace_event_fields_drm_sched_process_job, ptr @trace_event_type_funcs_drm_sched_process_job, ptr @print_fmt_drm_sched_process_job, ptr @trace_event_fields_drm_sched_job_wait_dep, ptr @trace_event_type_funcs_drm_sched_job_wait_dep, ptr @print_fmt_drm_sched_job_wait_dep, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @drm_sched_init.__key, ptr @.str.4, ptr @drm_sched_init.__key.5, ptr @.str.6, ptr @drm_sched_init.__key.7, ptr @.str.8, ptr @drm_sched_init.__key.9, ptr @.str.10, ptr @drm_sched_init.__key.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @xa_init_flags.__key, ptr @.str.36, ptr @drm_sched_rq_init.__key, ptr @.str.37], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__gpu_scheduler__trace_system_name to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_drm_sched_job to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_drm_sched_job to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_drm_sched_job to i32), i32 151, i32 192, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_drm_sched_job to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_drm_run_job to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_drm_run_job to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_drm_run_job to i32), i32 151, i32 192, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_drm_run_job to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_drm_sched_process_job to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_drm_sched_process_job to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_drm_sched_process_job to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_drm_sched_process_job to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_drm_sched_job_wait_dep to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_drm_sched_job_wait_dep to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_drm_sched_job_wait_dep to i32), i32 117, i32 160, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_drm_sched_job_wait_dep to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_sched_pick_best._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_sched_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_sched_init.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_sched_init.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_sched_init.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_sched_init.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_sched_rq_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_drm_sched_job(ptr nocapture readnone %__data, ptr noundef %sched_job, ptr noundef %entity) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_drm_sched_job, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %sched_job, ptr noundef %entity) #9
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_drm_run_job(ptr nocapture readnone %__data, ptr noundef %sched_job, ptr noundef %entity) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_drm_run_job, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %sched_job, ptr noundef %entity) #9
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_drm_sched_process_job(ptr nocapture readnone %__data, ptr noundef %fence) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_drm_sched_process_job, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %fence) #9
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_drm_sched_job_wait_dep(ptr nocapture readnone %__data, ptr noundef %sched_job, ptr noundef %fence) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_drm_sched_job_wait_dep, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %sched_job, ptr noundef %fence) #9
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_drm_sched_job(ptr noundef %__data, ptr nocapture noundef readonly %sched_job, ptr noundef %entity) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #9
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !157

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !158

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #9
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 40) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %entity6 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %entity6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entity, ptr %entity6, align 8
  %id = getelementptr inbounds %struct.drm_sched_job, ptr %sched_job, i32 0, i32 5
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %id, align 8
  %id7 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %id7 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %id7, align 8
  %s_fence = getelementptr inbounds %struct.drm_sched_job, ptr %sched_job, i32 0, i32 3
  %7 = ptrtoint ptr %s_fence to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fence, align 8
  %finished = getelementptr inbounds %struct.drm_sched_fence, ptr %8, i32 0, i32 1
  %fence = getelementptr inbounds %struct.trace_event_raw_drm_sched_job, ptr %call3, i32 0, i32 2
  %9 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %finished, ptr %fence, align 4
  %sched = getelementptr inbounds %struct.drm_sched_job, ptr %sched_job, i32 0, i32 2
  %10 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sched, align 4
  %name = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 4
  %name8 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job, ptr %call3, i32 0, i32 3
  %14 = ptrtoint ptr %name8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %name8, align 8
  %job_count.i = getelementptr inbounds %struct.drm_sched_entity, ptr %entity, i32 0, i32 6, i32 2
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %job_count.i, i32 noundef 4) #9
  %15 = ptrtoint ptr %job_count.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %job_count.i, align 4
  %job_count = getelementptr inbounds %struct.trace_event_raw_drm_sched_job, ptr %call3, i32 0, i32 5
  %17 = ptrtoint ptr %job_count to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %job_count, align 8
  %18 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sched, align 4
  %hw_rq_count = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %19, i32 0, i32 7
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %hw_rq_count, i32 noundef 4) #9
  %20 = ptrtoint ptr %hw_rq_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %hw_rq_count, align 4
  %hw_job_count = getelementptr inbounds %struct.trace_event_raw_drm_sched_job, ptr %call3, i32 0, i32 6
  %22 = ptrtoint ptr %hw_job_count to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %hw_job_count, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_drm_sched_job(ptr noundef %__data, ptr nocapture noundef readonly %sched_job, ptr noundef %entity) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !159
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !159
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !147) #9
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #9
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !147) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %entity17 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %entity17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %entity, ptr %entity17, align 8
  %id = getelementptr inbounds %struct.drm_sched_job, ptr %sched_job, i32 0, i32 5
  %28 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %id, align 8
  %id18 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %id18 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %id18, align 8
  %s_fence = getelementptr inbounds %struct.drm_sched_job, ptr %sched_job, i32 0, i32 3
  %31 = ptrtoint ptr %s_fence to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_fence, align 8
  %finished = getelementptr inbounds %struct.drm_sched_fence, ptr %32, i32 0, i32 1
  %fence = getelementptr inbounds %struct.trace_event_raw_drm_sched_job, ptr %call13, i32 0, i32 2
  %33 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %finished, ptr %fence, align 4
  %sched = getelementptr inbounds %struct.drm_sched_job, ptr %sched_job, i32 0, i32 2
  %34 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sched, align 4
  %name = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name, align 4
  %name19 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job, ptr %call13, i32 0, i32 3
  %38 = ptrtoint ptr %name19 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %name19, align 8
  %job_count.i = getelementptr inbounds %struct.drm_sched_entity, ptr %entity, i32 0, i32 6, i32 2
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %job_count.i, i32 noundef 4) #9
  %39 = ptrtoint ptr %job_count.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %job_count.i, align 4
  %job_count = getelementptr inbounds %struct.trace_event_raw_drm_sched_job, ptr %call13, i32 0, i32 5
  %41 = ptrtoint ptr %job_count to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %job_count, align 8
  %42 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sched, align 4
  %hw_rq_count = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %43, i32 0, i32 7
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %hw_rq_count, i32 noundef 4) #9
  %44 = ptrtoint ptr %hw_rq_count to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %hw_rq_count, align 4
  %hw_job_count = getelementptr inbounds %struct.trace_event_raw_drm_sched_job, ptr %call13, i32 0, i32 6
  %46 = ptrtoint ptr %hw_job_count to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %hw_job_count, align 4
  %47 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rctx, align 4
  %49 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %48, ptr noundef %__data, i64 noundef 1, ptr noundef %50, ptr noundef %11, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_drm_run_job(ptr noundef %__data, ptr nocapture noundef readonly %sched_job, ptr noundef %entity) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #9
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !157

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !158

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #9
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 40) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %entity6 = getelementptr inbounds %struct.trace_event_raw_drm_run_job, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %entity6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entity, ptr %entity6, align 8
  %id = getelementptr inbounds %struct.drm_sched_job, ptr %sched_job, i32 0, i32 5
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %id, align 8
  %id7 = getelementptr inbounds %struct.trace_event_raw_drm_run_job, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %id7 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %id7, align 8
  %s_fence = getelementptr inbounds %struct.drm_sched_job, ptr %sched_job, i32 0, i32 3
  %7 = ptrtoint ptr %s_fence to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fence, align 8
  %finished = getelementptr inbounds %struct.drm_sched_fence, ptr %8, i32 0, i32 1
  %fence = getelementptr inbounds %struct.trace_event_raw_drm_run_job, ptr %call3, i32 0, i32 2
  %9 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %finished, ptr %fence, align 4
  %sched = getelementptr inbounds %struct.drm_sched_job, ptr %sched_job, i32 0, i32 2
  %10 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sched, align 4
  %name = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 4
  %name8 = getelementptr inbounds %struct.trace_event_raw_drm_run_job, ptr %call3, i32 0, i32 3
  %14 = ptrtoint ptr %name8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %name8, align 8
  %job_count.i = getelementptr inbounds %struct.drm_sched_entity, ptr %entity, i32 0, i32 6, i32 2
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %job_count.i, i32 noundef 4) #9
  %15 = ptrtoint ptr %job_count.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %job_count.i, align 4
  %job_count = getelementptr inbounds %struct.trace_event_raw_drm_run_job, ptr %call3, i32 0, i32 5
  %17 = ptrtoint ptr %job_count to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %job_count, align 8
  %18 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sched, align 4
  %hw_rq_count = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %19, i32 0, i32 7
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %hw_rq_count, i32 noundef 4) #9
  %20 = ptrtoint ptr %hw_rq_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %hw_rq_count, align 4
  %hw_job_count = getelementptr inbounds %struct.trace_event_raw_drm_run_job, ptr %call3, i32 0, i32 6
  %22 = ptrtoint ptr %hw_job_count to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %hw_job_count, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_drm_run_job(ptr noundef %__data, ptr nocapture noundef readonly %sched_job, ptr noundef %entity) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !159
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !159
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !147) #9
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #9
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !147) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %entity17 = getelementptr inbounds %struct.trace_event_raw_drm_run_job, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %entity17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %entity, ptr %entity17, align 8
  %id = getelementptr inbounds %struct.drm_sched_job, ptr %sched_job, i32 0, i32 5
  %28 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %id, align 8
  %id18 = getelementptr inbounds %struct.trace_event_raw_drm_run_job, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %id18 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %id18, align 8
  %s_fence = getelementptr inbounds %struct.drm_sched_job, ptr %sched_job, i32 0, i32 3
  %31 = ptrtoint ptr %s_fence to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_fence, align 8
  %finished = getelementptr inbounds %struct.drm_sched_fence, ptr %32, i32 0, i32 1
  %fence = getelementptr inbounds %struct.trace_event_raw_drm_run_job, ptr %call13, i32 0, i32 2
  %33 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %finished, ptr %fence, align 4
  %sched = getelementptr inbounds %struct.drm_sched_job, ptr %sched_job, i32 0, i32 2
  %34 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sched, align 4
  %name = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name, align 4
  %name19 = getelementptr inbounds %struct.trace_event_raw_drm_run_job, ptr %call13, i32 0, i32 3
  %38 = ptrtoint ptr %name19 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %name19, align 8
  %job_count.i = getelementptr inbounds %struct.drm_sched_entity, ptr %entity, i32 0, i32 6, i32 2
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %job_count.i, i32 noundef 4) #9
  %39 = ptrtoint ptr %job_count.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %job_count.i, align 4
  %job_count = getelementptr inbounds %struct.trace_event_raw_drm_run_job, ptr %call13, i32 0, i32 5
  %41 = ptrtoint ptr %job_count to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %job_count, align 8
  %42 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sched, align 4
  %hw_rq_count = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %43, i32 0, i32 7
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %hw_rq_count, i32 noundef 4) #9
  %44 = ptrtoint ptr %hw_rq_count to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %hw_rq_count, align 4
  %hw_job_count = getelementptr inbounds %struct.trace_event_raw_drm_run_job, ptr %call13, i32 0, i32 6
  %46 = ptrtoint ptr %hw_job_count to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %hw_job_count, align 4
  %47 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rctx, align 4
  %49 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %48, ptr noundef %__data, i64 noundef 1, ptr noundef %50, ptr noundef %11, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_drm_sched_process_job(ptr noundef %__data, ptr noundef %fence) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #9
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !157

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !158

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #9
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %finished = getelementptr inbounds %struct.drm_sched_fence, ptr %fence, i32 0, i32 1
  %fence6 = getelementptr inbounds %struct.trace_event_raw_drm_sched_process_job, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %fence6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %finished, ptr %fence6, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_drm_sched_process_job(ptr noundef %__data, ptr noundef %fence) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !159
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !159
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !147) #9
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #9
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !147) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %finished = getelementptr inbounds %struct.drm_sched_fence, ptr %fence, i32 0, i32 1
  %fence17 = getelementptr inbounds %struct.trace_event_raw_drm_sched_process_job, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %fence17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %finished, ptr %fence17, align 4
  %28 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rctx, align 4
  %30 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %29, ptr noundef %__data, i64 noundef 1, ptr noundef %31, ptr noundef %11, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_drm_sched_job_wait_dep(ptr noundef %__data, ptr nocapture noundef readonly %sched_job, ptr noundef %fence) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #9
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !157

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !158

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #9
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 48) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sched = getelementptr inbounds %struct.drm_sched_job, ptr %sched_job, i32 0, i32 2
  %3 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sched, align 4
  %name = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  %name6 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job_wait_dep, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %name6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %name6, align 8
  %id = getelementptr inbounds %struct.drm_sched_job, ptr %sched_job, i32 0, i32 5
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %id, align 8
  %id7 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job_wait_dep, ptr %call3, i32 0, i32 2
  %10 = ptrtoint ptr %id7 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %id7, align 8
  %fence8 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job_wait_dep, ptr %call3, i32 0, i32 3
  %11 = ptrtoint ptr %fence8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %fence, ptr %fence8, align 8
  %context = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 3
  %12 = ptrtoint ptr %context to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %context, align 8
  %ctx = getelementptr inbounds %struct.trace_event_raw_drm_sched_job_wait_dep, ptr %call3, i32 0, i32 4
  %14 = ptrtoint ptr %ctx to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %ctx, align 8
  %seqno = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 4
  %15 = ptrtoint ptr %seqno to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %seqno, align 8
  %conv = trunc i64 %16 to i32
  %seqno9 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job_wait_dep, ptr %call3, i32 0, i32 5
  %17 = ptrtoint ptr %seqno9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv, ptr %seqno9, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_drm_sched_job_wait_dep(ptr noundef %__data, ptr nocapture noundef readonly %sched_job, ptr noundef %fence) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !159
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !159
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !147) #9
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 52, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #9
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !147) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %sched = getelementptr inbounds %struct.drm_sched_job, ptr %sched_job, i32 0, i32 2
  %27 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sched, align 4
  %name = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name, align 4
  %name17 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job_wait_dep, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %name17 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %name17, align 8
  %id = getelementptr inbounds %struct.drm_sched_job, ptr %sched_job, i32 0, i32 5
  %32 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %id, align 8
  %id18 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job_wait_dep, ptr %call13, i32 0, i32 2
  %34 = ptrtoint ptr %id18 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %id18, align 8
  %fence19 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job_wait_dep, ptr %call13, i32 0, i32 3
  %35 = ptrtoint ptr %fence19 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %fence, ptr %fence19, align 8
  %context = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 3
  %36 = ptrtoint ptr %context to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %context, align 8
  %ctx = getelementptr inbounds %struct.trace_event_raw_drm_sched_job_wait_dep, ptr %call13, i32 0, i32 4
  %38 = ptrtoint ptr %ctx to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %ctx, align 8
  %seqno = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 4
  %39 = ptrtoint ptr %seqno to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %seqno, align 8
  %conv = trunc i64 %40 to i32
  %seqno20 = getelementptr inbounds %struct.trace_event_raw_drm_sched_job_wait_dep, ptr %call13, i32 0, i32 5
  %41 = ptrtoint ptr %seqno20 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv, ptr %seqno20, align 8
  %42 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rctx, align 4
  %44 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 52, i32 noundef %43, ptr noundef %__data, i64 noundef 1, ptr noundef %45, ptr noundef %11, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_drm_sched_job(ptr noundef %__data, ptr noundef %sched_job, ptr noundef %entity) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %sched_job to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %entity to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_drm_run_job(ptr noundef %__data, ptr noundef %sched_job, ptr noundef %entity) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %sched_job to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %entity to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_drm_sched_process_job(ptr noundef %__data, ptr noundef %fence) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %fence to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_drm_sched_job_wait_dep(ptr noundef %__data, ptr noundef %sched_job, ptr noundef %fence) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %sched_job to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %fence to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_sched_rq_add_entity(ptr noundef %rq, ptr noundef %entity) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %entity, align 4
  %cmp.i.not = icmp eq ptr %1, %entity
  br i1 %cmp.i.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef %rq) #9
  %sched = getelementptr inbounds %struct.drm_sched_rq, ptr %rq, i32 0, i32 1
  %2 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sched, align 4
  %score = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %score to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %score, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %5, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %5, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #9, !srcloc !160
  %entities = getelementptr inbounds %struct.drm_sched_rq, ptr %rq, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.drm_sched_rq, ptr %rq, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i, align 4
  %call.i.i7 = tail call zeroext i1 @__list_add_valid(ptr noundef %entity, ptr noundef %8, ptr noundef %entities) #9
  br i1 %call.i.i7, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entity, ptr %prev.i, align 4
  %10 = ptrtoint ptr %entity to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entities, ptr %entity, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %entity, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entity, ptr %8, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %rq) #9
  br label %return

return:                                           ; preds = %list_add_tail.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_sched_rq_remove_entity(ptr noundef %rq, ptr noundef %entity) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %entity, align 4
  %cmp.i.not = icmp eq ptr %1, %entity
  br i1 %cmp.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef %rq) #9
  %sched = getelementptr inbounds %struct.drm_sched_rq, ptr %rq, i32 0, i32 1
  %2 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sched, align 4
  %score = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %score to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %score, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %5, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %5, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #9, !srcloc !161
  %call.i.i12 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entity) #9
  br i1 %call.i.i12, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %entity, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %entity, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %13 = ptrtoint ptr %entity to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %entity, ptr %entity, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %entity, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %entity, ptr %prev.i3.i, align 4
  %current_entity = getelementptr inbounds %struct.drm_sched_rq, ptr %rq, i32 0, i32 3
  %15 = ptrtoint ptr %current_entity to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %current_entity, align 4
  %cmp = icmp eq ptr %16, %entity
  br i1 %cmp, label %if.then2, label %list_del_init.exit.if.end4_crit_edge

list_del_init.exit.if.end4_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then2:                                         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %current_entity to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %current_entity, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %list_del_init.exit.if.end4_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %rq) #9
  br label %return

return:                                           ; preds = %if.end4, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @drm_sched_dependency_optimized(ptr noundef %fence, ptr nocapture noundef readonly %entity) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rq = getelementptr inbounds %struct.drm_sched_entity, ptr %entity, i32 0, i32 1
  %0 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq, align 8
  %sched1 = getelementptr inbounds %struct.drm_sched_rq, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sched1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sched1, align 4
  %tobool.not = icmp eq ptr %fence, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %flags.i = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 5
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 1
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %signaled.i = getelementptr inbounds %struct.dma_fence_ops, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %signaled.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %signaled.i, align 4
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %if.end.i.if.end_crit_edge, label %land.lhs.true.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end.i
  %call4.i = tail call zeroext i1 %9(ptr noundef nonnull %fence) #9
  br i1 %call4.i, label %if.then5.i, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %call6.i = tail call i32 @dma_fence_signal(ptr noundef nonnull %fence) #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %context = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 3
  %10 = ptrtoint ptr %context to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %context, align 8
  %fence_context = getelementptr inbounds %struct.drm_sched_entity, ptr %entity, i32 0, i32 8
  %12 = ptrtoint ptr %fence_context to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %fence_context, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %13)
  %cmp = icmp eq i64 %11, %13
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call ptr @to_drm_sched_fence(ptr noundef nonnull %fence) #9
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end3.if.end9_crit_edge, label %land.lhs.true

if.end3.if.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end3
  %sched6 = getelementptr inbounds %struct.drm_sched_fence, ptr %call4, i32 0, i32 3
  %14 = ptrtoint ptr %sched6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sched6, align 4
  %cmp7 = icmp eq ptr %15, %3
  br i1 %cmp7, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.end3.if.end9_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then5.i, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end9 ], [ false, %entry.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ], [ true, %land.lhs.true.cleanup_crit_edge ], [ false, %if.then5.i ], [ false, %lor.lhs.false.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @to_drm_sched_fence(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_sched_fault(ptr noundef %sched) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout_wq = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 9
  %0 = ptrtoint ptr %timeout_wq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %timeout_wq, align 8
  %work_tdr = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 10
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %work_tdr, i32 noundef 0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_sched_suspend_timeout(ptr noundef %sched) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %work_tdr = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 10
  %expires = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 10, i32 1, i32 1
  %1 = ptrtoint ptr %expires to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %expires, align 4
  %timeout_wq = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 9
  %3 = ptrtoint ptr %timeout_wq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %timeout_wq, align 8
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %work_tdr, i32 noundef 2147483647) #9
  %sub = sub i32 %0, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  %or.cond = select i1 %call.i, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub2 = sub i32 %2, %0
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %timeout = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 2
  %5 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %timeout, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %sub2, %if.then ], [ %6, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_sched_resume_timeout(ptr noundef %sched, i32 noundef %remaining) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %job_list_lock = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %job_list_lock) #9
  %pending_list = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 12
  %0 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pending_list, align 4
  %cmp.i.not = icmp eq ptr %1, %pending_list
  br i1 %cmp.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %work_tdr = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 10
  %call1 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %work_tdr) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %timeout_wq = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 9
  %2 = ptrtoint ptr %timeout_wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timeout_wq, align 8
  %work_tdr2 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 10
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %work_tdr2, i32 noundef %remaining) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock(ptr noundef %job_list_lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_sched_increase_karma(ptr noundef %bad) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_sched_increase_karma_ext(ptr noundef %bad, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_sched_increase_karma_ext(ptr noundef %bad, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sched1 = getelementptr inbounds %struct.drm_sched_job, ptr %bad, i32 0, i32 2
  %0 = ptrtoint ptr %sched1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched1, align 4
  %s_priority = getelementptr inbounds %struct.drm_sched_job, ptr %bad, i32 0, i32 7
  %2 = ptrtoint ptr %s_priority to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_priority, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.not = icmp eq i32 %3, 3
  br i1 %cmp.not, label %entry.if.end38_crit_edge, label %if.then

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then:                                          ; preds = %entry
  %4 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %if.then.if.end7_crit_edge [
    i32 0, label %if.then3
    i32 1, label %if.then5
  ]

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %karma = getelementptr inbounds %struct.drm_sched_job, ptr %bad, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %karma, i32 noundef 4) #9
  %5 = ptrtoint ptr %karma to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %karma, align 4
  br label %if.end7

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %karma6 = getelementptr inbounds %struct.drm_sched_job, ptr %bad, i32 0, i32 6
  %call.i.i57 = tail call zeroext i1 @__kasan_check_write(ptr noundef %karma6, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %karma6, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %karma6, ptr %karma6, i32 1, ptr elementtype(i32) %karma6) #9, !srcloc !160
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then3, %if.then.if.end7_crit_edge
  %s_fence = getelementptr inbounds %struct.drm_sched_job, ptr %bad, i32 0, i32 3
  %arrayidx = getelementptr %struct.drm_gpu_scheduler, ptr %1, i32 0, i32 4, i32 0
  tail call void @_raw_spin_lock(ptr noundef %arrayidx) #9
  %entities = getelementptr %struct.drm_gpu_scheduler, ptr %1, i32 0, i32 4, i32 0, i32 2
  br label %for.cond14

for.cond14:                                       ; preds = %for.body18.for.cond14_crit_edge, %if.end7
  %entity.0.in = phi ptr [ %entities, %if.end7 ], [ %entity.0, %for.body18.for.cond14_crit_edge ]
  %7 = ptrtoint ptr %entity.0.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %entity.0 = load ptr, ptr %entity.0.in, align 4
  %cmp17.not = icmp eq ptr %entity.0, %entities
  br i1 %cmp17.not, label %for.inc36, label %for.body18

for.body18:                                       ; preds = %for.cond14
  %8 = ptrtoint ptr %s_fence to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fence, align 8
  %context = getelementptr inbounds %struct.dma_fence, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %context to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %context, align 8
  %fence_context = getelementptr inbounds %struct.drm_sched_entity, ptr %entity.0, i32 0, i32 8
  %12 = ptrtoint ptr %fence_context to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %fence_context, align 8
  %cmp19 = icmp eq i64 %11, %13
  br i1 %cmp19, label %for.body18.if.then20_crit_edge, label %for.body18.for.cond14_crit_edge

for.body18.for.cond14_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond14

for.body18.if.then20_crit_edge:                   ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

if.then20:                                        ; preds = %for.body18.2.if.then20_crit_edge, %for.body18.1.if.then20_crit_edge, %for.body18.if.then20_crit_edge
  %arrayidx.lcssa = phi ptr [ %arrayidx.2, %for.body18.2.if.then20_crit_edge ], [ %arrayidx.1, %for.body18.1.if.then20_crit_edge ], [ %arrayidx, %for.body18.if.then20_crit_edge ]
  %entity.0.lcssa61 = phi ptr [ %entity.0.2, %for.body18.2.if.then20_crit_edge ], [ %entity.0.1, %for.body18.1.if.then20_crit_edge ], [ %entity.0, %for.body18.if.then20_crit_edge ]
  %guilty = getelementptr inbounds %struct.drm_sched_entity, ptr %entity.0.lcssa61, i32 0, i32 11
  %14 = ptrtoint ptr %guilty to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %guilty, align 8
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.then20.if.end38.sink.split_crit_edge, label %if.then21

if.then20.if.end38.sink.split_crit_edge:          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.sink.split

if.then21:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i58 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %15, i32 noundef 4) #9
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 %type, ptr %15, align 4
  br label %if.end38.sink.split

for.inc36:                                        ; preds = %for.cond14
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx) #9
  %arrayidx.1 = getelementptr %struct.drm_gpu_scheduler, ptr %1, i32 0, i32 4, i32 1
  tail call void @_raw_spin_lock(ptr noundef %arrayidx.1) #9
  %entities.1 = getelementptr %struct.drm_gpu_scheduler, ptr %1, i32 0, i32 4, i32 1, i32 2
  br label %for.cond14.1

for.cond14.1:                                     ; preds = %for.body18.1.for.cond14.1_crit_edge, %for.inc36
  %entity.0.in.1 = phi ptr [ %entities.1, %for.inc36 ], [ %entity.0.1, %for.body18.1.for.cond14.1_crit_edge ]
  %17 = ptrtoint ptr %entity.0.in.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %entity.0.1 = load ptr, ptr %entity.0.in.1, align 4
  %cmp17.not.1 = icmp eq ptr %entity.0.1, %entities.1
  br i1 %cmp17.not.1, label %for.inc36.1, label %for.body18.1

for.body18.1:                                     ; preds = %for.cond14.1
  %18 = ptrtoint ptr %s_fence to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_fence, align 8
  %context.1 = getelementptr inbounds %struct.dma_fence, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %context.1 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %context.1, align 8
  %fence_context.1 = getelementptr inbounds %struct.drm_sched_entity, ptr %entity.0.1, i32 0, i32 8
  %22 = ptrtoint ptr %fence_context.1 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %fence_context.1, align 8
  %cmp19.1 = icmp eq i64 %21, %23
  br i1 %cmp19.1, label %for.body18.1.if.then20_crit_edge, label %for.body18.1.for.cond14.1_crit_edge

for.body18.1.for.cond14.1_crit_edge:              ; preds = %for.body18.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond14.1

for.body18.1.if.then20_crit_edge:                 ; preds = %for.body18.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

for.inc36.1:                                      ; preds = %for.cond14.1
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx.1) #9
  %arrayidx.2 = getelementptr %struct.drm_gpu_scheduler, ptr %1, i32 0, i32 4, i32 2
  tail call void @_raw_spin_lock(ptr noundef %arrayidx.2) #9
  %entities.2 = getelementptr %struct.drm_gpu_scheduler, ptr %1, i32 0, i32 4, i32 2, i32 2
  br label %for.cond14.2

for.cond14.2:                                     ; preds = %for.body18.2.for.cond14.2_crit_edge, %for.inc36.1
  %entity.0.in.2 = phi ptr [ %entities.2, %for.inc36.1 ], [ %entity.0.2, %for.body18.2.for.cond14.2_crit_edge ]
  %24 = ptrtoint ptr %entity.0.in.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %entity.0.2 = load ptr, ptr %entity.0.in.2, align 4
  %cmp17.not.2 = icmp eq ptr %entity.0.2, %entities.2
  br i1 %cmp17.not.2, label %for.cond14.2.if.end38.sink.split_crit_edge, label %for.body18.2

for.cond14.2.if.end38.sink.split_crit_edge:       ; preds = %for.cond14.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.sink.split

for.body18.2:                                     ; preds = %for.cond14.2
  %25 = ptrtoint ptr %s_fence to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_fence, align 8
  %context.2 = getelementptr inbounds %struct.dma_fence, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %context.2 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %context.2, align 8
  %fence_context.2 = getelementptr inbounds %struct.drm_sched_entity, ptr %entity.0.2, i32 0, i32 8
  %29 = ptrtoint ptr %fence_context.2 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %fence_context.2, align 8
  %cmp19.2 = icmp eq i64 %28, %30
  br i1 %cmp19.2, label %for.body18.2.if.then20_crit_edge, label %for.body18.2.for.cond14.2_crit_edge

for.body18.2.for.cond14.2_crit_edge:              ; preds = %for.body18.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond14.2

for.body18.2.if.then20_crit_edge:                 ; preds = %for.body18.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

if.end38.sink.split:                              ; preds = %for.cond14.2.if.end38.sink.split_crit_edge, %if.then21, %if.then20.if.end38.sink.split_crit_edge
  %arrayidx.2.sink = phi ptr [ %arrayidx.lcssa, %if.then20.if.end38.sink.split_crit_edge ], [ %arrayidx.lcssa, %if.then21 ], [ %arrayidx.2, %for.cond14.2.if.end38.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx.2.sink) #9
  br label %if.end38

if.end38:                                         ; preds = %if.end38.sink.split, %entry.if.end38_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_sched_reset_karma(ptr noundef %bad) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_sched_increase_karma_ext(ptr noundef %bad, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_sched_stop(ptr noundef %sched, ptr noundef %bad) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %thread = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 11
  %0 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %thread, align 8
  %call = tail call i32 @kthread_park(ptr noundef %1) #9
  %tobool.not = icmp eq ptr %bad, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %sched1 = getelementptr inbounds %struct.drm_sched_job, ptr %bad, i32 0, i32 2
  %2 = ptrtoint ptr %sched1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sched1, align 4
  %cmp = icmp eq ptr %3, %sched
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %list = getelementptr inbounds %struct.drm_sched_job, ptr %bad, i32 0, i32 1
  %pending_list = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 12
  %4 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pending_list, align 4
  %call.i.i57 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %pending_list, ptr noundef %5) #9
  br i1 %call.i.i57, label %if.end.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev1.i.i, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.drm_sched_job, ptr %bad, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %pending_list, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %pending_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %pending_list, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.then.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %pending_list2 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 12
  %prev = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev, align 4
  %cmp11.not63 = icmp eq ptr %11, %pending_list2
  br i1 %cmp11.not63, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %hw_rq_count = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 7
  %job_list_lock = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 13
  %free_guilty = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn5564 = phi ptr [ %11, %for.body.lr.ph ], [ %.pn68, %for.inc.for.body_crit_edge ]
  %s_job.066 = getelementptr i8, ptr %.pn5564, i32 -4
  %.pn.in67 = getelementptr inbounds %struct.list_head, ptr %.pn5564, i32 0, i32 1
  %12 = ptrtoint ptr %.pn.in67 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn68 = load ptr, ptr %.pn.in67, align 4
  %s_fence = getelementptr i8, ptr %.pn5564, i32 12
  %13 = ptrtoint ptr %s_fence to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fence, align 8
  %parent = getelementptr inbounds %struct.drm_sched_fence, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent, align 8
  %tobool12.not = icmp eq ptr %16, null
  br i1 %tobool12.not, label %for.body.if.else_crit_edge, label %land.lhs.true13

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true13:                                  ; preds = %for.body
  %cb = getelementptr i8, ptr %.pn5564, i32 56
  %call16 = tail call zeroext i1 @dma_fence_remove_callback(ptr noundef nonnull %16, ptr noundef %cb) #9
  br i1 %call16, label %if.then17, label %land.lhs.true13.if.else_crit_edge

land.lhs.true13.if.else_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then17:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hw_rq_count, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %hw_rq_count, i32 1, i32 3, i32 1) #9
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hw_rq_count, ptr %hw_rq_count, i32 1, ptr elementtype(i32) %hw_rq_count) #9, !srcloc !161
  br label %for.inc

if.else:                                          ; preds = %land.lhs.true13.if.else_crit_edge, %for.body.if.else_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %job_list_lock) #9
  %call.i.i58 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn5564) #9
  br i1 %call.i.i58, label %if.end.i.i59, label %if.else.list_del_init.exit_crit_edge

if.else.list_del_init.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i59:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %.pn.in67 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %.pn.in67, align 4
  %20 = ptrtoint ptr %.pn5564 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %.pn5564, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i59, %if.else.list_del_init.exit_crit_edge
  %24 = ptrtoint ptr %.pn5564 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %.pn5564, ptr %.pn5564, align 4
  %25 = ptrtoint ptr %.pn.in67 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %.pn5564, ptr %.pn.in67, align 4
  tail call void @_raw_spin_unlock(ptr noundef %job_list_lock) #9
  %26 = ptrtoint ptr %s_fence to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_fence, align 8
  %finished = getelementptr inbounds %struct.drm_sched_fence, ptr %27, i32 0, i32 1
  %call.i = tail call i32 @dma_fence_wait_timeout(ptr noundef %finished, i1 noundef zeroext false, i32 noundef 2147483647) #9
  %cmp22.not = icmp eq ptr %s_job.066, %bad
  br i1 %cmp22.not, label %if.else24, label %if.then23

if.then23:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sched, align 8
  %free_job = getelementptr inbounds %struct.drm_sched_backend_ops, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %free_job to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %free_job, align 4
  tail call void %31(ptr noundef %s_job.066) #9
  br label %for.inc

if.else24:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %free_guilty to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %free_guilty, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.else24, %if.then23, %if.then17
  %cmp11.not = icmp eq ptr %.pn68, %pending_list2
  br i1 %cmp11.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %work_tdr = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 10
  %call32 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %work_tdr) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_park(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dma_fence_remove_callback(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_sched_start(ptr noundef %sched, i1 noundef zeroext %full_recovery) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pending_list = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 12
  %0 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pending_list, align 4
  %cmp.not47 = icmp eq ptr %1, %pending_list
  br i1 %cmp.not47, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %hw_rq_count = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %.pn.in48 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn50, %cleanup.for.body_crit_edge ]
  %s_job.049 = getelementptr i8, ptr %.pn.in48, i32 -4
  %2 = ptrtoint ptr %.pn.in48 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn50 = load ptr, ptr %.pn.in48, align 4
  %s_fence = getelementptr i8, ptr %.pn.in48, i32 12
  %3 = ptrtoint ptr %s_fence to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fence, align 8
  %parent = getelementptr inbounds %struct.drm_sched_fence, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hw_rq_count, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %hw_rq_count, i32 1, i32 3, i32 1) #9
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hw_rq_count, ptr %hw_rq_count, i32 1, ptr elementtype(i32) %hw_rq_count) #9, !srcloc !160
  br i1 %full_recovery, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %for.body
  %tobool8.not = icmp eq ptr %6, null
  br i1 %tobool8.not, label %if.else16, label %if.then9

if.then9:                                         ; preds = %if.end
  %cb = getelementptr i8, ptr %.pn.in48, i32 56
  %call = tail call i32 @dma_fence_add_callback(ptr noundef nonnull %6, ptr noundef %cb, ptr noundef nonnull @drm_sched_job_done_cb) #9
  %8 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %call, label %if.then13 [
    i32 -2, label %if.then11
    i32 0, label %if.then9.cleanup_crit_edge
  ]

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @drm_sched_job_done(ptr noundef %s_job.049)
  br label %cleanup

if.then13:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %call) #9
  br label %cleanup

if.else16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @drm_sched_job_done(ptr noundef %s_job.049)
  br label %cleanup

cleanup:                                          ; preds = %if.else16, %if.then13, %if.then11, %if.then9.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %cmp.not = icmp eq ptr %.pn50, %pending_list
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  br i1 %full_recovery, label %if.then24, label %for.end.if.end26_crit_edge

for.end.if.end26_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then24:                                        ; preds = %for.end
  %job_list_lock = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %job_list_lock) #9
  %timeout.i = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 2
  %9 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %timeout.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %10)
  %cmp.not.i = icmp eq i32 %10, 2147483647
  br i1 %cmp.not.i, label %if.then24.drm_sched_start_timeout.exit_crit_edge, label %land.lhs.true.i

if.then24.drm_sched_start_timeout.exit_crit_edge: ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_sched_start_timeout.exit

land.lhs.true.i:                                  ; preds = %if.then24
  %11 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %pending_list, align 4
  %cmp.i.not.i = icmp eq ptr %12, %pending_list
  br i1 %cmp.i.not.i, label %land.lhs.true.i.drm_sched_start_timeout.exit_crit_edge, label %if.then.i

land.lhs.true.i.drm_sched_start_timeout.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_sched_start_timeout.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %timeout_wq.i = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 9
  %13 = ptrtoint ptr %timeout_wq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %timeout_wq.i, align 8
  %work_tdr.i = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 10
  %call.i.i44 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %work_tdr.i, i32 noundef %10) #9
  br label %drm_sched_start_timeout.exit

drm_sched_start_timeout.exit:                     ; preds = %if.then.i, %land.lhs.true.i.drm_sched_start_timeout.exit_crit_edge, %if.then24.drm_sched_start_timeout.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %job_list_lock) #9
  br label %if.end26

if.end26:                                         ; preds = %drm_sched_start_timeout.exit, %for.end.if.end26_crit_edge
  %thread = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 11
  %15 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %thread, align 8
  tail call void @kthread_unpark(ptr noundef %16) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_add_callback(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drm_sched_job_done_cb(ptr nocapture noundef readnone %f, ptr nocapture noundef readonly %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %cb, i32 -60
  tail call fastcc void @drm_sched_job_done(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @drm_sched_job_done(ptr nocapture noundef readonly %s_job) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fence1 = getelementptr inbounds %struct.drm_sched_job, ptr %s_job, i32 0, i32 3
  %0 = ptrtoint ptr %s_fence1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fence1, align 8
  %sched2 = getelementptr inbounds %struct.drm_sched_fence, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %sched2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sched2, align 4
  %hw_rq_count = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %3, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hw_rq_count, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %hw_rq_count, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hw_rq_count, ptr %hw_rq_count, i32 1, ptr elementtype(i32) %hw_rq_count) #9, !srcloc !161
  %score = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %3, i32 0, i32 15
  %5 = ptrtoint ptr %score to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %score, align 4
  %call.i.i10 = tail call zeroext i1 @__kasan_check_write(ptr noundef %6, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %6, i32 1, i32 3, i32 1) #9
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #9, !srcloc !161
  tail call fastcc void @trace_drm_sched_process_job(ptr noundef %1)
  %finished = getelementptr inbounds %struct.drm_sched_fence, ptr %1, i32 0, i32 1
  %tobool.not.i = icmp eq ptr %finished, null
  br i1 %tobool.not.i, label %dma_fence_get.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %refcount.i = getelementptr inbounds %struct.drm_sched_fence, ptr %1, i32 0, i32 1, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !162
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !158

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.then.i14_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !157

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.then.i14_crit_edge:          ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i14

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #9
  br label %if.then.i14

dma_fence_get.exit:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @drm_sched_fence_finished(ptr noundef %1) #9
  br label %dma_fence_put.exit

if.then.i14:                                      ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.then.i14_crit_edge
  tail call void @drm_sched_fence_finished(ptr noundef %1) #9
  %call.i.i.i.i.i.i.i13 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !164
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i15 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i15, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !157

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @dma_fence_release(ptr noundef %refcount.i) #9
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %dma_fence_get.exit
  %wake_up_worker = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %3, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %wake_up_worker, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_unpark(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_sched_resubmit_jobs(ptr noundef %sched) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_sched_resubmit_jobs_ext(ptr noundef %sched, i32 noundef 2147483647)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_sched_resubmit_jobs_ext(ptr noundef readonly %sched, i32 noundef %max) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pending_list = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 12
  %0 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pending_list, align 4
  %cmp.not87 = icmp eq ptr %1, %pending_list
  br i1 %cmp.not87, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %hang_limit = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 14
  %smax = call i32 @llvm.smax.i32(i32 %max, i32 0)
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %.pn.in91 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn93, %cleanup.for.body_crit_edge ]
  %guilty_context.090 = phi i64 [ -1, %for.body.lr.ph ], [ %guilty_context.179, %cleanup.for.body_crit_edge ]
  %found_guilty.0.off089 = phi i1 [ false, %for.body.lr.ph ], [ %found_guilty.1.off076, %cleanup.for.body_crit_edge ]
  %i.088 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %s_job.092 = getelementptr i8, ptr %.pn.in91, i32 -4
  %2 = ptrtoint ptr %.pn.in91 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn93 = load ptr, ptr %.pn.in91, align 4
  %s_fence8 = getelementptr i8, ptr %.pn.in91, i32 12
  %3 = ptrtoint ptr %s_fence8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fence8, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.088, i32 %smax)
  %exitcond.not = icmp eq i32 %i.088, %smax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end:                                           ; preds = %for.body
  br i1 %found_guilty.0.off089, label %if.end.land.lhs.true15_crit_edge, label %land.lhs.true

if.end.land.lhs.true15_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true15

land.lhs.true:                                    ; preds = %if.end
  %karma = getelementptr i8, ptr %.pn.in91, i32 44
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %karma, i32 noundef 4) #9
  %5 = ptrtoint ptr %karma to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %karma, align 4
  %7 = ptrtoint ptr %hang_limit to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hang_limit, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp10 = icmp sgt i32 %6, %8
  br i1 %cmp10, label %if.then11, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %s_fence8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fence8, align 8
  %context = getelementptr inbounds %struct.dma_fence, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %context to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %context, align 8
  br label %land.lhs.true15

land.lhs.true15:                                  ; preds = %if.then11, %if.end.land.lhs.true15_crit_edge
  %guilty_context.1.ph = phi i64 [ %12, %if.then11 ], [ %guilty_context.090, %if.end.land.lhs.true15_crit_edge ]
  %13 = ptrtoint ptr %s_fence8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fence8, align 8
  %context18 = getelementptr inbounds %struct.dma_fence, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %context18 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %context18, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %guilty_context.1.ph)
  %cmp19 = icmp eq i64 %16, %guilty_context.1.ph
  br i1 %cmp19, label %if.then20, label %land.lhs.true15.if.end21_crit_edge

land.lhs.true15.if.end21_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then20:                                        ; preds = %land.lhs.true15
  %flags.i = getelementptr inbounds %struct.drm_sched_fence, ptr %4, i32 0, i32 1, i32 5
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then20.dma_fence_set_error.exit_crit_edge, label %do.end.i, !prof !157

if.then20.dma_fence_set_error.exit_crit_edge:     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_set_error.exit

do.end.i:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 545, i32 noundef 9, ptr noundef null) #9
  br label %dma_fence_set_error.exit

dma_fence_set_error.exit:                         ; preds = %do.end.i, %if.then20.dma_fence_set_error.exit_crit_edge
  %error51.i = getelementptr inbounds %struct.drm_sched_fence, ptr %4, i32 0, i32 1, i32 7
  %19 = ptrtoint ptr %error51.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -125, ptr %error51.i, align 8
  br label %if.end21

if.end21:                                         ; preds = %dma_fence_set_error.exit, %land.lhs.true15.if.end21_crit_edge, %land.lhs.true.if.end21_crit_edge
  %guilty_context.179 = phi i64 [ %guilty_context.1.ph, %dma_fence_set_error.exit ], [ %guilty_context.1.ph, %land.lhs.true15.if.end21_crit_edge ], [ %guilty_context.090, %land.lhs.true.if.end21_crit_edge ]
  %found_guilty.1.off076 = phi i1 [ true, %dma_fence_set_error.exit ], [ true, %land.lhs.true15.if.end21_crit_edge ], [ false, %land.lhs.true.if.end21_crit_edge ]
  %20 = ptrtoint ptr %s_fence8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_fence8, align 8
  %parent = getelementptr inbounds %struct.drm_sched_fence, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent, align 8
  %tobool.not.i65 = icmp eq ptr %23, null
  br i1 %tobool.not.i65, label %if.end21.dma_fence_put.exit_crit_edge, label %if.then.i

if.end21.dma_fence_put.exit_crit_edge:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %if.end21
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %23, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !164
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !157

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @dma_fence_release(ptr noundef %refcount.i) #9
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %if.end21.dma_fence_put.exit_crit_edge
  %25 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sched, align 8
  %run_job = getelementptr inbounds %struct.drm_sched_backend_ops, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %run_job to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %run_job, align 4
  %call23 = tail call ptr %28(ptr noundef %s_job.092) #9
  %inc = add nuw i32 %i.088, 1
  %tobool.not.i66 = icmp eq ptr %call23, null
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i66, %cmp.i
  %call23.mux = select i1 %spec.select.i, ptr null, ptr %call23
  br i1 %cmp.i, label %if.then27, label %dma_fence_put.exit.cleanup_crit_edge

dma_fence_put.exit.cleanup_crit_edge:             ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then27:                                        ; preds = %dma_fence_put.exit
  %29 = ptrtoint ptr %call23 to i32
  %flags.i68 = getelementptr inbounds %struct.drm_sched_fence, ptr %4, i32 0, i32 1, i32 5
  %30 = ptrtoint ptr %flags.i68 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %flags.i68, align 4
  %and1.i.i69 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i69)
  %tobool.not.i70 = icmp eq i32 %and1.i.i69, 0
  br i1 %tobool.not.i70, label %if.then27.if.end.i_crit_edge, label %do.end.i71, !prof !157

if.then27.if.end.i_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i71:                                       ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 545, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i71, %if.then27.if.end.i_crit_edge
  %32 = icmp ult ptr %call23, inttoptr (i32 -4095 to ptr)
  br i1 %32, label %do.end37.i, label %if.end.i.dma_fence_set_error.exit73_crit_edge, !prof !158

if.end.i.dma_fence_set_error.exit73_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_set_error.exit73

do.end37.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 546, i32 noundef 9, ptr noundef null) #9
  br label %dma_fence_set_error.exit73

dma_fence_set_error.exit73:                       ; preds = %do.end37.i, %if.end.i.dma_fence_set_error.exit73_crit_edge
  %error51.i72 = getelementptr inbounds %struct.drm_sched_fence, ptr %4, i32 0, i32 1, i32 7
  %33 = ptrtoint ptr %error51.i72 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %29, ptr %error51.i72, align 8
  br label %cleanup

cleanup:                                          ; preds = %dma_fence_set_error.exit73, %dma_fence_put.exit.cleanup_crit_edge
  %.sink = phi ptr [ null, %dma_fence_set_error.exit73 ], [ %call23.mux, %dma_fence_put.exit.cleanup_crit_edge ]
  %34 = ptrtoint ptr %s_fence8 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_fence8, align 8
  %parent32 = getelementptr inbounds %struct.drm_sched_fence, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %parent32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %.sink, ptr %parent32, align 8
  %cmp.not = icmp eq ptr %.pn93, %pending_list
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_sched_job_init(ptr noundef %job, ptr noundef %entity, ptr noundef %owner) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_sched_entity_select_rq(ptr noundef %entity) #9
  %rq = getelementptr inbounds %struct.drm_sched_entity, ptr %entity, i32 0, i32 1
  %0 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %entity1 = getelementptr inbounds %struct.drm_sched_job, ptr %job, i32 0, i32 8
  %2 = ptrtoint ptr %entity1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entity, ptr %entity1, align 8
  %call = tail call ptr @drm_sched_fence_alloc(ptr noundef %entity, ptr noundef %owner) #9
  %s_fence = getelementptr inbounds %struct.drm_sched_job, ptr %job, i32 0, i32 3
  %3 = ptrtoint ptr %s_fence to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %s_fence, align 8
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.end.return_crit_edge, label %if.end5

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %list = getelementptr inbounds %struct.drm_sched_job, ptr %job, i32 0, i32 1
  %4 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.drm_sched_job, ptr %job, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list, ptr %prev.i, align 4
  %dependencies = getelementptr inbounds %struct.drm_sched_job, ptr %job, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %dependencies, ptr noundef nonnull @.str.36, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #9
  %xa_flags.i = getelementptr inbounds %struct.drm_sched_job, ptr %job, i32 0, i32 10, i32 1
  %6 = ptrtoint ptr %xa_flags.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 67108868, ptr %xa_flags.i, align 4
  %xa_head.i = getelementptr inbounds %struct.drm_sched_job, ptr %job, i32 0, i32 10, i32 2
  %7 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %xa_head.i, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -2, %entry.return_crit_edge ], [ -12, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_entity_select_rq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_sched_fence_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_sched_job_arm(ptr nocapture noundef %job) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %entity1 = getelementptr inbounds %struct.drm_sched_job, ptr %job, i32 0, i32 8
  %0 = ptrtoint ptr %entity1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entity1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !158

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/scheduler/sched_main.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 625, 0\0A.popsection", ""() #9, !srcloc !166
  unreachable

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rq = getelementptr inbounds %struct.drm_sched_entity, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq, align 8
  %sched11 = getelementptr inbounds %struct.drm_sched_rq, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %sched11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sched11, align 4
  %sched12 = getelementptr inbounds %struct.drm_sched_job, ptr %job, i32 0, i32 2
  %6 = ptrtoint ptr %sched12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %sched12, align 4
  %7 = load ptr, ptr %rq, align 8
  %sched_rq = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %5, i32 0, i32 4
  %sub.ptr.lhs.cast = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %sched_rq to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 60
  %s_priority = getelementptr inbounds %struct.drm_sched_job, ptr %job, i32 0, i32 7
  %8 = ptrtoint ptr %s_priority to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub.ptr.div, ptr %s_priority, align 4
  %job_id_count = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %5, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %job_id_count, i32 noundef 8) #9
  %call.i2.i = tail call i64 @generic_atomic64_add_return(i64 noundef 1, ptr noundef %job_id_count) #9
  %id = getelementptr inbounds %struct.drm_sched_job, ptr %job, i32 0, i32 5
  %9 = ptrtoint ptr %id to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %call.i2.i, ptr %id, align 8
  %s_fence = getelementptr inbounds %struct.drm_sched_job, ptr %job, i32 0, i32 3
  %10 = ptrtoint ptr %s_fence to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fence, align 8
  %12 = ptrtoint ptr %entity1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %entity1, align 8
  tail call void @drm_sched_fence_init(ptr noundef %11, ptr noundef %13) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_fence_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_sched_job_add_dependency(ptr noundef %job, ptr noundef %fence) #0 align 64 {
entry:
  %index = alloca i32, align 4
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #9
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %id, align 4
  %tobool.not = icmp eq ptr %fence, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %index, align 4
  %dependencies = getelementptr inbounds %struct.drm_sched_job, ptr %job, i32 0, i32 10
  %call = call ptr @xa_find(ptr noundef %dependencies, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #9
  %tobool2.not57 = icmp eq ptr %call, null
  br i1 %tobool2.not57, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %context3 = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %entry1.058 = phi ptr [ %call, %for.body.lr.ph ], [ %call12, %for.inc.for.body_crit_edge ]
  %context = getelementptr inbounds %struct.dma_fence, ptr %entry1.058, i32 0, i32 3
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %context, align 8
  %4 = ptrtoint ptr %context3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %context3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %5)
  %cmp.not = icmp eq i64 %3, %5
  br i1 %cmp.not, label %dma_fence_is_later.exit, label %for.inc

dma_fence_is_later.exit:                          ; preds = %for.body
  %seqno.i = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 4
  %6 = ptrtoint ptr %seqno.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %seqno.i, align 8
  %seqno23.i = getelementptr inbounds %struct.dma_fence, ptr %entry1.058, i32 0, i32 4
  %8 = ptrtoint ptr %seqno23.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %seqno23.i, align 8
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 1
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 4, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.i = icmp eq i8 %13, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %9)
  %cmp.i.i = icmp ugt i64 %7, %9
  %conv.i.i = trunc i64 %7 to i32
  %conv2.i.i = trunc i64 %9 to i32
  %sub.i.i = sub i32 %conv.i.i, %conv2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp3.i.i = icmp sgt i32 %sub.i.i, 0
  %retval.0.i.i = select i1 %tobool.not.i.i, i1 %cmp3.i.i, i1 %cmp.i.i
  br i1 %retval.0.i.i, label %if.then.i, label %if.then.i39

if.then.i:                                        ; preds = %dma_fence_is_later.exit
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %entry1.058, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !163
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %14 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !164
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !157

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !165
  call void @dma_fence_release(ptr noundef %refcount.i) #9
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge
  %15 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index, align 4
  %call9 = call ptr @xa_store(ptr noundef %dependencies, i32 noundef %16, ptr noundef nonnull %fence, i32 noundef 3264) #9
  br label %cleanup

if.then.i39:                                      ; preds = %dma_fence_is_later.exit
  %refcount.i35 = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 6
  %call.i.i.i.i.i.i.i36 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i35, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !163
  call void @llvm.prefetch.p0(ptr %refcount.i35, i32 1, i32 3, i32 1) #9
  %17 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i35, ptr %refcount.i35, i32 1, ptr elementtype(i32) %refcount.i35) #9, !srcloc !164
  %asmresult.i.i.i.i.i.i.i.i37 = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i37)
  %cmp.i.i.i.i.i38 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i37, 1
  br i1 %cmp.i.i.i.i.i38, label %if.then.i.i43, label %if.end5.i.i.i.i.i41

if.end5.i.i.i.i.i41:                              ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i37)
  %.not.i.i.i.i.i40 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i37, 0
  br i1 %.not.i.i.i.i.i40, label %if.end5.i.i.i.i.i41.cleanup_crit_edge, label %if.then10.i.i.i.i.i42, !prof !157

if.end5.i.i.i.i.i41.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i41
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i.i42:                            ; preds = %if.end5.i.i.i.i.i41
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i35, i32 noundef 3) #9
  br label %cleanup

if.then.i.i43:                                    ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !165
  call void @dma_fence_release(ptr noundef %refcount.i35) #9
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %call12 = call ptr @xa_find_after(ptr noundef %dependencies, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #9
  %tobool2.not = icmp eq ptr %call12, null
  br i1 %tobool2.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @_raw_spin_lock(ptr noundef %dependencies) #9
  %call.i = call i32 @__xa_alloc(ptr noundef %dependencies, ptr noundef nonnull %id, ptr noundef nonnull %fence, [2 x i32] [i32 -1, i32 0], i32 noundef 3264) #9
  call void @_raw_spin_unlock(ptr noundef %dependencies) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp15.not = icmp eq i32 %call.i, 0
  br i1 %cmp15.not, label %for.end.cleanup_crit_edge, label %if.then.i50

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i50:                                      ; preds = %for.end
  %refcount.i46 = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 6
  %call.i.i.i.i.i.i.i47 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i46, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !163
  call void @llvm.prefetch.p0(ptr %refcount.i46, i32 1, i32 3, i32 1) #9
  %18 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i46, ptr %refcount.i46, i32 1, ptr elementtype(i32) %refcount.i46) #9, !srcloc !164
  %asmresult.i.i.i.i.i.i.i.i48 = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i48)
  %cmp.i.i.i.i.i49 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i48, 1
  br i1 %cmp.i.i.i.i.i49, label %if.then.i.i54, label %if.end5.i.i.i.i.i52

if.end5.i.i.i.i.i52:                              ; preds = %if.then.i50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i48)
  %.not.i.i.i.i.i51 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i48, 0
  br i1 %.not.i.i.i.i.i51, label %if.end5.i.i.i.i.i52.cleanup_crit_edge, label %if.then10.i.i.i.i.i53, !prof !157

if.end5.i.i.i.i.i52.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i52
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i.i53:                            ; preds = %if.end5.i.i.i.i.i52
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i46, i32 noundef 3) #9
  br label %cleanup

if.then.i.i54:                                    ; preds = %if.then.i50
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !165
  call void @dma_fence_release(ptr noundef %refcount.i46) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i54, %if.then10.i.i.i.i.i53, %if.end5.i.i.i.i.i52.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then.i.i43, %if.then10.i.i.i.i.i42, %if.end5.i.i.i.i.i41.cleanup_crit_edge, %dma_fence_put.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %dma_fence_put.exit ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.i41.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i42 ], [ 0, %if.then.i.i43 ], [ %call.i, %if.end5.i.i.i.i.i52.cleanup_crit_edge ], [ %call.i, %if.then10.i.i.i.i.i53 ], [ %call.i, %if.then.i.i54 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_store(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find_after(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_sched_job_add_implicit_dependencies(ptr noundef %job, ptr nocapture noundef readonly %obj, i1 noundef zeroext %write) #0 align 64 {
entry:
  %cursor = alloca %struct.dma_resv_iter, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cursor) #9
  %0 = getelementptr inbounds i8, ptr %cursor, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 28)
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 9
  %2 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resv, align 8
  %frombool.i = zext i1 %write to i8
  %4 = ptrtoint ptr %cursor to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %cursor, align 4
  %all_fences2.i = getelementptr inbounds %struct.dma_resv_iter, ptr %cursor, i32 0, i32 1
  %5 = ptrtoint ptr %all_fences2.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool.i, ptr %all_fences2.i, align 4
  %fence.i = getelementptr inbounds %struct.dma_resv_iter, ptr %cursor, i32 0, i32 2
  %6 = ptrtoint ptr %fence.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %fence.i, align 4
  %call = call ptr @dma_resv_iter_first(ptr noundef nonnull %cursor) #9
  %tobool1.not18 = icmp eq ptr %call, null
  br i1 %tobool1.not18, label %entry.cleanup_crit_edge, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  br label %if.then.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %for.inc.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %fence.019 = phi ptr [ %call5, %for.inc.if.then.i_crit_edge ], [ %call, %entry.if.then.i_crit_edge ]
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %fence.019, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %7 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !162
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !158

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %8 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %.not.i.i.i.i.i = icmp sgt i32 %8, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !157

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #9
  br label %dma_fence_get.exit

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge
  %call3 = call i32 @drm_sched_job_add_dependency(ptr noundef %job, ptr noundef nonnull %fence.019)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %for.inc, label %if.then.i15

if.then.i15:                                      ; preds = %dma_fence_get.exit
  %call.i.i.i.i.i.i.i14 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !163
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %9 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !164
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i16 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i16, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !157

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then.i15
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !165
  call void @dma_fence_release(ptr noundef %refcount.i) #9
  br label %cleanup

for.inc:                                          ; preds = %dma_fence_get.exit
  %call5 = call ptr @dma_resv_iter_next(ptr noundef nonnull %cursor) #9
  %tobool1.not = icmp eq ptr %call5, null
  br i1 %tobool1.not, label %for.inc.cleanup_crit_edge, label %for.inc.if.then.i_crit_edge

for.inc.if.then.i_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %call3, %if.then10.i.i.i.i.i ], [ %call3, %if.then.i.i ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cursor) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_resv_iter_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_resv_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_sched_job_cleanup(ptr noundef %job) #0 align 64 {
entry:
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #9
  %s_fence = getelementptr inbounds %struct.drm_sched_job, ptr %job, i32 0, i32 3
  %0 = ptrtoint ptr %s_fence to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fence, align 8
  %refcount = getelementptr inbounds %struct.drm_sched_fence, ptr %1, i32 0, i32 1, i32 6
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #9
  %2 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %4 = ptrtoint ptr %s_fence to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fence, align 8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %finished2 = getelementptr inbounds %struct.drm_sched_fence, ptr %5, i32 0, i32 1
  %tobool.not.i = icmp eq ptr %finished2, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i:                                        ; preds = %if.then
  %refcount.i = getelementptr inbounds %struct.drm_sched_fence, ptr %5, i32 0, i32 1, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !164
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i, !prof !157

if.end5.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %if.end

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @dma_fence_release(ptr noundef %refcount.i) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @drm_sched_fence_free(ptr noundef %5) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %7 = ptrtoint ptr %s_fence to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %s_fence, align 8
  %8 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %index, align 4
  %dependencies = getelementptr inbounds %struct.drm_sched_job, ptr %job, i32 0, i32 10
  %call5 = call ptr @xa_find(ptr noundef %dependencies, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #9
  %tobool6.not28 = icmp eq ptr %call5, null
  br i1 %tobool6.not28, label %if.end.for.end_crit_edge, label %if.end.if.then.i22_crit_edge

if.end.if.then.i22_crit_edge:                     ; preds = %if.end
  br label %if.then.i22

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then.i22:                                      ; preds = %dma_fence_put.exit27.if.then.i22_crit_edge, %if.end.if.then.i22_crit_edge
  %fence.029 = phi ptr [ %call8, %dma_fence_put.exit27.if.then.i22_crit_edge ], [ %call5, %if.end.if.then.i22_crit_edge ]
  %refcount.i18 = getelementptr inbounds %struct.dma_fence, ptr %fence.029, i32 0, i32 6
  %call.i.i.i.i.i.i.i19 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i18, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !163
  call void @llvm.prefetch.p0(ptr %refcount.i18, i32 1, i32 3, i32 1) #9
  %9 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i18, ptr %refcount.i18, i32 1, ptr elementtype(i32) %refcount.i18) #9, !srcloc !164
  %asmresult.i.i.i.i.i.i.i.i20 = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i20)
  %cmp.i.i.i.i.i21 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i20, 1
  br i1 %cmp.i.i.i.i.i21, label %if.then.i.i26, label %if.end5.i.i.i.i.i24

if.end5.i.i.i.i.i24:                              ; preds = %if.then.i22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i20)
  %.not.i.i.i.i.i23 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i20, 0
  br i1 %.not.i.i.i.i.i23, label %if.end5.i.i.i.i.i24.dma_fence_put.exit27_crit_edge, label %if.then10.i.i.i.i.i25, !prof !157

if.end5.i.i.i.i.i24.dma_fence_put.exit27_crit_edge: ; preds = %if.end5.i.i.i.i.i24
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_put.exit27

if.then10.i.i.i.i.i25:                            ; preds = %if.end5.i.i.i.i.i24
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i18, i32 noundef 3) #9
  br label %dma_fence_put.exit27

if.then.i.i26:                                    ; preds = %if.then.i22
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !165
  call void @dma_fence_release(ptr noundef %refcount.i18) #9
  br label %dma_fence_put.exit27

dma_fence_put.exit27:                             ; preds = %if.then.i.i26, %if.then10.i.i.i.i.i25, %if.end5.i.i.i.i.i24.dma_fence_put.exit27_crit_edge
  %call8 = call ptr @xa_find_after(ptr noundef %dependencies, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #9
  %tobool6.not = icmp eq ptr %call8, null
  br i1 %tobool6.not, label %dma_fence_put.exit27.for.end_crit_edge, label %dma_fence_put.exit27.if.then.i22_crit_edge

dma_fence_put.exit27.if.then.i22_crit_edge:       ; preds = %dma_fence_put.exit27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i22

dma_fence_put.exit27.for.end_crit_edge:           ; preds = %dma_fence_put.exit27
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %dma_fence_put.exit27.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @xa_destroy(ptr noundef %dependencies) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_fence_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xa_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_sched_wakeup(ptr noundef %sched) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_rq_count.i = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %hw_rq_count.i, i32 noundef 4) #9
  %0 = ptrtoint ptr %hw_rq_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %hw_rq_count.i, align 4
  %hw_submission_limit.i = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 1
  %2 = ptrtoint ptr %hw_submission_limit.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw_submission_limit.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.i = icmp ult i32 %1, %3
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %wake_up_worker = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %wake_up_worker, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @drm_sched_pick_best(ptr nocapture noundef readonly %sched_list, i32 noundef %num_sched_list) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_sched_list)
  %cmp12.not = icmp eq i32 %num_sched_list, 0
  br i1 %cmp12.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %min_score.015 = phi i32 [ %min_score.1, %for.inc.for.body_crit_edge ], [ -1, %entry.for.body_crit_edge ]
  %i.014 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %picked_sched.013 = phi ptr [ %picked_sched.1, %for.inc.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %sched_list, i32 %i.014
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %ready = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ready, align 4, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %5) #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %score = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %score to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %score, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %7, i32 noundef 4) #9
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %min_score.015)
  %cmp2 = icmp ult i32 %9, %min_score.015
  %spec.select = select i1 %cmp2, ptr %1, ptr %picked_sched.013
  %10 = tail call i32 @llvm.umin.i32(i32 %9, i32 %min_score.015)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %do.end
  %picked_sched.1 = phi ptr [ %picked_sched.013, %do.end ], [ %spec.select, %if.end ]
  %min_score.1 = phi i32 [ %min_score.015, %do.end ], [ %10, %if.end ]
  %inc = add nuw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, %num_sched_list
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %picked_sched.0.lcssa = phi ptr [ null, %entry.for.end_crit_edge ], [ %picked_sched.1, %for.inc.for.end_crit_edge ]
  ret ptr %picked_sched.0.lcssa
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_sched_init(ptr noundef %sched, ptr noundef %ops, i32 noundef %hw_submission, i32 noundef %hang_limit, i32 noundef %timeout, ptr noundef %timeout_wq, ptr noundef %score, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sched to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ops, ptr %sched, align 8
  %hw_submission_limit = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 1
  %1 = ptrtoint ptr %hw_submission_limit to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %hw_submission, ptr %hw_submission_limit, align 4
  %name2 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 3
  %2 = ptrtoint ptr %name2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %name, ptr %name2, align 4
  %timeout3 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 2
  %3 = ptrtoint ptr %timeout3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %timeout, ptr %timeout3, align 8
  %tobool.not = icmp eq ptr %timeout_wq, null
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi ptr [ %4, %cond.false ], [ %timeout_wq, %entry.cond.end_crit_edge ]
  %timeout_wq4 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 9
  %5 = ptrtoint ptr %timeout_wq4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cond, ptr %timeout_wq4, align 8
  %hang_limit5 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 14
  %6 = ptrtoint ptr %hang_limit5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %hang_limit, ptr %hang_limit5, align 8
  %tobool6.not = icmp eq ptr %score, null
  %_score = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 16
  %cond10 = select i1 %tobool6.not, ptr %_score, ptr %score
  %score11 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 15
  %7 = ptrtoint ptr %score11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %cond10, ptr %score11, align 4
  %arrayidx = getelementptr %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 4, i32 0
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx, ptr noundef nonnull @.str.37, ptr noundef nonnull @drm_sched_rq_init.__key, i16 noundef signext 3) #9
  %entities.i = getelementptr %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 4, i32 0, i32 2
  %8 = ptrtoint ptr %entities.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entities.i, ptr %entities.i, align 4
  %prev.i.i = getelementptr %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 4, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entities.i, ptr %prev.i.i, align 4
  %current_entity.i = getelementptr %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 4, i32 0, i32 3
  %10 = ptrtoint ptr %current_entity.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %current_entity.i, align 4
  %sched1.i = getelementptr %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 4, i32 0, i32 1
  %11 = ptrtoint ptr %sched1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %sched, ptr %sched1.i, align 4
  %arrayidx.1 = getelementptr %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 4, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.1, ptr noundef nonnull @.str.37, ptr noundef nonnull @drm_sched_rq_init.__key, i16 noundef signext 3) #9
  %entities.i.1 = getelementptr %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 4, i32 1, i32 2
  %12 = ptrtoint ptr %entities.i.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entities.i.1, ptr %entities.i.1, align 4
  %prev.i.i.1 = getelementptr %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 4, i32 1, i32 2, i32 1
  %13 = ptrtoint ptr %prev.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %entities.i.1, ptr %prev.i.i.1, align 4
  %current_entity.i.1 = getelementptr %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 4, i32 1, i32 3
  %14 = ptrtoint ptr %current_entity.i.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %current_entity.i.1, align 4
  %sched1.i.1 = getelementptr %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 4, i32 1, i32 1
  %15 = ptrtoint ptr %sched1.i.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %sched, ptr %sched1.i.1, align 4
  %arrayidx.2 = getelementptr %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 4, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.2, ptr noundef nonnull @.str.37, ptr noundef nonnull @drm_sched_rq_init.__key, i16 noundef signext 3) #9
  %entities.i.2 = getelementptr %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 4, i32 2, i32 2
  %16 = ptrtoint ptr %entities.i.2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entities.i.2, ptr %entities.i.2, align 4
  %prev.i.i.2 = getelementptr %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 4, i32 2, i32 2, i32 1
  %17 = ptrtoint ptr %prev.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entities.i.2, ptr %prev.i.i.2, align 4
  %current_entity.i.2 = getelementptr %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 4, i32 2, i32 3
  %18 = ptrtoint ptr %current_entity.i.2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %current_entity.i.2, align 4
  %sched1.i.2 = getelementptr %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 4, i32 2, i32 1
  %19 = ptrtoint ptr %sched1.i.2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %sched, ptr %sched1.i.2, align 4
  %arrayidx.3 = getelementptr %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 4, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.3, ptr noundef nonnull @.str.37, ptr noundef nonnull @drm_sched_rq_init.__key, i16 noundef signext 3) #9
  %entities.i.3 = getelementptr %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 4, i32 3, i32 2
  %20 = ptrtoint ptr %entities.i.3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %entities.i.3, ptr %entities.i.3, align 4
  %prev.i.i.3 = getelementptr %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 4, i32 3, i32 2, i32 1
  %21 = ptrtoint ptr %prev.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %entities.i.3, ptr %prev.i.i.3, align 4
  %current_entity.i.3 = getelementptr %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 4, i32 3, i32 3
  %22 = ptrtoint ptr %current_entity.i.3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %current_entity.i.3, align 4
  %sched1.i.3 = getelementptr %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 4, i32 3, i32 1
  %23 = ptrtoint ptr %sched1.i.3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %sched, ptr %sched1.i.3, align 4
  %wake_up_worker = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %wake_up_worker, ptr noundef nonnull @.str.4, ptr noundef nonnull @drm_sched_init.__key) #9
  %job_scheduled = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %job_scheduled, ptr noundef nonnull @.str.6, ptr noundef nonnull @drm_sched_init.__key.5) #9
  %pending_list = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 12
  %24 = ptrtoint ptr %pending_list to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %pending_list, ptr %pending_list, align 4
  %prev.i = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 12, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %pending_list, ptr %prev.i, align 4
  %job_list_lock = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %job_list_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @drm_sched_init.__key.7, i16 noundef signext 3) #9
  %hw_rq_count = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hw_rq_count, i32 noundef 4) #9
  %26 = ptrtoint ptr %hw_rq_count to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 0, ptr %hw_rq_count, align 4
  %work_tdr = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 10
  tail call void @__init_work(ptr noundef %work_tdr, i32 noundef 0) #9
  %27 = ptrtoint ptr %work_tdr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -64, ptr %work_tdr, align 4
  %lockdep_map = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 10, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.10, ptr noundef nonnull @drm_sched_init.__key.9, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry26 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 10, i32 0, i32 1
  %28 = ptrtoint ptr %entry26 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %entry26, ptr %entry26, align 4
  %prev.i87 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 10, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %prev.i87 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %entry26, ptr %prev.i87, align 4
  %func = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 10, i32 0, i32 2
  %30 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @drm_sched_job_timedout, ptr %func, align 4
  %timer = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 10, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.12, ptr noundef nonnull @drm_sched_init.__key.11) #9
  %call.i.i85 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_score, i32 noundef 4) #9
  %31 = ptrtoint ptr %_score to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 0, ptr %_score, align 4
  %job_id_count = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 8
  %call.i.i86 = tail call zeroext i1 @__kasan_check_write(ptr noundef %job_id_count, i32 noundef 8) #9
  tail call void @generic_atomic64_set(ptr noundef %job_id_count, i64 noundef 0) #9
  %32 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name2, align 4
  %call39 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @drm_sched_main, ptr noundef %sched, i32 noundef -1, ptr noundef %33) #9
  %cmp.i = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then44, label %if.end48

if.then44:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %thread89 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 11
  %34 = ptrtoint ptr %call39 to i32
  %35 = ptrtoint ptr %thread89 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %thread89, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13, ptr noundef %name) #9
  br label %cleanup

if.end48:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call41 = tail call i32 @wake_up_process(ptr noundef %call39) #9
  %thread = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 11
  %36 = ptrtoint ptr %thread to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call39, ptr %thread, align 8
  %ready = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 17
  %37 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %ready, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.then44
  %retval.0 = phi i32 [ %34, %if.then44 ], [ 0, %if.end48 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drm_sched_job_timedout(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %job_list_lock = getelementptr i8, ptr %work, i32 112
  tail call void @_raw_spin_lock(ptr noundef %job_list_lock) #9
  %pending_list = getelementptr i8, ptr %work, i32 104
  %0 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pending_list, align 4
  %cmp.not = icmp eq ptr %1, %pending_list
  %add.ptr5 = getelementptr i8, ptr %1, i32 -4
  %tobool.not38 = icmp eq ptr %add.ptr5, null
  %tobool.not = or i1 %cmp.not, %tobool.not38
  br i1 %tobool.not, label %if.end14.thread, label %if.then

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %job_list_lock) #9
  %sched7 = getelementptr i8, ptr %1, i32 8
  %10 = ptrtoint ptr %sched7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sched7, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %timedout_job = getelementptr inbounds %struct.drm_sched_backend_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %timedout_job to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %timedout_job, align 4
  %call = tail call i32 %15(ptr noundef nonnull %add.ptr5) #9
  %free_guilty = getelementptr i8, ptr %work, i32 169
  %16 = ptrtoint ptr %free_guilty to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %free_guilty, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool8.not = icmp eq i8 %17, 0
  br i1 %tobool8.not, label %list_del_init.exit.if.end14_crit_edge, label %if.then9

list_del_init.exit.if.end14_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then9:                                         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %sched7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sched7, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %free_job = getelementptr inbounds %struct.drm_sched_backend_ops, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %free_job to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %free_job, align 4
  tail call void %23(ptr noundef nonnull %add.ptr5) #9
  %24 = ptrtoint ptr %free_guilty to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %free_guilty, align 1
  br label %if.end14

if.end14.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %job_list_lock) #9
  br label %if.then16

if.end14:                                         ; preds = %if.then9, %list_del_init.exit.if.end14_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp15.not = icmp eq i32 %call, 2
  br i1 %cmp15.not, label %if.end14.if.end19_crit_edge, label %if.end14.if.then16_crit_edge

if.end14.if.then16_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then16:                                        ; preds = %if.end14.if.then16_crit_edge, %if.end14.thread
  tail call void @_raw_spin_lock(ptr noundef %job_list_lock) #9
  %timeout.i = getelementptr i8, ptr %work, i32 -372
  %25 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %timeout.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %26)
  %cmp.not.i = icmp eq i32 %26, 2147483647
  br i1 %cmp.not.i, label %if.then16.drm_sched_start_timeout.exit_crit_edge, label %land.lhs.true.i

if.then16.drm_sched_start_timeout.exit_crit_edge: ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_sched_start_timeout.exit

land.lhs.true.i:                                  ; preds = %if.then16
  %27 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %pending_list, align 4
  %cmp.i.not.i = icmp eq ptr %28, %pending_list
  br i1 %cmp.i.not.i, label %land.lhs.true.i.drm_sched_start_timeout.exit_crit_edge, label %if.then.i

land.lhs.true.i.drm_sched_start_timeout.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_sched_start_timeout.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %timeout_wq.i = getelementptr i8, ptr %work, i32 -4
  %29 = ptrtoint ptr %timeout_wq.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %timeout_wq.i, align 8
  %call.i.i35 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %30, ptr noundef %work, i32 noundef %26) #9
  br label %drm_sched_start_timeout.exit

drm_sched_start_timeout.exit:                     ; preds = %if.then.i, %land.lhs.true.i.drm_sched_start_timeout.exit_crit_edge, %if.then16.drm_sched_start_timeout.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %job_list_lock) #9
  br label %if.end19

if.end19:                                         ; preds = %drm_sched_start_timeout.exit, %if.end14.if.end19_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drm_sched_main(ptr noundef %param) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !147) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  tail call void @sched_set_fifo_low(ptr noundef %3) #9
  %call1154 = call zeroext i1 @kthread_should_stop() #9
  br i1 %call1154, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %wake_up_worker = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %param, i32 0, i32 5
  %hw_rq_count = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %param, i32 0, i32 7
  %job_scheduled = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %param, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %cleanup58.while.body_crit_edge, %while.body.lr.ph
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 928) #9
  %call5 = call fastcc ptr @drm_sched_get_cleanup_job(ptr noundef %param)
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %lor.lhs.false, label %while.body.if.then30_crit_edge

while.body.if.then30_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

lor.lhs.false:                                    ; preds = %while.body
  %call.i = call zeroext i1 @kthread_should_park() #9
  br i1 %call.i, label %drm_sched_blocked.exit.thread, label %land.lhs.true

drm_sched_blocked.exit.thread:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  call void @kthread_parkme() #9
  br label %lor.lhs.false9

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call7 = call fastcc ptr @drm_sched_select_entity(ptr noundef %param)
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %land.lhs.true.lor.lhs.false9_crit_edge, label %land.lhs.true.if.end34_crit_edge

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

land.lhs.true.lor.lhs.false9_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %land.lhs.true.lor.lhs.false9_crit_edge, %drm_sched_blocked.exit.thread
  %call10 = call zeroext i1 @kthread_should_stop() #9
  br i1 %call10, label %lor.lhs.false9.cleanup58_crit_edge, label %if.then

lor.lhs.false9.cleanup58_crit_edge:               ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup58

if.then:                                          ; preds = %lor.lhs.false9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %4 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %call12149 = call i32 @prepare_to_wait_event(ptr noundef %wake_up_worker, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %call13150 = call fastcc ptr @drm_sched_get_cleanup_job(ptr noundef %param)
  %tobool14.not151 = icmp eq ptr %call13150, null
  br i1 %tobool14.not151, label %if.then.lor.lhs.false15_crit_edge, label %if.then.if.end27_crit_edge

if.then.if.end27_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then.lor.lhs.false15_crit_edge:                ; preds = %if.then
  br label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %cleanup.lor.lhs.false15_crit_edge, %if.then.lor.lhs.false15_crit_edge
  %call12152 = phi i32 [ %call12, %cleanup.lor.lhs.false15_crit_edge ], [ %call12149, %if.then.lor.lhs.false15_crit_edge ]
  %call.i100 = call zeroext i1 @kthread_should_park() #9
  br i1 %call.i100, label %drm_sched_blocked.exit102.thread, label %land.lhs.true17

drm_sched_blocked.exit102.thread:                 ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #11
  call void @kthread_parkme() #9
  br label %lor.lhs.false20

land.lhs.true17:                                  ; preds = %lor.lhs.false15
  %call18 = call fastcc ptr @drm_sched_select_entity(ptr noundef %param)
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %land.lhs.true17.lor.lhs.false20_crit_edge, label %if.end31

land.lhs.true17.lor.lhs.false20_crit_edge:        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %land.lhs.true17.lor.lhs.false20_crit_edge, %drm_sched_blocked.exit102.thread
  %call21 = call zeroext i1 @kthread_should_stop() #9
  br i1 %call21, label %if.end31.thread158, label %if.end

if.end31.thread158:                               ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #11
  call void @finish_wait(ptr noundef %wake_up_worker, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %cleanup58

if.end:                                           ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12152)
  %tobool23.not = icmp eq i32 %call12152, 0
  br i1 %tobool23.not, label %cleanup, label %if.end27.thread132

if.end27.thread132:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %cleanup58

cleanup:                                          ; preds = %if.end
  call void @schedule() #9
  %call12 = call i32 @prepare_to_wait_event(ptr noundef %wake_up_worker, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %call13 = call fastcc ptr @drm_sched_get_cleanup_job(ptr noundef %param)
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %cleanup.lor.lhs.false15_crit_edge, label %cleanup.if.end27_crit_edge

cleanup.if.end27_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

cleanup.lor.lhs.false15_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false15

if.end27:                                         ; preds = %cleanup.if.end27_crit_edge, %if.then.if.end27_crit_edge
  %call13.lcssa = phi ptr [ %call13150, %if.then.if.end27_crit_edge ], [ %call13, %cleanup.if.end27_crit_edge ]
  call void @finish_wait(ptr noundef %wake_up_worker, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.then30

if.then30:                                        ; preds = %if.end27, %while.body.if.then30_crit_edge
  %cleanup_job.0131 = phi ptr [ %call13.lcssa, %if.end27 ], [ %call5, %while.body.if.then30_crit_edge ]
  %5 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %param, align 8
  %free_job = getelementptr inbounds %struct.drm_sched_backend_ops, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %free_job to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %free_job, align 4
  call void %8(ptr noundef nonnull %cleanup_job.0131) #9
  br label %cleanup58

if.end31:                                         ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  call void @finish_wait(ptr noundef %wake_up_worker, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end34

if.end34:                                         ; preds = %if.end31, %land.lhs.true.if.end34_crit_edge
  %entity.5125144 = phi ptr [ %call18, %if.end31 ], [ %call7, %land.lhs.true.if.end34_crit_edge ]
  %call35 = call ptr @drm_sched_entity_pop_job(ptr noundef nonnull %entity.5125144) #9
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %entity_idle = getelementptr inbounds %struct.drm_sched_entity, ptr %entity.5125144, i32 0, i32 15
  call void @complete(ptr noundef %entity_idle) #9
  br label %cleanup58

if.end38:                                         ; preds = %if.end34
  %s_fence39 = getelementptr inbounds %struct.drm_sched_job, ptr %call35, i32 0, i32 3
  %9 = ptrtoint ptr %s_fence39 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fence39, align 8
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %hw_rq_count, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %hw_rq_count, i32 1, i32 3, i32 1) #9
  %11 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hw_rq_count, ptr %hw_rq_count, i32 1, ptr elementtype(i32) %hw_rq_count) #9, !srcloc !160
  %sched1.i = getelementptr inbounds %struct.drm_sched_job, ptr %call35, i32 0, i32 2
  %12 = ptrtoint ptr %sched1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sched1.i, align 4
  %job_list_lock.i = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %13, i32 0, i32 13
  call void @_raw_spin_lock(ptr noundef %job_list_lock.i) #9
  %list.i = getelementptr inbounds %struct.drm_sched_job, ptr %call35, i32 0, i32 1
  %pending_list.i = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %13, i32 0, i32 12
  %prev.i.i = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %13, i32 0, i32 12, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %15, ptr noundef %pending_list.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end38.list_add_tail.exit.i_crit_edge

if.end38.list_add_tail.exit.i_crit_edge:          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list.i, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %pending_list.i, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.drm_sched_job, ptr %call35, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %list.i, ptr %15, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end38.list_add_tail.exit.i_crit_edge
  %timeout.i.i = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %13, i32 0, i32 2
  %20 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %timeout.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %21)
  %cmp.not.i.i = icmp eq i32 %21, 2147483647
  br i1 %cmp.not.i.i, label %list_add_tail.exit.i.drm_sched_job_begin.exit_crit_edge, label %land.lhs.true.i.i

list_add_tail.exit.i.drm_sched_job_begin.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_sched_job_begin.exit

land.lhs.true.i.i:                                ; preds = %list_add_tail.exit.i
  %22 = ptrtoint ptr %pending_list.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %pending_list.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %23, %pending_list.i
  br i1 %cmp.i.not.i.i, label %land.lhs.true.i.i.drm_sched_job_begin.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.drm_sched_job_begin.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_sched_job_begin.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %timeout_wq.i.i = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %13, i32 0, i32 9
  %24 = ptrtoint ptr %timeout_wq.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %timeout_wq.i.i, align 8
  %work_tdr.i.i = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %13, i32 0, i32 10
  %call.i.i7.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %25, ptr noundef %work_tdr.i.i, i32 noundef %21) #9
  br label %drm_sched_job_begin.exit

drm_sched_job_begin.exit:                         ; preds = %if.then.i.i, %land.lhs.true.i.i.drm_sched_job_begin.exit_crit_edge, %list_add_tail.exit.i.drm_sched_job_begin.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %job_list_lock.i) #9
  call fastcc void @trace_drm_run_job(ptr noundef nonnull %call35, ptr noundef nonnull %entity.5125144)
  %26 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %param, align 8
  %run_job = getelementptr inbounds %struct.drm_sched_backend_ops, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %run_job to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %run_job, align 4
  %call41 = call ptr %29(ptr noundef nonnull %call35) #9
  %entity_idle42 = getelementptr inbounds %struct.drm_sched_entity, ptr %entity.5125144, i32 0, i32 15
  call void @complete(ptr noundef %entity_idle42) #9
  call void @drm_sched_fence_scheduled(ptr noundef %10) #9
  %tobool.not.i = icmp eq ptr %call41, null
  %cmp.i = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.else52, label %if.then.i104

if.then.i104:                                     ; preds = %drm_sched_job_begin.exit
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %call41, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %30 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !162
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i104.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !158

if.then.i104.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i104
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i104
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %31 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %.not.i.i.i.i.i = icmp sgt i32 %31, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !157

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i104.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i104.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #9
  br label %dma_fence_get.exit

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge
  %parent = getelementptr inbounds %struct.drm_sched_fence, ptr %10, i32 0, i32 2
  %32 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call41, ptr %parent, align 8
  %cb = getelementptr inbounds %struct.drm_sched_job, ptr %call35, i32 0, i32 9
  %call46 = call i32 @dma_fence_add_callback(ptr noundef nonnull %call41, ptr noundef %cb, ptr noundef nonnull @drm_sched_job_done_cb) #9
  %33 = zext i32 %call46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %call46, label %if.then49 [
    i32 -2, label %if.then47
    i32 0, label %dma_fence_get.exit.if.then.i108_crit_edge
  ]

dma_fence_get.exit.if.then.i108_crit_edge:        ; preds = %dma_fence_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i108

if.then47:                                        ; preds = %dma_fence_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @drm_sched_job_done(ptr noundef nonnull %call35)
  br label %if.then.i108

if.then49:                                        ; preds = %dma_fence_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %call46) #9
  br label %if.then.i108

if.then.i108:                                     ; preds = %if.then49, %if.then47, %dma_fence_get.exit.if.then.i108_crit_edge
  %call.i.i.i.i.i.i.i107 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !163
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %34 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !164
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i110, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i109 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i109, label %if.end5.i.i.i.i.i.if.end57_crit_edge, label %if.then10.i.i.i.i.i, !prof !157

if.end5.i.i.i.i.i.if.end57_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %if.end57

if.then.i.i110:                                   ; preds = %if.then.i108
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !165
  call void @dma_fence_release(ptr noundef %refcount.i) #9
  br label %if.end57

if.else52:                                        ; preds = %drm_sched_job_begin.exit
  br i1 %cmp.i, label %if.then54, label %if.else52.if.end56_crit_edge

if.else52.if.end56_crit_edge:                     ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then54:                                        ; preds = %if.else52
  %35 = ptrtoint ptr %call41 to i32
  %flags.i = getelementptr inbounds %struct.drm_sched_fence, ptr %10, i32 0, i32 1, i32 5
  %36 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i112 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i112, label %if.then54.if.end.i_crit_edge, label %do.end.i, !prof !157

if.then54.if.end.i_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 545, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then54.if.end.i_crit_edge
  %38 = icmp ult ptr %call41, inttoptr (i32 -4095 to ptr)
  br i1 %38, label %do.end37.i, label %if.end.i.dma_fence_set_error.exit_crit_edge, !prof !158

if.end.i.dma_fence_set_error.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_set_error.exit

do.end37.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 546, i32 noundef 9, ptr noundef null) #9
  br label %dma_fence_set_error.exit

dma_fence_set_error.exit:                         ; preds = %do.end37.i, %if.end.i.dma_fence_set_error.exit_crit_edge
  %error51.i = getelementptr inbounds %struct.drm_sched_fence, ptr %10, i32 0, i32 1, i32 7
  %39 = ptrtoint ptr %error51.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %35, ptr %error51.i, align 8
  br label %if.end56

if.end56:                                         ; preds = %dma_fence_set_error.exit, %if.else52.if.end56_crit_edge
  call fastcc void @drm_sched_job_done(ptr noundef nonnull %call35)
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then.i.i110, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end57_crit_edge
  call void @__wake_up(ptr noundef %job_scheduled, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %cleanup58

cleanup58:                                        ; preds = %if.end57, %if.then37, %if.then30, %if.end27.thread132, %if.end31.thread158, %lor.lhs.false9.cleanup58_crit_edge
  %call1 = call zeroext i1 @kthread_should_stop() #9
  br i1 %call1, label %cleanup58.while.end_crit_edge, label %cleanup58.while.body_crit_edge

cleanup58.while.body_crit_edge:                   ; preds = %cleanup58
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup58.while.end_crit_edge:                    ; preds = %cleanup58
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %cleanup58.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_sched_fini(ptr noundef %sched) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %thread = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 11
  %0 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %thread, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @kthread_stop(ptr noundef nonnull %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx = getelementptr %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 4, i32 3
  %tobool2.not = icmp eq ptr %arrayidx, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @_raw_spin_lock(ptr noundef nonnull %arrayidx) #9
  %entities = getelementptr %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 4, i32 3, i32 2
  %2 = ptrtoint ptr %entities to i32
  call void @__asan_load4_noabort(i32 %2)
  %s_entity.031 = load ptr, ptr %entities, align 4
  %cmp7.not32 = icmp eq ptr %s_entity.031, %entities
  br i1 %cmp7.not32, label %if.end4.for.end_crit_edge, label %if.end4.for.body8_crit_edge

if.end4.for.body8_crit_edge:                      ; preds = %if.end4
  br label %for.body8

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body8:                                        ; preds = %for.body8.for.body8_crit_edge, %if.end4.for.body8_crit_edge
  %s_entity.033 = phi ptr [ %s_entity.0, %for.body8.for.body8_crit_edge ], [ %s_entity.031, %if.end4.for.body8_crit_edge ]
  %stopped = getelementptr inbounds %struct.drm_sched_entity, ptr %s_entity.033, i32 0, i32 14
  %3 = ptrtoint ptr %stopped to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %stopped, align 4
  %4 = ptrtoint ptr %s_entity.033 to i32
  call void @__asan_load4_noabort(i32 %4)
  %s_entity.0 = load ptr, ptr %s_entity.033, align 4
  %cmp7.not = icmp eq ptr %s_entity.0, %entities
  br i1 %cmp7.not, label %for.body8.for.end_crit_edge, label %for.body8.for.body8_crit_edge

for.body8.for.body8_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body8

for.body8.for.end_crit_edge:                      ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body8.for.end_crit_edge, %if.end4.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull %arrayidx) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge
  %arrayidx.1 = getelementptr %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 4, i32 2
  %tobool2.not.1 = icmp eq ptr %arrayidx.1, null
  br i1 %tobool2.not.1, label %cleanup.cleanup.1_crit_edge, label %if.end4.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.1

if.end4.1:                                        ; preds = %cleanup
  tail call void @_raw_spin_lock(ptr noundef nonnull %arrayidx.1) #9
  %entities.1 = getelementptr %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 4, i32 2, i32 2
  %5 = ptrtoint ptr %entities.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %s_entity.031.1 = load ptr, ptr %entities.1, align 4
  %cmp7.not32.1 = icmp eq ptr %s_entity.031.1, %entities.1
  br i1 %cmp7.not32.1, label %if.end4.1.for.end.1_crit_edge, label %if.end4.1.for.body8.1_crit_edge

if.end4.1.for.body8.1_crit_edge:                  ; preds = %if.end4.1
  br label %for.body8.1

if.end4.1.for.end.1_crit_edge:                    ; preds = %if.end4.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.1

for.body8.1:                                      ; preds = %for.body8.1.for.body8.1_crit_edge, %if.end4.1.for.body8.1_crit_edge
  %s_entity.033.1 = phi ptr [ %s_entity.0.1, %for.body8.1.for.body8.1_crit_edge ], [ %s_entity.031.1, %if.end4.1.for.body8.1_crit_edge ]
  %stopped.1 = getelementptr inbounds %struct.drm_sched_entity, ptr %s_entity.033.1, i32 0, i32 14
  %6 = ptrtoint ptr %stopped.1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %stopped.1, align 4
  %7 = ptrtoint ptr %s_entity.033.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %s_entity.0.1 = load ptr, ptr %s_entity.033.1, align 4
  %cmp7.not.1 = icmp eq ptr %s_entity.0.1, %entities.1
  br i1 %cmp7.not.1, label %for.body8.1.for.end.1_crit_edge, label %for.body8.1.for.body8.1_crit_edge

for.body8.1.for.body8.1_crit_edge:                ; preds = %for.body8.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body8.1

for.body8.1.for.end.1_crit_edge:                  ; preds = %for.body8.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.1

for.end.1:                                        ; preds = %for.body8.1.for.end.1_crit_edge, %if.end4.1.for.end.1_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull %arrayidx.1) #9
  br label %cleanup.1

cleanup.1:                                        ; preds = %for.end.1, %cleanup.cleanup.1_crit_edge
  %arrayidx.2 = getelementptr %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 4, i32 1
  %tobool2.not.2 = icmp eq ptr %arrayidx.2, null
  br i1 %tobool2.not.2, label %cleanup.1.cleanup.2_crit_edge, label %if.end4.2

cleanup.1.cleanup.2_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.2

if.end4.2:                                        ; preds = %cleanup.1
  tail call void @_raw_spin_lock(ptr noundef nonnull %arrayidx.2) #9
  %entities.2 = getelementptr %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 4, i32 1, i32 2
  %8 = ptrtoint ptr %entities.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %s_entity.031.2 = load ptr, ptr %entities.2, align 4
  %cmp7.not32.2 = icmp eq ptr %s_entity.031.2, %entities.2
  br i1 %cmp7.not32.2, label %if.end4.2.for.end.2_crit_edge, label %if.end4.2.for.body8.2_crit_edge

if.end4.2.for.body8.2_crit_edge:                  ; preds = %if.end4.2
  br label %for.body8.2

if.end4.2.for.end.2_crit_edge:                    ; preds = %if.end4.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.2

for.body8.2:                                      ; preds = %for.body8.2.for.body8.2_crit_edge, %if.end4.2.for.body8.2_crit_edge
  %s_entity.033.2 = phi ptr [ %s_entity.0.2, %for.body8.2.for.body8.2_crit_edge ], [ %s_entity.031.2, %if.end4.2.for.body8.2_crit_edge ]
  %stopped.2 = getelementptr inbounds %struct.drm_sched_entity, ptr %s_entity.033.2, i32 0, i32 14
  %9 = ptrtoint ptr %stopped.2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %stopped.2, align 4
  %10 = ptrtoint ptr %s_entity.033.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %s_entity.0.2 = load ptr, ptr %s_entity.033.2, align 4
  %cmp7.not.2 = icmp eq ptr %s_entity.0.2, %entities.2
  br i1 %cmp7.not.2, label %for.body8.2.for.end.2_crit_edge, label %for.body8.2.for.body8.2_crit_edge

for.body8.2.for.body8.2_crit_edge:                ; preds = %for.body8.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body8.2

for.body8.2.for.end.2_crit_edge:                  ; preds = %for.body8.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.2

for.end.2:                                        ; preds = %for.body8.2.for.end.2_crit_edge, %if.end4.2.for.end.2_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull %arrayidx.2) #9
  br label %cleanup.2

cleanup.2:                                        ; preds = %for.end.2, %cleanup.1.cleanup.2_crit_edge
  %arrayidx.3 = getelementptr %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 4, i32 0
  %tobool2.not.3 = icmp eq ptr %arrayidx.3, null
  br i1 %tobool2.not.3, label %cleanup.2.cleanup.3_crit_edge, label %if.end4.3

cleanup.2.cleanup.3_crit_edge:                    ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.3

if.end4.3:                                        ; preds = %cleanup.2
  tail call void @_raw_spin_lock(ptr noundef nonnull %arrayidx.3) #9
  %entities.3 = getelementptr %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 4, i32 0, i32 2
  %11 = ptrtoint ptr %entities.3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %s_entity.031.3 = load ptr, ptr %entities.3, align 4
  %cmp7.not32.3 = icmp eq ptr %s_entity.031.3, %entities.3
  br i1 %cmp7.not32.3, label %if.end4.3.for.end.3_crit_edge, label %if.end4.3.for.body8.3_crit_edge

if.end4.3.for.body8.3_crit_edge:                  ; preds = %if.end4.3
  br label %for.body8.3

if.end4.3.for.end.3_crit_edge:                    ; preds = %if.end4.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.3

for.body8.3:                                      ; preds = %for.body8.3.for.body8.3_crit_edge, %if.end4.3.for.body8.3_crit_edge
  %s_entity.033.3 = phi ptr [ %s_entity.0.3, %for.body8.3.for.body8.3_crit_edge ], [ %s_entity.031.3, %if.end4.3.for.body8.3_crit_edge ]
  %stopped.3 = getelementptr inbounds %struct.drm_sched_entity, ptr %s_entity.033.3, i32 0, i32 14
  %12 = ptrtoint ptr %stopped.3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %stopped.3, align 4
  %13 = ptrtoint ptr %s_entity.033.3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %s_entity.0.3 = load ptr, ptr %s_entity.033.3, align 4
  %cmp7.not.3 = icmp eq ptr %s_entity.0.3, %entities.3
  br i1 %cmp7.not.3, label %for.body8.3.for.end.3_crit_edge, label %for.body8.3.for.body8.3_crit_edge

for.body8.3.for.body8.3_crit_edge:                ; preds = %for.body8.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body8.3

for.body8.3.for.end.3_crit_edge:                  ; preds = %for.body8.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.3

for.end.3:                                        ; preds = %for.body8.3.for.end.3_crit_edge, %if.end4.3.for.end.3_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull %arrayidx.3) #9
  br label %cleanup.3

cleanup.3:                                        ; preds = %for.end.3, %cleanup.2.cleanup.3_crit_edge
  %job_scheduled = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %job_scheduled, i32 noundef 3, i32 noundef 0, ptr noundef null) #9
  %work_tdr = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 10
  %call17 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work_tdr) #9
  %ready = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 17
  %14 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %ready, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_drm_sched_job(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %entity = getelementptr inbounds %struct.trace_event_raw_drm_sched_job, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entity, align 8
  %id = getelementptr inbounds %struct.trace_event_raw_drm_sched_job, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %id, align 8
  %fence = getelementptr inbounds %struct.trace_event_raw_drm_sched_job, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fence, align 4
  %name = getelementptr inbounds %struct.trace_event_raw_drm_sched_job, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 8
  %job_count = getelementptr inbounds %struct.trace_event_raw_drm_sched_job, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %job_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %job_count, align 8
  %hw_job_count = getelementptr inbounds %struct.trace_event_raw_drm_sched_job, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %hw_job_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hw_job_count, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.26, ptr noundef %3, i64 noundef %5, ptr noundef %7, ptr noundef %9, i32 noundef %11, i32 noundef %13) #9
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_drm_run_job(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %entity = getelementptr inbounds %struct.trace_event_raw_drm_run_job, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entity, align 8
  %id = getelementptr inbounds %struct.trace_event_raw_drm_run_job, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %id, align 8
  %fence = getelementptr inbounds %struct.trace_event_raw_drm_run_job, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fence, align 4
  %name = getelementptr inbounds %struct.trace_event_raw_drm_run_job, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 8
  %job_count = getelementptr inbounds %struct.trace_event_raw_drm_run_job, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %job_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %job_count, align 8
  %hw_job_count = getelementptr inbounds %struct.trace_event_raw_drm_run_job, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %hw_job_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hw_job_count, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.26, ptr noundef %3, i64 noundef %5, ptr noundef %7, ptr noundef %9, i32 noundef %11, i32 noundef %13) #9
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_drm_sched_process_job(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %fence = getelementptr inbounds %struct.trace_event_raw_drm_sched_process_job, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fence, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.27, ptr noundef %3) #9
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_drm_sched_job_wait_dep(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %name = getelementptr inbounds %struct.trace_event_raw_drm_sched_job_wait_dep, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 8
  %id = getelementptr inbounds %struct.trace_event_raw_drm_sched_job_wait_dep, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %id, align 8
  %fence = getelementptr inbounds %struct.trace_event_raw_drm_sched_job_wait_dep, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fence, align 8
  %ctx = getelementptr inbounds %struct.trace_event_raw_drm_sched_job_wait_dep, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %ctx, align 8
  %seqno = getelementptr inbounds %struct.trace_event_raw_drm_sched_job_wait_dep, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %seqno to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %seqno, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.31, ptr noundef %3, i64 noundef %5, ptr noundef %7, i64 noundef %9, i32 noundef %11) #9
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_drm_sched_process_job(ptr noundef %fence) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_drm_sched_process_job, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_drm_sched_process_job, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !168

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !147) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !157

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !147) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !169
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_drm_sched_process_job, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %fence) #9
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !170
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !170
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !147) #9
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !147) #9
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !157

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !147) #9
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !171
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_drm_sched_process_job, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drm_sched_process_job.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_drm_sched_process_job.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.32, i32 noundef 100, ptr noundef nonnull @.str.33) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !172
  %38 = tail call i32 @llvm.read_register.i32(metadata !147) #9
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_fence_finished(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_add_return(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_alloc(ptr noundef, ptr noundef, ptr noundef, [2 x i32], i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_set_fifo_low(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @drm_sched_get_cleanup_job(ptr noundef %sched) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %job_list_lock = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %job_list_lock) #9
  %pending_list = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 12
  %0 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pending_list, align 4
  %cmp.not = icmp eq ptr %1, %pending_list
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %tobool.not49 = icmp eq ptr %add.ptr, null
  %tobool.not = or i1 %cmp.not, %tobool.not49
  br i1 %tobool.not, label %entry.if.end27_crit_edge, label %land.lhs.true

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

land.lhs.true:                                    ; preds = %entry
  %s_fence = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %s_fence to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fence, align 8
  %finished = getelementptr inbounds %struct.drm_sched_fence, ptr %3, i32 0, i32 1
  %flags.i = getelementptr inbounds %struct.drm_sched_fence, ptr %3, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.i:                                         ; preds = %land.lhs.true
  %ops.i = getelementptr inbounds %struct.drm_sched_fence, ptr %3, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %signaled.i = getelementptr inbounds %struct.dma_fence_ops, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %signaled.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %signaled.i, align 4
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %if.end.i.if.end27_crit_edge, label %land.lhs.true.i

if.end.i.if.end27_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

land.lhs.true.i:                                  ; preds = %if.end.i
  %call4.i = tail call zeroext i1 %9(ptr noundef %finished) #9
  br i1 %call4.i, label %if.then5.i, label %land.lhs.true.i.if.end27_crit_edge

land.lhs.true.i.if.end27_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %call6.i = tail call i32 @dma_fence_signal(ptr noundef %finished) #9
  br label %if.then

if.then:                                          ; preds = %if.then5.i, %land.lhs.true.if.then_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %1, ptr %prev.i3.i, align 4
  %work_tdr = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 10
  %call4 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %work_tdr) #9
  %18 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %pending_list, align 4
  %cmp14.not = icmp eq ptr %19, %pending_list
  %add.ptr18 = getelementptr i8, ptr %19, i32 -4
  %tobool22.not50 = icmp eq ptr %add.ptr18, null
  %tobool22.not = or i1 %cmp14.not, %tobool22.not50
  br i1 %tobool22.not, label %list_del_init.exit.if.end27_crit_edge, label %if.then23

list_del_init.exit.if.end27_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then23:                                        ; preds = %list_del_init.exit
  %20 = ptrtoint ptr %s_fence to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_fence, align 8
  %22 = getelementptr inbounds %struct.drm_sched_fence, ptr %21, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %22, align 8
  %s_fence26 = getelementptr i8, ptr %19, i32 12
  %25 = ptrtoint ptr %s_fence26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_fence26, align 8
  %27 = getelementptr inbounds %struct.dma_fence, ptr %26, i32 0, i32 2
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %24, ptr %27, align 8
  %timeout.i = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 2
  %29 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %timeout.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %30)
  %cmp.not.i = icmp eq i32 %30, 2147483647
  br i1 %cmp.not.i, label %if.then23.if.end27_crit_edge, label %land.lhs.true.i45

if.then23.if.end27_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

land.lhs.true.i45:                                ; preds = %if.then23
  %31 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %pending_list, align 4
  %cmp.i.not.i = icmp eq ptr %32, %pending_list
  br i1 %cmp.i.not.i, label %land.lhs.true.i45.if.end27_crit_edge, label %if.then.i

land.lhs.true.i45.if.end27_crit_edge:             ; preds = %land.lhs.true.i45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then.i:                                        ; preds = %land.lhs.true.i45
  call void @__sanitizer_cov_trace_pc() #11
  %timeout_wq.i = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 9
  %33 = ptrtoint ptr %timeout_wq.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %timeout_wq.i, align 8
  %call.i.i46 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %34, ptr noundef %work_tdr, i32 noundef %30) #9
  br label %if.end27

if.end27:                                         ; preds = %if.then.i, %land.lhs.true.i45.if.end27_crit_edge, %if.then23.if.end27_crit_edge, %list_del_init.exit.if.end27_crit_edge, %land.lhs.true.i.if.end27_crit_edge, %if.end.i.if.end27_crit_edge, %entry.if.end27_crit_edge
  %job.0 = phi ptr [ %add.ptr, %list_del_init.exit.if.end27_crit_edge ], [ null, %entry.if.end27_crit_edge ], [ null, %if.end.i.if.end27_crit_edge ], [ null, %land.lhs.true.i.if.end27_crit_edge ], [ %add.ptr, %if.then23.if.end27_crit_edge ], [ %add.ptr, %land.lhs.true.i45.if.end27_crit_edge ], [ %add.ptr, %if.then.i ]
  tail call void @_raw_spin_unlock(ptr noundef %job_list_lock) #9
  ret ptr %job.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @drm_sched_select_entity(ptr noundef %sched) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_rq_count.i = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %hw_rq_count.i, i32 noundef 4) #9
  %0 = ptrtoint ptr %hw_rq_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %hw_rq_count.i, align 4
  %hw_submission_limit.i = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 1
  %2 = ptrtoint ptr %hw_submission_limit.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw_submission_limit.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.i = icmp ult i32 %1, %3
  br i1 %cmp.i, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.014 = phi i32 [ %dec, %for.inc.for.body_crit_edge ], [ 3, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 4, i32 %i.014
  tail call void @_raw_spin_lock(ptr noundef %arrayidx) #9
  %current_entity.i = getelementptr %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 4, i32 %i.014, i32 3
  %4 = ptrtoint ptr %current_entity.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %current_entity.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %for.body.if.end10.i_crit_edge, label %for.cond.preheader.i

for.body.if.end10.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

for.cond.preheader.i:                             ; preds = %for.body
  %entities.i = getelementptr %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 4, i32 %i.014, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.preheader.i
  %entity.0.in.i = phi ptr [ %entity.0.i, %for.body.i.for.cond.i_crit_edge ], [ %5, %for.cond.preheader.i ]
  %6 = ptrtoint ptr %entity.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %entity.0.i = load ptr, ptr %entity.0.in.i, align 8
  %cmp.not.i = icmp eq ptr %entity.0.i, %entities.i
  br i1 %cmp.not.i, label %for.cond.i.if.end10.i_crit_edge, label %for.body.i

for.cond.i.if.end10.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

for.body.i:                                       ; preds = %for.cond.i
  %call.i = tail call zeroext i1 @drm_sched_entity_is_ready(ptr noundef %entity.0.i) #9
  br i1 %call.i, label %for.body.i.drm_sched_rq_select_entity.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.body.i.drm_sched_rq_select_entity.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_sched_rq_select_entity.exit

if.end10.i:                                       ; preds = %for.cond.i.if.end10.i_crit_edge, %for.body.if.end10.i_crit_edge
  %entities12.i = getelementptr %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 4, i32 %i.014, i32 2
  br label %for.cond16.i

for.cond16.i:                                     ; preds = %if.end27.i.for.cond16.i_crit_edge, %if.end10.i
  %entity.1.in.i = phi ptr [ %entities12.i, %if.end10.i ], [ %entity.1.i, %if.end27.i.for.cond16.i_crit_edge ]
  %7 = ptrtoint ptr %entity.1.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %entity.1.i = load ptr, ptr %entity.1.in.i, align 4
  %cmp19.not.i = icmp eq ptr %entity.1.i, %entities12.i
  br i1 %cmp19.not.i, label %for.cond16.i.drm_sched_rq_select_entity.exit.thread_crit_edge, label %for.body21.i

for.cond16.i.drm_sched_rq_select_entity.exit.thread_crit_edge: ; preds = %for.cond16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_sched_rq_select_entity.exit.thread

for.body21.i:                                     ; preds = %for.cond16.i
  %call22.i = tail call zeroext i1 @drm_sched_entity_is_ready(ptr noundef %entity.1.i) #9
  br i1 %call22.i, label %for.body21.i.drm_sched_rq_select_entity.exit_crit_edge, label %if.end27.i

for.body21.i.drm_sched_rq_select_entity.exit_crit_edge: ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_sched_rq_select_entity.exit

if.end27.i:                                       ; preds = %for.body21.i
  %8 = ptrtoint ptr %current_entity.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %current_entity.i, align 4
  %cmp29.i = icmp eq ptr %entity.1.i, %9
  br i1 %cmp29.i, label %if.end27.i.drm_sched_rq_select_entity.exit.thread_crit_edge, label %if.end27.i.for.cond16.i_crit_edge

if.end27.i.for.cond16.i_crit_edge:                ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond16.i

if.end27.i.drm_sched_rq_select_entity.exit.thread_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_sched_rq_select_entity.exit.thread

drm_sched_rq_select_entity.exit.thread:           ; preds = %if.end27.i.drm_sched_rq_select_entity.exit.thread_crit_edge, %for.cond16.i.drm_sched_rq_select_entity.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx) #9
  br label %for.inc

drm_sched_rq_select_entity.exit:                  ; preds = %for.body21.i.drm_sched_rq_select_entity.exit_crit_edge, %for.body.i.drm_sched_rq_select_entity.exit_crit_edge
  %entity.1.lcssa68.sink70.i = phi ptr [ %entity.1.i, %for.body21.i.drm_sched_rq_select_entity.exit_crit_edge ], [ %entity.0.i, %for.body.i.drm_sched_rq_select_entity.exit_crit_edge ]
  %10 = ptrtoint ptr %current_entity.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entity.1.lcssa68.sink70.i, ptr %current_entity.i, align 4
  %entity_idle25.i = getelementptr inbounds %struct.drm_sched_entity, ptr %entity.1.lcssa68.sink70.i, i32 0, i32 15
  %11 = ptrtoint ptr %entity_idle25.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %entity_idle25.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx) #9
  %tobool.not = icmp eq ptr %entity.1.lcssa68.sink70.i, null
  br i1 %tobool.not, label %drm_sched_rq_select_entity.exit.for.inc_crit_edge, label %drm_sched_rq_select_entity.exit.cleanup_crit_edge

drm_sched_rq_select_entity.exit.cleanup_crit_edge: ; preds = %drm_sched_rq_select_entity.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

drm_sched_rq_select_entity.exit.for.inc_crit_edge: ; preds = %drm_sched_rq_select_entity.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %drm_sched_rq_select_entity.exit.for.inc_crit_edge, %drm_sched_rq_select_entity.exit.thread
  %dec = add nsw i32 %i.014, -1
  %cmp = icmp sgt i32 %i.014, 0
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %drm_sched_rq_select_entity.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %entity.1.lcssa68.sink70.i, %drm_sched_rq_select_entity.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_sched_entity_pop_job(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_drm_run_job(ptr noundef %sched_job, ptr noundef %entity) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_drm_run_job, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_drm_run_job, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !168

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !147) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !157

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !147) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !173
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_drm_run_job, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %sched_job, ptr noundef %entity) #9
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !174
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !174
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !147) #9
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !147) #9
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !157

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !147) #9
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !171
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_drm_run_job, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drm_run_job.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_drm_run_job.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.32, i32 noundef 87, ptr noundef nonnull @.str.33) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !172
  %38 = tail call i32 @llvm.read_register.i32(metadata !147) #9
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_fence_scheduled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_park() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_parkme() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_sched_entity_is_ready(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !67, !68, !69, !70, !72, !74, !75, !77, !78, !80, !81, !83, !84, !85, !86, !88, !90, !92, !94, !95, !96, !97, !98, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !136, !137, !139, !141, !142, !144, !145, !146}
!llvm.named.register.sp = !{!147}
!llvm.module.flags = !{!148, !149, !150, !151, !152, !153, !154, !155}
!llvm.ident = !{!156}

!0 = !{ptr @__tracepoint_drm_sched_job, !1, !"__tracepoint_drm_sched_job", i1 false, i1 false}
!1 = !{!"../include/trace/../../drivers/gpu/drm/scheduler/gpu_scheduler_trace.h", i32 35, i32 1}
!2 = !{ptr @__tracepoint_ptr_drm_sched_job, !1, !"__tracepoint_ptr_drm_sched_job", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_drm_sched_job, !1, !"__SCK__tp_func_drm_sched_job", i1 false, i1 false}
!4 = !{ptr @__tracepoint_drm_run_job, !5, !"__tracepoint_drm_run_job", i1 false, i1 false}
!5 = !{!"../include/trace/../../drivers/gpu/drm/scheduler/gpu_scheduler_trace.h", i32 62, i32 1}
!6 = !{ptr @__tracepoint_ptr_drm_run_job, !5, !"__tracepoint_ptr_drm_run_job", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_drm_run_job, !5, !"__SCK__tp_func_drm_run_job", i1 false, i1 false}
!8 = !{ptr @__tracepoint_drm_sched_process_job, !9, !"__tracepoint_drm_sched_process_job", i1 false, i1 false}
!9 = !{!"../include/trace/../../drivers/gpu/drm/scheduler/gpu_scheduler_trace.h", i32 89, i32 1}
!10 = !{ptr @__tracepoint_ptr_drm_sched_process_job, !9, !"__tracepoint_ptr_drm_sched_process_job", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_drm_sched_process_job, !9, !"__SCK__tp_func_drm_sched_process_job", i1 false, i1 false}
!12 = !{ptr @__tracepoint_drm_sched_job_wait_dep, !13, !"__tracepoint_drm_sched_job_wait_dep", i1 false, i1 false}
!13 = !{!"../include/trace/../../drivers/gpu/drm/scheduler/gpu_scheduler_trace.h", i32 102, i32 1}
!14 = !{ptr @__tracepoint_ptr_drm_sched_job_wait_dep, !13, !"__tracepoint_ptr_drm_sched_job_wait_dep", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_drm_sched_job_wait_dep, !13, !"__SCK__tp_func_drm_sched_job_wait_dep", i1 false, i1 false}
!16 = !{ptr @event_class_drm_sched_job, !1, !"event_class_drm_sched_job", i1 false, i1 false}
!17 = !{ptr @event_drm_sched_job, !1, !"event_drm_sched_job", i1 false, i1 false}
!18 = !{ptr @__event_drm_sched_job, !1, !"__event_drm_sched_job", i1 false, i1 false}
!19 = !{ptr @event_class_drm_run_job, !5, !"event_class_drm_run_job", i1 false, i1 false}
!20 = !{ptr @event_drm_run_job, !5, !"event_drm_run_job", i1 false, i1 false}
!21 = !{ptr @__event_drm_run_job, !5, !"__event_drm_run_job", i1 false, i1 false}
!22 = !{ptr @event_class_drm_sched_process_job, !9, !"event_class_drm_sched_process_job", i1 false, i1 false}
!23 = !{ptr @event_drm_sched_process_job, !9, !"event_drm_sched_process_job", i1 false, i1 false}
!24 = !{ptr @__event_drm_sched_process_job, !9, !"__event_drm_sched_process_job", i1 false, i1 false}
!25 = !{ptr @event_class_drm_sched_job_wait_dep, !13, !"event_class_drm_sched_job_wait_dep", i1 false, i1 false}
!26 = !{ptr @event_drm_sched_job_wait_dep, !13, !"event_drm_sched_job_wait_dep", i1 false, i1 false}
!27 = !{ptr @__event_drm_sched_job_wait_dep, !13, !"__event_drm_sched_job_wait_dep", i1 false, i1 false}
!28 = !{ptr @__bpf_trace_tp_map_drm_sched_job, !1, !"__bpf_trace_tp_map_drm_sched_job", i1 false, i1 false}
!29 = !{ptr @__bpf_trace_tp_map_drm_run_job, !5, !"__bpf_trace_tp_map_drm_run_job", i1 false, i1 false}
!30 = !{ptr @__bpf_trace_tp_map_drm_sched_process_job, !9, !"__bpf_trace_tp_map_drm_sched_process_job", i1 false, i1 false}
!31 = !{ptr @__bpf_trace_tp_map_drm_sched_job_wait_dep, !13, !"__bpf_trace_tp_map_drm_sched_job_wait_dep", i1 false, i1 false}
!32 = !{ptr @__ksymtab_drm_sched_dependency_optimized, !33, !"__ksymtab_drm_sched_dependency_optimized", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/scheduler/sched_main.c", i32 224, i32 1}
!34 = !{ptr @__ksymtab_drm_sched_fault, !35, !"__ksymtab_drm_sched_fault", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/scheduler/sched_main.c", i32 251, i32 1}
!36 = !{ptr @__ksymtab_drm_sched_suspend_timeout, !37, !"__ksymtab_drm_sched_suspend_timeout", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/scheduler/sched_main.c", i32 281, i32 1}
!38 = !{ptr @__ksymtab_drm_sched_resume_timeout, !39, !"__ksymtab_drm_sched_resume_timeout", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/scheduler/sched_main.c", i32 303, i32 1}
!40 = !{ptr @__ksymtab_drm_sched_increase_karma, !41, !"__ksymtab_drm_sched_increase_karma", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/scheduler/sched_main.c", i32 371, i32 1}
!42 = !{ptr @__ksymtab_drm_sched_reset_karma, !43, !"__ksymtab_drm_sched_reset_karma", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/scheduler/sched_main.c", i32 377, i32 1}
!44 = !{ptr @__ksymtab_drm_sched_stop, !45, !"__ksymtab_drm_sched_stop", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/scheduler/sched_main.c", i32 461, i32 1}
!46 = !{ptr @.str, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/scheduler/sched_main.c", i32 494, i32 5}
!48 = !{ptr @__ksymtab_drm_sched_start, !49, !"__ksymtab_drm_sched_start", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/scheduler/sched_main.c", i32 508, i32 1}
!50 = !{ptr @__ksymtab_drm_sched_resubmit_jobs, !51, !"__ksymtab_drm_sched_resubmit_jobs", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/scheduler/sched_main.c", i32 520, i32 1}
!52 = !{ptr @__ksymtab_drm_sched_resubmit_jobs_ext, !53, !"__ksymtab_drm_sched_resubmit_jobs_ext", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/scheduler/sched_main.c", i32 565, i32 1}
!54 = !{ptr @__ksymtab_drm_sched_job_init, !55, !"__ksymtab_drm_sched_job_init", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/scheduler/sched_main.c", i32 605, i32 1}
!56 = !{ptr @__ksymtab_drm_sched_job_arm, !57, !"__ksymtab_drm_sched_job_arm", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/scheduler/sched_main.c", i32 635, i32 1}
!58 = !{ptr @__ksymtab_drm_sched_job_add_dependency, !59, !"__ksymtab_drm_sched_job_add_dependency", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/scheduler/sched_main.c", i32 681, i32 1}
!60 = !{ptr @__ksymtab_drm_sched_job_add_implicit_dependencies, !61, !"__ksymtab_drm_sched_job_add_implicit_dependencies", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/scheduler/sched_main.c", i32 717, i32 1}
!62 = !{ptr @__ksymtab_drm_sched_job_cleanup, !63, !"__ksymtab_drm_sched_job_cleanup", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/scheduler/sched_main.c", i32 754, i32 1}
!64 = !{ptr @.str.1, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/scheduler/sched_main.c", i32 870, i32 4}
!66 = !{ptr @.str.2, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.3, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @drm_sched_pick_best._entry, !65, !"_entry", i1 false, i1 false}
!69 = !{ptr @drm_sched_pick_best._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @__ksymtab_drm_sched_pick_best, !71, !"__ksymtab_drm_sched_pick_best", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/scheduler/sched_main.c", i32 884, i32 1}
!72 = !{ptr @drm_sched_init.__key, !73, !"__key", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/scheduler/sched_main.c", i32 1007, i32 2}
!74 = !{ptr @.str.4, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @drm_sched_init.__key.5, !76, !"__key", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/scheduler/sched_main.c", i32 1008, i32 2}
!77 = !{ptr @.str.6, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @drm_sched_init.__key.7, !79, !"__key", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/scheduler/sched_main.c", i32 1010, i32 2}
!80 = !{ptr @.str.8, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @drm_sched_init.__key.9, !82, !"__key", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/scheduler/sched_main.c", i32 1012, i32 2}
!83 = !{ptr @.str.10, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @drm_sched_init.__key.11, !82, !"__key", i1 false, i1 false}
!85 = !{ptr @.str.12, !82, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.13, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/scheduler/sched_main.c", i32 1021, i32 3}
!88 = !{ptr @__ksymtab_drm_sched_init, !89, !"__ksymtab_drm_sched_init", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/scheduler/sched_main.c", i32 1028, i32 1}
!90 = !{ptr @__ksymtab_drm_sched_fini, !91, !"__ksymtab_drm_sched_fini", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/scheduler/sched_main.c", i32 1071, i32 1}
!92 = !{ptr @__ksymtab_drm_sched_increase_karma_ext, !93, !"__ksymtab_drm_sched_increase_karma_ext", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/scheduler/sched_main.c", i32 1116, i32 1}
!94 = !{ptr @__tpstrtab_drm_sched_job, !1, !"__tpstrtab_drm_sched_job", i1 false, i1 false}
!95 = !{ptr @__tpstrtab_drm_run_job, !5, !"__tpstrtab_drm_run_job", i1 false, i1 false}
!96 = !{ptr @__tpstrtab_drm_sched_process_job, !9, !"__tpstrtab_drm_sched_process_job", i1 false, i1 false}
!97 = !{ptr @__tpstrtab_drm_sched_job_wait_dep, !13, !"__tpstrtab_drm_sched_job_wait_dep", i1 false, i1 false}
!98 = !{ptr @str__gpu_scheduler__trace_system_name, !99, !"str__gpu_scheduler__trace_system_name", i1 false, i1 false}
!99 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!100 = !{ptr @.str.14, !1, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.15, !1, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.16, !1, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.17, !1, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.18, !1, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.19, !1, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.20, !1, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.21, !1, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.22, !1, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.23, !1, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.24, !1, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.25, !1, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @trace_event_fields_drm_sched_job, !1, !"trace_event_fields_drm_sched_job", i1 false, i1 false}
!113 = !{ptr @trace_event_type_funcs_drm_sched_job, !1, !"trace_event_type_funcs_drm_sched_job", i1 false, i1 false}
!114 = !{ptr @.str.26, !1, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @print_fmt_drm_sched_job, !1, !"print_fmt_drm_sched_job", i1 false, i1 false}
!116 = !{ptr @trace_event_fields_drm_run_job, !5, !"trace_event_fields_drm_run_job", i1 false, i1 false}
!117 = !{ptr @trace_event_type_funcs_drm_run_job, !5, !"trace_event_type_funcs_drm_run_job", i1 false, i1 false}
!118 = !{ptr @print_fmt_drm_run_job, !5, !"print_fmt_drm_run_job", i1 false, i1 false}
!119 = !{ptr @trace_event_fields_drm_sched_process_job, !9, !"trace_event_fields_drm_sched_process_job", i1 false, i1 false}
!120 = !{ptr @trace_event_type_funcs_drm_sched_process_job, !9, !"trace_event_type_funcs_drm_sched_process_job", i1 false, i1 false}
!121 = !{ptr @.str.27, !9, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @print_fmt_drm_sched_process_job, !9, !"print_fmt_drm_sched_process_job", i1 false, i1 false}
!123 = !{ptr @.str.28, !13, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.29, !13, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.30, !13, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @trace_event_fields_drm_sched_job_wait_dep, !13, !"trace_event_fields_drm_sched_job_wait_dep", i1 false, i1 false}
!127 = !{ptr @trace_event_type_funcs_drm_sched_job_wait_dep, !13, !"trace_event_type_funcs_drm_sched_job_wait_dep", i1 false, i1 false}
!128 = !{ptr @.str.31, !13, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @print_fmt_drm_sched_job_wait_dep, !13, !"print_fmt_drm_sched_job_wait_dep", i1 false, i1 false}
!130 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!131 = !{ptr @.str.32, !9, !"<string literal>", i1 false, i1 false}
!132 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!133 = !{ptr @.str.33, !9, !"<string literal>", i1 false, i1 false}
!134 = distinct !{null, !135, !"__already_done", i1 false, i1 false}
!135 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!136 = !{ptr @.str.34, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.35, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../include/linux/dma-fence.h", i32 545, i32 2}
!139 = !{ptr @xa_init_flags.__key, !140, !"__key", i1 false, i1 false}
!140 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!141 = !{ptr @.str.36, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @drm_sched_rq_init.__key, !143, !"__key", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/scheduler/sched_main.c", i32 76, i32 2}
!144 = !{ptr @.str.37, !143, !"<string literal>", i1 false, i1 false}
!145 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!146 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!147 = !{!"sp"}
!148 = !{i32 1, !"wchar_size", i32 2}
!149 = !{i32 1, !"min_enum_size", i32 4}
!150 = !{i32 8, !"branch-target-enforcement", i32 0}
!151 = !{i32 8, !"sign-return-address", i32 0}
!152 = !{i32 8, !"sign-return-address-all", i32 0}
!153 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!154 = !{i32 7, !"uwtable", i32 1}
!155 = !{i32 7, !"frame-pointer", i32 2}
!156 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!157 = !{!"branch_weights", i32 2000, i32 1}
!158 = !{!"branch_weights", i32 1, i32 2000}
!159 = !{!"auto-init"}
!160 = !{i64 2148466094, i64 2148466120, i64 2148466149, i64 2148466183, i64 2148466214, i64 2148466237}
!161 = !{i64 2148468559, i64 2148468585, i64 2148468614, i64 2148468648, i64 2148468679, i64 2148468702}
!162 = !{i64 2148467624, i64 2148467656, i64 2148467685, i64 2148467719, i64 2148467750, i64 2148467773}
!163 = !{i64 2148555625}
!164 = !{i64 2148470089, i64 2148470121, i64 2148470150, i64 2148470184, i64 2148470215, i64 2148470238}
!165 = !{i64 2149591111}
!166 = !{i64 2155751268, i64 2155751771, i64 2155751305, i64 2155751361, i64 2155751395, i64 2155751419, i64 2155751460, i64 2155751481, i64 2155751509, i64 2155751543}
!167 = !{i8 0, i8 2}
!168 = !{i64 2148279487, i64 2148279492, i64 2148279505, i64 2148279549, i64 2148279583, i64 2148279604}
!169 = !{i64 2154192181}
!170 = !{i64 2154192396}
!171 = !{i64 2149291683}
!172 = !{i64 2149292719}
!173 = !{i64 2154175767}
!174 = !{i64 2154175986}

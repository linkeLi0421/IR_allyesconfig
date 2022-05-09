; ModuleID = '/llk/IR_all_yes/drivers/fsi/fsi-core.c_pt.bc'
source_filename = "../drivers/fsi/fsi-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+fsi_device_read\22, \22a\22\09"
module asm "\09.weak\09__crc_fsi_device_read\09\09\09\09"
module asm "\09.long\09__crc_fsi_device_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsi_device_read:\09\09\09\09\09"
module asm "\09.asciz \09\22fsi_device_read\22\09\09\09\09\09"
module asm "__kstrtabns_fsi_device_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fsi_device_write\22, \22a\22\09"
module asm "\09.weak\09__crc_fsi_device_write\09\09\09\09"
module asm "\09.long\09__crc_fsi_device_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsi_device_write:\09\09\09\09\09"
module asm "\09.asciz \09\22fsi_device_write\22\09\09\09\09\09"
module asm "__kstrtabns_fsi_device_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fsi_slave_read\22, \22a\22\09"
module asm "\09.weak\09__crc_fsi_slave_read\09\09\09\09"
module asm "\09.long\09__crc_fsi_slave_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsi_slave_read:\09\09\09\09\09"
module asm "\09.asciz \09\22fsi_slave_read\22\09\09\09\09\09"
module asm "__kstrtabns_fsi_slave_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fsi_slave_write\22, \22a\22\09"
module asm "\09.weak\09__crc_fsi_slave_write\09\09\09\09"
module asm "\09.long\09__crc_fsi_slave_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsi_slave_write:\09\09\09\09\09"
module asm "\09.asciz \09\22fsi_slave_write\22\09\09\09\09\09"
module asm "__kstrtabns_fsi_slave_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fsi_slave_claim_range\22, \22a\22\09"
module asm "\09.weak\09__crc_fsi_slave_claim_range\09\09\09\09"
module asm "\09.long\09__crc_fsi_slave_claim_range\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsi_slave_claim_range:\09\09\09\09\09"
module asm "\09.asciz \09\22fsi_slave_claim_range\22\09\09\09\09\09"
module asm "__kstrtabns_fsi_slave_claim_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fsi_slave_release_range\22, \22a\22\09"
module asm "\09.weak\09__crc_fsi_slave_release_range\09\09\09\09"
module asm "\09.long\09__crc_fsi_slave_release_range\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsi_slave_release_range:\09\09\09\09\09"
module asm "\09.asciz \09\22fsi_slave_release_range\22\09\09\09\09\09"
module asm "__kstrtabns_fsi_slave_release_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fsi_cdev_type\22, \22a\22\09"
module asm "\09.weak\09__crc_fsi_cdev_type\09\09\09\09"
module asm "\09.long\09__crc_fsi_cdev_type\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsi_cdev_type:\09\09\09\09\09"
module asm "\09.asciz \09\22fsi_cdev_type\22\09\09\09\09\09"
module asm "__kstrtabns_fsi_cdev_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fsi_get_new_minor\22, \22a\22\09"
module asm "\09.weak\09__crc_fsi_get_new_minor\09\09\09\09"
module asm "\09.long\09__crc_fsi_get_new_minor\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsi_get_new_minor:\09\09\09\09\09"
module asm "\09.asciz \09\22fsi_get_new_minor\22\09\09\09\09\09"
module asm "__kstrtabns_fsi_get_new_minor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fsi_free_minor\22, \22a\22\09"
module asm "\09.weak\09__crc_fsi_free_minor\09\09\09\09"
module asm "\09.long\09__crc_fsi_free_minor\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsi_free_minor:\09\09\09\09\09"
module asm "\09.asciz \09\22fsi_free_minor\22\09\09\09\09\09"
module asm "__kstrtabns_fsi_free_minor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fsi_master_rescan\22, \22a\22\09"
module asm "\09.weak\09__crc_fsi_master_rescan\09\09\09\09"
module asm "\09.long\09__crc_fsi_master_rescan\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsi_master_rescan:\09\09\09\09\09"
module asm "\09.asciz \09\22fsi_master_rescan\22\09\09\09\09\09"
module asm "__kstrtabns_fsi_master_rescan:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fsi_master_register\22, \22a\22\09"
module asm "\09.weak\09__crc_fsi_master_register\09\09\09\09"
module asm "\09.long\09__crc_fsi_master_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsi_master_register:\09\09\09\09\09"
module asm "\09.asciz \09\22fsi_master_register\22\09\09\09\09\09"
module asm "__kstrtabns_fsi_master_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fsi_master_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_fsi_master_unregister\09\09\09\09"
module asm "\09.long\09__crc_fsi_master_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsi_master_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22fsi_master_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_fsi_master_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fsi_driver_register\22, \22a\22\09"
module asm "\09.weak\09__crc_fsi_driver_register\09\09\09\09"
module asm "\09.long\09__crc_fsi_driver_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsi_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22fsi_driver_register\22\09\09\09\09\09"
module asm "__kstrtabns_fsi_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fsi_driver_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_fsi_driver_unregister\09\09\09\09"
module asm "\09.long\09__crc_fsi_driver_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsi_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22fsi_driver_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_fsi_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fsi_bus_type\22, \22a\22\09"
module asm "\09.weak\09__crc_fsi_bus_type\09\09\09\09"
module asm "\09.long\09__crc_fsi_bus_type\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsi_bus_type:\09\09\09\09\09"
module asm "\09.asciz \09\22fsi_bus_type\22\09\09\09\09\09"
module asm "__kstrtabns_fsi_bus_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.95 }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.97, %struct.trace_event, ptr, ptr, %union.anon.98, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.97 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.98 = type { ptr }
%union.anon.99 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.100 = type { %struct.bpf_raw_event_map }
%union.anon.101 = type { %struct.bpf_raw_event_map }
%union.anon.102 = type { %struct.bpf_raw_event_map }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.63 }
%union.anon.63 = type { ptr }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.fsi_master = type { %struct.device, i32, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.trace_event_raw_fsi_master_read = type { %struct.trace_entry, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_fsi_master_write = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_fsi_master_rw_result = type { %struct.trace_entry, i32, i32, i32, i32, i32, i8, i32, i32, [0 x i8] }
%struct.trace_event_raw_fsi_master_break = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.fsi_device = type { %struct.device, i8, i8, i8, ptr, i32, i32 }
%struct.fsi_slave = type { %struct.device, ptr, %struct.cdev, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.fsi_driver = type { %struct.device_driver, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fsi_device_id = type { i8, i8 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.file = type { %union.anon.14, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.14 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.65 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }

@__tpstrtab_fsi_master_read = internal constant [16 x i8] c"fsi_master_read\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_fsi_master_read = dso_local global %struct.static_call_key { ptr @__traceiter_fsi_master_read }, align 4
@__tracepoint_fsi_master_read = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_fsi_master_read, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_fsi_master_read, ptr null, ptr @__traceiter_fsi_master_read, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_fsi_master_read = internal constant ptr @__tracepoint_fsi_master_read, section "__tracepoints_ptrs", align 4
@__tpstrtab_fsi_master_write = internal constant [17 x i8] c"fsi_master_write\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_fsi_master_write = dso_local global %struct.static_call_key { ptr @__traceiter_fsi_master_write }, align 4
@__tracepoint_fsi_master_write = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_fsi_master_write, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_fsi_master_write, ptr null, ptr @__traceiter_fsi_master_write, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_fsi_master_write = internal constant ptr @__tracepoint_fsi_master_write, section "__tracepoints_ptrs", align 4
@__tpstrtab_fsi_master_rw_result = internal constant [21 x i8] c"fsi_master_rw_result\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_fsi_master_rw_result = dso_local global %struct.static_call_key { ptr @__traceiter_fsi_master_rw_result }, align 4
@__tracepoint_fsi_master_rw_result = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_fsi_master_rw_result, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_fsi_master_rw_result, ptr null, ptr @__traceiter_fsi_master_rw_result, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_fsi_master_rw_result = internal constant ptr @__tracepoint_fsi_master_rw_result, section "__tracepoints_ptrs", align 4
@__tpstrtab_fsi_master_break = internal constant [17 x i8] c"fsi_master_break\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_fsi_master_break = dso_local global %struct.static_call_key { ptr @__traceiter_fsi_master_break }, align 4
@__tracepoint_fsi_master_break = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_fsi_master_break, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_fsi_master_break, ptr null, ptr @__traceiter_fsi_master_break, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_fsi_master_break = internal constant ptr @__tracepoint_fsi_master_break, section "__tracepoints_ptrs", align 4
@str__fsi__trace_system_name = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fsi\00", [28 x i8] zeroinitializer }, align 32
@trace_event_fields_fsi_master_read = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.6, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.7, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.8, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.95 { %struct.anon.96 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.95 { %struct.anon.96 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_fsi_master_read = internal global %struct.trace_event_class { ptr @str__fsi__trace_system_name, ptr @trace_event_raw_event_fsi_master_read, ptr @perf_trace_fsi_master_read, ptr @trace_event_reg, ptr @trace_event_fields_fsi_master_read, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_fsi_master_read, i64 24), ptr getelementptr (i8, ptr @event_class_fsi_master_read, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_fsi_master_read = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_fsi_master_read, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_fsi_master_read = internal global { [87 x i8], [41 x i8] } { [87 x i8] c"\22fsi%d:%02d:%02d %08x[%zu]\22, REC->master_idx, REC->link, REC->id, REC->addr, REC->size\00", [41 x i8] zeroinitializer }, align 32
@event_fsi_master_read = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_fsi_master_read, %union.anon.97 { ptr @__tracepoint_fsi_master_read }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_fsi_master_read }, ptr @print_fmt_fsi_master_read, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_fsi_master_read = internal global ptr @event_fsi_master_read, section "_ftrace_events", align 4
@trace_event_fields_fsi_master_write = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.6, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.7, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.8, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.95 { %struct.anon.96 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.95 { %struct.anon.96 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.95 { %struct.anon.96 { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_fsi_master_write = internal global %struct.trace_event_class { ptr @str__fsi__trace_system_name, ptr @trace_event_raw_event_fsi_master_write, ptr @perf_trace_fsi_master_write, ptr @trace_event_reg, ptr @trace_event_fields_fsi_master_write, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_fsi_master_write, i64 24), ptr getelementptr (i8, ptr @event_class_fsi_master_write, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_fsi_master_write = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_fsi_master_write, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_fsi_master_write = internal global { [125 x i8], [35 x i8] } { [125 x i8] c"\22fsi%d:%02d:%02d %08x[%zu] <= {%*ph}\22, REC->master_idx, REC->link, REC->id, REC->addr, REC->size, (int)REC->size, &REC->data\00", [35 x i8] zeroinitializer }, align 32
@event_fsi_master_write = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_fsi_master_write, %union.anon.97 { ptr @__tracepoint_fsi_master_write }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_fsi_master_write }, ptr @print_fmt_fsi_master_write, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_fsi_master_write = internal global ptr @event_fsi_master_write, section "_ftrace_events", align 4
@trace_event_fields_fsi_master_rw_result = internal global { [9 x %struct.trace_event_fields], [40 x i8] } { [9 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.6, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.7, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.8, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.95 { %struct.anon.96 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.95 { %struct.anon.96 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.95 { %struct.anon.96 { ptr @.str.17, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.95 { %struct.anon.96 { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.18, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_fsi_master_rw_result = internal global %struct.trace_event_class { ptr @str__fsi__trace_system_name, ptr @trace_event_raw_event_fsi_master_rw_result, ptr @perf_trace_fsi_master_rw_result, ptr @trace_event_reg, ptr @trace_event_fields_fsi_master_rw_result, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_fsi_master_rw_result, i64 24), ptr getelementptr (i8, ptr @event_class_fsi_master_rw_result, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_fsi_master_rw_result = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_fsi_master_rw_result, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_fsi_master_rw_result = internal global { [168 x i8], [56 x i8] } { [168 x i8] c"\22fsi%d:%02d:%02d %08x[%zu] %s {%*ph} ret %d\22, REC->master_idx, REC->link, REC->id, REC->addr, REC->size, REC->write ? \22<=\22 : \22=>\22, (int)REC->size, &REC->data, REC->ret\00", [56 x i8] zeroinitializer }, align 32
@event_fsi_master_rw_result = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_fsi_master_rw_result, %union.anon.97 { ptr @__tracepoint_fsi_master_rw_result }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_fsi_master_rw_result }, ptr @print_fmt_fsi_master_rw_result, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_fsi_master_rw_result = internal global ptr @event_fsi_master_rw_result, section "_ftrace_events", align 4
@trace_event_fields_fsi_master_break = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.6, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.7, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_fsi_master_break = internal global %struct.trace_event_class { ptr @str__fsi__trace_system_name, ptr @trace_event_raw_event_fsi_master_break, ptr @perf_trace_fsi_master_break, ptr @trace_event_reg, ptr @trace_event_fields_fsi_master_break, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_fsi_master_break, i64 24), ptr getelementptr (i8, ptr @event_class_fsi_master_break, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_fsi_master_break = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_fsi_master_break, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_fsi_master_break = internal global { [39 x i8], [57 x i8] } { [39 x i8] c"\22fsi%d:%d\22, REC->master_idx, REC->link\00", [57 x i8] zeroinitializer }, align 32
@event_fsi_master_break = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_fsi_master_break, %union.anon.97 { ptr @__tracepoint_fsi_master_break }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_fsi_master_break }, ptr @print_fmt_fsi_master_break, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_fsi_master_break = internal global ptr @event_fsi_master_break, section "_ftrace_events", align 4
@__bpf_trace_tp_map_fsi_master_read = internal global %union.anon.99 { %struct.bpf_raw_event_map { ptr @__tracepoint_fsi_master_read, ptr @__bpf_trace_fsi_master_read, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_fsi_master_write = internal global %union.anon.100 { %struct.bpf_raw_event_map { ptr @__tracepoint_fsi_master_write, ptr @__bpf_trace_fsi_master_write, i32 6, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_fsi_master_rw_result = internal global %union.anon.101 { %struct.bpf_raw_event_map { ptr @__tracepoint_fsi_master_rw_result, ptr @__bpf_trace_fsi_master_rw_result, i32 8, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_fsi_master_break = internal global %union.anon.102 { %struct.bpf_raw_event_map { ptr @__tracepoint_fsi_master_break, ptr @__bpf_trace_fsi_master_break, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__kstrtab_fsi_device_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsi_device_read = external dso_local constant [0 x i8], align 1
@__ksymtab_fsi_device_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsi_device_read to i32), ptr @__kstrtab_fsi_device_read, ptr @__kstrtabns_fsi_device_read }, section "___ksymtab_gpl+fsi_device_read", align 4
@__kstrtab_fsi_device_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsi_device_write = external dso_local constant [0 x i8], align 1
@__ksymtab_fsi_device_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsi_device_write to i32), ptr @__kstrtab_fsi_device_write, ptr @__kstrtabns_fsi_device_write }, section "___ksymtab_gpl+fsi_device_write", align 4
@__kstrtab_fsi_slave_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsi_slave_read = external dso_local constant [0 x i8], align 1
@__ksymtab_fsi_slave_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsi_slave_read to i32), ptr @__kstrtab_fsi_slave_read, ptr @__kstrtabns_fsi_slave_read }, section "___ksymtab_gpl+fsi_slave_read", align 4
@__kstrtab_fsi_slave_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsi_slave_write = external dso_local constant [0 x i8], align 1
@__ksymtab_fsi_slave_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsi_slave_write to i32), ptr @__kstrtab_fsi_slave_write, ptr @__kstrtabns_fsi_slave_write }, section "___ksymtab_gpl+fsi_slave_write", align 4
@__kstrtab_fsi_slave_claim_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsi_slave_claim_range = external dso_local constant [0 x i8], align 1
@__ksymtab_fsi_slave_claim_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsi_slave_claim_range to i32), ptr @__kstrtab_fsi_slave_claim_range, ptr @__kstrtabns_fsi_slave_claim_range }, section "___ksymtab_gpl+fsi_slave_claim_range", align 4
@__kstrtab_fsi_slave_release_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsi_slave_release_range = external dso_local constant [0 x i8], align 1
@__ksymtab_fsi_slave_release_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsi_slave_release_range to i32), ptr @__kstrtab_fsi_slave_release_range, ptr @__kstrtabns_fsi_slave_release_range }, section "___ksymtab_gpl+fsi_slave_release_range", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fsi-cdev\00", [23 x i8] zeroinitializer }, align 32
@fsi_cdev_type = dso_local constant { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str, ptr null, ptr null, ptr @fsi_cdev_devnode, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@__kstrtab_fsi_cdev_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsi_cdev_type = external dso_local constant [0 x i8], align 1
@__ksymtab_fsi_cdev_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsi_cdev_type to i32), ptr @__kstrtab_fsi_cdev_type, ptr @__kstrtabns_fsi_cdev_type }, section "___ksymtab_gpl+fsi_cdev_type", align 4
@__kstrtab_fsi_get_new_minor = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsi_get_new_minor = external dso_local constant [0 x i8], align 1
@__ksymtab_fsi_get_new_minor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsi_get_new_minor to i32), ptr @__kstrtab_fsi_get_new_minor, ptr @__kstrtabns_fsi_get_new_minor }, section "___ksymtab_gpl+fsi_get_new_minor", align 4
@fsi_minor_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.34, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@__kstrtab_fsi_free_minor = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsi_free_minor = external dso_local constant [0 x i8], align 1
@__ksymtab_fsi_free_minor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsi_free_minor to i32), ptr @__kstrtab_fsi_free_minor, ptr @__kstrtabns_fsi_free_minor }, section "___ksymtab_gpl+fsi_free_minor", align 4
@__kstrtab_fsi_master_rescan = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsi_master_rescan = external dso_local constant [0 x i8], align 1
@__ksymtab_fsi_master_rescan = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsi_master_rescan to i32), ptr @__kstrtab_fsi_master_rescan, ptr @__kstrtabns_fsi_master_rescan }, section "___ksymtab_gpl+fsi_master_rescan", align 4
@fsi_master_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&master->scan_lock\00", [45 x i8] zeroinitializer }, align 32
@master_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.90, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fsi%d\00", [26 x i8] zeroinitializer }, align 32
@fsi_master_class = internal global { %struct.class, [36 x i8] } { %struct.class { ptr @.str.91, ptr null, ptr null, ptr @master_groups, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"no-scan-on-init\00", [16 x i8] zeroinitializer }, align 32
@__kstrtab_fsi_master_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsi_master_register = external dso_local constant [0 x i8], align 1
@__ksymtab_fsi_master_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsi_master_register to i32), ptr @__kstrtab_fsi_master_register, ptr @__kstrtabns_fsi_master_register }, section "___ksymtab_gpl+fsi_master_register", align 4
@__kstrtab_fsi_master_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsi_master_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_fsi_master_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsi_master_unregister to i32), ptr @__kstrtab_fsi_master_unregister, ptr @__kstrtabns_fsi_master_unregister }, section "___ksymtab_gpl+fsi_master_unregister", align 4
@__kstrtab_fsi_driver_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsi_driver_register = external dso_local constant [0 x i8], align 1
@__ksymtab_fsi_driver_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsi_driver_register to i32), ptr @__kstrtab_fsi_driver_register, ptr @__kstrtabns_fsi_driver_register }, section "___ksymtab_gpl+fsi_driver_register", align 4
@__kstrtab_fsi_driver_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsi_driver_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_fsi_driver_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsi_driver_unregister to i32), ptr @__kstrtab_fsi_driver_unregister, ptr @__kstrtabns_fsi_driver_unregister }, section "___ksymtab_gpl+fsi_driver_unregister", align 4
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fsi\00", [28 x i8] zeroinitializer }, align 32
@fsi_bus_type = dso_local global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str.4, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsi_bus_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_fsi_bus_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsi_bus_type = external dso_local constant [0 x i8], align 1
@__ksymtab_fsi_bus_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsi_bus_type to i32), ptr @__kstrtab_fsi_bus_type, ptr @__kstrtabns_fsi_bus_type }, section "___ksymtab_gpl+fsi_bus_type", align 4
@__initcall__kmod_fsi_core__285_1414_fsi_init2 = internal global ptr @fsi_init, section ".initcall2.init", align 4
@__exitcall_fsi_exit = internal global ptr @fsi_exit, section ".exitcall.exit", align 4
@__param_str_discard_errors = internal constant [24 x i8] c"fsi_core.discard_errors\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@discard_errors = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_discard_errors = internal constant %struct.kernel_param { ptr @__param_str_discard_errors, ptr null, ptr @param_ops_int, i16 436, i8 -1, i8 0, %union.anon.63 { ptr @discard_errors } }, section "__param", align 4
@__UNIQUE_ID_discard_errorstype286 = internal constant [37 x i8] c"fsi_core.parmtype=discard_errors:int\00", section ".modinfo", align 1
@__UNIQUE_ID_file287 = internal constant [35 x i8] c"fsi_core.file=drivers/fsi/fsi-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license288 = internal constant [21 x i8] c"fsi_core.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_discard_errors289 = internal constant [73 x i8] c"fsi_core.parm=discard_errors:Don't invoke error handling on bus accesses\00", section ".modinfo", align 1
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"master_idx\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"link\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"id\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"__u32\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"addr\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"size_t\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"size\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fsi%d:%02d:%02d %08x[%zu]\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"fsi%d:%02d:%02d %08x[%zu] <= {%*ph}\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bool\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ret\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"fsi%d:%02d:%02d %08x[%zu] %s {%*ph} ret %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"<=\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"=>\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fsi%d:%d\0A\00", [22 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@fsi_slave_handle_error.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, i8 0, i8 75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fsi_core\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fsi_slave_handle_error\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/fsi/fsi-core.c\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"handling error on %s to 0x%08x[%zd]\00", [60 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@fsi_slave_report_and_clear_errors.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.28, ptr @.str.25, ptr @.str.29, i8 0, i8 57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"fsi_slave_report_and_clear_errors\00", [62 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"status: 0x%08x, sisc: 0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/fsi.h\00", [37 x i8] zeroinitializer }, align 32
@trace_fsi_master_break.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fsi/%s\00", [25 x i8] zeroinitializer }, align 32
@fsi_base_dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fsi_minor_ida.xa_lock\00", [42 x i8] zeroinitializer }, align 32
@trace_fsi_master_read.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_fsi_master_rw_result.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_fsi_master_write.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fsi_master_scan.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.35, ptr @.str.25, ptr @.str.36, i8 1, i8 47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsi_master_scan\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"enable link %d failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@fsi_master_scan.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.35, ptr @.str.25, ptr @.str.37, i8 1, i8 48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"break to link %d failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@fsi_slave_init.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.38, ptr @.str.25, ptr @.str.39, i8 0, i8 -6, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsi_slave_init\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"can't read slave %02x:%02x %d\0A\00", [33 x i8] zeroinitializer }, align 32
@fsi_slave_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.25, i32 1010, ptr @.str.41, ptr @.str.42 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"slave %02x:%02x invalid cfam id CRC!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fsi_slave_init._entry_ptr = internal global ptr @fsi_slave_init._entry, section ".printk_index", align 4
@fsi_slave_init.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.38, ptr @.str.25, ptr @.str.43, i8 0, i8 -3, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"fsi: found chip %08x at %02x:%02x:%02x\0A\00", [56 x i8] zeroinitializer }, align 32
@fsi_slave_init._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.38, ptr @.str.25, i32 1028, ptr @.str.41, ptr @.str.42 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"can't set llmode on slave:%02x:%02x %d\0A\00", [56 x i8] zeroinitializer }, align 32
@fsi_slave_init._entry_ptr.46 = internal global ptr @fsi_slave_init._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"slave@%02x:%02x\00", [16 x i8] zeroinitializer }, align 32
@cfam_type = internal constant { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str.63, ptr @cfam_attr_groups, ptr null, ptr @cfam_devnode, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"chip-id\00", [24 x i8] zeroinitializer }, align 32
@fsi_slave_init._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.38, ptr @.str.25, i32 1067, ptr @.str.41, ptr @.str.42 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"can't set slbus on slave:%02x:%02x %d\0A\00", [57 x i8] zeroinitializer }, align 32
@fsi_slave_init._entry_ptr.51 = internal global ptr @fsi_slave_init._entry.49, section ".printk_index", align 4
@fsi_slave_init._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.38, ptr @.str.25, i32 1073, ptr @.str.41, ptr @.str.42 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"can't set smode on slave:%02x:%02x %d\0A\00", [57 x i8] zeroinitializer }, align 32
@fsi_slave_init._entry_ptr.54 = internal global ptr @fsi_slave_init._entry.52, section ".printk_index", align 4
@cfam_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @cfam_llseek, ptr @cfam_read, ptr @cfam_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @cfam_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@fsi_slave_init._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.38, ptr @.str.25, i32 1087, ptr @.str.57, ptr @.str.42 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error %d creating slave device\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@fsi_slave_init._entry_ptr.58 = internal global ptr @fsi_slave_init._entry.55, section ".printk_index", align 4
@fsi_slave_raw_attr = internal constant { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.76, i16 384, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @fsi_slave_sysfs_raw_read, ptr @fsi_slave_sysfs_raw_write, ptr null }, [52 x i8] zeroinitializer }, align 32
@fsi_slave_init._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.38, ptr @.str.25, i32 1104, ptr @.str.41, ptr @.str.42 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to create raw attr: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@fsi_slave_init._entry_ptr.61 = internal global ptr @fsi_slave_init._entry.59, section ".printk_index", align 4
@fsi_slave_init.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.38, ptr @.str.25, ptr @.str.62, i8 1, i8 21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed during slave scan with: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.63 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cfam\00", [27 x i8] zeroinitializer }, align 32
@cfam_attr_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @cfam_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@cfam_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @cfam_attr, ptr null }, [44 x i8] zeroinitializer }, align 32
@cfam_attr = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_send_echo_delays, ptr @dev_attr_chip_id, ptr @dev_attr_cfam_id, ptr @dev_attr_send_term, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_send_echo_delays = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 384, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @slave_send_echo_show, ptr @slave_send_echo_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_chip_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @chip_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_cfam_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cfam_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_send_term = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @send_term_store }, [36 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"send_echo_delays\00", [47 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"chip_id\00", [24 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cfam_id\00", [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%x\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"send_term\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fsi/cfam%d\00", [21 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"raw\00", [28 x i8] zeroinitializer }, align 32
@fsi_slave_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.25, i32 489, ptr @.str.41, ptr @.str.42 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error reading slave registers\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsi_slave_scan\00", [17 x i8] zeroinitializer }, align 32
@fsi_slave_scan._entry_ptr = internal global ptr @fsi_slave_scan._entry, section ".printk_index", align 4
@fsi_slave_scan._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.25, i32 498, ptr @.str.41, ptr @.str.42 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"crc error in slave register at 0x%04x\0A\00", [57 x i8] zeroinitializer }, align 32
@fsi_slave_scan._entry_ptr.81 = internal global ptr @fsi_slave_scan._entry.79, section ".printk_index", align 4
@fsi_slave_scan.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.78, ptr @.str.25, ptr @.str.82, i8 0, i8 -124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"engine[%i]: type %x, version %x, addr %x size %x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%02x:%02x:%02x:%02x\00", [44 x i8] zeroinitializer }, align 32
@fsi_slave_scan._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.78, ptr @.str.25, i32 539, ptr @.str.41, ptr @.str.42 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"add failed: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@fsi_slave_scan._entry_ptr.86 = internal global ptr @fsi_slave_scan._entry.84, section ".printk_index", align 4
@fsi_device_node_matches._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.25, i32 439, ptr @.str.41, ptr @.str.42 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"node %s matches probed address, but not size (got 0x%x, expected 0x%x)\00", [57 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fsi_device_node_matches\00", [40 x i8] zeroinitializer }, align 32
@fsi_device_node_matches._entry_ptr = internal global ptr @fsi_device_node_matches._entry, section ".printk_index", align 4
@.str.90 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"master_ida.xa_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fsi-master\00", [21 x i8] zeroinitializer }, align 32
@master_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @master_group, ptr null], [24 x i8] zeroinitializer }, align 32
@master_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @master_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@master_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_break, ptr @dev_attr_rescan, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_break = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.92, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @master_break_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rescan = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.93, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @master_rescan_store }, [36 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"break\00", [26 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rescan\00", [25 x i8] zeroinitializer }, align 32
@fsi_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.94 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.95 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.96 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.98 = private unnamed_addr constant [28 x i8] c"str__fsi__trace_system_name\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 36, i32 1 }
@___asan_gen_.101 = private unnamed_addr constant [35 x i8] c"trace_event_fields_fsi_master_read\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [39 x i8] c"trace_event_type_funcs_fsi_master_read\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [26 x i8] c"print_fmt_fsi_master_read\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [22 x i8] c"event_fsi_master_read\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [36 x i8] c"trace_event_fields_fsi_master_write\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [40 x i8] c"trace_event_type_funcs_fsi_master_write\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [27 x i8] c"print_fmt_fsi_master_write\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [23 x i8] c"event_fsi_master_write\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [40 x i8] c"trace_event_fields_fsi_master_rw_result\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [44 x i8] c"trace_event_type_funcs_fsi_master_rw_result\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [31 x i8] c"print_fmt_fsi_master_rw_result\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [27 x i8] c"event_fsi_master_rw_result\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [36 x i8] c"trace_event_fields_fsi_master_break\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [40 x i8] c"trace_event_type_funcs_fsi_master_break\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [27 x i8] c"print_fmt_fsi_master_break\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [23 x i8] c"event_fsi_master_break\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 927, i32 10 }
@___asan_gen_.152 = private unnamed_addr constant [14 x i8] c"fsi_cdev_type\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 926, i32 26 }
@___asan_gen_.155 = private unnamed_addr constant [14 x i8] c"fsi_minor_ida\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1310, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant [11 x i8] c"master_ida\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1312, i32 29 }
@___asan_gen_.170 = private unnamed_addr constant [17 x i8] c"fsi_master_class\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1300, i32 21 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1322, i32 33 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1386, i32 11 }
@___asan_gen_.179 = private unnamed_addr constant [13 x i8] c"fsi_bus_type\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1385, i32 17 }
@___asan_gen_.182 = private unnamed_addr constant [15 x i8] c"discard_errors\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 102, i32 12 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 11, i32 1 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 38, i32 1 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 69, i32 1 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 299, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 229, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant [30 x i8] c"../include/trace/events/fsi.h\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 108, i32 1 }
@___asan_gen_.267 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 108, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 920, i32 31 }
@___asan_gen_.272 = private unnamed_addr constant [13 x i8] c"fsi_base_dev\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 104, i32 14 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 105, i32 8 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1211, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1218, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1001, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1009, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1014, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1026, i32 4 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1038, i32 28 }
@___asan_gen_.317 = private unnamed_addr constant [10 x i8] c"cfam_type\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 910, i32 33 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1056, i32 49 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1065, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1071, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant [10 x i8] c"cfam_fops\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 791, i32 37 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1087, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant [19 x i8] c"fsi_slave_raw_attr\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 632, i32 35 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1104, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1109, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 911, i32 10 }
@___asan_gen_.362 = private unnamed_addr constant [17 x i8] c"cfam_attr_groups\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 893, i32 38 }
@___asan_gen_.365 = private unnamed_addr constant [16 x i8] c"cfam_attr_group\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 889, i32 37 }
@___asan_gen_.368 = private unnamed_addr constant [10 x i8] c"cfam_attr\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 881, i32 26 }
@___asan_gen_.371 = private unnamed_addr constant [26 x i8] c"dev_attr_send_echo_delays\00", align 1
@___asan_gen_.374 = private unnamed_addr constant [17 x i8] c"dev_attr_chip_id\00", align 1
@___asan_gen_.377 = private unnamed_addr constant [17 x i8] c"dev_attr_cfam_id\00", align 1
@___asan_gen_.380 = private unnamed_addr constant [19 x i8] c"dev_attr_send_term\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 856, i32 8 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 821, i32 22 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 868, i32 8 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 865, i32 22 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 879, i32 8 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 876, i32 22 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 813, i32 8 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 904, i32 31 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 666, i32 29 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 230, i32 6 }
@___asan_gen_.414 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 214, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.417, i32 174, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 634, i32 11 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 488, i32 4 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 496, i32 4 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 527, i32 4 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 532, i32 28 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 539, i32 5 }
@___asan_gen_.449 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 437, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 82, i32 8 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1301, i32 10 }
@___asan_gen_.464 = private unnamed_addr constant [14 x i8] c"master_groups\00", align 1
@___asan_gen_.467 = private unnamed_addr constant [13 x i8] c"master_group\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1298, i32 1 }
@___asan_gen_.470 = private unnamed_addr constant [13 x i8] c"master_attrs\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1292, i32 26 }
@___asan_gen_.473 = private unnamed_addr constant [15 x i8] c"dev_attr_break\00", align 1
@___asan_gen_.476 = private unnamed_addr constant [16 x i8] c"dev_attr_rescan\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1290, i32 8 }
@___asan_gen_.482 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1278, i32 8 }
@___asan_gen_.485 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.486 = private constant [26 x i8] c"../drivers/fsi/fsi-core.c\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1402, i32 7 }
@llvm.compiler.used = appending global [182 x ptr] [ptr @__UNIQUE_ID_discard_errors289, ptr @__UNIQUE_ID_discard_errorstype286, ptr @__UNIQUE_ID_file287, ptr @__UNIQUE_ID_license288, ptr @__bpf_trace_tp_map_fsi_master_break, ptr @__bpf_trace_tp_map_fsi_master_read, ptr @__bpf_trace_tp_map_fsi_master_rw_result, ptr @__bpf_trace_tp_map_fsi_master_write, ptr @__event_fsi_master_break, ptr @__event_fsi_master_read, ptr @__event_fsi_master_rw_result, ptr @__event_fsi_master_write, ptr @__exitcall_fsi_exit, ptr @__initcall__kmod_fsi_core__285_1414_fsi_init2, ptr @__ksymtab_fsi_bus_type, ptr @__ksymtab_fsi_cdev_type, ptr @__ksymtab_fsi_device_read, ptr @__ksymtab_fsi_device_write, ptr @__ksymtab_fsi_driver_register, ptr @__ksymtab_fsi_driver_unregister, ptr @__ksymtab_fsi_free_minor, ptr @__ksymtab_fsi_get_new_minor, ptr @__ksymtab_fsi_master_register, ptr @__ksymtab_fsi_master_rescan, ptr @__ksymtab_fsi_master_unregister, ptr @__ksymtab_fsi_slave_claim_range, ptr @__ksymtab_fsi_slave_read, ptr @__ksymtab_fsi_slave_release_range, ptr @__ksymtab_fsi_slave_write, ptr @__param_discard_errors, ptr @__tracepoint_fsi_master_break, ptr @__tracepoint_fsi_master_read, ptr @__tracepoint_fsi_master_rw_result, ptr @__tracepoint_fsi_master_write, ptr @__tracepoint_ptr_fsi_master_break, ptr @__tracepoint_ptr_fsi_master_read, ptr @__tracepoint_ptr_fsi_master_rw_result, ptr @__tracepoint_ptr_fsi_master_write, ptr @event_class_fsi_master_break, ptr @event_class_fsi_master_read, ptr @event_class_fsi_master_rw_result, ptr @event_class_fsi_master_write, ptr @event_fsi_master_break, ptr @event_fsi_master_read, ptr @event_fsi_master_rw_result, ptr @event_fsi_master_write, ptr @fsi_device_node_matches._entry, ptr @fsi_device_node_matches._entry_ptr, ptr @fsi_slave_init._entry, ptr @fsi_slave_init._entry.44, ptr @fsi_slave_init._entry.49, ptr @fsi_slave_init._entry.52, ptr @fsi_slave_init._entry.55, ptr @fsi_slave_init._entry.59, ptr @fsi_slave_init._entry_ptr, ptr @fsi_slave_init._entry_ptr.46, ptr @fsi_slave_init._entry_ptr.51, ptr @fsi_slave_init._entry_ptr.54, ptr @fsi_slave_init._entry_ptr.58, ptr @fsi_slave_init._entry_ptr.61, ptr @fsi_slave_scan._entry, ptr @fsi_slave_scan._entry.79, ptr @fsi_slave_scan._entry.84, ptr @fsi_slave_scan._entry_ptr, ptr @fsi_slave_scan._entry_ptr.81, ptr @fsi_slave_scan._entry_ptr.86, ptr @str__fsi__trace_system_name, ptr @trace_event_fields_fsi_master_read, ptr @trace_event_type_funcs_fsi_master_read, ptr @print_fmt_fsi_master_read, ptr @trace_event_fields_fsi_master_write, ptr @trace_event_type_funcs_fsi_master_write, ptr @print_fmt_fsi_master_write, ptr @trace_event_fields_fsi_master_rw_result, ptr @trace_event_type_funcs_fsi_master_rw_result, ptr @print_fmt_fsi_master_rw_result, ptr @trace_event_fields_fsi_master_break, ptr @trace_event_type_funcs_fsi_master_break, ptr @print_fmt_fsi_master_break, ptr @.str, ptr @fsi_cdev_type, ptr @fsi_minor_ida, ptr @fsi_master_register.__key, ptr @.str.1, ptr @master_ida, ptr @.str.2, ptr @fsi_master_class, ptr @.str.3, ptr @.str.4, ptr @fsi_bus_type, ptr @discard_errors, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @fsi_base_dev, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @cfam_type, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @cfam_fops, ptr @.str.56, ptr @.str.57, ptr @fsi_slave_raw_attr, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @cfam_attr_groups, ptr @cfam_attr_group, ptr @cfam_attr, ptr @dev_attr_send_echo_delays, ptr @dev_attr_chip_id, ptr @dev_attr_cfam_id, ptr @dev_attr_send_term, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @master_groups, ptr @master_group, ptr @master_attrs, ptr @dev_attr_break, ptr @dev_attr_rescan, ptr @.str.92, ptr @.str.93, ptr @fsi_init.__key], section "llvm.metadata"
@0 = internal global [130 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__fsi__trace_system_name to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_fsi_master_read to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_fsi_master_read to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_fsi_master_read to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_fsi_master_read to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_fsi_master_write to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_fsi_master_write to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_fsi_master_write to i32), i32 125, i32 160, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_fsi_master_write to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_fsi_master_rw_result to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_fsi_master_rw_result to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_fsi_master_rw_result to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_fsi_master_rw_result to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_fsi_master_break to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_fsi_master_break to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_fsi_master_break to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_fsi_master_break to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_cdev_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_minor_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_master_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @master_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_master_class to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_bus_type to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @discard_errors to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_base_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_slave_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_slave_init._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfam_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_slave_init._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_slave_init._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfam_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_slave_init._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_slave_raw_attr to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_slave_init._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfam_attr_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfam_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfam_attr to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_send_echo_delays to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_chip_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cfam_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_send_term to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_slave_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_slave_scan._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_slave_scan._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_device_node_matches._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @master_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @master_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @master_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_break to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rescan to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_fsi_master_read(ptr nocapture readnone %__data, ptr noundef %master, i32 noundef %link, i32 noundef %id, i32 noundef %addr, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_read, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
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
  tail call void %2(ptr noundef %4, ptr noundef %master, i32 noundef %link, i32 noundef %id, i32 noundef %addr, i32 noundef %size) #17
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_fsi_master_write(ptr nocapture readnone %__data, ptr noundef %master, i32 noundef %link, i32 noundef %id, i32 noundef %addr, i32 noundef %size, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_write, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data7 = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data7, align 4
  tail call void %2(ptr noundef %4, ptr noundef %master, i32 noundef %link, i32 noundef %id, i32 noundef %addr, i32 noundef %size, ptr noundef %data) #17
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_fsi_master_rw_result(ptr nocapture readnone %__data, ptr noundef %master, i32 noundef %link, i32 noundef %id, i32 noundef %addr, i32 noundef %size, i1 noundef zeroext %write, ptr noundef %data, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_rw_result, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data7 = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data7, align 4
  tail call void %2(ptr noundef %4, ptr noundef %master, i32 noundef %link, i32 noundef %id, i32 noundef %addr, i32 noundef %size, i1 noundef zeroext %write, ptr noundef %data, i32 noundef %ret) #17
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool11.not = icmp eq ptr %6, null
  br i1 %tobool11.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_fsi_master_break(ptr nocapture readnone %__data, ptr noundef %master, i32 noundef %link) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_break, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
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
  tail call void %2(ptr noundef %4, ptr noundef %master, i32 noundef %link) #17
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_fsi_master_read(ptr noundef %__data, ptr nocapture noundef readonly %master, i32 noundef %link, i32 noundef %id, i32 noundef %addr, i32 noundef %size) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #17
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !307

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !308

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #17
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 28) #17
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %idx = getelementptr inbounds %struct.fsi_master, ptr %master, i32 0, i32 1
  %3 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %idx, align 8
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_read, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %master_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %master_idx, align 4
  %link6 = getelementptr inbounds %struct.trace_event_raw_fsi_master_read, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %link6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %link, ptr %link6, align 4
  %id7 = getelementptr inbounds %struct.trace_event_raw_fsi_master_read, ptr %call3, i32 0, i32 3
  %7 = ptrtoint ptr %id7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %id, ptr %id7, align 4
  %addr8 = getelementptr inbounds %struct.trace_event_raw_fsi_master_read, ptr %call3, i32 0, i32 4
  %8 = ptrtoint ptr %addr8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %addr, ptr %addr8, align 4
  %size9 = getelementptr inbounds %struct.trace_event_raw_fsi_master_read, ptr %call3, i32 0, i32 5
  %9 = ptrtoint ptr %size9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %size, ptr %size9, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_fsi_master_read(ptr noundef %__data, ptr nocapture noundef readonly %master, i32 noundef %link, i32 noundef %id, i32 noundef %addr, i32 noundef %size) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #17
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !309
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #17
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !309
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !297) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #17
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #17
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #17
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !297) #17
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %idx = getelementptr inbounds %struct.fsi_master, ptr %master, i32 0, i32 1
  %27 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %idx, align 8
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_read, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %master_idx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %master_idx, align 4
  %link17 = getelementptr inbounds %struct.trace_event_raw_fsi_master_read, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %link17 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %link, ptr %link17, align 4
  %id18 = getelementptr inbounds %struct.trace_event_raw_fsi_master_read, ptr %call13, i32 0, i32 3
  %31 = ptrtoint ptr %id18 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %id, ptr %id18, align 4
  %addr19 = getelementptr inbounds %struct.trace_event_raw_fsi_master_read, ptr %call13, i32 0, i32 4
  %32 = ptrtoint ptr %addr19 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %addr, ptr %addr19, align 4
  %size20 = getelementptr inbounds %struct.trace_event_raw_fsi_master_read, ptr %call13, i32 0, i32 5
  %33 = ptrtoint ptr %size20 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %size, ptr %size20, align 4
  %34 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rctx, align 4
  %36 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %35, ptr noundef %__data, i64 noundef 1, ptr noundef %37, ptr noundef %11, ptr noundef null) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_fsi_master_write(ptr noundef %__data, ptr nocapture noundef readonly %master, i32 noundef %link, i32 noundef %id, i32 noundef %addr, i32 noundef %size, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #17
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !307

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !308

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #17
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 32) #17
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %idx = getelementptr inbounds %struct.fsi_master, ptr %master, i32 0, i32 1
  %3 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %idx, align 8
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_write, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %master_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %master_idx, align 4
  %link6 = getelementptr inbounds %struct.trace_event_raw_fsi_master_write, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %link6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %link, ptr %link6, align 4
  %id7 = getelementptr inbounds %struct.trace_event_raw_fsi_master_write, ptr %call3, i32 0, i32 3
  %7 = ptrtoint ptr %id7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %id, ptr %id7, align 4
  %addr8 = getelementptr inbounds %struct.trace_event_raw_fsi_master_write, ptr %call3, i32 0, i32 4
  %8 = ptrtoint ptr %addr8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %addr, ptr %addr8, align 4
  %size9 = getelementptr inbounds %struct.trace_event_raw_fsi_master_write, ptr %call3, i32 0, i32 5
  %9 = ptrtoint ptr %size9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %size, ptr %size9, align 4
  %data10 = getelementptr inbounds %struct.trace_event_raw_fsi_master_write, ptr %call3, i32 0, i32 6
  %10 = ptrtoint ptr %data10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %data10, align 4
  %11 = call ptr @memcpy(ptr %data10, ptr %data, i32 %size)
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_fsi_master_write(ptr noundef %__data, ptr nocapture noundef readonly %master, i32 noundef %link, i32 noundef %id, i32 noundef %addr, i32 noundef %size, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #17
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !309
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #17
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !309
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !297) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #17
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #17
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #17
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !297) #17
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %idx = getelementptr inbounds %struct.fsi_master, ptr %master, i32 0, i32 1
  %27 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %idx, align 8
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_write, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %master_idx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %master_idx, align 4
  %link17 = getelementptr inbounds %struct.trace_event_raw_fsi_master_write, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %link17 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %link, ptr %link17, align 4
  %id18 = getelementptr inbounds %struct.trace_event_raw_fsi_master_write, ptr %call13, i32 0, i32 3
  %31 = ptrtoint ptr %id18 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %id, ptr %id18, align 4
  %addr19 = getelementptr inbounds %struct.trace_event_raw_fsi_master_write, ptr %call13, i32 0, i32 4
  %32 = ptrtoint ptr %addr19 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %addr, ptr %addr19, align 4
  %size20 = getelementptr inbounds %struct.trace_event_raw_fsi_master_write, ptr %call13, i32 0, i32 5
  %33 = ptrtoint ptr %size20 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %size, ptr %size20, align 4
  %data21 = getelementptr inbounds %struct.trace_event_raw_fsi_master_write, ptr %call13, i32 0, i32 6
  %34 = ptrtoint ptr %data21 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %data21, align 4
  %35 = call ptr @memcpy(ptr %data21, ptr %data, i32 %size)
  %36 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rctx, align 4
  %38 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 36, i32 noundef %37, ptr noundef %__data, i64 noundef 1, ptr noundef %39, ptr noundef %11, ptr noundef null) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_fsi_master_rw_result(ptr noundef %__data, ptr nocapture noundef readonly %master, i32 noundef %link, i32 noundef %id, i32 noundef %addr, i32 noundef %size, i1 noundef zeroext %write, ptr nocapture noundef readonly %data, i32 noundef %ret) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #19
  %frombool = zext i1 %write to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #17
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !307

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !308

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #17
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 40) #17
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %idx = getelementptr inbounds %struct.fsi_master, ptr %master, i32 0, i32 1
  %3 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %idx, align 8
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %master_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %master_idx, align 4
  %link7 = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %link7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %link, ptr %link7, align 4
  %id8 = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %call3, i32 0, i32 3
  %7 = ptrtoint ptr %id8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %id, ptr %id8, align 4
  %addr9 = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %call3, i32 0, i32 4
  %8 = ptrtoint ptr %addr9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %addr, ptr %addr9, align 4
  %size10 = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %call3, i32 0, i32 5
  %9 = ptrtoint ptr %size10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %size, ptr %size10, align 4
  %write12 = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %call3, i32 0, i32 6
  %10 = ptrtoint ptr %write12 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool, ptr %write12, align 4
  %data14 = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %call3, i32 0, i32 7
  %11 = ptrtoint ptr %data14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %data14, align 4
  %ret15 = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %call3, i32 0, i32 8
  %12 = ptrtoint ptr %ret15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %ret, ptr %ret15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret)
  %tobool19.not = icmp eq i32 %ret, 0
  %or.cond = or i1 %tobool19.not, %write
  br i1 %or.cond, label %if.then20, label %if.end6.if.end22_crit_edge

if.end6.if.end22_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end22

if.then20:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  %13 = call ptr @memcpy(ptr %data14, ptr %data, i32 %size)
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end6.if.end22_crit_edge
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_fsi_master_rw_result(ptr noundef %__data, ptr nocapture noundef readonly %master, i32 noundef %link, i32 noundef %id, i32 noundef %addr, i32 noundef %size, i1 noundef zeroext %write, ptr nocapture noundef readonly %data, i32 noundef %ret) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  %frombool = zext i1 %write to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #17
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !309
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #17
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !309
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !297) #17
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
  br i1 %tobool.i.not, label %land.lhs.true8, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true8:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true8.cleanup_crit_edge, label %land.lhs.true8.if.end_crit_edge

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true8.if.end_crit_edge, %entry.if.end_crit_edge
  %call14 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #17
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #17
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #17
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !297) #17
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %idx = getelementptr inbounds %struct.fsi_master, ptr %master, i32 0, i32 1
  %27 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %idx, align 8
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %call14, i32 0, i32 1
  %29 = ptrtoint ptr %master_idx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %master_idx, align 4
  %link18 = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %call14, i32 0, i32 2
  %30 = ptrtoint ptr %link18 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %link, ptr %link18, align 4
  %id19 = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %call14, i32 0, i32 3
  %31 = ptrtoint ptr %id19 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %id, ptr %id19, align 4
  %addr20 = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %call14, i32 0, i32 4
  %32 = ptrtoint ptr %addr20 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %addr, ptr %addr20, align 4
  %size21 = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %call14, i32 0, i32 5
  %33 = ptrtoint ptr %size21 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %size, ptr %size21, align 4
  %write23 = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %call14, i32 0, i32 6
  %34 = ptrtoint ptr %write23 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %frombool, ptr %write23, align 4
  %data25 = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %call14, i32 0, i32 7
  %35 = ptrtoint ptr %data25 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %data25, align 4
  %ret26 = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %call14, i32 0, i32 8
  %36 = ptrtoint ptr %ret26 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %ret, ptr %ret26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret)
  %tobool30.not = icmp eq i32 %ret, 0
  %or.cond = or i1 %tobool30.not, %write
  br i1 %or.cond, label %if.then31, label %if.end17.if.end33_crit_edge

if.end17.if.end33_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end33

if.then31:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  %37 = call ptr @memcpy(ptr %data25, ptr %data, i32 %size)
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end17.if.end33_crit_edge
  %38 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rctx, align 4
  %40 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call14, i32 noundef 44, i32 noundef %39, ptr noundef %__data, i64 noundef 1, ptr noundef %41, ptr noundef %11, ptr noundef null) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.end.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_fsi_master_break(ptr noundef %__data, ptr nocapture noundef readonly %master, i32 noundef %link) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #17
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !307

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !308

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #17
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #17
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %idx = getelementptr inbounds %struct.fsi_master, ptr %master, i32 0, i32 1
  %3 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %idx, align 8
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_break, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %master_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %master_idx, align 4
  %link6 = getelementptr inbounds %struct.trace_event_raw_fsi_master_break, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %link6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %link, ptr %link6, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_fsi_master_break(ptr noundef %__data, ptr nocapture noundef readonly %master, i32 noundef %link) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #17
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !309
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #17
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !309
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !297) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #17
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #17
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #17
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !297) #17
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %idx = getelementptr inbounds %struct.fsi_master, ptr %master, i32 0, i32 1
  %27 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %idx, align 8
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_break, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %master_idx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %master_idx, align 4
  %link17 = getelementptr inbounds %struct.trace_event_raw_fsi_master_break, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %link17 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %link, ptr %link17, align 4
  %31 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rctx, align 4
  %33 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %32, ptr noundef %__data, i64 noundef 1, ptr noundef %34, ptr noundef %11, ptr noundef null) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_fsi_master_read(ptr noundef %__data, ptr noundef %master, i32 noundef %link, i32 noundef %id, i32 noundef %addr, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %0 = ptrtoint ptr %master to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %link to i64
  %conv8 = zext i32 %id to i64
  %conv12 = zext i32 %addr to i64
  %conv16 = zext i32 %size to i64
  tail call void @bpf_trace_run5(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_fsi_master_write(ptr noundef %__data, ptr noundef %master, i32 noundef %link, i32 noundef %id, i32 noundef %addr, i32 noundef %size, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %0 = ptrtoint ptr %master to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %link to i64
  %conv8 = zext i32 %id to i64
  %conv12 = zext i32 %addr to i64
  %conv16 = zext i32 %size to i64
  %1 = ptrtoint ptr %data to i32
  %conv20 = zext i32 %1 to i64
  tail call void @bpf_trace_run6(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16, i64 noundef %conv20) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_fsi_master_rw_result(ptr noundef %__data, ptr noundef %master, i32 noundef %link, i32 noundef %id, i32 noundef %addr, i32 noundef %size, i1 noundef zeroext %write, ptr noundef %data, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %0 = ptrtoint ptr %master to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %link to i64
  %conv8 = zext i32 %id to i64
  %conv12 = zext i32 %addr to i64
  %conv16 = zext i32 %size to i64
  %conv21 = zext i1 %write to i64
  %1 = ptrtoint ptr %data to i32
  %conv25 = zext i32 %1 to i64
  %conv29 = zext i32 %ret to i64
  tail call void @bpf_trace_run8(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16, i64 noundef %conv21, i64 noundef %conv25, i64 noundef %conv29) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_fsi_master_break(ptr noundef %__data, ptr noundef %master, i32 noundef %link) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %0 = ptrtoint ptr %master to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %link to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fsi_device_read(ptr nocapture noundef readonly %dev, i32 noundef %addr, ptr noundef %val, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %size1 = getelementptr inbounds %struct.fsi_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %size1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %addr)
  %cmp = icmp ult i32 %1, %addr
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %size)
  %cmp3 = icmp ult i32 %1, %size
  %or.cond = or i1 %cmp, %cmp3
  %sub = sub i32 %1, %size
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %addr)
  %cmp6 = icmp ult i32 %sub, %addr
  %or.cond16 = or i1 %or.cond, %cmp6
  br i1 %or.cond16, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %slave = getelementptr inbounds %struct.fsi_device, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slave, align 4
  %addr7 = getelementptr inbounds %struct.fsi_device, ptr %dev, i32 0, i32 5
  %4 = ptrtoint ptr %addr7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr7, align 8
  %add = add i32 %5, %addr
  %call = tail call i32 @fsi_slave_read(ptr noundef %3, i32 noundef %add, ptr noundef %val, i32 noundef %size)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fsi_slave_read(ptr noundef %slave, i32 noundef %addr, ptr noundef %val, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %id1 = getelementptr inbounds %struct.fsi_slave, ptr %slave, i32 0, i32 4
  %0 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id1, align 8
  %size.i = getelementptr inbounds %struct.fsi_slave, ptr %slave, i32 0, i32 8
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %addr)
  %cmp.i = icmp ult i32 %3, %addr
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %conv = trunc i32 %1 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097151, i32 %addr)
  %cmp1.i = icmp ugt i32 %addr, 2097151
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i.fsi_slave_calc_addr.exit_crit_edge

if.end.i.fsi_slave_calc_addr.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fsi_slave_calc_addr.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4.not.i = icmp eq i32 %1, 0
  br i1 %cmp4.not.i, label %if.end6.i, label %if.then2.i.cleanup_crit_edge

if.then2.i.cleanup_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end6.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #19
  %shr.i = lshr i32 %addr, 21
  %4 = trunc i32 %shr.i to i8
  %conv.i = and i8 %4, 3
  %and7.i = and i32 %addr, 2097151
  br label %fsi_slave_calc_addr.exit

fsi_slave_calc_addr.exit:                         ; preds = %if.end6.i, %if.end.i.fsi_slave_calc_addr.exit_crit_edge
  %addr.addr.0 = phi i32 [ %and7.i, %if.end6.i ], [ %addr, %if.end.i.fsi_slave_calc_addr.exit_crit_edge ]
  %id.0 = phi i8 [ %conv.i, %if.end6.i ], [ %conv, %if.end.i.fsi_slave_calc_addr.exit_crit_edge ]
  %master = getelementptr inbounds %struct.fsi_slave, ptr %slave, i32 0, i32 1
  %link = getelementptr inbounds %struct.fsi_slave, ptr %slave, i32 0, i32 5
  %conv.i23 = zext i8 %id.0 to i32
  %and4.i.i = and i32 %addr.addr.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0
  %and.i.i = and i32 %addr.addr.0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %5 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %master, align 8
  %7 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %link, align 4
  tail call fastcc void @trace_fsi_master_read(ptr noundef %6, i32 noundef %8, i32 noundef %conv.i23, i32 noundef %addr.addr.0, i32 noundef %size) #17
  %9 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %size, label %fsi_slave_calc_addr.exit.fsi_master_read.exit.thread_crit_edge [
    i32 4, label %if.then.i.i
    i32 2, label %if.then3.i.i
    i32 1, label %fsi_slave_calc_addr.exit.fsi_master_read.exit_crit_edge
  ]

fsi_slave_calc_addr.exit.fsi_master_read.exit_crit_edge: ; preds = %fsi_slave_calc_addr.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %fsi_master_read.exit

fsi_slave_calc_addr.exit.fsi_master_read.exit.thread_crit_edge: ; preds = %fsi_slave_calc_addr.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %fsi_master_read.exit.thread

for.cond:                                         ; preds = %if.end6
  %10 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %master, align 8
  %12 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %link, align 4
  tail call fastcc void @trace_fsi_master_read(ptr noundef %11, i32 noundef %13, i32 noundef %conv.i23, i32 noundef %addr.addr.0, i32 noundef %size) #17
  %14 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %size, label %for.cond.fsi_master_read.exit.thread.1_crit_edge [
    i32 4, label %if.then.i.i.1
    i32 2, label %if.then3.i.i.1
    i32 1, label %for.cond.fsi_master_read.exit.1_crit_edge
  ]

for.cond.fsi_master_read.exit.1_crit_edge:        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %fsi_master_read.exit.1

for.cond.fsi_master_read.exit.thread.1_crit_edge: ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %fsi_master_read.exit.thread.1

if.then3.i.i.1:                                   ; preds = %for.cond
  br i1 %tobool5.not.i.i, label %if.then3.i.i.1.fsi_master_read.exit.1_crit_edge, label %if.then3.i.i.1.fsi_master_read.exit.thread.1_crit_edge

if.then3.i.i.1.fsi_master_read.exit.thread.1_crit_edge: ; preds = %if.then3.i.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %fsi_master_read.exit.thread.1

if.then3.i.i.1.fsi_master_read.exit.1_crit_edge:  ; preds = %if.then3.i.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %fsi_master_read.exit.1

if.then.i.i.1:                                    ; preds = %for.cond
  br i1 %tobool.not.i.i, label %if.then.i.i.1.fsi_master_read.exit.1_crit_edge, label %if.then.i.i.1.fsi_master_read.exit.thread.1_crit_edge

if.then.i.i.1.fsi_master_read.exit.thread.1_crit_edge: ; preds = %if.then.i.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %fsi_master_read.exit.thread.1

if.then.i.i.1.fsi_master_read.exit.1_crit_edge:   ; preds = %if.then.i.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %fsi_master_read.exit.1

fsi_master_read.exit.1:                           ; preds = %if.then.i.i.1.fsi_master_read.exit.1_crit_edge, %if.then3.i.i.1.fsi_master_read.exit.1_crit_edge, %for.cond.fsi_master_read.exit.1_crit_edge
  %read.i.1 = getelementptr inbounds %struct.fsi_master, ptr %11, i32 0, i32 5
  %15 = ptrtoint ptr %read.i.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read.i.1, align 8
  %call1.i.1 = tail call i32 %16(ptr noundef %11, i32 noundef %13, i8 noundef zeroext %id.0, i32 noundef %addr.addr.0, ptr noundef %val, i32 noundef %size) #17
  tail call fastcc void @trace_fsi_master_rw_result(ptr noundef %11, i32 noundef %13, i32 noundef %conv.i23, i32 noundef %addr.addr.0, i32 noundef %size, i1 noundef zeroext false, ptr noundef %val, i32 noundef %call1.i.1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.1)
  %tobool4.not.1 = icmp eq i32 %call1.i.1, 0
  br i1 %tobool4.not.1, label %fsi_master_read.exit.1.cleanup_crit_edge, label %fsi_master_read.exit.1.if.end6.1_crit_edge

fsi_master_read.exit.1.if.end6.1_crit_edge:       ; preds = %fsi_master_read.exit.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6.1

fsi_master_read.exit.1.cleanup_crit_edge:         ; preds = %fsi_master_read.exit.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

fsi_master_read.exit.thread.1:                    ; preds = %if.then.i.i.1.fsi_master_read.exit.thread.1_crit_edge, %if.then3.i.i.1.fsi_master_read.exit.thread.1_crit_edge, %for.cond.fsi_master_read.exit.thread.1_crit_edge
  tail call fastcc void @trace_fsi_master_rw_result(ptr noundef %11, i32 noundef %13, i32 noundef %conv.i23, i32 noundef %addr.addr.0, i32 noundef %size, i1 noundef zeroext false, ptr noundef %val, i32 noundef -22) #17
  br label %if.end6.1

if.end6.1:                                        ; preds = %fsi_master_read.exit.thread.1, %fsi_master_read.exit.1.if.end6.1_crit_edge
  %rc.0.i34.1 = phi i32 [ -22, %fsi_master_read.exit.thread.1 ], [ %call1.i.1, %fsi_master_read.exit.1.if.end6.1_crit_edge ]
  %call7.1 = tail call fastcc i32 @fsi_slave_handle_error(ptr noundef %slave, i1 noundef zeroext false, i32 noundef %addr.addr.0, i32 noundef %size)
  br label %cleanup

if.then.i.i:                                      ; preds = %fsi_slave_calc_addr.exit
  br i1 %tobool.not.i.i, label %if.then.i.i.fsi_master_read.exit_crit_edge, label %if.then.i.i.fsi_master_read.exit.thread_crit_edge

if.then.i.i.fsi_master_read.exit.thread_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fsi_master_read.exit.thread

if.then.i.i.fsi_master_read.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fsi_master_read.exit

if.then3.i.i:                                     ; preds = %fsi_slave_calc_addr.exit
  br i1 %tobool5.not.i.i, label %if.then3.i.i.fsi_master_read.exit_crit_edge, label %if.then3.i.i.fsi_master_read.exit.thread_crit_edge

if.then3.i.i.fsi_master_read.exit.thread_crit_edge: ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fsi_master_read.exit.thread

if.then3.i.i.fsi_master_read.exit_crit_edge:      ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fsi_master_read.exit

fsi_master_read.exit.thread:                      ; preds = %if.then3.i.i.fsi_master_read.exit.thread_crit_edge, %if.then.i.i.fsi_master_read.exit.thread_crit_edge, %fsi_slave_calc_addr.exit.fsi_master_read.exit.thread_crit_edge
  tail call fastcc void @trace_fsi_master_rw_result(ptr noundef %6, i32 noundef %8, i32 noundef %conv.i23, i32 noundef %addr.addr.0, i32 noundef %size, i1 noundef zeroext false, ptr noundef %val, i32 noundef -22) #17
  br label %if.end6

fsi_master_read.exit:                             ; preds = %if.then3.i.i.fsi_master_read.exit_crit_edge, %if.then.i.i.fsi_master_read.exit_crit_edge, %fsi_slave_calc_addr.exit.fsi_master_read.exit_crit_edge
  %read.i = getelementptr inbounds %struct.fsi_master, ptr %6, i32 0, i32 5
  %17 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read.i, align 8
  %call1.i = tail call i32 %18(ptr noundef %6, i32 noundef %8, i8 noundef zeroext %id.0, i32 noundef %addr.addr.0, ptr noundef %val, i32 noundef %size) #17
  tail call fastcc void @trace_fsi_master_rw_result(ptr noundef %6, i32 noundef %8, i32 noundef %conv.i23, i32 noundef %addr.addr.0, i32 noundef %size, i1 noundef zeroext false, ptr noundef %val, i32 noundef %call1.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool4.not = icmp eq i32 %call1.i, 0
  br i1 %tobool4.not, label %fsi_master_read.exit.cleanup_crit_edge, label %fsi_master_read.exit.if.end6_crit_edge

fsi_master_read.exit.if.end6_crit_edge:           ; preds = %fsi_master_read.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6

fsi_master_read.exit.cleanup_crit_edge:           ; preds = %fsi_master_read.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end6:                                          ; preds = %fsi_master_read.exit.if.end6_crit_edge, %fsi_master_read.exit.thread
  %rc.0.i34 = phi i32 [ -22, %fsi_master_read.exit.thread ], [ %call1.i, %fsi_master_read.exit.if.end6_crit_edge ]
  %call7 = tail call fastcc i32 @fsi_slave_handle_error(ptr noundef %slave, i1 noundef zeroext false, i32 noundef %addr.addr.0, i32 noundef %size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %for.cond, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup:                                          ; preds = %if.end6.cleanup_crit_edge, %fsi_master_read.exit.cleanup_crit_edge, %if.end6.1, %fsi_master_read.exit.1.cleanup_crit_edge, %if.then2.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then2.i.cleanup_crit_edge ], [ %rc.0.i34, %if.end6.cleanup_crit_edge ], [ 0, %fsi_master_read.exit.cleanup_crit_edge ], [ 0, %fsi_master_read.exit.1.cleanup_crit_edge ], [ %rc.0.i34.1, %if.end6.1 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fsi_device_write(ptr nocapture noundef readonly %dev, i32 noundef %addr, ptr noundef %val, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %size1 = getelementptr inbounds %struct.fsi_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %size1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %addr)
  %cmp = icmp ult i32 %1, %addr
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %size)
  %cmp3 = icmp ult i32 %1, %size
  %or.cond = or i1 %cmp, %cmp3
  %sub = sub i32 %1, %size
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %addr)
  %cmp6 = icmp ult i32 %sub, %addr
  %or.cond16 = or i1 %or.cond, %cmp6
  br i1 %or.cond16, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %slave = getelementptr inbounds %struct.fsi_device, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slave, align 4
  %addr7 = getelementptr inbounds %struct.fsi_device, ptr %dev, i32 0, i32 5
  %4 = ptrtoint ptr %addr7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr7, align 8
  %add = add i32 %5, %addr
  %call = tail call i32 @fsi_slave_write(ptr noundef %3, i32 noundef %add, ptr noundef %val, i32 noundef %size)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fsi_slave_write(ptr noundef %slave, i32 noundef %addr, ptr noundef %val, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %id1 = getelementptr inbounds %struct.fsi_slave, ptr %slave, i32 0, i32 4
  %0 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id1, align 8
  %size.i = getelementptr inbounds %struct.fsi_slave, ptr %slave, i32 0, i32 8
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %addr)
  %cmp.i = icmp ult i32 %3, %addr
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %conv = trunc i32 %1 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097151, i32 %addr)
  %cmp1.i = icmp ugt i32 %addr, 2097151
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i.fsi_slave_calc_addr.exit_crit_edge

if.end.i.fsi_slave_calc_addr.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fsi_slave_calc_addr.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4.not.i = icmp eq i32 %1, 0
  br i1 %cmp4.not.i, label %if.end6.i, label %if.then2.i.cleanup_crit_edge

if.then2.i.cleanup_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end6.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #19
  %shr.i = lshr i32 %addr, 21
  %4 = trunc i32 %shr.i to i8
  %conv.i = and i8 %4, 3
  %and7.i = and i32 %addr, 2097151
  br label %fsi_slave_calc_addr.exit

fsi_slave_calc_addr.exit:                         ; preds = %if.end6.i, %if.end.i.fsi_slave_calc_addr.exit_crit_edge
  %addr.addr.0 = phi i32 [ %and7.i, %if.end6.i ], [ %addr, %if.end.i.fsi_slave_calc_addr.exit_crit_edge ]
  %id.0 = phi i8 [ %conv.i, %if.end6.i ], [ %conv, %if.end.i.fsi_slave_calc_addr.exit_crit_edge ]
  %master = getelementptr inbounds %struct.fsi_slave, ptr %slave, i32 0, i32 1
  %link = getelementptr inbounds %struct.fsi_slave, ptr %slave, i32 0, i32 5
  %conv.i23 = zext i8 %id.0 to i32
  %and4.i.i = and i32 %addr.addr.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0
  %and.i.i = and i32 %addr.addr.0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %5 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %master, align 8
  %7 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %link, align 4
  tail call fastcc void @trace_fsi_master_write(ptr noundef %6, i32 noundef %8, i32 noundef %conv.i23, i32 noundef %addr.addr.0, i32 noundef %size, ptr noundef %val) #17
  %9 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %size, label %fsi_slave_calc_addr.exit.fsi_master_write.exit.thread_crit_edge [
    i32 4, label %if.then.i.i
    i32 2, label %if.then3.i.i
    i32 1, label %fsi_slave_calc_addr.exit.fsi_master_write.exit_crit_edge
  ]

fsi_slave_calc_addr.exit.fsi_master_write.exit_crit_edge: ; preds = %fsi_slave_calc_addr.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %fsi_master_write.exit

fsi_slave_calc_addr.exit.fsi_master_write.exit.thread_crit_edge: ; preds = %fsi_slave_calc_addr.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %fsi_master_write.exit.thread

for.cond:                                         ; preds = %if.end6
  %10 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %master, align 8
  %12 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %link, align 4
  tail call fastcc void @trace_fsi_master_write(ptr noundef %11, i32 noundef %13, i32 noundef %conv.i23, i32 noundef %addr.addr.0, i32 noundef %size, ptr noundef %val) #17
  %14 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %size, label %for.cond.fsi_master_write.exit.thread.1_crit_edge [
    i32 4, label %if.then.i.i.1
    i32 2, label %if.then3.i.i.1
    i32 1, label %for.cond.fsi_master_write.exit.1_crit_edge
  ]

for.cond.fsi_master_write.exit.1_crit_edge:       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %fsi_master_write.exit.1

for.cond.fsi_master_write.exit.thread.1_crit_edge: ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %fsi_master_write.exit.thread.1

if.then3.i.i.1:                                   ; preds = %for.cond
  br i1 %tobool5.not.i.i, label %if.then3.i.i.1.fsi_master_write.exit.1_crit_edge, label %if.then3.i.i.1.fsi_master_write.exit.thread.1_crit_edge

if.then3.i.i.1.fsi_master_write.exit.thread.1_crit_edge: ; preds = %if.then3.i.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %fsi_master_write.exit.thread.1

if.then3.i.i.1.fsi_master_write.exit.1_crit_edge: ; preds = %if.then3.i.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %fsi_master_write.exit.1

if.then.i.i.1:                                    ; preds = %for.cond
  br i1 %tobool.not.i.i, label %if.then.i.i.1.fsi_master_write.exit.1_crit_edge, label %if.then.i.i.1.fsi_master_write.exit.thread.1_crit_edge

if.then.i.i.1.fsi_master_write.exit.thread.1_crit_edge: ; preds = %if.then.i.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %fsi_master_write.exit.thread.1

if.then.i.i.1.fsi_master_write.exit.1_crit_edge:  ; preds = %if.then.i.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %fsi_master_write.exit.1

fsi_master_write.exit.1:                          ; preds = %if.then.i.i.1.fsi_master_write.exit.1_crit_edge, %if.then3.i.i.1.fsi_master_write.exit.1_crit_edge, %for.cond.fsi_master_write.exit.1_crit_edge
  %write.i.1 = getelementptr inbounds %struct.fsi_master, ptr %11, i32 0, i32 6
  %15 = ptrtoint ptr %write.i.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write.i.1, align 4
  %call1.i.1 = tail call i32 %16(ptr noundef %11, i32 noundef %13, i8 noundef zeroext %id.0, i32 noundef %addr.addr.0, ptr noundef %val, i32 noundef %size) #17
  tail call fastcc void @trace_fsi_master_rw_result(ptr noundef %11, i32 noundef %13, i32 noundef %conv.i23, i32 noundef %addr.addr.0, i32 noundef %size, i1 noundef zeroext true, ptr noundef %val, i32 noundef %call1.i.1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.1)
  %tobool4.not.1 = icmp eq i32 %call1.i.1, 0
  br i1 %tobool4.not.1, label %fsi_master_write.exit.1.cleanup_crit_edge, label %fsi_master_write.exit.1.if.end6.1_crit_edge

fsi_master_write.exit.1.if.end6.1_crit_edge:      ; preds = %fsi_master_write.exit.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6.1

fsi_master_write.exit.1.cleanup_crit_edge:        ; preds = %fsi_master_write.exit.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

fsi_master_write.exit.thread.1:                   ; preds = %if.then.i.i.1.fsi_master_write.exit.thread.1_crit_edge, %if.then3.i.i.1.fsi_master_write.exit.thread.1_crit_edge, %for.cond.fsi_master_write.exit.thread.1_crit_edge
  tail call fastcc void @trace_fsi_master_rw_result(ptr noundef %11, i32 noundef %13, i32 noundef %conv.i23, i32 noundef %addr.addr.0, i32 noundef %size, i1 noundef zeroext true, ptr noundef %val, i32 noundef -22) #17
  br label %if.end6.1

if.end6.1:                                        ; preds = %fsi_master_write.exit.thread.1, %fsi_master_write.exit.1.if.end6.1_crit_edge
  %rc.0.i34.1 = phi i32 [ -22, %fsi_master_write.exit.thread.1 ], [ %call1.i.1, %fsi_master_write.exit.1.if.end6.1_crit_edge ]
  %call7.1 = tail call fastcc i32 @fsi_slave_handle_error(ptr noundef %slave, i1 noundef zeroext true, i32 noundef %addr.addr.0, i32 noundef %size)
  br label %cleanup

if.then.i.i:                                      ; preds = %fsi_slave_calc_addr.exit
  br i1 %tobool.not.i.i, label %if.then.i.i.fsi_master_write.exit_crit_edge, label %if.then.i.i.fsi_master_write.exit.thread_crit_edge

if.then.i.i.fsi_master_write.exit.thread_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fsi_master_write.exit.thread

if.then.i.i.fsi_master_write.exit_crit_edge:      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fsi_master_write.exit

if.then3.i.i:                                     ; preds = %fsi_slave_calc_addr.exit
  br i1 %tobool5.not.i.i, label %if.then3.i.i.fsi_master_write.exit_crit_edge, label %if.then3.i.i.fsi_master_write.exit.thread_crit_edge

if.then3.i.i.fsi_master_write.exit.thread_crit_edge: ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fsi_master_write.exit.thread

if.then3.i.i.fsi_master_write.exit_crit_edge:     ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fsi_master_write.exit

fsi_master_write.exit.thread:                     ; preds = %if.then3.i.i.fsi_master_write.exit.thread_crit_edge, %if.then.i.i.fsi_master_write.exit.thread_crit_edge, %fsi_slave_calc_addr.exit.fsi_master_write.exit.thread_crit_edge
  tail call fastcc void @trace_fsi_master_rw_result(ptr noundef %6, i32 noundef %8, i32 noundef %conv.i23, i32 noundef %addr.addr.0, i32 noundef %size, i1 noundef zeroext true, ptr noundef %val, i32 noundef -22) #17
  br label %if.end6

fsi_master_write.exit:                            ; preds = %if.then3.i.i.fsi_master_write.exit_crit_edge, %if.then.i.i.fsi_master_write.exit_crit_edge, %fsi_slave_calc_addr.exit.fsi_master_write.exit_crit_edge
  %write.i = getelementptr inbounds %struct.fsi_master, ptr %6, i32 0, i32 6
  %17 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write.i, align 4
  %call1.i = tail call i32 %18(ptr noundef %6, i32 noundef %8, i8 noundef zeroext %id.0, i32 noundef %addr.addr.0, ptr noundef %val, i32 noundef %size) #17
  tail call fastcc void @trace_fsi_master_rw_result(ptr noundef %6, i32 noundef %8, i32 noundef %conv.i23, i32 noundef %addr.addr.0, i32 noundef %size, i1 noundef zeroext true, ptr noundef %val, i32 noundef %call1.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool4.not = icmp eq i32 %call1.i, 0
  br i1 %tobool4.not, label %fsi_master_write.exit.cleanup_crit_edge, label %fsi_master_write.exit.if.end6_crit_edge

fsi_master_write.exit.if.end6_crit_edge:          ; preds = %fsi_master_write.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6

fsi_master_write.exit.cleanup_crit_edge:          ; preds = %fsi_master_write.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end6:                                          ; preds = %fsi_master_write.exit.if.end6_crit_edge, %fsi_master_write.exit.thread
  %rc.0.i34 = phi i32 [ -22, %fsi_master_write.exit.thread ], [ %call1.i, %fsi_master_write.exit.if.end6_crit_edge ]
  %call7 = tail call fastcc i32 @fsi_slave_handle_error(ptr noundef %slave, i1 noundef zeroext true, i32 noundef %addr.addr.0, i32 noundef %size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %for.cond, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup:                                          ; preds = %if.end6.cleanup_crit_edge, %fsi_master_write.exit.cleanup_crit_edge, %if.end6.1, %fsi_master_write.exit.1.cleanup_crit_edge, %if.then2.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then2.i.cleanup_crit_edge ], [ %rc.0.i34, %if.end6.cleanup_crit_edge ], [ 0, %fsi_master_write.exit.cleanup_crit_edge ], [ 0, %fsi_master_write.exit.1.cleanup_crit_edge ], [ %rc.0.i34.1, %if.end6.1 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fsi_device_peek(ptr nocapture noundef readonly %dev, ptr noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %unit = getelementptr inbounds %struct.fsi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %unit to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %unit, align 2
  %conv = zext i8 %1 to i32
  %sub = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %sub, 1032
  %slave = getelementptr inbounds %struct.fsi_device, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slave, align 4
  %call = tail call i32 @fsi_slave_read(ptr noundef %3, i32 noundef %add, ptr noundef %val, i32 noundef 4)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsi_slave_handle_error(ptr noundef %slave, i1 noundef zeroext %write, i32 noundef %addr, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  %data.i = alloca i32, align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %master1 = getelementptr inbounds %struct.fsi_slave, ptr %slave, i32 0, i32 1
  %0 = ptrtoint ptr %master1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #17
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !309
  %3 = load i32, ptr @discard_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %link2 = getelementptr inbounds %struct.fsi_slave, ptr %slave, i32 0, i32 5
  %4 = ptrtoint ptr %link2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %link2, align 4
  %id3 = getelementptr inbounds %struct.fsi_slave, ptr %slave, i32 0, i32 4
  %6 = ptrtoint ptr %id3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id3, align 8
  %conv = trunc i32 %7 to i8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsi_slave_handle_error.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsi_slave_handle_error, %if.then8)) #17
          to label %do.end [label %if.then8], !srcloc !310

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %cond = select i1 %write, ptr @.str.17, ptr @.str.27
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsi_slave_handle_error.__UNIQUE_ID_ddebug274, ptr noundef %slave, ptr noundef nonnull @.str.26, ptr noundef nonnull %cond, i32 noundef %addr, i32 noundef %size) #17
  br label %do.end

do.end:                                           ; preds = %if.then8, %if.end
  %call12 = tail call fastcc i32 @fsi_slave_report_and_clear_errors(ptr noundef %slave)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.end.cleanup_crit_edge, label %if.end15

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end15:                                         ; preds = %do.end
  %term = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %term to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %term, align 8
  %tobool16.not = icmp eq ptr %9, null
  br i1 %tobool16.not, label %if.end15.if.end31_crit_edge, label %if.then17

if.end15.if.end31_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

if.then17:                                        ; preds = %if.end15
  %call19 = tail call i32 %9(ptr noundef %1, i32 noundef %5, i8 noundef zeroext %conv) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %if.then17.if.end31_crit_edge

if.then17.if.end31_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

if.then21:                                        ; preds = %if.then17
  %conv.i = and i32 %7, 255
  tail call fastcc void @trace_fsi_master_read(ptr noundef %1, i32 noundef %5, i32 noundef %conv.i, i32 noundef 0, i32 noundef 4) #17
  %read.i = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read.i, align 8
  %call1.i = call i32 %11(ptr noundef %1, i32 noundef %5, i8 noundef zeroext %conv, i32 noundef 0, ptr noundef nonnull %reg, i32 noundef 4) #17
  call fastcc void @trace_fsi_master_rw_result(ptr noundef %1, i32 noundef %5, i32 noundef %conv.i, i32 noundef 0, i32 noundef 4, i1 noundef zeroext false, ptr noundef nonnull %reg, i32 noundef %call1.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool23.not = icmp eq i32 %call1.i, 0
  br i1 %tobool23.not, label %if.end26, label %if.then21.if.end31_crit_edge

if.then21.if.end31_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

if.end26:                                         ; preds = %if.then21
  %call25 = call fastcc i32 @fsi_slave_report_and_clear_errors(ptr noundef %slave)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool27.not = icmp eq i32 %call25, 0
  br i1 %tobool27.not, label %if.end26.cleanup_crit_edge, label %if.end26.if.end31_crit_edge

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end31:                                         ; preds = %if.end26.if.end31_crit_edge, %if.then21.if.end31_crit_edge, %if.then17.if.end31_crit_edge, %if.end15.if.end31_crit_edge
  %t_send_delay = getelementptr inbounds %struct.fsi_slave, ptr %slave, i32 0, i32 9
  %12 = ptrtoint ptr %t_send_delay to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %t_send_delay, align 4
  %t_echo_delay = getelementptr inbounds %struct.fsi_slave, ptr %slave, i32 0, i32 10
  %14 = ptrtoint ptr %t_echo_delay to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %t_echo_delay, align 1
  call fastcc void @trace_fsi_master_break(ptr noundef %1, i32 noundef %5) #17
  %send_break.i = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %send_break.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %send_break.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end31.if.end.i_crit_edge, label %if.then.i

if.end31.if.end.i_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.then.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  %call.i = call i32 %17(ptr noundef %1, i32 noundef %5) #17
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end31.if.end.i_crit_edge
  %rc.0.i = phi i32 [ %call.i, %if.then.i ], [ 0, %if.end31.if.end.i_crit_edge ]
  %link_config.i = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %link_config.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %link_config.i, align 4
  %tobool2.not.i = icmp eq ptr %19, null
  br i1 %tobool2.not.i, label %if.end.i.fsi_master_break.exit_crit_edge, label %if.then3.i

if.end.i.fsi_master_break.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fsi_master_break.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %call5.i = call i32 %19(ptr noundef %1, i32 noundef %5, i8 noundef zeroext 16, i8 noundef zeroext 16) #17
  br label %fsi_master_break.exit

fsi_master_break.exit:                            ; preds = %if.then3.i, %if.end.i.fsi_master_break.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i)
  %tobool33.not = icmp eq i32 %rc.0.i, 0
  br i1 %tobool33.not, label %if.end35, label %fsi_master_break.exit.cleanup_crit_edge

fsi_master_break.exit.cleanup_crit_edge:          ; preds = %fsi_master_break.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end35:                                         ; preds = %fsi_master_break.exit
  %20 = ptrtoint ptr %t_send_delay to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %13, ptr %t_send_delay, align 4
  %21 = ptrtoint ptr %t_echo_delay to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %15, ptr %t_echo_delay, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #17
  %22 = ptrtoint ptr %id3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id3, align 8
  %and.i.i.i = shl i32 %23, 24
  %shl.i.i.i = and i32 %and.i.i.i, 50331648
  %conv.i.i = zext i8 %15 to i32
  %sub.i.i = shl nuw nsw i32 %conv.i.i, 20
  %and.i9.i.i = add nuw nsw i32 %sub.i.i, 15728640
  %shl.i10.i.i = and i32 %and.i9.i.i, 15728640
  %conv3.i.i = zext i8 %13 to i32
  %sub4.i.i = shl nuw nsw i32 %conv3.i.i, 16
  %and.i11.i.i = add nuw nsw i32 %sub4.i.i, 983040
  %shl.i12.i.i = and i32 %and.i11.i.i, 983040
  %or.i.i = or i32 %shl.i12.i.i, %shl.i10.i.i
  %or2.i.i = or i32 %or.i.i, %shl.i.i.i
  %or8.i.i = or i32 %or2.i.i, -1610610688
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or8.i.i, ptr %data.i, align 4
  %25 = ptrtoint ptr %master1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %master1, align 8
  %27 = ptrtoint ptr %link2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %link2, align 4
  %conv.i88 = trunc i32 %23 to i8
  %conv.i8.i = and i32 %23, 255
  call fastcc void @trace_fsi_master_write(ptr noundef %26, i32 noundef %28, i32 noundef %conv.i8.i, i32 noundef 2048, i32 noundef 4, ptr noundef nonnull %data.i) #17
  %write.i.i = getelementptr inbounds %struct.fsi_master, ptr %26, i32 0, i32 6
  %29 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write.i.i, align 4
  %call1.i.i = call i32 %30(ptr noundef %26, i32 noundef %28, i8 noundef zeroext %conv.i88, i32 noundef 2048, ptr noundef nonnull %data.i, i32 noundef 4) #17
  call fastcc void @trace_fsi_master_rw_result(ptr noundef %26, i32 noundef %28, i32 noundef %conv.i8.i, i32 noundef 2048, i32 noundef 4, i1 noundef zeroext true, ptr noundef nonnull %data.i, i32 noundef %call1.i.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool39.not = icmp eq i32 %call1.i.i, 0
  br i1 %tobool39.not, label %if.end41, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end41:                                         ; preds = %if.end35
  %31 = ptrtoint ptr %link_config.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %link_config.i, align 4
  %tobool42.not = icmp eq ptr %32, null
  br i1 %tobool42.not, label %if.end41.if.end48_crit_edge, label %if.then43

if.end41.if.end48_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end48

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  %33 = ptrtoint ptr %t_send_delay to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %t_send_delay, align 4
  %35 = ptrtoint ptr %t_echo_delay to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %t_echo_delay, align 1
  %call47 = call i32 %32(ptr noundef %1, i32 noundef %5, i8 noundef zeroext %34, i8 noundef zeroext %36) #17
  br label %if.end48

if.end48:                                         ; preds = %if.then43, %if.end41.if.end48_crit_edge
  %call49 = call fastcc i32 @fsi_slave_report_and_clear_errors(ptr noundef %slave)
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.end35.cleanup_crit_edge, %fsi_master_break.exit.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call49, %if.end48 ], [ -1, %entry.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %if.end26.cleanup_crit_edge ], [ %rc.0.i, %fsi_master_break.exit.cleanup_crit_edge ], [ %call1.i.i, %if.end35.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #17
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fsi_slave_claim_range(ptr nocapture noundef readonly %slave, i32 noundef %addr, i32 noundef %size) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %size, %addr
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %addr)
  %cmp = icmp ult i32 %add, %addr
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %size2 = getelementptr inbounds %struct.fsi_slave, ptr %slave, i32 0, i32 8
  %0 = ptrtoint ptr %size2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %1)
  %cmp3 = icmp ugt i32 %add, %1
  %. = select i1 %cmp3, i32 -22, i32 0
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @fsi_slave_release_range(ptr nocapture %slave, i32 %addr, i32 %size) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @fsi_cdev_devnode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %mode, ptr nocapture noundef readnone %uid, ptr nocapture noundef readnone %gid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %entry.dev_name.exit_crit_edge ]
  %call1 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.33, ptr noundef %retval.0.i) #17
  ret ptr %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fsi_get_new_minor(ptr nocapture noundef readonly %fdev, i32 noundef %type, ptr nocapture noundef writeonly %out_dev, ptr nocapture noundef writeonly %out_index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %slave = getelementptr inbounds %struct.fsi_device, ptr %fdev, i32 0, i32 4
  %0 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slave, align 4
  %chip_id.i = getelementptr inbounds %struct.fsi_slave, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %4 = icmp ult i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %type)
  %cmp3.i = icmp ult i32 %type, 4
  %or.cond34.i = and i1 %cmp3.i, %4
  br i1 %or.cond34.i, label %if.then.i, label %entry.if.end11.i_crit_edge

entry.if.end11.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11.i

if.then.i:                                        ; preds = %entry
  %shl.i = shl nuw nsw i32 %3, 4
  %or.i = or i32 %shl.i, %type
  %call.i = tail call i32 @ida_alloc_range(ptr noundef nonnull @fsi_minor_ida, i32 noundef %or.i, i32 noundef %or.i, i32 noundef 3264) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp4.i = icmp sgt i32 %call.i, -1
  br i1 %cmp4.i, label %if.then.i.cleanup.sink.split.i_crit_edge, label %if.end.i

if.then.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call.i)
  %cmp8.not.i = icmp eq i32 %call.i, -28
  br i1 %cmp8.not.i, label %if.end.i.if.end11.i_crit_edge, label %if.end.i.__fsi_get_new_minor.exit_crit_edge

if.end.i.__fsi_get_new_minor.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__fsi_get_new_minor.exit

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end.i.if.end11.i_crit_edge, %entry.if.end11.i_crit_edge
  %call12.i = tail call i32 @ida_alloc_range(ptr noundef nonnull @fsi_minor_ida, i32 noundef 64, i32 noundef 4095, i32 noundef 3264) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.end11.i.__fsi_get_new_minor.exit_crit_edge, label %if.end11.i.cleanup.sink.split.i_crit_edge

if.end11.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split.i

if.end11.i.__fsi_get_new_minor.exit_crit_edge:    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__fsi_get_new_minor.exit

cleanup.sink.split.i:                             ; preds = %if.end11.i.cleanup.sink.split.i_crit_edge, %if.then.i.cleanup.sink.split.i_crit_edge
  %call12.sink35.i = phi i32 [ %3, %if.then.i.cleanup.sink.split.i_crit_edge ], [ %call12.i, %if.end11.i.cleanup.sink.split.i_crit_edge ]
  %call12.sink.i = phi i32 [ %call.i, %if.then.i.cleanup.sink.split.i_crit_edge ], [ %call12.i, %if.end11.i.cleanup.sink.split.i_crit_edge ]
  %5 = ptrtoint ptr %out_index to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call12.sink35.i, ptr %out_index, align 4
  %6 = load i32, ptr @fsi_base_dev, align 4
  %add17.i = add i32 %6, %call12.sink.i
  %7 = ptrtoint ptr %out_dev to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add17.i, ptr %out_dev, align 4
  br label %__fsi_get_new_minor.exit

__fsi_get_new_minor.exit:                         ; preds = %cleanup.sink.split.i, %if.end11.i.__fsi_get_new_minor.exit_crit_edge, %if.end.i.__fsi_get_new_minor.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.i.__fsi_get_new_minor.exit_crit_edge ], [ %call12.i, %if.end11.i.__fsi_get_new_minor.exit_crit_edge ], [ 0, %cleanup.sink.split.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fsi_free_minor(i32 noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %dev, 1048575
  tail call void @ida_free(ptr noundef nonnull @fsi_minor_ida, i32 noundef %and) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fsi_master_rescan(ptr noundef %master) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %scan_lock = getelementptr inbounds %struct.fsi_master, ptr %master, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %scan_lock, i32 noundef 0) #17
  %call.i = tail call i32 @device_for_each_child(ptr noundef %master, ptr noundef null, ptr noundef nonnull @fsi_master_remove_slave) #17
  tail call fastcc void @fsi_master_scan(ptr noundef %master)
  tail call void @mutex_unlock(ptr noundef %scan_lock) #17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fsi_master_scan(ptr noundef %master) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %n_links = getelementptr inbounds %struct.fsi_master, ptr %master, i32 0, i32 2
  %0 = ptrtoint ptr %n_links to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_links, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp21 = icmp sgt i32 %1, 0
  br i1 %cmp21, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %link_enable.i = getelementptr inbounds %struct.fsi_master, ptr %master, i32 0, i32 9
  %send_break.i = getelementptr inbounds %struct.fsi_master, ptr %master, i32 0, i32 8
  %link_config.i = getelementptr inbounds %struct.fsi_master, ptr %master, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %link.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %link_enable.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link_enable.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %for.body.if.end6_crit_edge, label %fsi_master_link_enable.exit

for.body.if.end6_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6

fsi_master_link_enable.exit:                      ; preds = %for.body
  %call.i = tail call i32 %3(ptr noundef %master, i32 noundef %link.022, i1 noundef zeroext true) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %fsi_master_link_enable.exit.if.end6_crit_edge, label %do.body

fsi_master_link_enable.exit.if.end6_crit_edge:    ; preds = %fsi_master_link_enable.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6

do.body:                                          ; preds = %fsi_master_link_enable.exit
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsi_master_scan.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsi_master_scan, %if.then5)) #17
          to label %for.inc [label %if.then5], !srcloc !310

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsi_master_scan.__UNIQUE_ID_ddebug283, ptr noundef %master, ptr noundef nonnull @.str.36, i32 noundef %link.022, i32 noundef %call.i) #17
  br label %for.inc

if.end6:                                          ; preds = %fsi_master_link_enable.exit.if.end6_crit_edge, %for.body.if.end6_crit_edge
  tail call fastcc void @trace_fsi_master_break(ptr noundef %master, i32 noundef %link.022) #17
  %4 = ptrtoint ptr %send_break.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %send_break.i, align 4
  %tobool.not.i5 = icmp eq ptr %5, null
  br i1 %tobool.not.i5, label %if.end6.if.end.i_crit_edge, label %if.then.i7

if.end6.if.end.i_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.then.i7:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  %call.i6 = tail call i32 %5(ptr noundef %master, i32 noundef %link.022) #17
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i7, %if.end6.if.end.i_crit_edge
  %rc.0.i = phi i32 [ %call.i6, %if.then.i7 ], [ 0, %if.end6.if.end.i_crit_edge ]
  %6 = ptrtoint ptr %link_config.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %link_config.i, align 4
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %if.end.i.fsi_master_break.exit_crit_edge, label %if.then3.i

if.end.i.fsi_master_break.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fsi_master_break.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %call5.i = tail call i32 %7(ptr noundef %master, i32 noundef %link.022, i8 noundef zeroext 16, i8 noundef zeroext 16) #17
  br label %fsi_master_break.exit

fsi_master_break.exit:                            ; preds = %if.then3.i, %if.end.i.fsi_master_break.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i)
  %tobool8.not = icmp eq i32 %rc.0.i, 0
  br i1 %tobool8.not, label %if.end28, label %if.then9

if.then9:                                         ; preds = %fsi_master_break.exit
  %8 = ptrtoint ptr %link_enable.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %link_enable.i, align 8
  %tobool.not.i9 = icmp eq ptr %9, null
  br i1 %tobool.not.i9, label %if.then9.fsi_master_link_disable.exit_crit_edge, label %if.then.i11

if.then9.fsi_master_link_disable.exit_crit_edge:  ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #19
  br label %fsi_master_link_disable.exit

if.then.i11:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #19
  %call.i10 = tail call i32 %9(ptr noundef %master, i32 noundef %link.022, i1 noundef zeroext false) #17
  br label %fsi_master_link_disable.exit

fsi_master_link_disable.exit:                     ; preds = %if.then.i11, %if.then9.fsi_master_link_disable.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsi_master_scan.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsi_master_scan, %if.then23)) #17
          to label %for.inc [label %if.then23], !srcloc !310

if.then23:                                        ; preds = %fsi_master_link_disable.exit
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsi_master_scan.__UNIQUE_ID_ddebug284, ptr noundef %master, ptr noundef nonnull @.str.37, i32 noundef %link.022, i32 noundef %rc.0.i) #17
  br label %for.inc

if.end28:                                         ; preds = %fsi_master_break.exit
  %call29 = tail call fastcc i32 @fsi_slave_init(ptr noundef %master, i32 noundef %link.022)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end28.for.inc_crit_edge, label %if.then31

if.end28.for.inc_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then31:                                        ; preds = %if.end28
  %10 = ptrtoint ptr %link_enable.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %link_enable.i, align 8
  %tobool.not.i13 = icmp eq ptr %11, null
  br i1 %tobool.not.i13, label %if.then31.for.inc_crit_edge, label %if.then.i15

if.then31.for.inc_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then.i15:                                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #19
  %call.i14 = tail call i32 %11(ptr noundef %master, i32 noundef %link.022, i1 noundef zeroext false) #17
  br label %for.inc

for.inc:                                          ; preds = %if.then.i15, %if.then31.for.inc_crit_edge, %if.end28.for.inc_crit_edge, %if.then23, %fsi_master_link_disable.exit, %if.then5, %do.body
  %inc = add nuw nsw i32 %link.022, 1
  %12 = ptrtoint ptr %n_links to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n_links, align 4
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fsi_master_register(ptr noundef %master) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %scan_lock = getelementptr inbounds %struct.fsi_master, ptr %master, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %scan_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @fsi_master_register.__key) #17
  %call = tail call i32 @ida_alloc_range(ptr noundef nonnull @master_ida, i32 noundef 0, i32 noundef 2147483646, i32 noundef 3264) #17
  %idx = getelementptr inbounds %struct.fsi_master, ptr %master, i32 0, i32 1
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %idx, align 8
  %call2 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %master, ptr noundef nonnull @.str.2, i32 noundef %call) #17
  %class = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 33
  %1 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @fsi_master_class, ptr %class, align 4
  %call5 = tail call i32 @device_register(ptr noundef %master) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx, align 8
  tail call void @ida_free(ptr noundef nonnull @master_ida, i32 noundef %3) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %master, null
  br i1 %tobool.not.i, label %if.end.dev_of_node.exit_crit_edge, label %if.end.i

if.end.dev_of_node.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_of_node.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %of_node.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 27
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 8
  br label %dev_of_node.exit

dev_of_node.exit:                                 ; preds = %if.end.i, %if.end.dev_of_node.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ null, %if.end.dev_of_node.exit_crit_edge ]
  %call.i = tail call ptr @of_find_property(ptr noundef %retval.0.i, ptr noundef nonnull @.str.3, ptr noundef null) #17
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %if.then10, label %dev_of_node.exit.cleanup_crit_edge

dev_of_node.exit.cleanup_crit_edge:               ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then10:                                        ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @mutex_lock_nested(ptr noundef %scan_lock, i32 noundef 0) #17
  tail call fastcc void @fsi_master_scan(ptr noundef %master)
  tail call void @mutex_unlock(ptr noundef %scan_lock) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %dev_of_node.exit.cleanup_crit_edge, %if.then
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fsi_master_unregister(ptr noundef %master) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %idx = getelementptr inbounds %struct.fsi_master, ptr %master, i32 0, i32 1
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp sgt i32 %1, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @ida_free(ptr noundef nonnull @master_ida, i32 noundef %1) #17
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %idx, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %scan_lock = getelementptr inbounds %struct.fsi_master, ptr %master, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %scan_lock, i32 noundef 0) #17
  %call.i = tail call i32 @device_for_each_child(ptr noundef %master, ptr noundef null, ptr noundef nonnull @fsi_master_remove_slave) #17
  tail call void @mutex_unlock(ptr noundef %scan_lock) #17
  tail call void @device_unregister(ptr noundef %master) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fsi_driver_register(ptr noundef %fsi_drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fsi_drv, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end:                                           ; preds = %entry
  %id_table = getelementptr inbounds %struct.fsi_driver, ptr %fsi_drv, i32 0, i32 1
  %0 = ptrtoint ptr %id_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %id_table, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %call = tail call i32 @driver_register(ptr noundef nonnull %fsi_drv) #17
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end3 ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fsi_driver_unregister(ptr noundef %fsi_drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @driver_unregister(ptr noundef %fsi_drv) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_bus_match(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %drv) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %id_table = getelementptr inbounds %struct.fsi_driver, ptr %drv, i32 0, i32 1
  %0 = ptrtoint ptr %id_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %id_table, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %version17 = getelementptr inbounds %struct.fsi_device, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not32 = icmp eq i8 %3, 0
  br i1 %tobool5.not32, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %engine_type7 = getelementptr inbounds %struct.fsi_device, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %engine_type7 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %engine_type7, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %6 = phi i8 [ %3, %for.body.lr.ph ], [ %12, %for.inc.for.body_crit_edge ]
  %id.033 = phi ptr [ %1, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %5)
  %cmp.not = icmp eq i8 %6, %5
  br i1 %cmp.not, label %if.end11, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end11:                                         ; preds = %for.body
  %version = getelementptr inbounds %struct.fsi_device_id, ptr %id.033, i32 0, i32 1
  %7 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp13 = icmp eq i8 %8, 0
  br i1 %cmp13, label %if.end11.cleanup_crit_edge, label %lor.lhs.false

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end11
  %9 = ptrtoint ptr %version17 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %version17, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %10)
  %cmp19 = icmp eq i8 %8, %10
  br i1 %cmp19, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.fsi_device_id, ptr %id.033, i32 1
  %11 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %incdec.ptr, align 1
  %tobool5.not = icmp eq i8 %12, 0
  br i1 %tobool5.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %if.end11.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_init() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @fsi_base_dev, i32 noundef 0, i32 noundef 4096, ptr noundef nonnull @.str.4) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @bus_register(ptr noundef nonnull @fsi_bus_type) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.fail_bus_crit_edge

if.end.fail_bus_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail_bus

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @__class_register(ptr noundef nonnull @fsi_master_class, ptr noundef nonnull @fsi_init.__key) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %fail_class

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

fail_class:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @bus_unregister(ptr noundef nonnull @fsi_bus_type) #17
  br label %fail_bus

fail_bus:                                         ; preds = %fail_class, %if.end.fail_bus_crit_edge
  %rc.0 = phi i32 [ %call1, %if.end.fail_bus_crit_edge ], [ %call5, %fail_class ]
  %0 = load i32, ptr @fsi_base_dev, align 4
  tail call void @unregister_chrdev_region(i32 noundef %0, i32 noundef 4096) #17
  br label %cleanup

cleanup:                                          ; preds = %fail_bus, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %fail_bus ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsi_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @class_unregister(ptr noundef nonnull @fsi_master_class) #17
  tail call void @bus_unregister(ptr noundef nonnull @fsi_bus_type) #17
  %0 = load i32, ptr @fsi_base_dev, align 4
  tail call void @unregister_chrdev_region(i32 noundef %0, i32 noundef 4096) #17
  tail call void @ida_destroy(ptr noundef nonnull @fsi_minor_ida) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_fsi_master_read(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_read, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %master_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %master_idx, align 4
  %link = getelementptr inbounds %struct.trace_event_raw_fsi_master_read, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %link, align 4
  %id = getelementptr inbounds %struct.trace_event_raw_fsi_master_read, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %addr = getelementptr inbounds %struct.trace_event_raw_fsi_master_read, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr, align 4
  %size = getelementptr inbounds %struct.trace_event_raw_fsi_master_read, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.13, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11) #17
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #17
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
define internal i32 @trace_raw_output_fsi_master_write(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_write, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %master_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %master_idx, align 4
  %link = getelementptr inbounds %struct.trace_event_raw_fsi_master_write, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %link, align 4
  %id = getelementptr inbounds %struct.trace_event_raw_fsi_master_write, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %addr = getelementptr inbounds %struct.trace_event_raw_fsi_master_write, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr, align 4
  %size = getelementptr inbounds %struct.trace_event_raw_fsi_master_write, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  %data = getelementptr inbounds %struct.trace_event_raw_fsi_master_write, ptr %1, i32 0, i32 6
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.15, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %11, ptr noundef %data) #17
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_fsi_master_rw_result(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %master_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %master_idx, align 4
  %link = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %link, align 4
  %id = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %addr = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr, align 4
  %size = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  %write = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %write to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %write, align 4, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  %cond = select i1 %tobool.not, ptr @.str.21, ptr @.str.20
  %data = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %1, i32 0, i32 7
  %ret2 = getelementptr inbounds %struct.trace_event_raw_fsi_master_rw_result, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %ret2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ret2, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.19, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, ptr noundef nonnull %cond, i32 noundef %11, ptr noundef %data, i32 noundef %15) #17
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_fsi_master_break(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_break, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %master_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %master_idx, align 4
  %link = getelementptr inbounds %struct.trace_event_raw_fsi_master_break, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %link, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.22, i32 noundef %3, i32 noundef %5) #17
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #17
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
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run5(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run6(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run8(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsi_slave_report_and_clear_errors(ptr noundef %slave) unnamed_addr #0 align 64 {
entry:
  %irq = alloca i32, align 4
  %stat = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %master1 = getelementptr inbounds %struct.fsi_slave, ptr %slave, i32 0, i32 1
  %0 = ptrtoint ptr %master1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq) #17
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %irq, align 4, !annotation !309
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat) #17
  %3 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %stat, align 4, !annotation !309
  %link2 = getelementptr inbounds %struct.fsi_slave, ptr %slave, i32 0, i32 5
  %4 = ptrtoint ptr %link2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %link2, align 4
  %id3 = getelementptr inbounds %struct.fsi_slave, ptr %slave, i32 0, i32 4
  %6 = ptrtoint ptr %id3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id3, align 8
  %conv = trunc i32 %7 to i8
  %conv.i = and i32 %7, 255
  tail call fastcc void @trace_fsi_master_read(ptr noundef %1, i32 noundef %5, i32 noundef %conv.i, i32 noundef 2056, i32 noundef 4) #17
  %read.i = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read.i, align 8
  %call1.i = call i32 %9(ptr noundef %1, i32 noundef %5, i8 noundef zeroext %conv, i32 noundef 2056, ptr noundef nonnull %irq, i32 noundef 4) #17
  call fastcc void @trace_fsi_master_rw_result(ptr noundef %1, i32 noundef %5, i32 noundef %conv.i, i32 noundef 2056, i32 noundef 4, i1 noundef zeroext false, ptr noundef nonnull %irq, i32 noundef %call1.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @trace_fsi_master_read(ptr noundef %1, i32 noundef %5, i32 noundef %conv.i, i32 noundef 2068, i32 noundef 4) #17
  %10 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read.i, align 8
  %call1.i34 = call i32 %11(ptr noundef %1, i32 noundef %5, i8 noundef zeroext %conv, i32 noundef 2068, ptr noundef nonnull %stat, i32 noundef 4) #17
  call fastcc void @trace_fsi_master_rw_result(ptr noundef %1, i32 noundef %5, i32 noundef %conv.i, i32 noundef 2068, i32 noundef 4, i1 noundef zeroext false, ptr noundef nonnull %stat, i32 noundef %call1.i34) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i34)
  %tobool5.not = icmp eq i32 %call1.i34, 0
  br i1 %tobool5.not, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsi_slave_report_and_clear_errors.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsi_slave_report_and_clear_errors, %if.then12)) #17
          to label %do.end [label %if.then12], !srcloc !310

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %12 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stat, align 4
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsi_slave_report_and_clear_errors.__UNIQUE_ID_ddebug273, ptr noundef %slave, ptr noundef nonnull @.str.29, i32 noundef %13, i32 noundef %15) #17
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  call fastcc void @trace_fsi_master_write(ptr noundef %1, i32 noundef %5, i32 noundef %conv.i, i32 noundef 2056, i32 noundef 4, ptr noundef nonnull %irq) #17
  %write.i = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write.i, align 4
  %call1.i36 = call i32 %17(ptr noundef %1, i32 noundef %5, i8 noundef zeroext %conv, i32 noundef 2056, ptr noundef nonnull %irq, i32 noundef 4) #17
  call fastcc void @trace_fsi_master_rw_result(ptr noundef %1, i32 noundef %5, i32 noundef %conv.i, i32 noundef 2056, i32 noundef 4, i1 noundef zeroext true, ptr noundef nonnull %irq, i32 noundef %call1.i36) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i36, %do.end ], [ %call1.i, %entry.cleanup_crit_edge ], [ %call1.i34, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq) #17
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_fsi_master_break(ptr noundef %master, i32 noundef %link) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_break, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_fsi_master_break, %do.body)) #17
          to label %if.end48 [label %do.body], !srcloc !310

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !297) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !307

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !297) #17
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !312
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_break, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %master, i32 noundef %link) #17
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !313
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !313
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !297) #17
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !297) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !307

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !297) #17
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !314
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_break, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_fsi_master_break.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @trace_fsi_master_break.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 123, ptr noundef nonnull @.str.31) #17
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !315
  %38 = tail call i32 @llvm.read_register.i32(metadata !297) #17
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
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_fsi_master_read(ptr noundef %master, i32 noundef %link, i32 noundef %id, i32 noundef %addr, i32 noundef %size) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_read, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_fsi_master_read, %do.body)) #17
          to label %if.end48 [label %do.body], !srcloc !310

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !297) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !307

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !297) #17
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !316
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_read, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %master, i32 noundef %link, i32 noundef %id, i32 noundef %addr, i32 noundef %size) #17
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !317
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !317
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !297) #17
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !297) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !307

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !297) #17
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !314
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_read, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_fsi_master_read.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @trace_fsi_master_read.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 36, ptr noundef nonnull @.str.31) #17
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !315
  %38 = tail call i32 @llvm.read_register.i32(metadata !297) #17
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_fsi_master_rw_result(ptr noundef %master, i32 noundef %link, i32 noundef %id, i32 noundef %addr, i32 noundef %size, i1 noundef zeroext %write, ptr noundef %data, i32 noundef %ret) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_rw_result, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_fsi_master_rw_result, %do.body)) #17
          to label %if.end49 [label %do.body], !srcloc !310

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !297) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !307

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %if.end31

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end70

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !297) #17
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !318
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_rw_result, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end49.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data7.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data7.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %master, i32 noundef %link, i32 noundef %id, i32 noundef %addr, i32 noundef %size, i1 noundef zeroext %write, ptr noundef %data, i32 noundef %ret) #17
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool11.not.i = icmp eq ptr %19, null
  br i1 %tobool11.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !319
  br label %if.end49.sink.split

if.end49.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !319
  br label %if.end49.sink.split

if.end49.sink.split:                              ; preds = %if.end49.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !297) #17
  %and.i.i.i74.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i74.c to ptr
  %preempt_count.i.i75.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i75.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i75.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75.c, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.end49.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !297) #17
  %and.i77 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !307

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div1.i.i.i82 = lshr i32 %27, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i82
  %29 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i84
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i85.not = icmp eq i32 %32, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %33 = tail call i32 @llvm.read_register.i32(metadata !297) #17
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !314
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_rw_result, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_fsi_master_rw_result.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @trace_fsi_master_rw_result.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 106, ptr noundef nonnull @.str.31) #17
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !315
  %38 = tail call i32 @llvm.read_register.i32(metadata !297) #17
  %and.i.i.i.i87 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_fsi_master_write(ptr noundef %master, i32 noundef %link, i32 noundef %id, i32 noundef %addr, i32 noundef %size, ptr noundef %data) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_write, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_fsi_master_write, %do.body)) #17
          to label %if.end48 [label %do.body], !srcloc !310

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !297) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !307

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !297) #17
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !320
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_write, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data7.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data7.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %master, i32 noundef %link, i32 noundef %id, i32 noundef %addr, i32 noundef %size, ptr noundef %data) #17
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool10.not.i = icmp eq ptr %19, null
  br i1 %tobool10.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !321
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !321
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !297) #17
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !297) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !307

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !297) #17
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !314
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_write, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_fsi_master_write.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @trace_fsi_master_write.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 67, ptr noundef nonnull @.str.31) #17
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !315
  %38 = tail call i32 @llvm.read_register.i32(metadata !297) #17
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
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_master_remove_slave(ptr noundef %dev, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @device_for_each_child(ptr noundef %dev, ptr noundef null, ptr noundef nonnull @fsi_slave_remove_device) #17
  %cdev = getelementptr inbounds %struct.fsi_slave, ptr %dev, i32 0, i32 2
  tail call void @cdev_device_del(ptr noundef %cdev, ptr noundef %dev) #17
  tail call void @put_device(ptr noundef %dev) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_slave_remove_device(ptr noundef %dev, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @device_unregister(ptr noundef %dev) #17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsi_slave_init(ptr noundef %master, i32 noundef %link) unnamed_addr #0 align 64 {
entry:
  %data.i = alloca i32, align 4
  %len.i.i = alloca i32, align 4
  %data = alloca i32, align 4
  %llmode = alloca i32, align 4
  %slbus = alloca i32, align 4
  %prop = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #17
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !309
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %llmode) #17
  %1 = ptrtoint ptr %llmode to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %llmode, align 4, !annotation !309
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %slbus) #17
  tail call fastcc void @trace_fsi_master_read(ptr noundef %master, i32 noundef %link, i32 noundef 0, i32 noundef 0, i32 noundef 4) #17
  %read.i = getelementptr inbounds %struct.fsi_master, ptr %master, i32 0, i32 5
  %2 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read.i, align 8
  %call1.i = call i32 %3(ptr noundef %master, i32 noundef %link, i8 noundef zeroext 0, i32 noundef 0, ptr noundef nonnull %data, i32 noundef 4) #17
  call fastcc void @trace_fsi_master_rw_result(ptr noundef %master, i32 noundef %link, i32 noundef 0, i32 noundef 0, i32 noundef 4, i1 noundef zeroext false, ptr noundef nonnull %data, i32 noundef %call1.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %if.end10, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsi_slave_init.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsi_slave_init, %if.then7)) #17
          to label %cleanup [label %if.then7], !srcloc !310

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsi_slave_init.__UNIQUE_ID_ddebug280, ptr noundef %master, ptr noundef nonnull @.str.39, i32 noundef %link, i32 noundef 0, i32 noundef %call1.i) #17
  br label %cleanup

if.end10:                                         ; preds = %entry
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 4
  %conv11 = zext i32 %5 to i64
  %call12 = call zeroext i8 @crc4(i8 noundef zeroext 0, i64 noundef %conv11, i32 noundef 32) #17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call12)
  %tobool13.not = icmp eq i8 %call12, 0
  br i1 %tobool13.not, label %do.body21, label %do.end17

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %master, ptr noundef nonnull @.str.40, i32 noundef %link, i32 noundef 0) #20
  br label %cleanup

do.body21:                                        ; preds = %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsi_slave_init.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsi_slave_init, %if.then33)) #17
          to label %do.end38 [label %if.then33], !srcloc !310

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #19
  %idx = getelementptr inbounds %struct.fsi_master, ptr %master, i32 0, i32 1
  %6 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idx, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsi_slave_init.__UNIQUE_ID_ddebug281, ptr noundef %master, ptr noundef nonnull @.str.43, i32 noundef %5, i32 noundef %7, i32 noundef %link, i32 noundef 0) #17
  br label %do.end38

do.end38:                                         ; preds = %if.then33, %do.body21
  %flags = getelementptr inbounds %struct.fsi_master, ptr %master, i32 0, i32 3
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool39.not = icmp eq i32 %and, 0
  br i1 %tobool39.not, label %do.end38.if.end50_crit_edge, label %if.then40

do.end38.if.end50_crit_edge:                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end50

if.then40:                                        ; preds = %do.end38
  %10 = ptrtoint ptr %llmode to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %llmode, align 4
  call fastcc void @trace_fsi_master_write(ptr noundef %master, i32 noundef %link, i32 noundef 0, i32 noundef 2304, i32 noundef 4, ptr noundef nonnull %llmode) #17
  %write.i = getelementptr inbounds %struct.fsi_master, ptr %master, i32 0, i32 6
  %11 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write.i, align 4
  %call1.i7 = call i32 %12(ptr noundef %master, i32 noundef %link, i8 noundef zeroext 0, i32 noundef 2304, ptr noundef nonnull %llmode, i32 noundef 4) #17
  call fastcc void @trace_fsi_master_rw_result(ptr noundef %master, i32 noundef %link, i32 noundef 0, i32 noundef 2304, i32 noundef 4, i1 noundef zeroext true, ptr noundef nonnull %llmode, i32 noundef %call1.i7) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7)
  %tobool42.not = icmp eq i32 %call1.i7, 0
  br i1 %tobool42.not, label %if.then40.if.end50_crit_edge, label %do.end46

if.then40.if.end50_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end50

do.end46:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %master, ptr noundef nonnull @.str.45, i32 noundef %link, i32 noundef 0, i32 noundef %call1.i7) #20
  br label %if.end50

if.end50:                                         ; preds = %do.end46, %if.then40.if.end50_crit_edge, %do.end38.if.end50_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 1120) #21
  %tobool52.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool52.not, label %if.end50.cleanup_crit_edge, label %if.end54

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end54:                                         ; preds = %if.end50
  %call57 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.47, i32 noundef %link, i32 noundef 0) #17
  %type = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @cfam_type, ptr %type, align 4
  %parent = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %master, ptr %parent, align 8
  %tobool.not.i.i = icmp eq ptr %master, null
  br i1 %tobool.not.i.i, label %if.end54.fsi_slave_find_of_node.exit_crit_edge, label %dev_of_node.exit.i

if.end54.fsi_slave_find_of_node.exit_crit_edge:   ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #19
  br label %fsi_slave_find_of_node.exit

dev_of_node.exit.i:                               ; preds = %if.end54
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 27
  %16 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node.i.i, align 8
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %dev_of_node.exit.i.fsi_slave_find_of_node.exit_crit_edge, label %if.end.i

dev_of_node.exit.i.fsi_slave_find_of_node.exit_crit_edge: ; preds = %dev_of_node.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fsi_slave_find_of_node.exit

if.end.i:                                         ; preds = %dev_of_node.exit.i
  %call1.i8 = call ptr @of_get_next_child(ptr noundef nonnull %17, ptr noundef null) #17
  %cmp.not7.i = icmp eq ptr %call1.i8, null
  br i1 %cmp.not7.i, label %if.end.i.fsi_slave_find_of_node.exit_crit_edge, label %for.body.lr.ph.i

if.end.i.fsi_slave_find_of_node.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fsi_slave_find_of_node.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %conv.i.i = sext i32 %link to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %np.08.i = phi ptr [ %call1.i8, %for.body.lr.ph.i ], [ %call5.i, %for.inc.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i.i) #17
  %18 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %len.i.i, align 4, !annotation !309
  %call.i.i = call i32 @of_n_addr_cells(ptr noundef nonnull %np.08.i) #17
  %call1.i.i = call i32 @of_n_size_cells(ptr noundef nonnull %np.08.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.not.i.i = icmp eq i32 %call1.i.i, 0
  %or.cond.i.i = select i1 %cmp.not.i.i, i1 %cmp2.not.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end.i2.i, label %for.body.i.fsi_slave_node_matches.exit.thread.i_crit_edge

for.body.i.fsi_slave_node_matches.exit.thread.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fsi_slave_node_matches.exit.thread.i

if.end.i2.i:                                      ; preds = %for.body.i
  %call3.i.i = call ptr @of_get_property(ptr noundef nonnull %np.08.i, ptr noundef nonnull @.str.72, ptr noundef nonnull %len.i.i) #17
  %tobool.not.i1.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not.i1.i, label %if.end.i2.i.fsi_slave_node_matches.exit.thread.i_crit_edge, label %lor.lhs.false4.i.i

if.end.i2.i.fsi_slave_node_matches.exit.thread.i_crit_edge: ; preds = %if.end.i2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fsi_slave_node_matches.exit.thread.i

lor.lhs.false4.i.i:                               ; preds = %if.end.i2.i
  %19 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %20)
  %cmp5.not.i.i = icmp eq i32 %20, 8
  br i1 %cmp5.not.i.i, label %if.end7.i.i, label %lor.lhs.false4.i.i.fsi_slave_node_matches.exit.thread.i_crit_edge

lor.lhs.false4.i.i.fsi_slave_node_matches.exit.thread.i_crit_edge: ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fsi_slave_node_matches.exit.thread.i

if.end7.i.i:                                      ; preds = %lor.lhs.false4.i.i
  %21 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %call3.i.i, align 4
  %conv.i.i.i = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv.i.i.i, i64 %conv.i.i)
  %cmp9.i.i = icmp eq i64 %conv.i.i.i, %conv.i.i
  br i1 %cmp9.i.i, label %fsi_slave_node_matches.exit.i, label %if.end7.i.i.fsi_slave_node_matches.exit.thread.i_crit_edge

if.end7.i.i.fsi_slave_node_matches.exit.thread.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fsi_slave_node_matches.exit.thread.i

fsi_slave_node_matches.exit.thread.i:             ; preds = %if.end7.i.i.fsi_slave_node_matches.exit.thread.i_crit_edge, %lor.lhs.false4.i.i.fsi_slave_node_matches.exit.thread.i_crit_edge, %if.end.i2.i.fsi_slave_node_matches.exit.thread.i_crit_edge, %for.body.i.fsi_slave_node_matches.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #17
  br label %for.inc.i

fsi_slave_node_matches.exit.i:                    ; preds = %if.end7.i.i
  %add.ptr.i.i = getelementptr i32, ptr %call3.i.i, i32 1
  %23 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp13.i.i = icmp eq i32 %24, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #17
  br i1 %cmp13.i.i, label %fsi_slave_node_matches.exit.i.fsi_slave_find_of_node.exit_crit_edge, label %fsi_slave_node_matches.exit.i.for.inc.i_crit_edge

fsi_slave_node_matches.exit.i.for.inc.i_crit_edge: ; preds = %fsi_slave_node_matches.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

fsi_slave_node_matches.exit.i.fsi_slave_find_of_node.exit_crit_edge: ; preds = %fsi_slave_node_matches.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fsi_slave_find_of_node.exit

for.inc.i:                                        ; preds = %fsi_slave_node_matches.exit.i.for.inc.i_crit_edge, %fsi_slave_node_matches.exit.thread.i
  %call5.i = call ptr @of_get_next_child(ptr noundef nonnull %17, ptr noundef nonnull %np.08.i) #17
  %cmp.not.i = icmp eq ptr %call5.i, null
  br i1 %cmp.not.i, label %for.inc.i.fsi_slave_find_of_node.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.inc.i.fsi_slave_find_of_node.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fsi_slave_find_of_node.exit

fsi_slave_find_of_node.exit:                      ; preds = %for.inc.i.fsi_slave_find_of_node.exit_crit_edge, %fsi_slave_node_matches.exit.i.fsi_slave_find_of_node.exit_crit_edge, %if.end.i.fsi_slave_find_of_node.exit_crit_edge, %dev_of_node.exit.i.fsi_slave_find_of_node.exit_crit_edge, %if.end54.fsi_slave_find_of_node.exit_crit_edge
  %retval.0.i9 = phi ptr [ null, %dev_of_node.exit.i.fsi_slave_find_of_node.exit_crit_edge ], [ null, %if.end54.fsi_slave_find_of_node.exit_crit_edge ], [ null, %if.end.i.fsi_slave_find_of_node.exit_crit_edge ], [ null, %for.inc.i.fsi_slave_find_of_node.exit_crit_edge ], [ %np.08.i, %fsi_slave_node_matches.exit.i.fsi_slave_find_of_node.exit_crit_edge ]
  %of_node = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 27
  %25 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %retval.0.i9, ptr %of_node, align 8
  %release = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 35
  %26 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @fsi_slave_release, ptr %release, align 4
  call void @device_initialize(ptr noundef nonnull %call7.i.i) #17
  %cfam_id65 = getelementptr inbounds %struct.fsi_slave, ptr %call7.i.i, i32 0, i32 6
  %27 = ptrtoint ptr %cfam_id65 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %5, ptr %cfam_id65, align 8
  %master66 = getelementptr inbounds %struct.fsi_slave, ptr %call7.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %master66 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %master, ptr %master66, align 8
  %link67 = getelementptr inbounds %struct.fsi_slave, ptr %call7.i.i, i32 0, i32 5
  %29 = ptrtoint ptr %link67 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %link, ptr %link67, align 4
  %id69 = getelementptr inbounds %struct.fsi_slave, ptr %call7.i.i, i32 0, i32 4
  %30 = ptrtoint ptr %id69 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %id69, align 8
  %size = getelementptr inbounds %struct.fsi_slave, ptr %call7.i.i, i32 0, i32 8
  %31 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 8388608, ptr %size, align 8
  %t_send_delay = getelementptr inbounds %struct.fsi_slave, ptr %call7.i.i, i32 0, i32 9
  %32 = ptrtoint ptr %t_send_delay to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 16, ptr %t_send_delay, align 4
  %t_echo_delay = getelementptr inbounds %struct.fsi_slave, ptr %call7.i.i, i32 0, i32 10
  %33 = ptrtoint ptr %t_echo_delay to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 16, ptr %t_echo_delay, align 1
  %chip_id = getelementptr inbounds %struct.fsi_slave, ptr %call7.i.i, i32 0, i32 7
  %34 = ptrtoint ptr %chip_id to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %chip_id, align 4
  %35 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %of_node, align 8
  %tobool72.not = icmp eq ptr %36, null
  br i1 %tobool72.not, label %fsi_slave_find_of_node.exit.if.end81_crit_edge, label %if.then73

fsi_slave_find_of_node.exit.if.end81_crit_edge:   ; preds = %fsi_slave_find_of_node.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end81

if.then73:                                        ; preds = %fsi_slave_find_of_node.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop) #17
  %37 = ptrtoint ptr %prop to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %prop, align 4, !annotation !309
  %call.i.i10 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %36, ptr noundef nonnull @.str.48, ptr noundef nonnull %prop, i32 noundef 1, i32 noundef 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i10)
  %tobool77.not = icmp sgt i32 %call.i.i10, -1
  br i1 %tobool77.not, label %if.then78, label %if.then73.if.end80_crit_edge

if.then73.if.end80_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end80

if.then78:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #19
  %38 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %prop, align 4
  %40 = ptrtoint ptr %chip_id to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %chip_id, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %if.then73.if.end80_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop) #17
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %fsi_slave_find_of_node.exit.if.end81_crit_edge
  %41 = ptrtoint ptr %slbus to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -2147483648, ptr %slbus, align 4
  call fastcc void @trace_fsi_master_write(ptr noundef %master, i32 noundef %link, i32 noundef 0, i32 noundef 2096, i32 noundef 4, ptr noundef nonnull %slbus) #17
  %write.i11 = getelementptr inbounds %struct.fsi_master, ptr %master, i32 0, i32 6
  %42 = ptrtoint ptr %write.i11 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write.i11, align 4
  %call1.i12 = call i32 %43(ptr noundef %master, i32 noundef %link, i8 noundef zeroext 0, i32 noundef 2096, ptr noundef nonnull %slbus, i32 noundef 4) #17
  call fastcc void @trace_fsi_master_rw_result(ptr noundef %master, i32 noundef %link, i32 noundef 0, i32 noundef 2096, i32 noundef 4, i1 noundef zeroext true, ptr noundef nonnull %slbus, i32 noundef %call1.i12) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12)
  %tobool83.not = icmp eq i32 %call1.i12, 0
  br i1 %tobool83.not, label %if.end81.if.end90_crit_edge, label %do.end87

if.end81.if.end90_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end90

do.end87:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %master, ptr noundef nonnull @.str.50, i32 noundef %link, i32 noundef 0, i32 noundef %call1.i12) #20
  br label %if.end90

if.end90:                                         ; preds = %do.end87, %if.end81.if.end90_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #17
  %44 = ptrtoint ptr %id69 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %id69, align 8
  %46 = ptrtoint ptr %t_send_delay to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %t_send_delay, align 4
  %48 = ptrtoint ptr %t_echo_delay to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %t_echo_delay, align 1
  %and.i.i.i = shl i32 %45, 24
  %shl.i.i.i = and i32 %and.i.i.i, 50331648
  %conv.i.i14 = zext i8 %49 to i32
  %sub.i.i = shl nuw nsw i32 %conv.i.i14, 20
  %and.i9.i.i = add nuw nsw i32 %sub.i.i, 15728640
  %shl.i10.i.i = and i32 %and.i9.i.i, 15728640
  %conv3.i.i = zext i8 %47 to i32
  %sub4.i.i = shl nuw nsw i32 %conv3.i.i, 16
  %and.i11.i.i = add nuw nsw i32 %sub4.i.i, 983040
  %shl.i12.i.i = and i32 %and.i11.i.i, 983040
  %or.i.i = or i32 %shl.i.i.i, %shl.i12.i.i
  %or2.i.i = or i32 %or.i.i, %shl.i10.i.i
  %or8.i.i = or i32 %or2.i.i, -1610610688
  %50 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or8.i.i, ptr %data.i, align 4
  %51 = ptrtoint ptr %master66 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %master66, align 8
  %53 = ptrtoint ptr %link67 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %link67, align 4
  %conv.i = trunc i32 %45 to i8
  %conv.i8.i = and i32 %45, 255
  call fastcc void @trace_fsi_master_write(ptr noundef %52, i32 noundef %54, i32 noundef %conv.i8.i, i32 noundef 2048, i32 noundef 4, ptr noundef nonnull %data.i) #17
  %write.i.i = getelementptr inbounds %struct.fsi_master, ptr %52, i32 0, i32 6
  %55 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write.i.i, align 4
  %call1.i.i15 = call i32 %56(ptr noundef %52, i32 noundef %54, i8 noundef zeroext %conv.i, i32 noundef 2048, ptr noundef nonnull %data.i, i32 noundef 4) #17
  call fastcc void @trace_fsi_master_rw_result(ptr noundef %52, i32 noundef %54, i32 noundef %conv.i8.i, i32 noundef 2048, i32 noundef 4, i1 noundef zeroext true, ptr noundef nonnull %data.i, i32 noundef %call1.i.i15) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i15)
  %tobool92.not = icmp eq i32 %call1.i.i15, 0
  br i1 %tobool92.not, label %if.end99, label %do.end96

do.end96:                                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %master, ptr noundef nonnull @.str.53, i32 noundef %link, i32 noundef 0, i32 noundef %call1.i.i15) #20
  br label %err_free

if.end99:                                         ; preds = %if.end90
  %devt = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 29
  %cdev_idx = getelementptr inbounds %struct.fsi_slave, ptr %call7.i.i, i32 0, i32 3
  %57 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %58)
  %59 = icmp ult i32 %58, 16
  br i1 %59, label %if.then.i, label %if.end99.if.end11.i_crit_edge

if.end99.if.end11.i_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11.i

if.then.i:                                        ; preds = %if.end99
  %shl.i = shl nuw nsw i32 %58, 4
  %call.i = call i32 @ida_alloc_range(ptr noundef nonnull @fsi_minor_ida, i32 noundef %shl.i, i32 noundef %shl.i, i32 noundef 3264) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp4.i = icmp sgt i32 %call.i, -1
  br i1 %cmp4.i, label %if.then.i.if.end104_crit_edge, label %if.end.i16

if.then.i.if.end104_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end104

if.end.i16:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call.i)
  %cmp8.not.i = icmp eq i32 %call.i, -28
  br i1 %cmp8.not.i, label %if.end.i16.if.end11.i_crit_edge, label %if.end.i16.err_free_crit_edge

if.end.i16.err_free_crit_edge:                    ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_free

if.end.i16.if.end11.i_crit_edge:                  ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end.i16.if.end11.i_crit_edge, %if.end99.if.end11.i_crit_edge
  %call12.i = call i32 @ida_alloc_range(ptr noundef nonnull @fsi_minor_ida, i32 noundef 64, i32 noundef 4095, i32 noundef 3264) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.end11.i.err_free_crit_edge, label %if.end11.i.if.end104_crit_edge

if.end11.i.if.end104_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end104

if.end11.i.err_free_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_free

if.end104:                                        ; preds = %if.end11.i.if.end104_crit_edge, %if.then.i.if.end104_crit_edge
  %call12.sink35.i = phi i32 [ %58, %if.then.i.if.end104_crit_edge ], [ %call12.i, %if.end11.i.if.end104_crit_edge ]
  %call12.sink.i = phi i32 [ %call.i, %if.then.i.if.end104_crit_edge ], [ %call12.i, %if.end11.i.if.end104_crit_edge ]
  %60 = ptrtoint ptr %cdev_idx to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %call12.sink35.i, ptr %cdev_idx, align 4
  %61 = load i32, ptr @fsi_base_dev, align 4
  %add17.i = add i32 %61, %call12.sink.i
  %62 = ptrtoint ptr %devt to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add17.i, ptr %devt, align 8
  %cdev = getelementptr inbounds %struct.fsi_slave, ptr %call7.i.i, i32 0, i32 2
  call void @cdev_init(ptr noundef %cdev, ptr noundef nonnull @cfam_fops) #17
  %call107 = call i32 @cdev_device_add(ptr noundef %cdev, ptr noundef nonnull %call7.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.end114, label %do.end112

do.end112:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.56, i32 noundef %call107) #20
  %63 = ptrtoint ptr %devt to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %devt, align 8
  %and.i = and i32 %64, 1048575
  call void @ida_free(ptr noundef nonnull @fsi_minor_ida, i32 noundef %and.i) #17
  br label %err_free

if.end114:                                        ; preds = %if.end104
  %link_config = getelementptr inbounds %struct.fsi_master, ptr %master, i32 0, i32 10
  %65 = ptrtoint ptr %link_config to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %link_config, align 4
  %tobool115.not = icmp eq ptr %66, null
  br i1 %tobool115.not, label %if.end114.if.end121_crit_edge, label %if.then116

if.end114.if.end121_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end121

if.then116:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #19
  %67 = ptrtoint ptr %t_send_delay to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %t_send_delay, align 4
  %69 = ptrtoint ptr %t_echo_delay to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %t_echo_delay, align 1
  %call120 = call i32 %66(ptr noundef %master, i32 noundef %link, i8 noundef zeroext %68, i8 noundef zeroext %70) #17
  br label %if.end121

if.end121:                                        ; preds = %if.then116, %if.end114.if.end121_crit_edge
  %call123 = call i32 @device_create_bin_file(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @fsi_slave_raw_attr) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end121.if.end130_crit_edge, label %do.end128

if.end121.if.end130_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end130

do.end128:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.60, i32 noundef %call123) #20
  br label %if.end130

if.end130:                                        ; preds = %do.end128, %if.end121.if.end130_crit_edge
  %call131 = call fastcc i32 @fsi_slave_scan(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.end130.cleanup_crit_edge, label %do.body134

if.end130.cleanup_crit_edge:                      ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body134:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsi_slave_init.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsi_slave_init, %if.then146)) #17
          to label %cleanup [label %if.then146], !srcloc !310

if.then146:                                       ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsi_slave_init.__UNIQUE_ID_ddebug282, ptr noundef %master, ptr noundef nonnull @.str.62, i32 noundef %call131) #17
  br label %cleanup

err_free:                                         ; preds = %do.end112, %if.end11.i.err_free_crit_edge, %if.end.i16.err_free_crit_edge, %do.end96
  %rc.0 = phi i32 [ %call1.i.i15, %do.end96 ], [ %call107, %do.end112 ], [ %call12.i, %if.end11.i.err_free_crit_edge ], [ %call.i, %if.end.i16.err_free_crit_edge ]
  %71 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %of_node, align 8
  call void @of_node_put(ptr noundef %72) #17
  call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.then146, %do.body134, %if.end130.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %do.end17, %if.then7, %do.body
  %retval.0 = phi i32 [ -5, %do.end17 ], [ %rc.0, %err_free ], [ -19, %if.then7 ], [ -12, %if.end50.cleanup_crit_edge ], [ 0, %if.then146 ], [ 0, %if.end130.cleanup_crit_edge ], [ -19, %do.body ], [ 0, %do.body134 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slbus) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %llmode) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @crc4(i8 noundef zeroext, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsi_slave_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %devt = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 29
  %0 = ptrtoint ptr %devt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %devt, align 8
  %and.i = and i32 %1, 1048575
  tail call void @ida_free(ptr noundef nonnull @fsi_minor_ida, i32 noundef %and.i) #17
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  tail call void @of_node_put(ptr noundef %3) #17
  tail call void @kfree(ptr noundef %dev) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsi_slave_scan(ptr noundef %slave) unnamed_addr #0 align 64 {
entry:
  %len.i.i = alloca i32, align 4
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.fsi_slave, ptr %slave, i32 0, i32 1
  %link = getelementptr inbounds %struct.fsi_slave, ptr %slave, i32 0, i32 5
  %id = getelementptr inbounds %struct.fsi_slave, ptr %slave, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %engine_addr.0139 = phi i32 [ 3072, %entry ], [ %add67, %cleanup.for.body_crit_edge ]
  %i.0138 = phi i32 [ 2, %entry ], [ %add, %cleanup.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #17
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !309
  %add = add nuw nsw i32 %i.0138, 1
  %mul = shl nuw nsw i32 %add, 2
  %call = call i32 @fsi_slave_read(ptr noundef %slave, i32 noundef %mul, ptr noundef nonnull %data, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %slave, ptr noundef nonnull @.str.77) #20
  br label %cleanup.thread

if.end:                                           ; preds = %for.body
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %data, align 4
  %conv = zext i32 %2 to i64
  %call2 = call zeroext i8 @crc4(i8 noundef zeroext 0, i64 noundef %conv, i32 noundef 32) #17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call2)
  %tobool3.not = icmp eq i8 %call2, 0
  br i1 %tobool3.not, label %if.end9, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %slave, ptr noundef nonnull @.str.80, i32 noundef %i.0138) #20
  br label %cleanup.thread

if.end9:                                          ; preds = %if.end
  %and = lshr i32 %2, 16
  %and11 = lshr i32 %2, 12
  %3 = trunc i32 %and11 to i8
  %conv13 = and i8 %3, 15
  %and14 = lshr i32 %2, 4
  %conv16 = trunc i32 %and14 to i8
  %4 = and i32 %2, 4080
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp18.not = icmp eq i32 %4, 0
  br i1 %cmp18.not, label %if.end9.if.end64_crit_edge, label %land.lhs.true

if.end9.if.end64_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end64

land.lhs.true:                                    ; preds = %if.end9
  %conv20 = and i32 %and, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv20)
  %cmp21.not = icmp eq i32 %conv20, 0
  br i1 %cmp21.not, label %land.lhs.true.if.end64_crit_edge, label %if.then23

land.lhs.true.if.end64_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end64

if.then23:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 944) #21
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then23.cleanup.thread_crit_edge, label %if.end27

if.then23.cleanup.thread_crit_edge:               ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread

if.end27:                                         ; preds = %if.then23
  %parent.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %slave, ptr %parent.i, align 8
  %bus.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %bus.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @fsi_bus_type, ptr %bus.i, align 8
  %release.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 35
  %8 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @fsi_device_release, ptr %release.i, align 4
  %slave28 = getelementptr inbounds %struct.fsi_device, ptr %call7.i.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %slave28 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %slave, ptr %slave28, align 4
  %engine_type = getelementptr inbounds %struct.fsi_device, ptr %call7.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %engine_type to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv16, ptr %engine_type, align 8
  %version29 = getelementptr inbounds %struct.fsi_device, ptr %call7.i.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %version29 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv13, ptr %version29, align 1
  %conv30 = trunc i32 %i.0138 to i8
  %unit = getelementptr inbounds %struct.fsi_device, ptr %call7.i.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %unit to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv30, ptr %unit, align 2
  %addr = getelementptr inbounds %struct.fsi_device, ptr %call7.i.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %engine_addr.0139, ptr %addr, align 8
  %mul32 = shl nuw nsw i32 %conv20, 10
  %size = getelementptr inbounds %struct.fsi_device, ptr %call7.i.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul32, ptr %size, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsi_slave_scan.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsi_slave_scan, %if.then38)) #17
          to label %do.end49 [label %if.then38], !srcloc !310

if.then38:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #19
  %15 = ptrtoint ptr %unit to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %unit, align 2
  %conv41 = zext i8 %16 to i32
  %17 = ptrtoint ptr %engine_type to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %engine_type, align 8
  %conv43 = zext i8 %18 to i32
  %conv44 = zext i8 %conv13 to i32
  %19 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %addr, align 8
  %21 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsi_slave_scan.__UNIQUE_ID_ddebug275, ptr noundef %slave, ptr noundef nonnull @.str.82, i32 noundef %conv41, i32 noundef %conv43, i32 noundef %conv44, i32 noundef %20, i32 noundef %22) #17
  br label %do.end49

do.end49:                                         ; preds = %if.then38, %if.end27
  %23 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %master, align 8
  %idx = getelementptr inbounds %struct.fsi_master, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %idx, align 8
  %27 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %link, align 4
  %29 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id, align 8
  %sub = add nsw i32 %i.0138, -2
  %call51 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.83, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %sub) #17
  %31 = ptrtoint ptr %slave28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %slave28, align 4
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %do.end49.fsi_device_find_of_node.exit_crit_edge, label %dev_of_node.exit.i

do.end49.fsi_device_find_of_node.exit_crit_edge:  ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #19
  br label %fsi_device_find_of_node.exit

dev_of_node.exit.i:                               ; preds = %do.end49
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 27
  %33 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %of_node.i.i, align 8
  %tobool.not.i121 = icmp eq ptr %34, null
  br i1 %tobool.not.i121, label %dev_of_node.exit.i.fsi_device_find_of_node.exit_crit_edge, label %if.end.i122

dev_of_node.exit.i.fsi_device_find_of_node.exit_crit_edge: ; preds = %dev_of_node.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fsi_device_find_of_node.exit

if.end.i122:                                      ; preds = %dev_of_node.exit.i
  %call2.i = call ptr @of_get_next_child(ptr noundef nonnull %34, ptr noundef null) #17
  %cmp.not24.i = icmp eq ptr %call2.i, null
  br i1 %cmp.not24.i, label %if.end.i122.fsi_device_find_of_node.exit_crit_edge, label %if.end.i122.for.body.i_crit_edge

if.end.i122.for.body.i_crit_edge:                 ; preds = %if.end.i122
  br label %for.body.i

if.end.i122.fsi_device_find_of_node.exit_crit_edge: ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #19
  br label %fsi_device_find_of_node.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i122.for.body.i_crit_edge
  %np.025.i = phi ptr [ %call7.i, %for.inc.i.for.body.i_crit_edge ], [ %call2.i, %if.end.i122.for.body.i_crit_edge ]
  %35 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %addr, align 8
  %37 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %size, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i.i) #17
  %39 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %len.i.i, align 4, !annotation !309
  %call.i.i = call i32 @of_n_addr_cells(ptr noundef nonnull %np.025.i) #17
  %call1.i.i = call i32 @of_n_size_cells(ptr noundef nonnull %np.025.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i.i)
  %cmp2.not.i.i = icmp eq i32 %call1.i.i, 1
  %or.cond.i.i = select i1 %cmp.not.i.i, i1 %cmp2.not.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end.i18.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

if.end.i18.i:                                     ; preds = %for.body.i
  %call3.i.i = call ptr @of_get_property(ptr noundef nonnull %np.025.i, ptr noundef nonnull @.str.72, ptr noundef nonnull %len.i.i) #17
  %tobool.not.i17.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not.i17.i, label %if.end.i18.i.for.inc.i_crit_edge, label %lor.lhs.false4.i.i

if.end.i18.i.for.inc.i_crit_edge:                 ; preds = %if.end.i18.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

lor.lhs.false4.i.i:                               ; preds = %if.end.i18.i
  %40 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %41)
  %cmp5.not.i.i = icmp eq i32 %41, 8
  br i1 %cmp5.not.i.i, label %if.end7.i.i, label %lor.lhs.false4.i.i.for.inc.i_crit_edge

lor.lhs.false4.i.i.for.inc.i_crit_edge:           ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

if.end7.i.i:                                      ; preds = %lor.lhs.false4.i.i
  %42 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %call3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %36)
  %cmp9.not.i.i = icmp eq i32 %43, %36
  br i1 %cmp9.not.i.i, label %if.end12.i.i, label %if.end7.i.i.for.inc.i_crit_edge

if.end7.i.i.for.inc.i_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

if.end12.i.i:                                     ; preds = %if.end7.i.i
  %add.ptr.i.i = getelementptr i32, ptr %call3.i.i, i32 1
  %44 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %38)
  %cmp15.not.i.i = icmp eq i32 %45, %38
  br i1 %cmp15.not.i.i, label %if.end12.i.i.fsi_device_node_matches.exit.i_crit_edge, label %of_node_full_name.exit.i.i

if.end12.i.i.fsi_device_node_matches.exit.i_crit_edge: ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fsi_device_node_matches.exit.i

of_node_full_name.exit.i.i:                       ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %full_name.i.i.i = getelementptr inbounds %struct.device_node, ptr %np.025.i, i32 0, i32 2
  %46 = ptrtoint ptr %full_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %full_name.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.87, ptr noundef %47, i32 noundef %45, i32 noundef %38) #20
  br label %fsi_device_node_matches.exit.i

fsi_device_node_matches.exit.i:                   ; preds = %of_node_full_name.exit.i.i, %if.end12.i.i.fsi_device_node_matches.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #17
  br label %fsi_device_find_of_node.exit

for.inc.i:                                        ; preds = %if.end7.i.i.for.inc.i_crit_edge, %lor.lhs.false4.i.i.for.inc.i_crit_edge, %if.end.i18.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #17
  %call7.i = call ptr @of_get_next_child(ptr noundef nonnull %34, ptr noundef nonnull %np.025.i) #17
  %cmp.not.i = icmp eq ptr %call7.i, null
  br i1 %cmp.not.i, label %for.inc.i.fsi_device_find_of_node.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.inc.i.fsi_device_find_of_node.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fsi_device_find_of_node.exit

fsi_device_find_of_node.exit:                     ; preds = %for.inc.i.fsi_device_find_of_node.exit_crit_edge, %fsi_device_node_matches.exit.i, %if.end.i122.fsi_device_find_of_node.exit_crit_edge, %dev_of_node.exit.i.fsi_device_find_of_node.exit_crit_edge, %do.end49.fsi_device_find_of_node.exit_crit_edge
  %retval.0.i123 = phi ptr [ null, %dev_of_node.exit.i.fsi_device_find_of_node.exit_crit_edge ], [ %np.025.i, %fsi_device_node_matches.exit.i ], [ null, %do.end49.fsi_device_find_of_node.exit_crit_edge ], [ null, %if.end.i122.fsi_device_find_of_node.exit_crit_edge ], [ null, %for.inc.i.fsi_device_find_of_node.exit_crit_edge ]
  %of_node = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 27
  %48 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %retval.0.i123, ptr %of_node, align 8
  %call55 = call i32 @device_register(ptr noundef nonnull %call7.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %fsi_device_find_of_node.exit.if.end64_crit_edge, label %do.end60

fsi_device_find_of_node.exit.if.end64_crit_edge:  ; preds = %fsi_device_find_of_node.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end64

do.end60:                                         ; preds = %fsi_device_find_of_node.exit
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %slave, ptr noundef nonnull @.str.85, i32 noundef %call55) #20
  call void @put_device(ptr noundef nonnull %call7.i.i.i) #17
  br label %if.end64

if.end64:                                         ; preds = %do.end60, %fsi_device_find_of_node.exit.if.end64_crit_edge, %land.lhs.true.if.end64_crit_edge, %if.end9.if.end64_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %tobool69.not = icmp sgt i32 %2, -1
  br i1 %tobool69.not, label %cleanup.thread128, label %cleanup

cleanup.thread128:                                ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #17
  br label %cleanup78

cleanup.thread:                                   ; preds = %if.then23.cleanup.thread_crit_edge, %do.end7, %do.end
  %retval.1.ph = phi i32 [ -1, %do.end7 ], [ -1, %do.end ], [ -12, %if.then23.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #17
  br label %cleanup78

cleanup:                                          ; preds = %if.end64
  %conv65 = shl nuw nsw i32 %and, 10
  %mul66 = and i32 %conv65, 261120
  %add67 = add i32 %mul66, %engine_addr.0139
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #17
  %exitcond.not = icmp eq i32 %add, 256
  br i1 %exitcond.not, label %cleanup.cleanup78_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

cleanup.cleanup78_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup78

cleanup78:                                        ; preds = %cleanup.cleanup78_crit_edge, %cleanup.thread, %cleanup.thread128
  %retval.2 = phi i32 [ %retval.1.ph, %cleanup.thread ], [ 0, %cleanup.thread128 ], [ 0, %cleanup.cleanup78_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @cfam_devnode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %mode, ptr nocapture noundef readnone %uid, ptr nocapture noundef readnone %gid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %cdev_idx = getelementptr inbounds %struct.fsi_slave, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %cdev_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cdev_idx, align 4
  %call = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.71, i32 noundef %1) #17
  ret ptr %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @slave_send_echo_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %t_send_delay = getelementptr inbounds %struct.fsi_slave, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %t_send_delay to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %t_send_delay, align 4
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.65, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @slave_send_echo_store(ptr nocapture noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %data.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %master1 = getelementptr inbounds %struct.fsi_slave, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %master1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #17
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !309
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %5 = add i32 %4, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %5)
  %6 = icmp ult i32 %5, -16
  br i1 %6, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %link_config = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %link_config to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %link_config, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end5.cleanup_crit_edge, label %if.end7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end7:                                          ; preds = %if.end5
  %conv = trunc i32 %4 to i8
  %t_send_delay = getelementptr inbounds %struct.fsi_slave, ptr %dev, i32 0, i32 9
  %9 = ptrtoint ptr %t_send_delay to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %t_send_delay, align 4
  %t_echo_delay = getelementptr inbounds %struct.fsi_slave, ptr %dev, i32 0, i32 10
  %10 = ptrtoint ptr %t_echo_delay to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %t_echo_delay, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #17
  %id.i = getelementptr inbounds %struct.fsi_slave, ptr %dev, i32 0, i32 4
  %11 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id.i, align 8
  %and.i.i.i = shl i32 %12, 24
  %shl.i.i.i = and i32 %and.i.i.i, 50331648
  %sub.i.i = shl nuw nsw i32 %4, 20
  %and.i9.i.i = add nuw nsw i32 %sub.i.i, 15728640
  %shl.i10.i.i = and i32 %and.i9.i.i, 15728640
  %sub4.i.i = shl nuw nsw i32 %4, 16
  %and.i11.i.i = add nuw nsw i32 %sub4.i.i, 983040
  %shl.i12.i.i = and i32 %and.i11.i.i, 983040
  %or.i.i = or i32 %shl.i12.i.i, %shl.i10.i.i
  %or2.i.i = or i32 %or.i.i, %shl.i.i.i
  %or8.i.i = or i32 %or2.i.i, -1610610688
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or8.i.i, ptr %data.i, align 4
  %14 = ptrtoint ptr %master1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %master1, align 8
  %link.i = getelementptr inbounds %struct.fsi_slave, ptr %dev, i32 0, i32 5
  %16 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %link.i, align 4
  %conv.i = trunc i32 %12 to i8
  %conv.i8.i = and i32 %12, 255
  call fastcc void @trace_fsi_master_write(ptr noundef %15, i32 noundef %17, i32 noundef %conv.i8.i, i32 noundef 2048, i32 noundef 4, ptr noundef nonnull %data.i) #17
  %write.i.i = getelementptr inbounds %struct.fsi_master, ptr %15, i32 0, i32 6
  %18 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write.i.i, align 4
  %call1.i.i = call i32 %19(ptr noundef %15, i32 noundef %17, i8 noundef zeroext %conv.i, i32 noundef 2048, ptr noundef nonnull %data.i, i32 noundef 4) #17
  call fastcc void @trace_fsi_master_rw_result(ptr noundef %15, i32 noundef %17, i32 noundef %conv.i8.i, i32 noundef 2048, i32 noundef 4, i1 noundef zeroext true, ptr noundef nonnull %data.i, i32 noundef %call1.i.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp10 = icmp slt i32 %call1.i.i, 0
  br i1 %cmp10, label %if.end7.cleanup_crit_edge, label %if.end13

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %20 = ptrtoint ptr %link_config to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %link_config, align 4
  %tobool15.not = icmp eq ptr %21, null
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.then16

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  %22 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %link.i, align 4
  %24 = ptrtoint ptr %t_send_delay to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %t_send_delay, align 4
  %26 = ptrtoint ptr %t_echo_delay to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %t_echo_delay, align 1
  %call20 = call i32 %21(ptr noundef %1, i32 noundef %23, i8 noundef zeroext %25, i8 noundef zeroext %27) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end13.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -6, %if.end5.cleanup_crit_edge ], [ %call1.i.i, %if.end7.cleanup_crit_edge ], [ %count, %if.then16 ], [ %count, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #17
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chip_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_id = getelementptr inbounds %struct.fsi_slave, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip_id, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.67, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfam_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %cfam_id = getelementptr inbounds %struct.fsi_slave, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %cfam_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cfam_id, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.69, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @send_term_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %master1 = getelementptr inbounds %struct.fsi_slave, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %master1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master1, align 8
  %term = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %term to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %term, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %link = getelementptr inbounds %struct.fsi_slave, ptr %dev, i32 0, i32 5
  %4 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %link, align 4
  %id = getelementptr inbounds %struct.fsi_slave, ptr %dev, i32 0, i32 4
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 8
  %conv = trunc i32 %7 to i8
  %call = tail call i32 %3(ptr noundef %1, i32 noundef %5, i8 noundef zeroext %conv) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_n_addr_cells(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_n_size_cells(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i64 @cfam_llseek(ptr nocapture noundef writeonly %file, i64 noundef %offset, i32 noundef %whence) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %whence to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %whence, label %entry.return_crit_edge [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 0, label %sw.bb
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %f_pos = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 10
  %1 = ptrtoint ptr %f_pos to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %offset, ptr %f_pos, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge
  %retval.0 = phi i64 [ %offset, %sw.epilog ], [ -22, %entry.return_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfam_read(ptr nocapture noundef readonly %filep, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %offset) #0 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %offset, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %3)
  %4 = icmp ugt i64 %3, 4294967295
  br i1 %4, label %entry.cleanup24_crit_edge, label %lor.lhs.false3

entry.cleanup24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup24

lor.lhs.false3:                                   ; preds = %entry
  %conv = zext i32 %count to i64
  %add = add nuw nsw i64 %3, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %add)
  %cmp4 = icmp ugt i64 %add, 4294967295
  br i1 %cmp4, label %lor.lhs.false3.cleanup24_crit_edge, label %for.cond.preheader

lor.lhs.false3.cleanup24_crit_edge:               ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup24

for.cond.preheader:                               ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp860.not = icmp eq i32 %count, 0
  br i1 %cmp860.not, label %for.cond.preheader.fail_crit_edge, label %for.body.lr.ph

for.cond.preheader.fail_crit_edge:                ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %5 = call i32 @llvm.umin.i32(i32 %count, i32 4)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %off.062 = phi i64 [ %3, %for.body.lr.ph ], [ %add22, %for.inc.for.body_crit_edge ]
  %total_len.061 = phi i32 [ 0, %for.body.lr.ph ], [ %add23, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #17
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %data, align 4, !annotation !309
  %7 = trunc i64 %off.062 to i32
  %8 = and i32 %7, 3
  %conv13 = sub nsw i32 %5, %8
  %call = call i32 @fsi_slave_read(ptr noundef %1, i32 noundef %7, ptr noundef nonnull %data, i32 noundef %conv13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end16, label %for.body.cleanup.thread_crit_edge

for.body.cleanup.thread_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread

if.end16:                                         ; preds = %for.body
  %add.ptr = getelementptr i8, ptr %buf, i32 %total_len.061
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv13)
  %cmp1.i.i = icmp ugt i32 %conv13, 4
  br i1 %cmp1.i.i, label %if.then3.i.i, label %if.then.i.i.i, !prof !308

if.then3.i.i:                                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.73, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.74, i32 noundef 4, i32 noundef %conv13) #17
  br label %cleanup.thread

if.then.i.i.i:                                    ; preds = %if.end16
  call void @__check_object_size(ptr noundef nonnull %data, i32 noundef %conv13, i1 noundef zeroext true) #17
  call void @__might_fault(ptr noundef nonnull @.str.75, i32 noundef 174) #17
  %call.i.i = call zeroext i1 @should_fail_usercopy() #17
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %9 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 %conv13, i32 -1226833920) #22, !srcloc !322
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %data, i32 noundef %conv13) #17
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %add.ptr, ptr noundef nonnull %data, i32 noundef %conv13) #17
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %conv13, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %conv13, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool18.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool18.not, label %for.inc, label %copy_to_user.exit.cleanup.thread_crit_edge

copy_to_user.exit.cleanup.thread_crit_edge:       ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %copy_to_user.exit.cleanup.thread_crit_edge, %if.then3.i.i, %for.body.cleanup.thread_crit_edge
  %rc.0.ph = phi i32 [ -14, %if.then3.i.i ], [ -14, %copy_to_user.exit.cleanup.thread_crit_edge ], [ %call, %for.body.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #17
  br label %fail

for.inc:                                          ; preds = %copy_to_user.exit
  %conv21 = zext i32 %conv13 to i64
  %add22 = add i64 %off.062, %conv21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #17
  %add23 = add i32 %conv13, %total_len.061
  %cmp8 = icmp ult i32 %add23, %count
  br i1 %cmp8, label %for.inc.for.body_crit_edge, label %for.inc.fail_crit_edge

for.inc.fail_crit_edge:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

fail:                                             ; preds = %for.inc.fail_crit_edge, %cleanup.thread, %for.cond.preheader.fail_crit_edge
  %off.057 = phi i64 [ %off.062, %cleanup.thread ], [ %3, %for.cond.preheader.fail_crit_edge ], [ %add22, %for.inc.fail_crit_edge ]
  %rc.1 = phi i32 [ %rc.0.ph, %cleanup.thread ], [ 0, %for.cond.preheader.fail_crit_edge ], [ %count, %for.inc.fail_crit_edge ]
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %off.057, ptr %offset, align 8
  br label %cleanup24

cleanup24:                                        ; preds = %fail, %lor.lhs.false3.cleanup24_crit_edge, %entry.cleanup24_crit_edge
  %retval.0 = phi i32 [ %rc.1, %fail ], [ -22, %entry.cleanup24_crit_edge ], [ -22, %lor.lhs.false3.cleanup24_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfam_write(ptr nocapture noundef readonly %filep, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %offset) #0 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %offset, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %3)
  %4 = icmp ugt i64 %3, 4294967295
  br i1 %4, label %entry.cleanup24_crit_edge, label %lor.lhs.false3

entry.cleanup24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup24

lor.lhs.false3:                                   ; preds = %entry
  %conv = zext i32 %count to i64
  %add = add nuw nsw i64 %3, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %add)
  %cmp4 = icmp ugt i64 %add, 4294967295
  br i1 %cmp4, label %lor.lhs.false3.cleanup24_crit_edge, label %for.cond.preheader

lor.lhs.false3.cleanup24_crit_edge:               ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup24

for.cond.preheader:                               ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp863.not = icmp eq i32 %count, 0
  br i1 %cmp863.not, label %for.cond.preheader.fail_crit_edge, label %for.body.lr.ph

for.cond.preheader.fail_crit_edge:                ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %5 = call i32 @llvm.umin.i32(i32 %count, i32 4)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %off.065 = phi i64 [ %3, %for.body.lr.ph ], [ %add22, %for.inc.for.body_crit_edge ]
  %total_len.064 = phi i32 [ 0, %for.body.lr.ph ], [ %add23, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #17
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %data, align 4, !annotation !309
  %7 = trunc i64 %off.065 to i32
  %8 = and i32 %7, 3
  %conv13 = sub nsw i32 %5, %8
  %add.ptr = getelementptr i8, ptr %buf, i32 %total_len.064
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv13)
  %cmp1.i.i = icmp ugt i32 %conv13, 4
  br i1 %cmp1.i.i, label %if.then3.i.i, label %if.then.i.i.i, !prof !308

if.then3.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.73, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.74, i32 noundef 4, i32 noundef %conv13) #17
  br label %cleanup.thread

if.then.i.i.i:                                    ; preds = %for.body
  call void @__check_object_size(ptr noundef nonnull %data, i32 noundef %conv13, i1 noundef zeroext false) #17
  call void @__might_fault(ptr noundef nonnull @.str.75, i32 noundef 156) #17
  %call.i.i = call zeroext i1 @should_fail_usercopy() #17
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %9 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 %conv13, i32 -1226833920) #22, !srcloc !323
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !307

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %data, i32 noundef %conv13) #17
  %10 = call i32 @llvm.read_register.i32(metadata !297) #17
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !324
  %and.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #17, !srcloc !325
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !326
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %data, ptr noundef %add.ptr, i32 noundef %conv13) #17
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #17, !srcloc !325
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !326
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %conv13, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %conv13, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end15, label %if.then11.i.i, !prof !307

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %sub.i.i = sub i32 %conv13, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %data, i32 %sub.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup.thread

if.end15:                                         ; preds = %if.end.i.i
  %call17 = call i32 @fsi_slave_write(ptr noundef %1, i32 noundef %7, ptr noundef nonnull %data, i32 noundef %conv13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %for.inc, label %if.end15.cleanup.thread_crit_edge

if.end15.cleanup.thread_crit_edge:                ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end15.cleanup.thread_crit_edge, %if.then11.i.i, %if.then3.i.i
  %rc.0.ph = phi i32 [ -14, %if.then11.i.i ], [ -14, %if.then3.i.i ], [ %call17, %if.end15.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #17
  br label %fail

for.inc:                                          ; preds = %if.end15
  %conv21 = zext i32 %conv13 to i64
  %add22 = add i64 %off.065, %conv21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #17
  %add23 = add i32 %conv13, %total_len.064
  %cmp8 = icmp ult i32 %add23, %count
  br i1 %cmp8, label %for.inc.for.body_crit_edge, label %for.inc.fail_crit_edge

for.inc.fail_crit_edge:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

fail:                                             ; preds = %for.inc.fail_crit_edge, %cleanup.thread, %for.cond.preheader.fail_crit_edge
  %off.058 = phi i64 [ %off.065, %cleanup.thread ], [ %3, %for.cond.preheader.fail_crit_edge ], [ %add22, %for.inc.fail_crit_edge ]
  %rc.1 = phi i32 [ %rc.0.ph, %cleanup.thread ], [ 0, %for.cond.preheader.fail_crit_edge ], [ %count, %for.inc.fail_crit_edge ]
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %off.058, ptr %offset, align 8
  br label %cleanup24

cleanup24:                                        ; preds = %fail, %lor.lhs.false3.cleanup24_crit_edge, %entry.cleanup24_crit_edge
  %retval.0 = phi i32 [ %rc.1, %fail ], [ -22, %entry.cleanup24_crit_edge ], [ -22, %lor.lhs.false3.cleanup24_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cfam_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 -932
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr, ptr %private_data, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_slave_sysfs_raw_read(ptr nocapture noundef readnone %file, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %off)
  %0 = icmp ugt i64 %off, 4294967295
  br i1 %0, label %entry.cleanup_crit_edge, label %lor.lhs.false3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false3:                                   ; preds = %entry
  %conv = zext i32 %count to i64
  %add = add nuw nsw i64 %conv, %off
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %add)
  %cmp4 = icmp ugt i64 %add, 4294967295
  br i1 %cmp4, label %lor.lhs.false3.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp838.not = icmp eq i32 %count, 0
  br i1 %cmp838.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body:                                         ; preds = %if.end16.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %total_len.040 = phi i32 [ %add19, %if.end16.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %off.addr.039 = phi i64 [ %add18, %if.end16.for.body_crit_edge ], [ %off, %for.cond.preheader.for.body_crit_edge ]
  %conv10 = trunc i64 %off.addr.039 to i32
  %sub = sub i32 %count, %total_len.040
  %or.i = or i32 %conv10, 4
  %1 = tail call i32 @llvm.cttz.i32(i32 %or.i, i1 true) #17, !range !327
  %shl.i = shl nuw nsw i32 1, %1
  %2 = tail call i32 @llvm.ctlz.i32(i32 %sub, i1 false) #17, !range !328
  %shl1.i = lshr i32 -2147483648, %2
  %or2.i = or i32 %shl.i, %shl1.i
  %3 = tail call i32 @llvm.cttz.i32(i32 %or2.i, i1 true) #17, !range !328
  %shl3.i = shl nuw i32 1, %3
  %add.ptr13 = getelementptr i8, ptr %buf, i32 %total_len.040
  %call14 = tail call i32 @fsi_slave_read(ptr noundef %kobj, i32 noundef %conv10, ptr noundef %add.ptr13, i32 noundef %shl3.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.end16, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end16:                                         ; preds = %for.body
  %conv17 = zext i32 %shl3.i to i64
  %add18 = add i64 %off.addr.039, %conv17
  %add19 = add i32 %shl3.i, %total_len.040
  %cmp8 = icmp ult i32 %add19, %count
  br i1 %cmp8, label %if.end16.for.body_crit_edge, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

cleanup:                                          ; preds = %if.end16.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %call14, %for.body.cleanup_crit_edge ], [ %count, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_slave_sysfs_raw_write(ptr nocapture noundef readnone %file, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %off)
  %0 = icmp ugt i64 %off, 4294967295
  br i1 %0, label %entry.cleanup_crit_edge, label %lor.lhs.false3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false3:                                   ; preds = %entry
  %conv = zext i32 %count to i64
  %add = add nuw nsw i64 %conv, %off
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %add)
  %cmp4 = icmp ugt i64 %add, 4294967295
  br i1 %cmp4, label %lor.lhs.false3.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp838.not = icmp eq i32 %count, 0
  br i1 %cmp838.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body:                                         ; preds = %if.end16.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %total_len.040 = phi i32 [ %add19, %if.end16.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %off.addr.039 = phi i64 [ %add18, %if.end16.for.body_crit_edge ], [ %off, %for.cond.preheader.for.body_crit_edge ]
  %conv10 = trunc i64 %off.addr.039 to i32
  %sub = sub i32 %count, %total_len.040
  %or.i = or i32 %conv10, 4
  %1 = tail call i32 @llvm.cttz.i32(i32 %or.i, i1 true) #17, !range !327
  %shl.i = shl nuw nsw i32 1, %1
  %2 = tail call i32 @llvm.ctlz.i32(i32 %sub, i1 false) #17, !range !328
  %shl1.i = lshr i32 -2147483648, %2
  %or2.i = or i32 %shl.i, %shl1.i
  %3 = tail call i32 @llvm.cttz.i32(i32 %or2.i, i1 true) #17, !range !328
  %shl3.i = shl nuw i32 1, %3
  %add.ptr13 = getelementptr i8, ptr %buf, i32 %total_len.040
  %call14 = tail call i32 @fsi_slave_write(ptr noundef %kobj, i32 noundef %conv10, ptr noundef %add.ptr13, i32 noundef %shl3.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.end16, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end16:                                         ; preds = %for.body
  %conv17 = zext i32 %shl3.i to i64
  %add18 = add i64 %off.addr.039, %conv17
  %add19 = add i32 %shl3.i, %total_len.040
  %cmp8 = icmp ult i32 %add19, %count
  br i1 %cmp8, label %if.end16.for.body_crit_edge, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

cleanup:                                          ; preds = %if.end16.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %call14, %for.body.cleanup_crit_edge ], [ %count, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsi_device_release(ptr noundef %_device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %_device, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  tail call void @of_node_put(ptr noundef %1) #17
  tail call void @kfree(ptr noundef %_device) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @master_break_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef returned %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_fsi_master_break(ptr noundef %dev, i32 noundef 0) #17
  %send_break.i = getelementptr inbounds %struct.fsi_master, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %send_break.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %send_break.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call.i = tail call i32 %1(ptr noundef %dev, i32 noundef 0) #17
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %link_config.i = getelementptr inbounds %struct.fsi_master, ptr %dev, i32 0, i32 10
  %2 = ptrtoint ptr %link_config.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link_config.i, align 4
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %if.end.i.fsi_master_break.exit_crit_edge, label %if.then3.i

if.end.i.fsi_master_break.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fsi_master_break.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %call5.i = tail call i32 %3(ptr noundef %dev, i32 noundef 0, i8 noundef zeroext 16, i8 noundef zeroext 16) #17
  br label %fsi_master_break.exit

fsi_master_break.exit:                            ; preds = %if.then3.i, %if.end.i.fsi_master_break.exit_crit_edge
  ret i32 %count
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @master_rescan_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef returned %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %scan_lock.i = getelementptr inbounds %struct.fsi_master, ptr %dev, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %scan_lock.i, i32 noundef 0) #17
  %call.i.i = tail call i32 @device_for_each_child(ptr noundef %dev, ptr noundef null, ptr noundef nonnull @fsi_master_remove_slave) #17
  tail call fastcc void @fsi_master_scan(ptr noundef %dev) #17
  tail call void @mutex_unlock(ptr noundef %scan_lock.i) #17
  ret i32 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !84, !86, !87, !89, !91, !92, !93, !94, !95, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !129, !130, !131, !132, !133, !134, !136, !137, !138, !139, !140, !141, !142, !144, !145, !147, !149, !151, !152, !153, !154, !155, !156, !157, !158, !160, !161, !162, !164, !165, !167, !168, !169, !171, !172, !173, !174, !175, !177, !178, !180, !181, !182, !184, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !199, !201, !202, !203, !205, !206, !208, !210, !212, !214, !216, !218, !219, !221, !223, !224, !226, !228, !229, !231, !233, !234, !236, !238, !240, !242, !243, !245, !247, !249, !251, !253, !254, !255, !256, !258, !259, !260, !262, !263, !265, !267, !268, !269, !271, !272, !273, !274, !276, !278, !279, !281, !283, !285, !286, !288, !290, !291, !293, !294, !296}
!llvm.named.register.sp = !{!297}
!llvm.module.flags = !{!298, !299, !300, !301, !302, !303, !304, !305}
!llvm.ident = !{!306}

!0 = !{ptr @__tracepoint_fsi_master_read, !1, !"__tracepoint_fsi_master_read", i1 false, i1 false}
!1 = !{!"../include/trace/events/fsi.h", i32 11, i32 1}
!2 = !{ptr @__tracepoint_ptr_fsi_master_read, !1, !"__tracepoint_ptr_fsi_master_read", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_fsi_master_read, !1, !"__SCK__tp_func_fsi_master_read", i1 false, i1 false}
!4 = !{ptr @__tracepoint_fsi_master_write, !5, !"__tracepoint_fsi_master_write", i1 false, i1 false}
!5 = !{!"../include/trace/events/fsi.h", i32 38, i32 1}
!6 = !{ptr @__tracepoint_ptr_fsi_master_write, !5, !"__tracepoint_ptr_fsi_master_write", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_fsi_master_write, !5, !"__SCK__tp_func_fsi_master_write", i1 false, i1 false}
!8 = !{ptr @__tracepoint_fsi_master_rw_result, !9, !"__tracepoint_fsi_master_rw_result", i1 false, i1 false}
!9 = !{!"../include/trace/events/fsi.h", i32 69, i32 1}
!10 = !{ptr @__tracepoint_ptr_fsi_master_rw_result, !9, !"__tracepoint_ptr_fsi_master_rw_result", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_fsi_master_rw_result, !9, !"__SCK__tp_func_fsi_master_rw_result", i1 false, i1 false}
!12 = !{ptr @__tracepoint_fsi_master_break, !13, !"__tracepoint_fsi_master_break", i1 false, i1 false}
!13 = !{!"../include/trace/events/fsi.h", i32 108, i32 1}
!14 = !{ptr @__tracepoint_ptr_fsi_master_break, !13, !"__tracepoint_ptr_fsi_master_break", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_fsi_master_break, !13, !"__SCK__tp_func_fsi_master_break", i1 false, i1 false}
!16 = !{ptr @event_class_fsi_master_read, !1, !"event_class_fsi_master_read", i1 false, i1 false}
!17 = !{ptr @event_fsi_master_read, !1, !"event_fsi_master_read", i1 false, i1 false}
!18 = !{ptr @__event_fsi_master_read, !1, !"__event_fsi_master_read", i1 false, i1 false}
!19 = !{ptr @event_class_fsi_master_write, !5, !"event_class_fsi_master_write", i1 false, i1 false}
!20 = !{ptr @event_fsi_master_write, !5, !"event_fsi_master_write", i1 false, i1 false}
!21 = !{ptr @__event_fsi_master_write, !5, !"__event_fsi_master_write", i1 false, i1 false}
!22 = !{ptr @event_class_fsi_master_rw_result, !9, !"event_class_fsi_master_rw_result", i1 false, i1 false}
!23 = !{ptr @event_fsi_master_rw_result, !9, !"event_fsi_master_rw_result", i1 false, i1 false}
!24 = !{ptr @__event_fsi_master_rw_result, !9, !"__event_fsi_master_rw_result", i1 false, i1 false}
!25 = !{ptr @event_class_fsi_master_break, !13, !"event_class_fsi_master_break", i1 false, i1 false}
!26 = !{ptr @event_fsi_master_break, !13, !"event_fsi_master_break", i1 false, i1 false}
!27 = !{ptr @__event_fsi_master_break, !13, !"__event_fsi_master_break", i1 false, i1 false}
!28 = !{ptr @__bpf_trace_tp_map_fsi_master_read, !1, !"__bpf_trace_tp_map_fsi_master_read", i1 false, i1 false}
!29 = !{ptr @__bpf_trace_tp_map_fsi_master_write, !5, !"__bpf_trace_tp_map_fsi_master_write", i1 false, i1 false}
!30 = !{ptr @__bpf_trace_tp_map_fsi_master_rw_result, !9, !"__bpf_trace_tp_map_fsi_master_rw_result", i1 false, i1 false}
!31 = !{ptr @__bpf_trace_tp_map_fsi_master_break, !13, !"__bpf_trace_tp_map_fsi_master_break", i1 false, i1 false}
!32 = !{ptr @__ksymtab_fsi_device_read, !33, !"__ksymtab_fsi_device_read", i1 false, i1 false}
!33 = !{!"../drivers/fsi/fsi-core.c", i32 142, i32 1}
!34 = !{ptr @__ksymtab_fsi_device_write, !35, !"__ksymtab_fsi_device_write", i1 false, i1 false}
!35 = !{!"../drivers/fsi/fsi-core.c", i32 152, i32 1}
!36 = !{ptr @__ksymtab_fsi_slave_read, !37, !"__ksymtab_fsi_slave_read", i1 false, i1 false}
!37 = !{!"../drivers/fsi/fsi-core.c", i32 368, i32 1}
!38 = !{ptr @__ksymtab_fsi_slave_write, !39, !"__ksymtab_fsi_slave_write", i1 false, i1 false}
!39 = !{!"../drivers/fsi/fsi-core.c", i32 393, i32 1}
!40 = !{ptr @__ksymtab_fsi_slave_claim_range, !41, !"__ksymtab_fsi_slave_claim_range", i1 false, i1 false}
!41 = !{!"../drivers/fsi/fsi-core.c", i32 407, i32 1}
!42 = !{ptr @__ksymtab_fsi_slave_release_range, !43, !"__ksymtab_fsi_slave_release_range", i1 false, i1 false}
!43 = !{!"../drivers/fsi/fsi-core.c", i32 413, i32 1}
!44 = !{ptr @.str, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/fsi/fsi-core.c", i32 927, i32 10}
!46 = !{ptr @fsi_cdev_type, !47, !"fsi_cdev_type", i1 false, i1 false}
!47 = !{!"../drivers/fsi/fsi-core.c", i32 926, i32 26}
!48 = !{ptr @__ksymtab_fsi_cdev_type, !49, !"__ksymtab_fsi_cdev_type", i1 false, i1 false}
!49 = !{!"../drivers/fsi/fsi-core.c", i32 930, i32 1}
!50 = !{ptr @__ksymtab_fsi_get_new_minor, !51, !"__ksymtab_fsi_get_new_minor", i1 false, i1 false}
!51 = !{!"../drivers/fsi/fsi-core.c", i32 977, i32 1}
!52 = !{ptr @__ksymtab_fsi_free_minor, !53, !"__ksymtab_fsi_free_minor", i1 false, i1 false}
!53 = !{!"../drivers/fsi/fsi-core.c", i32 983, i32 1}
!54 = !{ptr @__ksymtab_fsi_master_rescan, !55, !"__ksymtab_fsi_master_rescan", i1 false, i1 false}
!55 = !{!"../drivers/fsi/fsi-core.c", i32 1263, i32 1}
!56 = !{ptr @fsi_master_register.__key, !57, !"__key", i1 false, i1 false}
!57 = !{!"../drivers/fsi/fsi-core.c", i32 1310, i32 2}
!58 = !{ptr @.str.1, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.2, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/fsi/fsi-core.c", i32 1312, i32 29}
!61 = !{ptr @.str.3, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/fsi/fsi-core.c", i32 1322, i32 33}
!63 = !{ptr @__ksymtab_fsi_master_register, !64, !"__ksymtab_fsi_master_register", i1 false, i1 false}
!64 = !{!"../drivers/fsi/fsi-core.c", i32 1330, i32 1}
!65 = !{ptr @__ksymtab_fsi_master_unregister, !66, !"__ksymtab_fsi_master_unregister", i1 false, i1 false}
!66 = !{!"../drivers/fsi/fsi-core.c", i32 1344, i32 1}
!67 = !{ptr @__ksymtab_fsi_driver_register, !68, !"__ksymtab_fsi_driver_register", i1 false, i1 false}
!68 = !{!"../drivers/fsi/fsi-core.c", i32 1377, i32 1}
!69 = !{ptr @__ksymtab_fsi_driver_unregister, !70, !"__ksymtab_fsi_driver_unregister", i1 false, i1 false}
!70 = !{!"../drivers/fsi/fsi-core.c", i32 1383, i32 1}
!71 = !{ptr @.str.4, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/fsi/fsi-core.c", i32 1386, i32 11}
!73 = !{ptr @fsi_bus_type, !74, !"fsi_bus_type", i1 false, i1 false}
!74 = !{!"../drivers/fsi/fsi-core.c", i32 1385, i32 17}
!75 = !{ptr @__ksymtab_fsi_bus_type, !76, !"__ksymtab_fsi_bus_type", i1 false, i1 false}
!76 = !{!"../drivers/fsi/fsi-core.c", i32 1389, i32 1}
!77 = !{ptr @__initcall__kmod_fsi_core__285_1414_fsi_init2, !78, !"__initcall__kmod_fsi_core__285_1414_fsi_init2", i1 false, i1 false}
!78 = !{!"../drivers/fsi/fsi-core.c", i32 1414, i32 1}
!79 = !{ptr @__exitcall_fsi_exit, !80, !"__exitcall_fsi_exit", i1 false, i1 false}
!80 = !{!"../drivers/fsi/fsi-core.c", i32 1423, i32 1}
!81 = !{ptr @__param_discard_errors, !82, !"__param_discard_errors", i1 false, i1 false}
!82 = !{!"../drivers/fsi/fsi-core.c", i32 1424, i32 1}
!83 = !{ptr @__UNIQUE_ID_discard_errorstype286, !82, !"__UNIQUE_ID_discard_errorstype286", i1 false, i1 false}
!84 = !{ptr @__UNIQUE_ID_file287, !85, !"__UNIQUE_ID_file287", i1 false, i1 false}
!85 = !{!"../drivers/fsi/fsi-core.c", i32 1425, i32 1}
!86 = !{ptr @__UNIQUE_ID_license288, !85, !"__UNIQUE_ID_license288", i1 false, i1 false}
!87 = !{ptr @__UNIQUE_ID_discard_errors289, !88, !"__UNIQUE_ID_discard_errors289", i1 false, i1 false}
!88 = !{!"../drivers/fsi/fsi-core.c", i32 1426, i32 1}
!89 = !{ptr @discard_errors, !90, !"discard_errors", i1 false, i1 false}
!90 = !{!"../drivers/fsi/fsi-core.c", i32 102, i32 12}
!91 = !{ptr @__tpstrtab_fsi_master_read, !1, !"__tpstrtab_fsi_master_read", i1 false, i1 false}
!92 = !{ptr @__tpstrtab_fsi_master_write, !5, !"__tpstrtab_fsi_master_write", i1 false, i1 false}
!93 = !{ptr @__tpstrtab_fsi_master_rw_result, !9, !"__tpstrtab_fsi_master_rw_result", i1 false, i1 false}
!94 = !{ptr @__tpstrtab_fsi_master_break, !13, !"__tpstrtab_fsi_master_break", i1 false, i1 false}
!95 = !{ptr @str__fsi__trace_system_name, !96, !"str__fsi__trace_system_name", i1 false, i1 false}
!96 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!97 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.11, !1, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.12, !1, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @trace_event_fields_fsi_master_read, !1, !"trace_event_fields_fsi_master_read", i1 false, i1 false}
!106 = !{ptr @trace_event_type_funcs_fsi_master_read, !1, !"trace_event_type_funcs_fsi_master_read", i1 false, i1 false}
!107 = !{ptr @.str.13, !1, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @print_fmt_fsi_master_read, !1, !"print_fmt_fsi_master_read", i1 false, i1 false}
!109 = !{ptr @.str.14, !5, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @trace_event_fields_fsi_master_write, !5, !"trace_event_fields_fsi_master_write", i1 false, i1 false}
!111 = !{ptr @trace_event_type_funcs_fsi_master_write, !5, !"trace_event_type_funcs_fsi_master_write", i1 false, i1 false}
!112 = !{ptr @.str.15, !5, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @print_fmt_fsi_master_write, !5, !"print_fmt_fsi_master_write", i1 false, i1 false}
!114 = !{ptr @.str.16, !9, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.17, !9, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.18, !9, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @trace_event_fields_fsi_master_rw_result, !9, !"trace_event_fields_fsi_master_rw_result", i1 false, i1 false}
!118 = !{ptr @trace_event_type_funcs_fsi_master_rw_result, !9, !"trace_event_type_funcs_fsi_master_rw_result", i1 false, i1 false}
!119 = !{ptr @.str.19, !9, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.20, !9, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.21, !9, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @print_fmt_fsi_master_rw_result, !9, !"print_fmt_fsi_master_rw_result", i1 false, i1 false}
!123 = !{ptr @trace_event_fields_fsi_master_break, !13, !"trace_event_fields_fsi_master_break", i1 false, i1 false}
!124 = !{ptr @trace_event_type_funcs_fsi_master_break, !13, !"trace_event_type_funcs_fsi_master_break", i1 false, i1 false}
!125 = !{ptr @.str.22, !13, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @print_fmt_fsi_master_break, !13, !"print_fmt_fsi_master_break", i1 false, i1 false}
!127 = !{ptr @.str.23, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/fsi/fsi-core.c", i32 299, i32 2}
!129 = !{ptr @.str.24, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.25, !128, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.26, !128, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @fsi_slave_handle_error.__UNIQUE_ID_ddebug274, !128, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!133 = !{ptr @.str.27, !128, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.28, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/fsi/fsi-core.c", i32 229, i32 2}
!136 = !{ptr @.str.29, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @fsi_slave_report_and_clear_errors.__UNIQUE_ID_ddebug273, !135, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!138 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!139 = !{ptr @.str.30, !13, !"<string literal>", i1 false, i1 false}
!140 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!141 = !{ptr @.str.31, !13, !"<string literal>", i1 false, i1 false}
!142 = distinct !{null, !143, !"__already_done", i1 false, i1 false}
!143 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!144 = !{ptr @.str.32, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.33, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/fsi/fsi-core.c", i32 920, i32 31}
!147 = !{ptr @fsi_base_dev, !148, !"fsi_base_dev", i1 false, i1 false}
!148 = !{!"../drivers/fsi/fsi-core.c", i32 104, i32 14}
!149 = !{ptr @.str.34, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/fsi/fsi-core.c", i32 105, i32 8}
!151 = !{ptr @fsi_minor_ida, !150, !"fsi_minor_ida", i1 false, i1 false}
!152 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!153 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!154 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!155 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!156 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!157 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!158 = !{ptr @.str.35, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/fsi/fsi-core.c", i32 1211, i32 4}
!160 = !{ptr @.str.36, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @fsi_master_scan.__UNIQUE_ID_ddebug283, !159, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!162 = !{ptr @.str.37, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/fsi/fsi-core.c", i32 1218, i32 4}
!164 = !{ptr @fsi_master_scan.__UNIQUE_ID_ddebug284, !163, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!165 = !{ptr @.str.38, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/fsi/fsi-core.c", i32 1001, i32 3}
!167 = !{ptr @.str.39, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @fsi_slave_init.__UNIQUE_ID_ddebug280, !166, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!169 = !{ptr @.str.40, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/fsi/fsi-core.c", i32 1009, i32 3}
!171 = !{ptr @.str.41, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.42, !170, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @fsi_slave_init._entry, !170, !"_entry", i1 false, i1 false}
!174 = !{ptr @fsi_slave_init._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.43, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/fsi/fsi-core.c", i32 1014, i32 2}
!177 = !{ptr @fsi_slave_init.__UNIQUE_ID_ddebug281, !176, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!178 = !{ptr @.str.45, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/fsi/fsi-core.c", i32 1026, i32 4}
!180 = !{ptr @fsi_slave_init._entry.44, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @fsi_slave_init._entry_ptr.46, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.47, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/fsi/fsi-core.c", i32 1038, i32 28}
!184 = !{ptr @.str.48, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/fsi/fsi-core.c", i32 1056, i32 49}
!186 = !{ptr @.str.50, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/fsi/fsi-core.c", i32 1065, i32 3}
!188 = !{ptr @fsi_slave_init._entry.49, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @fsi_slave_init._entry_ptr.51, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.53, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/fsi/fsi-core.c", i32 1071, i32 3}
!192 = !{ptr @fsi_slave_init._entry.52, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @fsi_slave_init._entry_ptr.54, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.56, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/fsi/fsi-core.c", i32 1087, i32 3}
!196 = !{ptr @.str.57, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @fsi_slave_init._entry.55, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @fsi_slave_init._entry_ptr.58, !195, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.60, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/fsi/fsi-core.c", i32 1104, i32 3}
!201 = !{ptr @fsi_slave_init._entry.59, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @fsi_slave_init._entry_ptr.61, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.62, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/fsi/fsi-core.c", i32 1109, i32 3}
!205 = !{ptr @fsi_slave_init.__UNIQUE_ID_ddebug282, !204, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!206 = !{ptr @.str.63, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/fsi/fsi-core.c", i32 911, i32 10}
!208 = !{ptr @cfam_type, !209, !"cfam_type", i1 false, i1 false}
!209 = !{!"../drivers/fsi/fsi-core.c", i32 910, i32 33}
!210 = !{ptr @cfam_attr_groups, !211, !"cfam_attr_groups", i1 false, i1 false}
!211 = !{!"../drivers/fsi/fsi-core.c", i32 893, i32 38}
!212 = !{ptr @cfam_attr_group, !213, !"cfam_attr_group", i1 false, i1 false}
!213 = !{!"../drivers/fsi/fsi-core.c", i32 889, i32 37}
!214 = !{ptr @cfam_attr, !215, !"cfam_attr", i1 false, i1 false}
!215 = !{!"../drivers/fsi/fsi-core.c", i32 881, i32 26}
!216 = !{ptr @.str.64, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/fsi/fsi-core.c", i32 856, i32 8}
!218 = !{ptr @dev_attr_send_echo_delays, !217, !"dev_attr_send_echo_delays", i1 false, i1 false}
!219 = !{ptr @.str.65, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/fsi/fsi-core.c", i32 821, i32 22}
!221 = !{ptr @.str.66, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/fsi/fsi-core.c", i32 868, i32 8}
!223 = !{ptr @dev_attr_chip_id, !222, !"dev_attr_chip_id", i1 false, i1 false}
!224 = !{ptr @.str.67, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/fsi/fsi-core.c", i32 865, i32 22}
!226 = !{ptr @.str.68, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/fsi/fsi-core.c", i32 879, i32 8}
!228 = !{ptr @dev_attr_cfam_id, !227, !"dev_attr_cfam_id", i1 false, i1 false}
!229 = !{ptr @.str.69, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/fsi/fsi-core.c", i32 876, i32 22}
!231 = !{ptr @.str.70, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/fsi/fsi-core.c", i32 813, i32 8}
!233 = !{ptr @dev_attr_send_term, !232, !"dev_attr_send_term", i1 false, i1 false}
!234 = !{ptr @.str.71, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/fsi/fsi-core.c", i32 904, i32 31}
!236 = !{ptr @.str.72, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/fsi/fsi-core.c", i32 666, i32 29}
!238 = !{ptr @cfam_fops, !239, !"cfam_fops", i1 false, i1 false}
!239 = !{!"../drivers/fsi/fsi-core.c", i32 791, i32 37}
!240 = distinct !{null, !241, !"__already_done", i1 false, i1 false}
!241 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!242 = !{ptr @.str.73, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @.str.74, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!245 = !{ptr @.str.75, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!247 = !{ptr @.str.76, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/fsi/fsi-core.c", i32 634, i32 11}
!249 = !{ptr @fsi_slave_raw_attr, !250, !"fsi_slave_raw_attr", i1 false, i1 false}
!250 = !{!"../drivers/fsi/fsi-core.c", i32 632, i32 35}
!251 = !{ptr @.str.77, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/fsi/fsi-core.c", i32 488, i32 4}
!253 = !{ptr @.str.78, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @fsi_slave_scan._entry, !252, !"_entry", i1 false, i1 false}
!255 = !{ptr @fsi_slave_scan._entry_ptr, !252, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.80, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/fsi/fsi-core.c", i32 496, i32 4}
!258 = !{ptr @fsi_slave_scan._entry.79, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @fsi_slave_scan._entry_ptr.81, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.82, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/fsi/fsi-core.c", i32 527, i32 4}
!262 = !{ptr @fsi_slave_scan.__UNIQUE_ID_ddebug275, !261, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!263 = !{ptr @.str.83, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/fsi/fsi-core.c", i32 532, i32 28}
!265 = !{ptr @.str.85, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/fsi/fsi-core.c", i32 539, i32 5}
!267 = !{ptr @fsi_slave_scan._entry.84, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @fsi_slave_scan._entry_ptr.86, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.87, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/fsi/fsi-core.c", i32 437, i32 3}
!271 = !{ptr @.str.88, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @fsi_device_node_matches._entry, !270, !"_entry", i1 false, i1 false}
!273 = !{ptr @fsi_device_node_matches._entry_ptr, !270, !"_entry_ptr", i1 false, i1 false}
!274 = distinct !{null, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../include/linux/of.h", i32 261, i32 30}
!276 = !{ptr @.str.90, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/fsi/fsi-core.c", i32 82, i32 8}
!278 = !{ptr @master_ida, !277, !"master_ida", i1 false, i1 false}
!279 = !{ptr @.str.91, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/fsi/fsi-core.c", i32 1301, i32 10}
!281 = !{ptr @fsi_master_class, !282, !"fsi_master_class", i1 false, i1 false}
!282 = !{!"../drivers/fsi/fsi-core.c", i32 1300, i32 21}
!283 = !{ptr @master_groups, !284, !"master_groups", i1 false, i1 false}
!284 = !{!"../drivers/fsi/fsi-core.c", i32 1298, i32 1}
!285 = !{ptr @master_group, !284, !"master_group", i1 false, i1 false}
!286 = !{ptr @master_attrs, !287, !"master_attrs", i1 false, i1 false}
!287 = !{!"../drivers/fsi/fsi-core.c", i32 1292, i32 26}
!288 = !{ptr @.str.92, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/fsi/fsi-core.c", i32 1290, i32 8}
!290 = !{ptr @dev_attr_break, !289, !"dev_attr_break", i1 false, i1 false}
!291 = !{ptr @.str.93, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/fsi/fsi-core.c", i32 1278, i32 8}
!293 = !{ptr @dev_attr_rescan, !292, !"dev_attr_rescan", i1 false, i1 false}
!294 = !{ptr @fsi_init.__key, !295, !"__key", i1 false, i1 false}
!295 = !{!"../drivers/fsi/fsi-core.c", i32 1402, i32 7}
!296 = !{ptr @__param_str_discard_errors, !82, !"__param_str_discard_errors", i1 false, i1 false}
!297 = !{!"sp"}
!298 = !{i32 1, !"wchar_size", i32 2}
!299 = !{i32 1, !"min_enum_size", i32 4}
!300 = !{i32 8, !"branch-target-enforcement", i32 0}
!301 = !{i32 8, !"sign-return-address", i32 0}
!302 = !{i32 8, !"sign-return-address-all", i32 0}
!303 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!304 = !{i32 7, !"uwtable", i32 1}
!305 = !{i32 7, !"frame-pointer", i32 2}
!306 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!307 = !{!"branch_weights", i32 2000, i32 1}
!308 = !{!"branch_weights", i32 1, i32 2000}
!309 = !{!"auto-init"}
!310 = !{i64 2148309024, i64 2148309029, i64 2148309042, i64 2148309086, i64 2148309120, i64 2148309141}
!311 = !{i8 0, i8 2}
!312 = !{i64 2153661790}
!313 = !{i64 2153662009}
!314 = !{i64 2149331704}
!315 = !{i64 2149332740}
!316 = !{i64 2153604320}
!317 = !{i64 2153604569}
!318 = !{i64 2153640501}
!319 = !{i64 2153640796}
!320 = !{i64 2153622043}
!321 = !{i64 2153622306}
!322 = !{i64 2153189342, i64 2153189367}
!323 = !{i64 2153188661, i64 2153188686}
!324 = !{i64 5684216}
!325 = !{i64 5684413}
!326 = !{i64 2153169646}
!327 = !{i32 0, i32 3}
!328 = !{i32 0, i32 33}

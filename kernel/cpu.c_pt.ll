; ModuleID = '/llk/IR_all_yes/kernel/cpu.c_pt.bc'
source_filename = "../kernel/cpu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+cpuhp_tasks_frozen\22, \22a\22\09"
module asm "\09.weak\09__crc_cpuhp_tasks_frozen\09\09\09\09"
module asm "\09.long\09__crc_cpuhp_tasks_frozen\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpuhp_tasks_frozen:\09\09\09\09\09"
module asm "\09.asciz \09\22cpuhp_tasks_frozen\22\09\09\09\09\09"
module asm "__kstrtabns_cpuhp_tasks_frozen:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cpus_read_lock\22, \22a\22\09"
module asm "\09.weak\09__crc_cpus_read_lock\09\09\09\09"
module asm "\09.long\09__crc_cpus_read_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpus_read_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22cpus_read_lock\22\09\09\09\09\09"
module asm "__kstrtabns_cpus_read_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cpus_read_trylock\22, \22a\22\09"
module asm "\09.weak\09__crc_cpus_read_trylock\09\09\09\09"
module asm "\09.long\09__crc_cpus_read_trylock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpus_read_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22cpus_read_trylock\22\09\09\09\09\09"
module asm "__kstrtabns_cpus_read_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cpus_read_unlock\22, \22a\22\09"
module asm "\09.weak\09__crc_cpus_read_unlock\09\09\09\09"
module asm "\09.long\09__crc_cpus_read_unlock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpus_read_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22cpus_read_unlock\22\09\09\09\09\09"
module asm "__kstrtabns_cpus_read_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cpu_hotplug_disable\22, \22a\22\09"
module asm "\09.weak\09__crc_cpu_hotplug_disable\09\09\09\09"
module asm "\09.long\09__crc_cpu_hotplug_disable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_hotplug_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_hotplug_disable\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_hotplug_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cpu_hotplug_enable\22, \22a\22\09"
module asm "\09.weak\09__crc_cpu_hotplug_enable\09\09\09\09"
module asm "\09.long\09__crc_cpu_hotplug_enable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_hotplug_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_hotplug_enable\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_hotplug_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+remove_cpu\22, \22a\22\09"
module asm "\09.weak\09__crc_remove_cpu\09\09\09\09"
module asm "\09.long\09__crc_remove_cpu\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_remove_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22remove_cpu\22\09\09\09\09\09"
module asm "__kstrtabns_remove_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+add_cpu\22, \22a\22\09"
module asm "\09.weak\09__crc_add_cpu\09\09\09\09"
module asm "\09.long\09__crc_add_cpu\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_add_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22add_cpu\22\09\09\09\09\09"
module asm "__kstrtabns_add_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__cpuhp_state_add_instance\22, \22a\22\09"
module asm "\09.weak\09__crc___cpuhp_state_add_instance\09\09\09\09"
module asm "\09.long\09__crc___cpuhp_state_add_instance\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cpuhp_state_add_instance:\09\09\09\09\09"
module asm "\09.asciz \09\22__cpuhp_state_add_instance\22\09\09\09\09\09"
module asm "__kstrtabns___cpuhp_state_add_instance:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__cpuhp_setup_state_cpuslocked\22, \22a\22\09"
module asm "\09.weak\09__crc___cpuhp_setup_state_cpuslocked\09\09\09\09"
module asm "\09.long\09__crc___cpuhp_setup_state_cpuslocked\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cpuhp_setup_state_cpuslocked:\09\09\09\09\09"
module asm "\09.asciz \09\22__cpuhp_setup_state_cpuslocked\22\09\09\09\09\09"
module asm "__kstrtabns___cpuhp_setup_state_cpuslocked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__cpuhp_setup_state\22, \22a\22\09"
module asm "\09.weak\09__crc___cpuhp_setup_state\09\09\09\09"
module asm "\09.long\09__crc___cpuhp_setup_state\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cpuhp_setup_state:\09\09\09\09\09"
module asm "\09.asciz \09\22__cpuhp_setup_state\22\09\09\09\09\09"
module asm "__kstrtabns___cpuhp_setup_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__cpuhp_state_remove_instance\22, \22a\22\09"
module asm "\09.weak\09__crc___cpuhp_state_remove_instance\09\09\09\09"
module asm "\09.long\09__crc___cpuhp_state_remove_instance\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cpuhp_state_remove_instance:\09\09\09\09\09"
module asm "\09.asciz \09\22__cpuhp_state_remove_instance\22\09\09\09\09\09"
module asm "__kstrtabns___cpuhp_state_remove_instance:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__cpuhp_remove_state_cpuslocked\22, \22a\22\09"
module asm "\09.weak\09__crc___cpuhp_remove_state_cpuslocked\09\09\09\09"
module asm "\09.long\09__crc___cpuhp_remove_state_cpuslocked\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cpuhp_remove_state_cpuslocked:\09\09\09\09\09"
module asm "\09.asciz \09\22__cpuhp_remove_state_cpuslocked\22\09\09\09\09\09"
module asm "__kstrtabns___cpuhp_remove_state_cpuslocked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__cpuhp_remove_state\22, \22a\22\09"
module asm "\09.weak\09__crc___cpuhp_remove_state\09\09\09\09"
module asm "\09.long\09__crc___cpuhp_remove_state\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cpuhp_remove_state:\09\09\09\09\09"
module asm "\09.asciz \09\22__cpuhp_remove_state\22\09\09\09\09\09"
module asm "__kstrtabns___cpuhp_remove_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cpu_bit_bitmap\22, \22a\22\09"
module asm "\09.weak\09__crc_cpu_bit_bitmap\09\09\09\09"
module asm "\09.long\09__crc_cpu_bit_bitmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_bit_bitmap:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_bit_bitmap\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_bit_bitmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cpu_all_bits\22, \22a\22\09"
module asm "\09.weak\09__crc_cpu_all_bits\09\09\09\09"
module asm "\09.long\09__crc_cpu_all_bits\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_all_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_all_bits\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_all_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__cpu_possible_mask\22, \22a\22\09"
module asm "\09.weak\09__crc___cpu_possible_mask\09\09\09\09"
module asm "\09.long\09__crc___cpu_possible_mask\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cpu_possible_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22__cpu_possible_mask\22\09\09\09\09\09"
module asm "__kstrtabns___cpu_possible_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__cpu_online_mask\22, \22a\22\09"
module asm "\09.weak\09__crc___cpu_online_mask\09\09\09\09"
module asm "\09.long\09__crc___cpu_online_mask\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cpu_online_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22__cpu_online_mask\22\09\09\09\09\09"
module asm "__kstrtabns___cpu_online_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__cpu_present_mask\22, \22a\22\09"
module asm "\09.weak\09__crc___cpu_present_mask\09\09\09\09"
module asm "\09.long\09__crc___cpu_present_mask\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cpu_present_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22__cpu_present_mask\22\09\09\09\09\09"
module asm "__kstrtabns___cpu_present_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__cpu_active_mask\22, \22a\22\09"
module asm "\09.weak\09__crc___cpu_active_mask\09\09\09\09"
module asm "\09.long\09__crc___cpu_active_mask\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cpu_active_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22__cpu_active_mask\22\09\09\09\09\09"
module asm "__kstrtabns___cpu_active_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__cpu_dying_mask\22, \22a\22\09"
module asm "\09.weak\09__crc___cpu_dying_mask\09\09\09\09"
module asm "\09.long\09__crc___cpu_dying_mask\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cpu_dying_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22__cpu_dying_mask\22\09\09\09\09\09"
module asm "__kstrtabns___cpu_dying_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__num_online_cpus\22, \22a\22\09"
module asm "\09.weak\09__crc___num_online_cpus\09\09\09\09"
module asm "\09.long\09__crc___num_online_cpus\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___num_online_cpus:\09\09\09\09\09"
module asm "\09.asciz \09\22__num_online_cpus\22\09\09\09\09\09"
module asm "__kstrtabns___num_online_cpus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cpu_mitigations_off\22, \22a\22\09"
module asm "\09.weak\09__crc_cpu_mitigations_off\09\09\09\09"
module asm "\09.long\09__crc_cpu_mitigations_off\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_mitigations_off:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_mitigations_off\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_mitigations_off:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cpu_mitigations_auto_nosmt\22, \22a\22\09"
module asm "\09.weak\09__crc_cpu_mitigations_auto_nosmt\09\09\09\09"
module asm "\09.long\09__crc_cpu_mitigations_auto_nosmt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_mitigations_auto_nosmt:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_mitigations_auto_nosmt\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_mitigations_auto_nosmt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.0 }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.1, %struct.trace_event, ptr, ptr, %union.anon.4, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.1 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.4 = type { ptr }
%union.anon.109 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.110 = type { %struct.bpf_raw_event_map }
%union.anon.111 = type { %struct.bpf_raw_event_map }
%struct.cpuhp_cpu_state = type { i32, i32, i32, ptr, i8, i8, i8, i8, i32, ptr, ptr, i32, i32, %struct.completion, %struct.completion }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rcuwait = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.smp_hotplug_thread = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.62, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.25 }
%struct.llist_node = type { ptr }
%union.anon.25 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.27 }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.62 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon.3 }
%union.anon.3 = type { %struct.hlist_node }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%union.anon = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.cpuhp_step = type { ptr, %union.anon.112, %union.anon.113, %struct.hlist_head, i8, i8 }
%union.anon.112 = type { ptr }
%union.anon.113 = type { ptr }
%struct.hlist_head = type { ptr }
%struct.mm_struct = type { %struct.anon.15, [0 x i32] }
%struct.anon.15 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_cpuhp_enter = type { %struct.trace_entry, i32, i32, i32, ptr, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_cpuhp_multi_enter = type { %struct.trace_entry, i32, i32, i32, ptr, [0 x i8] }
%struct.trace_event_raw_cpuhp_exit = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_cpuhp_enter = internal constant [12 x i8] c"cpuhp_enter\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cpuhp_enter = dso_local global %struct.static_call_key { ptr @__traceiter_cpuhp_enter }, align 4
@__tracepoint_cpuhp_enter = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cpuhp_enter, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cpuhp_enter, ptr null, ptr @__traceiter_cpuhp_enter, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cpuhp_enter = internal constant ptr @__tracepoint_cpuhp_enter, section "__tracepoints_ptrs", align 4
@__tpstrtab_cpuhp_multi_enter = internal constant [18 x i8] c"cpuhp_multi_enter\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cpuhp_multi_enter = dso_local global %struct.static_call_key { ptr @__traceiter_cpuhp_multi_enter }, align 4
@__tracepoint_cpuhp_multi_enter = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cpuhp_multi_enter, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cpuhp_multi_enter, ptr null, ptr @__traceiter_cpuhp_multi_enter, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cpuhp_multi_enter = internal constant ptr @__tracepoint_cpuhp_multi_enter, section "__tracepoints_ptrs", align 4
@__tpstrtab_cpuhp_exit = internal constant [11 x i8] c"cpuhp_exit\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cpuhp_exit = dso_local global %struct.static_call_key { ptr @__traceiter_cpuhp_exit }, align 4
@__tracepoint_cpuhp_exit = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cpuhp_exit, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cpuhp_exit, ptr null, ptr @__traceiter_cpuhp_exit, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cpuhp_exit = internal constant ptr @__tracepoint_cpuhp_exit, section "__tracepoints_ptrs", align 4
@str__cpuhp__trace_system_name = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cpuhp\00", [26 x i8] zeroinitializer }, align 32
@trace_event_fields_cpuhp_enter = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.32, %union.anon.0 { %struct.anon { ptr @.str.33, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.0 { %struct.anon { ptr @.str.35, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.0 { %struct.anon { ptr @.str.36, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.37, %union.anon.0 { %struct.anon { ptr @.str.38, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_cpuhp_enter = internal global %struct.trace_event_class { ptr @str__cpuhp__trace_system_name, ptr @trace_event_raw_event_cpuhp_enter, ptr @perf_trace_cpuhp_enter, ptr @trace_event_reg, ptr @trace_event_fields_cpuhp_enter, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cpuhp_enter, i64 24), ptr getelementptr (i8, ptr @event_class_cpuhp_enter, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cpuhp_enter = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cpuhp_enter, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cpuhp_enter = internal global { [83 x i8], [45 x i8] } { [83 x i8] c"\22cpu: %04u target: %3d step: %3d (%ps)\22, REC->cpu, REC->target, REC->idx, REC->fun\00", [45 x i8] zeroinitializer }, align 32
@event_cpuhp_enter = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cpuhp_enter, %union.anon.1 { ptr @__tracepoint_cpuhp_enter }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cpuhp_enter }, ptr @print_fmt_cpuhp_enter, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cpuhp_enter = internal global ptr @event_cpuhp_enter, section "_ftrace_events", align 4
@trace_event_fields_cpuhp_multi_enter = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.32, %union.anon.0 { %struct.anon { ptr @.str.33, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.0 { %struct.anon { ptr @.str.35, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.0 { %struct.anon { ptr @.str.36, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.37, %union.anon.0 { %struct.anon { ptr @.str.38, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_cpuhp_multi_enter = internal global %struct.trace_event_class { ptr @str__cpuhp__trace_system_name, ptr @trace_event_raw_event_cpuhp_multi_enter, ptr @perf_trace_cpuhp_multi_enter, ptr @trace_event_reg, ptr @trace_event_fields_cpuhp_multi_enter, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cpuhp_multi_enter, i64 24), ptr getelementptr (i8, ptr @event_class_cpuhp_multi_enter, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cpuhp_multi_enter = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cpuhp_multi_enter, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cpuhp_multi_enter = internal global { [83 x i8], [45 x i8] } { [83 x i8] c"\22cpu: %04u target: %3d step: %3d (%ps)\22, REC->cpu, REC->target, REC->idx, REC->fun\00", [45 x i8] zeroinitializer }, align 32
@event_cpuhp_multi_enter = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cpuhp_multi_enter, %union.anon.1 { ptr @__tracepoint_cpuhp_multi_enter }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cpuhp_multi_enter }, ptr @print_fmt_cpuhp_multi_enter, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cpuhp_multi_enter = internal global ptr @event_cpuhp_multi_enter, section "_ftrace_events", align 4
@trace_event_fields_cpuhp_exit = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.32, %union.anon.0 { %struct.anon { ptr @.str.33, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.0 { %struct.anon { ptr @.str.40, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.0 { %struct.anon { ptr @.str.36, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.0 { %struct.anon { ptr @.str.41, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_cpuhp_exit = internal global %struct.trace_event_class { ptr @str__cpuhp__trace_system_name, ptr @trace_event_raw_event_cpuhp_exit, ptr @perf_trace_cpuhp_exit, ptr @trace_event_reg, ptr @trace_event_fields_cpuhp_exit, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cpuhp_exit, i64 24), ptr getelementptr (i8, ptr @event_class_cpuhp_exit, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cpuhp_exit = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cpuhp_exit, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cpuhp_exit = internal global { [85 x i8], [43 x i8] } { [85 x i8] c"\22 cpu: %04u  state: %3d step: %3d ret: %d\22, REC->cpu, REC->state, REC->idx, REC->ret\00", [43 x i8] zeroinitializer }, align 32
@event_cpuhp_exit = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cpuhp_exit, %union.anon.1 { ptr @__tracepoint_cpuhp_exit }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cpuhp_exit }, ptr @print_fmt_cpuhp_exit, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cpuhp_exit = internal global ptr @event_cpuhp_exit, section "_ftrace_events", align 4
@__bpf_trace_tp_map_cpuhp_enter = internal global %union.anon.109 { %struct.bpf_raw_event_map { ptr @__tracepoint_cpuhp_enter, ptr @__bpf_trace_cpuhp_enter, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cpuhp_multi_enter = internal global %union.anon.110 { %struct.bpf_raw_event_map { ptr @__tracepoint_cpuhp_multi_enter, ptr @__bpf_trace_cpuhp_multi_enter, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cpuhp_exit = internal global %union.anon.111 { %struct.bpf_raw_event_map { ptr @__tracepoint_cpuhp_exit, ptr @__bpf_trace_cpuhp_exit, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@cpuhp_state = weak dso_local global %struct.cpuhp_cpu_state { i32 0, i32 0, i32 -1, ptr null, i8 0, i8 0, i8 0, i8 0, i32 0, ptr null, ptr null, i32 0, i32 0, %struct.completion zeroinitializer, %struct.completion zeroinitializer }, section ".data..percpu", align 4
@cpuhp_tasks_frozen = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__kstrtab_cpuhp_tasks_frozen = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpuhp_tasks_frozen = external dso_local constant [0 x i8], align 1
@__ksymtab_cpuhp_tasks_frozen = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpuhp_tasks_frozen to i32), ptr @__kstrtab_cpuhp_tasks_frozen, ptr @__kstrtabns_cpuhp_tasks_frozen }, section "___ksymtab_gpl+cpuhp_tasks_frozen", align 4
@cpu_add_remove_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.43, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @cpu_add_remove_lock, i64 52), ptr getelementptr (i8, ptr @cpu_add_remove_lock, i64 52) }, ptr @cpu_add_remove_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.44, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@cpu_hotplug_lock = internal global { %struct.percpu_rw_semaphore, [32 x i8] } { %struct.percpu_rw_semaphore { %struct.rcu_sync { i32 0, i32 0, %struct.wait_queue_head { %struct.spinlock { %union.anon.5 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.48, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @cpu_hotplug_lock, i64 52), ptr getelementptr (i8, ptr @cpu_hotplug_lock, i64 52) } }, %struct.callback_head zeroinitializer }, ptr @__percpu_rwsem_rc_cpu_hotplug_lock, %struct.rcuwait zeroinitializer, %struct.wait_queue_head { %struct.spinlock { %union.anon.5 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.49, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @cpu_hotplug_lock, i64 120), ptr getelementptr (i8, ptr @cpu_hotplug_lock, i64 120) } }, %struct.atomic_t zeroinitializer, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.50, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_cpus_read_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpus_read_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_cpus_read_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpus_read_lock to i32), ptr @__kstrtab_cpus_read_lock, ptr @__kstrtabns_cpus_read_lock }, section "___ksymtab_gpl+cpus_read_lock", align 4
@__kstrtab_cpus_read_trylock = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpus_read_trylock = external dso_local constant [0 x i8], align 1
@__ksymtab_cpus_read_trylock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpus_read_trylock to i32), ptr @__kstrtab_cpus_read_trylock, ptr @__kstrtabns_cpus_read_trylock }, section "___ksymtab_gpl+cpus_read_trylock", align 4
@__kstrtab_cpus_read_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpus_read_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab_cpus_read_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpus_read_unlock to i32), ptr @__kstrtab_cpus_read_unlock, ptr @__kstrtabns_cpus_read_unlock }, section "___ksymtab_gpl+cpus_read_unlock", align 4
@system_state = external dso_local local_unnamed_addr global i32, align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kernel/cpu.c\00", [19 x i8] zeroinitializer }, align 32
@cpu_hotplug_disabled = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_cpu_hotplug_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_hotplug_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_hotplug_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_hotplug_disable to i32), ptr @__kstrtab_cpu_hotplug_disable, ptr @__kstrtabns_cpu_hotplug_disable }, section "___ksymtab_gpl+cpu_hotplug_disable", align 4
@__kstrtab_cpu_hotplug_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_hotplug_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_hotplug_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_hotplug_enable to i32), ptr @__kstrtab_cpu_hotplug_enable, ptr @__kstrtabns_cpu_hotplug_enable }, section "___ksymtab_gpl+cpu_hotplug_enable", align 4
@cpuhp_threads = internal global { %struct.smp_hotplug_thread, [48 x i8] } { %struct.smp_hotplug_thread { ptr getelementptr (i8, ptr @cpuhp_state, i64 12), %struct.list_head zeroinitializer, ptr @cpuhp_should_run, ptr @cpuhp_thread_fun, ptr @cpuhp_create, ptr null, ptr null, ptr null, ptr null, i8 1, ptr @.str.52 }, [48 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@init_task = external dso_local global %struct.task_struct, align 128
@__cpu_online_mask = dso_local global %struct.cpumask zeroinitializer, section ".data..read_mostly", align 4
@__kstrtab_remove_cpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_remove_cpu = external dso_local constant [0 x i8], align 1
@__ksymtab_remove_cpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @remove_cpu to i32), ptr @__kstrtab_remove_cpu, ptr @__kstrtabns_remove_cpu }, section "___ksymtab_gpl+remove_cpu", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@smp_shutdown_nonboot_cpus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 1252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013Failed to offline CPU%d - error=%d\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"smp_shutdown_nonboot_cpus\00", [38 x i8] zeroinitializer }, align 32
@smp_shutdown_nonboot_cpus._entry_ptr = internal global ptr @smp_shutdown_nonboot_cpus._entry, section ".printk_index", align 4
@cpus_booted_once_mask = dso_local global { %struct.cpumask, [28 x i8] } zeroinitializer, align 32
@notify_cpu_starting.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_add_cpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_add_cpu = external dso_local constant [0 x i8], align 1
@__ksymtab_add_cpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @add_cpu to i32), ptr @__kstrtab_add_cpu, ptr @__kstrtabns_add_cpu }, section "___ksymtab_gpl+add_cpu", align 4
@bringup_hibernate_cpu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 1459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016Hibernated on a CPU that is offline! Bringing CPU up.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bringup_hibernate_cpu\00", [42 x i8] zeroinitializer }, align 32
@bringup_hibernate_cpu._entry_ptr = internal global ptr @bringup_hibernate_cpu._entry, section ".printk_index", align 4
@bringup_hibernate_cpu._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str, i32 1462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013Failed to bring hibernate-CPU up!\0A\00", [59 x i8] zeroinitializer }, align 32
@bringup_hibernate_cpu._entry_ptr.7 = internal global ptr @bringup_hibernate_cpu._entry.5, section ".printk_index", align 4
@__cpu_present_mask = dso_local global %struct.cpumask zeroinitializer, section ".data..read_mostly", align 4
@frozen_cpus = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@freeze_secondary_cpus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 1504, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016Disabling non-boot CPUs ...\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"freeze_secondary_cpus\00", [42 x i8] zeroinitializer }, align 32
@freeze_secondary_cpus._entry_ptr = internal global ptr @freeze_secondary_cpus._entry, section ".printk_index", align 4
@freeze_secondary_cpus._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str, i32 1510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016Wakeup pending. Abort CPU freeze\0A\00", [60 x i8] zeroinitializer }, align 32
@freeze_secondary_cpus._entry_ptr.12 = internal global ptr @freeze_secondary_cpus._entry.10, section ".printk_index", align 4
@freeze_secondary_cpus.___tp_str = internal global ptr @.str.13, section "__tracepoint_str", align 4
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CPU_OFF\00", [24 x i8] zeroinitializer }, align 32
@freeze_secondary_cpus.___tp_str.14 = internal global ptr @.str.13, section "__tracepoint_str", align 4
@freeze_secondary_cpus._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.9, ptr @.str, i32 1521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013Error taking CPU%d down: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@freeze_secondary_cpus._entry_ptr.17 = internal global ptr @freeze_secondary_cpus._entry.15, section ".printk_index", align 4
@freeze_secondary_cpus._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.9, ptr @.str, i32 1529, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Non-boot CPUs are not disabled\0A\00", [62 x i8] zeroinitializer }, align 32
@freeze_secondary_cpus._entry_ptr.20 = internal global ptr @freeze_secondary_cpus._entry.18, section ".printk_index", align 4
@thaw_secondary_cpus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str, i32 1560, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016Enabling non-boot CPUs ...\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"thaw_secondary_cpus\00", [44 x i8] zeroinitializer }, align 32
@thaw_secondary_cpus._entry_ptr = internal global ptr @thaw_secondary_cpus._entry, section ".printk_index", align 4
@thaw_secondary_cpus.___tp_str = internal global ptr @.str.23, section "__tracepoint_str", align 4
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CPU_ON\00", [25 x i8] zeroinitializer }, align 32
@thaw_secondary_cpus.___tp_str.24 = internal global ptr @.str.23, section "__tracepoint_str", align 4
@thaw_secondary_cpus._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.22, ptr @.str, i32 1569, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\016CPU%d is up\0A\00", [17 x i8] zeroinitializer }, align 32
@thaw_secondary_cpus._entry_ptr.27 = internal global ptr @thaw_secondary_cpus._entry.25, section ".printk_index", align 4
@thaw_secondary_cpus._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.22, ptr @.str, i32 1572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014Error taking CPU%d up: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@thaw_secondary_cpus._entry_ptr.30 = internal global ptr @thaw_secondary_cpus._entry.28, section ".printk_index", align 4
@__initcall__kmod_cpu__393_1588_alloc_frozen_cpus1 = internal global ptr @alloc_frozen_cpus, section ".initcall1.init", align 4
@__initcall__kmod_cpu__394_1635_cpu_hotplug_pm_sync_init1 = internal global ptr @cpu_hotplug_pm_sync_init, section ".initcall1.init", align 4
@cpuhp_state_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.104, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @cpuhp_state_mutex, i64 52), ptr getelementptr (i8, ptr @cpuhp_state_mutex, i64 52) }, ptr @cpuhp_state_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.105, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@__kstrtab___cpuhp_state_add_instance = external dso_local constant [0 x i8], align 1
@__kstrtabns___cpuhp_state_add_instance = external dso_local constant [0 x i8], align 1
@__ksymtab___cpuhp_state_add_instance = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cpuhp_state_add_instance to i32), ptr @__kstrtab___cpuhp_state_add_instance, ptr @__kstrtabns___cpuhp_state_add_instance }, section "___ksymtab_gpl+__cpuhp_state_add_instance", align 4
@__kstrtab___cpuhp_setup_state_cpuslocked = external dso_local constant [0 x i8], align 1
@__kstrtabns___cpuhp_setup_state_cpuslocked = external dso_local constant [0 x i8], align 1
@__ksymtab___cpuhp_setup_state_cpuslocked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cpuhp_setup_state_cpuslocked to i32), ptr @__kstrtab___cpuhp_setup_state_cpuslocked, ptr @__kstrtabns___cpuhp_setup_state_cpuslocked }, section "___ksymtab+__cpuhp_setup_state_cpuslocked", align 4
@__kstrtab___cpuhp_setup_state = external dso_local constant [0 x i8], align 1
@__kstrtabns___cpuhp_setup_state = external dso_local constant [0 x i8], align 1
@__ksymtab___cpuhp_setup_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cpuhp_setup_state to i32), ptr @__kstrtab___cpuhp_setup_state, ptr @__kstrtabns___cpuhp_setup_state }, section "___ksymtab+__cpuhp_setup_state", align 4
@__kstrtab___cpuhp_state_remove_instance = external dso_local constant [0 x i8], align 1
@__kstrtabns___cpuhp_state_remove_instance = external dso_local constant [0 x i8], align 1
@__ksymtab___cpuhp_state_remove_instance = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cpuhp_state_remove_instance to i32), ptr @__kstrtab___cpuhp_state_remove_instance, ptr @__kstrtabns___cpuhp_state_remove_instance }, section "___ksymtab_gpl+__cpuhp_state_remove_instance", align 4
@.str.31 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Error: Removing state %d which has instances left.\0A\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab___cpuhp_remove_state_cpuslocked = external dso_local constant [0 x i8], align 1
@__kstrtabns___cpuhp_remove_state_cpuslocked = external dso_local constant [0 x i8], align 1
@__ksymtab___cpuhp_remove_state_cpuslocked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cpuhp_remove_state_cpuslocked to i32), ptr @__kstrtab___cpuhp_remove_state_cpuslocked, ptr @__kstrtabns___cpuhp_remove_state_cpuslocked }, section "___ksymtab+__cpuhp_remove_state_cpuslocked", align 4
@__kstrtab___cpuhp_remove_state = external dso_local constant [0 x i8], align 1
@__kstrtabns___cpuhp_remove_state = external dso_local constant [0 x i8], align 1
@__ksymtab___cpuhp_remove_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cpuhp_remove_state to i32), ptr @__kstrtab___cpuhp_remove_state, ptr @__kstrtabns___cpuhp_remove_state }, section "___ksymtab+__cpuhp_remove_state", align 4
@__initcall__kmod_cpu__395_2552_cpuhp_sysfs_init6 = internal global ptr @cpuhp_sysfs_init, section ".initcall6.init", align 4
@cpu_bit_bitmap = dso_local constant { [33 x [1 x i32]], [60 x i8] } { [33 x [1 x i32]] [[1 x i32] zeroinitializer, [1 x i32] [i32 1], [1 x i32] [i32 2], [1 x i32] [i32 4], [1 x i32] [i32 8], [1 x i32] [i32 16], [1 x i32] [i32 32], [1 x i32] [i32 64], [1 x i32] [i32 128], [1 x i32] [i32 256], [1 x i32] [i32 512], [1 x i32] [i32 1024], [1 x i32] [i32 2048], [1 x i32] [i32 4096], [1 x i32] [i32 8192], [1 x i32] [i32 16384], [1 x i32] [i32 32768], [1 x i32] [i32 65536], [1 x i32] [i32 131072], [1 x i32] [i32 262144], [1 x i32] [i32 524288], [1 x i32] [i32 1048576], [1 x i32] [i32 2097152], [1 x i32] [i32 4194304], [1 x i32] [i32 8388608], [1 x i32] [i32 16777216], [1 x i32] [i32 33554432], [1 x i32] [i32 67108864], [1 x i32] [i32 134217728], [1 x i32] [i32 268435456], [1 x i32] [i32 536870912], [1 x i32] [i32 1073741824], [1 x i32] [i32 -2147483648]], [60 x i8] zeroinitializer }, align 32
@__kstrtab_cpu_bit_bitmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_bit_bitmap = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_bit_bitmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_bit_bitmap to i32), ptr @__kstrtab_cpu_bit_bitmap, ptr @__kstrtabns_cpu_bit_bitmap }, section "___ksymtab_gpl+cpu_bit_bitmap", align 4
@cpu_all_bits = dso_local constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 15], [28 x i8] zeroinitializer }, align 32
@__kstrtab_cpu_all_bits = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_all_bits = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_all_bits = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_all_bits to i32), ptr @__kstrtab_cpu_all_bits, ptr @__kstrtabns_cpu_all_bits }, section "___ksymtab+cpu_all_bits", align 4
@__cpu_possible_mask = dso_local global %struct.cpumask zeroinitializer, section ".data..read_mostly", align 4
@__kstrtab___cpu_possible_mask = external dso_local constant [0 x i8], align 1
@__kstrtabns___cpu_possible_mask = external dso_local constant [0 x i8], align 1
@__ksymtab___cpu_possible_mask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cpu_possible_mask to i32), ptr @__kstrtab___cpu_possible_mask, ptr @__kstrtabns___cpu_possible_mask }, section "___ksymtab+__cpu_possible_mask", align 4
@__kstrtab___cpu_online_mask = external dso_local constant [0 x i8], align 1
@__kstrtabns___cpu_online_mask = external dso_local constant [0 x i8], align 1
@__ksymtab___cpu_online_mask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cpu_online_mask to i32), ptr @__kstrtab___cpu_online_mask, ptr @__kstrtabns___cpu_online_mask }, section "___ksymtab+__cpu_online_mask", align 4
@__kstrtab___cpu_present_mask = external dso_local constant [0 x i8], align 1
@__kstrtabns___cpu_present_mask = external dso_local constant [0 x i8], align 1
@__ksymtab___cpu_present_mask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cpu_present_mask to i32), ptr @__kstrtab___cpu_present_mask, ptr @__kstrtabns___cpu_present_mask }, section "___ksymtab+__cpu_present_mask", align 4
@__cpu_active_mask = dso_local global %struct.cpumask zeroinitializer, section ".data..read_mostly", align 4
@__kstrtab___cpu_active_mask = external dso_local constant [0 x i8], align 1
@__kstrtabns___cpu_active_mask = external dso_local constant [0 x i8], align 1
@__ksymtab___cpu_active_mask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cpu_active_mask to i32), ptr @__kstrtab___cpu_active_mask, ptr @__kstrtabns___cpu_active_mask }, section "___ksymtab+__cpu_active_mask", align 4
@__cpu_dying_mask = dso_local global %struct.cpumask zeroinitializer, section ".data..read_mostly", align 4
@__kstrtab___cpu_dying_mask = external dso_local constant [0 x i8], align 1
@__kstrtabns___cpu_dying_mask = external dso_local constant [0 x i8], align 1
@__ksymtab___cpu_dying_mask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cpu_dying_mask to i32), ptr @__kstrtab___cpu_dying_mask, ptr @__kstrtabns___cpu_dying_mask }, section "___ksymtab+__cpu_dying_mask", align 4
@__num_online_cpus = dso_local global %struct.atomic_t zeroinitializer, section ".data..read_mostly", align 4
@__kstrtab___num_online_cpus = external dso_local constant [0 x i8], align 1
@__kstrtabns___num_online_cpus = external dso_local constant [0 x i8], align 1
@__ksymtab___num_online_cpus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__num_online_cpus to i32), ptr @__kstrtab___num_online_cpus, ptr @__kstrtabns___num_online_cpus }, section "___ksymtab+__num_online_cpus", align 4
@__boot_cpu_id = dso_local local_unnamed_addr global i32 0, align 4
@__setup_str_mitigations_parse_cmdline = internal constant [12 x i8] c"mitigations\00", section ".init.rodata", align 1
@__setup_mitigations_parse_cmdline = internal global %struct.obs_kernel_param { ptr @__setup_str_mitigations_parse_cmdline, ptr @mitigations_parse_cmdline, i32 1 }, section ".init.setup", align 4
@cpu_mitigations = internal unnamed_addr global i32 1, section ".data..ro_after_init", align 4
@__kstrtab_cpu_mitigations_off = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_mitigations_off = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_mitigations_off = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_mitigations_off to i32), ptr @__kstrtab_cpu_mitigations_off, ptr @__kstrtabns_cpu_mitigations_off }, section "___ksymtab_gpl+cpu_mitigations_off", align 4
@__kstrtab_cpu_mitigations_auto_nosmt = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_mitigations_auto_nosmt = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_mitigations_auto_nosmt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_mitigations_auto_nosmt to i32), ptr @__kstrtab_cpu_mitigations_auto_nosmt, ptr @__kstrtabns_cpu_mitigations_auto_nosmt }, section "___ksymtab_gpl+cpu_mitigations_auto_nosmt", align 4
@__pcpu_unique_cpuhp_state = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique___percpu_rwsem_rc_cpu_hotplug_lock = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__percpu_rwsem_rc_cpu_hotplug_lock = weak dso_local global i32 0, section ".data..percpu", align 4
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpu\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"target\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"idx\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"void *\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fun\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"cpu: %04u target: %3d step: %3d (%ps)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"state\00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ret\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c" cpu: %04u  state: %3d step: %3d ret: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cpu_add_remove_lock.wait_lock\00", [34 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cpu_add_remove_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/percpu-rwsem.h\00", [35 x i8] zeroinitializer }, align 32
@rcu_sync_is_idle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcu_sync.h\00", [39 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"suspicious rcu_sync_is_idle() usage\00", [60 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cpu_hotplug_lock.rss.gp_wait.lock\00", [62 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cpu_hotplug_lock.waiters.lock\00", [34 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cpu_hotplug_lock\00", [47 x i8] zeroinitializer }, align 32
@__cpu_hotplug_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unbalanced cpu hotplug enable\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cpuhp/%u\00", [23 x i8] zeroinitializer }, align 32
@cpuhp_thread_fun.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cpuhp_thread_fun.__already_done.53 = internal unnamed_addr global i1 false, section ".data.once", align 1
@cpuhp_thread_fun.__already_done.54 = internal unnamed_addr global i1 false, section ".data.once", align 1
@cpuhp_thread_fun.__already_done.55 = internal unnamed_addr global i1 false, section ".data.once", align 1
@cpuhp_state_up_map = internal global { %struct.lockdep_map, [36 x i8] } { %struct.lockdep_map { ptr @cpuhp_state_up_map, [2 x ptr] zeroinitializer, ptr @.str.56, i8 0, i8 0, i8 0, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@cpuhp_state_down_map = internal global { %struct.lockdep_map, [36 x i8] } { %struct.lockdep_map { ptr @cpuhp_state_down_map, [2 x ptr] zeroinitializer, ptr @.str.57, i8 0, i8 0, i8 0, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cpuhp_state-up\00", [17 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cpuhp_state-down\00", [47 x i8] zeroinitializer }, align 32
@cpuhp_invoke_callback.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cpuhp_invoke_callback.__already_done.58 = internal unnamed_addr global i1 false, section ".data.once", align 1
@cpuhp_invoke_callback.__already_done.59 = internal unnamed_addr global i1 false, section ".data.once", align 1
@cpuhp_invoke_callback.__already_done.60 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.61 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/cpuhp.h\00", [35 x i8] zeroinitializer }, align 32
@trace_cpuhp_enter.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.62 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@trace_cpuhp_exit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_cpuhp_multi_enter.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.65 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.67 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@cpu_up._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str, i32 1389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\013can't online cpu %d because it is not configured as may-hotadd at boot time\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cpu_up\00", [25 x i8] zeroinitializer }, align 32
@cpu_up._entry_ptr = internal global ptr @cpu_up._entry, section ".printk_index", align 4
@housekeeping_overridden = external dso_local global %struct.static_key_false, align 4
@__tracepoint_suspend_resume = external dso_local global %struct.tracepoint, align 4
@.str.70 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/power.h\00", [35 x i8] zeroinitializer }, align 32
@trace_suspend_resume.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.71 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DEAD callback error for CPU%d\00", [34 x i8] zeroinitializer }, align 32
@cpuhp_down_callbacks.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.72, ptr @.str, ptr @.str.73, i8 1, i8 20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cpuhp_down_callbacks\00", [43 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"CPU DOWN failed (%d) CPU %u state %s (%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@cpuhp_up_callbacks.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.74, ptr @.str, ptr @.str.75, i8 0, i8 -80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cpuhp_up_callbacks\00", [45 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"CPU UP failed (%d) CPU %u state %s (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@cpu_hotplug_pm_sync_init.cpu_hotplug_pm_callback_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @cpu_hotplug_pm_callback, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@cpuhp_hp_states = internal global { [230 x %struct.cpuhp_step], [1128 x i8] } { [230 x %struct.cpuhp_step] [%struct.cpuhp_step { ptr @.str.77, %union.anon.112 zeroinitializer, %union.anon.113 zeroinitializer, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step { ptr @.str.78, %union.anon.112 { ptr @smpboot_create_threads }, %union.anon.113 zeroinitializer, %struct.hlist_head zeroinitializer, i8 1, i8 0 }, %struct.cpuhp_step { ptr @.str.79, %union.anon.112 { ptr @perf_event_init_cpu }, %union.anon.113 { ptr @perf_event_exit_cpu }, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step { ptr @.str.80, %union.anon.112 { ptr @workqueue_prepare_cpu }, %union.anon.113 zeroinitializer, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step { ptr @.str.81, %union.anon.112 { ptr @hrtimers_prepare_cpu }, %union.anon.113 { ptr @hrtimers_dead_cpu }, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step { ptr @.str.82, %union.anon.112 { ptr @smpcfd_prepare_cpu }, %union.anon.113 { ptr @smpcfd_dead_cpu }, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step { ptr @.str.83, %union.anon.112 { ptr @relay_prepare_cpu }, %union.anon.113 zeroinitializer, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step { ptr @.str.84, %union.anon.112 zeroinitializer, %union.anon.113 zeroinitializer, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step { ptr @.str.85, %union.anon.112 { ptr @rcutree_prepare_cpu }, %union.anon.113 { ptr @rcutree_dead_cpu }, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step { ptr @.str.86, %union.anon.112 { ptr @timers_prepare_cpu }, %union.anon.113 { ptr @timers_dead_cpu }, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step { ptr @.str.87, %union.anon.112 { ptr @bringup_cpu }, %union.anon.113 { ptr @finish_cpu }, %struct.hlist_head zeroinitializer, i8 1, i8 0 }, %struct.cpuhp_step { ptr @.str.88, %union.anon.112 zeroinitializer, %union.anon.113 zeroinitializer, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step { ptr @.str.89, %union.anon.112 zeroinitializer, %union.anon.113 zeroinitializer, %struct.hlist_head zeroinitializer, i8 1, i8 0 }, %struct.cpuhp_step { ptr @.str.90, %union.anon.112 { ptr @sched_cpu_starting }, %union.anon.113 { ptr @sched_cpu_dying }, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step { ptr @.str.91, %union.anon.112 zeroinitializer, %union.anon.113 { ptr @rcutree_dying_cpu }, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step { ptr @.str.92, %union.anon.112 zeroinitializer, %union.anon.113 { ptr @smpcfd_dying_cpu }, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step { ptr @.str.93, %union.anon.112 zeroinitializer, %union.anon.113 zeroinitializer, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step { ptr @.str.94, %union.anon.112 zeroinitializer, %union.anon.113 { ptr @takedown_cpu }, %struct.hlist_head zeroinitializer, i8 1, i8 0 }, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step { ptr @.str.95, %union.anon.112 zeroinitializer, %union.anon.113 { ptr @sched_cpu_wait_empty }, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step { ptr @.str.96, %union.anon.112 { ptr @smpboot_unpark_threads }, %union.anon.113 { ptr @smpboot_park_threads }, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step { ptr @.str.97, %union.anon.112 { ptr @irq_affinity_online_cpu }, %union.anon.113 zeroinitializer, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step { ptr @.str.98, %union.anon.112 { ptr @perf_event_init_cpu }, %union.anon.113 { ptr @perf_event_exit_cpu }, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step { ptr @.str.99, %union.anon.112 { ptr @lockup_detector_online_cpu }, %union.anon.113 { ptr @lockup_detector_offline_cpu }, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step { ptr @.str.100, %union.anon.112 { ptr @workqueue_online_cpu }, %union.anon.113 { ptr @workqueue_offline_cpu }, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step { ptr @.str.101, %union.anon.112 { ptr @rcutree_online_cpu }, %union.anon.113 { ptr @rcutree_offline_cpu }, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step { ptr @.str.102, %union.anon.112 { ptr @sched_cpu_activate }, %union.anon.113 { ptr @sched_cpu_deactivate }, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step { ptr @.str.103, %union.anon.112 zeroinitializer, %union.anon.113 zeroinitializer, %struct.hlist_head zeroinitializer, i8 0, i8 0 }], [1128 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"offline\00", [24 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"threads:prepare\00", [16 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"perf:prepare\00", [19 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"workqueue:prepare\00", [46 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hrtimers:prepare\00", [47 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"smpcfd:prepare\00", [17 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"relay:prepare\00", [18 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"slab:prepare\00", [19 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RCU/tree:prepare\00", [47 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"timers:prepare\00", [17 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cpu:bringup\00", [20 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"idle:dead\00", [22 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ap:offline\00", [21 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sched:starting\00", [17 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RCU/tree:dying\00", [17 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"smpcfd:dying\00", [19 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ap:online\00", [22 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cpu:teardown\00", [19 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sched:waitempty\00", [16 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"smpboot/threads:online\00", [41 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"irq/affinity:online\00", [44 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"perf:online\00", [20 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lockup_detector:online\00", [41 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"workqueue:online\00", [47 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RCU/tree:online\00", [16 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sched:active\00", [19 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"online\00", [25 x i8] zeroinitializer }, align 32
@bringup_wait_for_ap.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@init_mm = external dso_local global %struct.mm_struct, align 8
@take_cpu_down.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.104 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cpuhp_state_mutex.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cpuhp_state_mutex\00", [46 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"No more dynamic states available for CPU hotplug\0A\00", [46 x i8] zeroinitializer }, align 32
@cpu_subsys = external dso_local local_unnamed_addr global %struct.bus_type, align 4
@cpuhp_cpu_root_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.117, ptr null, ptr null, ptr @cpuhp_cpu_root_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@cpuhp_cpu_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.117, ptr null, ptr null, ptr @cpuhp_cpu_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@cpuhp_smt_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.107, ptr null, ptr null, ptr @cpuhp_smt_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"smt\00", [28 x i8] zeroinitializer }, align 32
@cpuhp_smt_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_control, ptr @dev_attr_active, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_control = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.108, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @control_show, ptr @control_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.115, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"control\00", [24 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"notimplemented\00", [17 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"active\00", [25 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@sched_smt_present = external dso_local global %struct.static_key_false, align 4
@.str.117 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hotplug\00", [24 x i8] zeroinitializer }, align 32
@cpuhp_cpu_root_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_states, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_states = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.118, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @states_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"states\00", [25 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%3d: %s\0A\00", [23 x i8] zeroinitializer }, align 32
@cpuhp_cpu_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_state, ptr @dev_attr_target, ptr @dev_attr_fail, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_state = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @state_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_target = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @target_show, ptr @target_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fail = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.120, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fail_show, ptr @fail_store }, [36 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fail\00", [27 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"auto,nosmt\00", [21 x i8] zeroinitializer }, align 32
@mitigations_parse_cmdline._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str, i32 2694, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\012Unsupported mitigations=%s, system may still be vulnerable\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mitigations_parse_cmdline\00", [38 x i8] zeroinitializer }, align 32
@mitigations_parse_cmdline._entry_ptr = internal global ptr @mitigations_parse_cmdline._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 70, i64 194]
@__sancov_gen_cov_switch_values.125 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.126 = private unnamed_addr constant [30 x i8] c"str__cpuhp__trace_system_name\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 36, i32 1 }
@___asan_gen_.129 = private unnamed_addr constant [31 x i8] c"trace_event_fields_cpuhp_enter\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [35 x i8] c"trace_event_type_funcs_cpuhp_enter\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [22 x i8] c"print_fmt_cpuhp_enter\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [18 x i8] c"event_cpuhp_enter\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [37 x i8] c"trace_event_fields_cpuhp_multi_enter\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_cpuhp_multi_enter\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [28 x i8] c"print_fmt_cpuhp_multi_enter\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [24 x i8] c"event_cpuhp_multi_enter\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 37, i32 1 }
@___asan_gen_.153 = private unnamed_addr constant [30 x i8] c"trace_event_fields_cpuhp_exit\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [34 x i8] c"trace_event_type_funcs_cpuhp_exit\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [21 x i8] c"print_fmt_cpuhp_exit\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [17 x i8] c"event_cpuhp_exit\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [19 x i8] c"cpuhp_tasks_frozen\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 280, i32 6 }
@___asan_gen_.168 = private unnamed_addr constant [20 x i8] c"cpu_add_remove_lock\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"cpu_hotplug_lock\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 346, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant [21 x i8] c"cpu_hotplug_disabled\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 301, i32 12 }
@___asan_gen_.180 = private unnamed_addr constant [14 x i8] c"cpuhp_threads\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 883, i32 34 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1251, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant [22 x i8] c"cpus_booted_once_mask\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 88, i32 11 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1459, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1462, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant [12 x i8] c"frozen_cpus\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1482, i32 22 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1504, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1510, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1515, i32 24 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1521, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1529, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1560, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1565, i32 24 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1569, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1572, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant [18 x i8] c"cpuhp_state_mutex\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 2158, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant [15 x i8] c"cpu_bit_bitmap\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 2569, i32 21 }
@___asan_gen_.276 = private unnamed_addr constant [13 x i8] c"cpu_all_bits\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 2580, i32 7 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 65, i32 1 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 279, i32 8 }
@___asan_gen_.319 = private unnamed_addr constant [32 x i8] c"../include/linux/percpu-rwsem.h\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 49, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant [28 x i8] c"../include/linux/rcu_sync.h\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 34, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 305, i32 1 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 383, i32 6 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 888, i32 18 }
@___asan_gen_.342 = private unnamed_addr constant [19 x i8] c"cpuhp_state_up_map\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 92, i32 27 }
@___asan_gen_.345 = private unnamed_addr constant [21 x i8] c"cpuhp_state_down_map\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 94, i32 27 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 93, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 95, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant [32 x i8] c"../include/trace/events/cpuhp.h\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 10, i32 1 }
@___asan_gen_.360 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.364 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 87, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 108, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 695, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 723, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1388, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant [32 x i8] c"../include/trace/events/power.h\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 226, i32 1 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1170, i32 4 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1105, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 702, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant [27 x i8] c"cpu_hotplug_pm_callback_nb\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1632, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant [16 x i8] c"cpuhp_hp_states\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1644, i32 26 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1646, i32 13 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1652, i32 13 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1658, i32 13 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1663, i32 13 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1668, i32 13 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1673, i32 13 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1678, i32 13 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1683, i32 13 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1688, i32 13 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1698, i32 13 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1704, i32 13 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1711, i32 13 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1718, i32 13 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1723, i32 13 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1728, i32 13 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1733, i32 13 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1740, i32 13 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1747, i32 13 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1754, i32 13 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1761, i32 13 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1766, i32 13 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1771, i32 13 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1776, i32 13 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1781, i32 13 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1786, i32 13 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1798, i32 13 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1806, i32 13 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 141, i32 8 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 1847, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant [26 x i8] c"cpuhp_cpu_root_attr_group\00", align 1
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 2422, i32 37 }
@___asan_gen_.504 = private unnamed_addr constant [21 x i8] c"cpuhp_cpu_attr_group\00", align 1
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 2390, i32 37 }
@___asan_gen_.507 = private unnamed_addr constant [21 x i8] c"cpuhp_smt_attr_group\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 2516, i32 37 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 2518, i32 10 }
@___asan_gen_.513 = private unnamed_addr constant [16 x i8] c"cpuhp_smt_attrs\00", align 1
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 2510, i32 26 }
@___asan_gen_.516 = private unnamed_addr constant [17 x i8] c"dev_attr_control\00", align 1
@___asan_gen_.519 = private unnamed_addr constant [16 x i8] c"dev_attr_active\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 2501, i32 8 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 2493, i32 38 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 2482, i32 24 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 2485, i32 30 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 2508, i32 8 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 2506, i32 38 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 2424, i32 10 }
@___asan_gen_.543 = private unnamed_addr constant [21 x i8] c"cpuhp_cpu_root_attrs\00", align 1
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 2417, i32 26 }
@___asan_gen_.546 = private unnamed_addr constant [16 x i8] c"dev_attr_states\00", align 1
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 2415, i32 8 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 2407, i32 23 }
@___asan_gen_.555 = private unnamed_addr constant [16 x i8] c"cpuhp_cpu_attrs\00", align 1
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 2383, i32 26 }
@___asan_gen_.558 = private unnamed_addr constant [15 x i8] c"dev_attr_state\00", align 1
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 2273, i32 8 }
@___asan_gen_.561 = private unnamed_addr constant [16 x i8] c"dev_attr_target\00", align 1
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 2321, i32 8 }
@___asan_gen_.564 = private unnamed_addr constant [14 x i8] c"dev_attr_fail\00", align 1
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 2381, i32 8 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 2688, i32 24 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 2690, i32 24 }
@___asan_gen_.576 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.582 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.583 = private constant [16 x i8] c"../kernel/cpu.c\00", align 1
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 2693, i32 3 }
@llvm.compiler.used = appending global [212 x ptr] [ptr @__bpf_trace_tp_map_cpuhp_enter, ptr @__bpf_trace_tp_map_cpuhp_exit, ptr @__bpf_trace_tp_map_cpuhp_multi_enter, ptr @__event_cpuhp_enter, ptr @__event_cpuhp_exit, ptr @__event_cpuhp_multi_enter, ptr @__initcall__kmod_cpu__393_1588_alloc_frozen_cpus1, ptr @__initcall__kmod_cpu__394_1635_cpu_hotplug_pm_sync_init1, ptr @__initcall__kmod_cpu__395_2552_cpuhp_sysfs_init6, ptr @__ksymtab___cpu_active_mask, ptr @__ksymtab___cpu_dying_mask, ptr @__ksymtab___cpu_online_mask, ptr @__ksymtab___cpu_possible_mask, ptr @__ksymtab___cpu_present_mask, ptr @__ksymtab___cpuhp_remove_state, ptr @__ksymtab___cpuhp_remove_state_cpuslocked, ptr @__ksymtab___cpuhp_setup_state, ptr @__ksymtab___cpuhp_setup_state_cpuslocked, ptr @__ksymtab___cpuhp_state_add_instance, ptr @__ksymtab___cpuhp_state_remove_instance, ptr @__ksymtab___num_online_cpus, ptr @__ksymtab_add_cpu, ptr @__ksymtab_cpu_all_bits, ptr @__ksymtab_cpu_bit_bitmap, ptr @__ksymtab_cpu_hotplug_disable, ptr @__ksymtab_cpu_hotplug_enable, ptr @__ksymtab_cpu_mitigations_auto_nosmt, ptr @__ksymtab_cpu_mitigations_off, ptr @__ksymtab_cpuhp_tasks_frozen, ptr @__ksymtab_cpus_read_lock, ptr @__ksymtab_cpus_read_trylock, ptr @__ksymtab_cpus_read_unlock, ptr @__ksymtab_remove_cpu, ptr @__setup_mitigations_parse_cmdline, ptr @__tracepoint_cpuhp_enter, ptr @__tracepoint_cpuhp_exit, ptr @__tracepoint_cpuhp_multi_enter, ptr @__tracepoint_ptr_cpuhp_enter, ptr @__tracepoint_ptr_cpuhp_exit, ptr @__tracepoint_ptr_cpuhp_multi_enter, ptr @bringup_hibernate_cpu._entry, ptr @bringup_hibernate_cpu._entry.5, ptr @bringup_hibernate_cpu._entry_ptr, ptr @bringup_hibernate_cpu._entry_ptr.7, ptr @cpu_up._entry, ptr @cpu_up._entry_ptr, ptr @event_class_cpuhp_enter, ptr @event_class_cpuhp_exit, ptr @event_class_cpuhp_multi_enter, ptr @event_cpuhp_enter, ptr @event_cpuhp_exit, ptr @event_cpuhp_multi_enter, ptr @freeze_secondary_cpus.___tp_str, ptr @freeze_secondary_cpus.___tp_str.14, ptr @freeze_secondary_cpus._entry, ptr @freeze_secondary_cpus._entry.10, ptr @freeze_secondary_cpus._entry.15, ptr @freeze_secondary_cpus._entry.18, ptr @freeze_secondary_cpus._entry_ptr, ptr @freeze_secondary_cpus._entry_ptr.12, ptr @freeze_secondary_cpus._entry_ptr.17, ptr @freeze_secondary_cpus._entry_ptr.20, ptr @mitigations_parse_cmdline._entry, ptr @mitigations_parse_cmdline._entry_ptr, ptr @smp_shutdown_nonboot_cpus._entry, ptr @smp_shutdown_nonboot_cpus._entry_ptr, ptr @thaw_secondary_cpus.___tp_str, ptr @thaw_secondary_cpus.___tp_str.24, ptr @thaw_secondary_cpus._entry, ptr @thaw_secondary_cpus._entry.25, ptr @thaw_secondary_cpus._entry.28, ptr @thaw_secondary_cpus._entry_ptr, ptr @thaw_secondary_cpus._entry_ptr.27, ptr @thaw_secondary_cpus._entry_ptr.30, ptr @str__cpuhp__trace_system_name, ptr @trace_event_fields_cpuhp_enter, ptr @trace_event_type_funcs_cpuhp_enter, ptr @print_fmt_cpuhp_enter, ptr @trace_event_fields_cpuhp_multi_enter, ptr @trace_event_type_funcs_cpuhp_multi_enter, ptr @print_fmt_cpuhp_multi_enter, ptr @trace_event_fields_cpuhp_exit, ptr @trace_event_type_funcs_cpuhp_exit, ptr @print_fmt_cpuhp_exit, ptr @cpuhp_tasks_frozen, ptr @cpu_add_remove_lock, ptr @cpu_hotplug_lock, ptr @.str, ptr @cpu_hotplug_disabled, ptr @cpuhp_threads, ptr @.str.1, ptr @.str.2, ptr @cpus_booted_once_mask, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @frozen_cpus, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @cpuhp_state_mutex, ptr @.str.31, ptr @cpu_bit_bitmap, ptr @cpu_all_bits, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @cpuhp_state_up_map, ptr @cpuhp_state_down_map, ptr @.str.56, ptr @.str.57, ptr @.str.61, ptr @.str.62, ptr @init_completion.__key, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @cpu_hotplug_pm_sync_init.cpu_hotplug_pm_callback_nb, ptr @cpuhp_hp_states, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @cpuhp_cpu_root_attr_group, ptr @cpuhp_cpu_attr_group, ptr @cpuhp_smt_attr_group, ptr @.str.107, ptr @cpuhp_smt_attrs, ptr @dev_attr_control, ptr @dev_attr_active, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @cpuhp_cpu_root_attrs, ptr @dev_attr_states, ptr @.str.118, ptr @.str.119, ptr @cpuhp_cpu_attrs, ptr @dev_attr_state, ptr @dev_attr_target, ptr @dev_attr_fail, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124], section "llvm.metadata"
@0 = internal global [153 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__cpuhp__trace_system_name to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cpuhp_enter to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cpuhp_enter to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cpuhp_enter to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cpuhp_enter to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cpuhp_multi_enter to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cpuhp_multi_enter to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cpuhp_multi_enter to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cpuhp_multi_enter to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cpuhp_exit to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cpuhp_exit to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cpuhp_exit to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cpuhp_exit to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuhp_tasks_frozen to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_add_remove_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_hotplug_lock to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_hotplug_disabled to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuhp_threads to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smp_shutdown_nonboot_cpus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpus_booted_once_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bringup_hibernate_cpu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bringup_hibernate_cpu._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frozen_cpus to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @freeze_secondary_cpus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @freeze_secondary_cpus._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @freeze_secondary_cpus._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @freeze_secondary_cpus._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thaw_secondary_cpus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thaw_secondary_cpus._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thaw_secondary_cpus._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuhp_state_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_bit_bitmap to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_all_bits to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuhp_state_up_map to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuhp_state_down_map to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_up._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_hotplug_pm_sync_init.cpu_hotplug_pm_callback_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuhp_hp_states to i32), i32 4600, i32 5728, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuhp_cpu_root_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuhp_cpu_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuhp_smt_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuhp_smt_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_control to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuhp_cpu_root_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_states to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuhp_cpu_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_target to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fail to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mitigations_parse_cmdline._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cpuhp_enter(ptr nocapture readnone %__data, i32 noundef %cpu, i32 noundef %target, i32 noundef %idx, ptr noundef %fun) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cpuhp_enter, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
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
  tail call void %2(ptr noundef %4, i32 noundef %cpu, i32 noundef %target, i32 noundef %idx, ptr noundef %fun) #19
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cpuhp_multi_enter(ptr nocapture readnone %__data, i32 noundef %cpu, i32 noundef %target, i32 noundef %idx, ptr noundef %fun, ptr noundef %node) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cpuhp_multi_enter, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
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
  tail call void %2(ptr noundef %4, i32 noundef %cpu, i32 noundef %target, i32 noundef %idx, ptr noundef %fun, ptr noundef %node) #19
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cpuhp_exit(ptr nocapture readnone %__data, i32 noundef %cpu, i32 noundef %state, i32 noundef %idx, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cpuhp_exit, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
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
  tail call void %2(ptr noundef %4, i32 noundef %cpu, i32 noundef %state, i32 noundef %idx, i32 noundef %ret) #19
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cpuhp_enter(ptr noundef %__data, i32 noundef %cpu, i32 noundef %target, i32 noundef %idx, ptr noundef %fun) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #19
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !422

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !423

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #19
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #19
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %cpu6 = getelementptr inbounds %struct.trace_event_raw_cpuhp_enter, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %cpu6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %cpu, ptr %cpu6, align 4
  %target7 = getelementptr inbounds %struct.trace_event_raw_cpuhp_enter, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %target7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %target, ptr %target7, align 4
  %idx8 = getelementptr inbounds %struct.trace_event_raw_cpuhp_enter, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %idx8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %idx, ptr %idx8, align 4
  %fun9 = getelementptr inbounds %struct.trace_event_raw_cpuhp_enter, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %fun9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %fun, ptr %fun9, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cpuhp_enter(ptr noundef %__data, i32 noundef %cpu, i32 noundef %target, i32 noundef %idx, ptr noundef %fun) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #19
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !424
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #19
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !424
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !412) #19
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu4 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu4, align 4
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

land.lhs.true8:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true8.cleanup_crit_edge, label %land.lhs.true8.if.end_crit_edge

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true8.if.end_crit_edge, %entry.if.end_crit_edge
  %call14 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #19
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #19
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #19
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !412) #19
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %cpu18 = getelementptr inbounds %struct.trace_event_raw_cpuhp_enter, ptr %call14, i32 0, i32 1
  %27 = ptrtoint ptr %cpu18 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cpu, ptr %cpu18, align 4
  %target19 = getelementptr inbounds %struct.trace_event_raw_cpuhp_enter, ptr %call14, i32 0, i32 2
  %28 = ptrtoint ptr %target19 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %target, ptr %target19, align 4
  %idx20 = getelementptr inbounds %struct.trace_event_raw_cpuhp_enter, ptr %call14, i32 0, i32 3
  %29 = ptrtoint ptr %idx20 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %idx, ptr %idx20, align 4
  %fun21 = getelementptr inbounds %struct.trace_event_raw_cpuhp_enter, ptr %call14, i32 0, i32 4
  %30 = ptrtoint ptr %fun21 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %fun, ptr %fun21, align 4
  %31 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rctx, align 4
  %33 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call14, i32 noundef 28, i32 noundef %32, ptr noundef %__data, i64 noundef 1, ptr noundef %34, ptr noundef %11, ptr noundef null) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cpuhp_multi_enter(ptr noundef %__data, i32 noundef %cpu, i32 noundef %target, i32 noundef %idx, ptr noundef %fun, ptr nocapture noundef readnone %node) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #19
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !422

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !423

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #19
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #19
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %cpu6 = getelementptr inbounds %struct.trace_event_raw_cpuhp_multi_enter, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %cpu6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %cpu, ptr %cpu6, align 4
  %target7 = getelementptr inbounds %struct.trace_event_raw_cpuhp_multi_enter, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %target7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %target, ptr %target7, align 4
  %idx8 = getelementptr inbounds %struct.trace_event_raw_cpuhp_multi_enter, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %idx8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %idx, ptr %idx8, align 4
  %fun9 = getelementptr inbounds %struct.trace_event_raw_cpuhp_multi_enter, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %fun9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %fun, ptr %fun9, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cpuhp_multi_enter(ptr noundef %__data, i32 noundef %cpu, i32 noundef %target, i32 noundef %idx, ptr noundef %fun, ptr nocapture noundef readnone %node) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #19
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !424
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #19
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !424
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !412) #19
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu4 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu4, align 4
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

land.lhs.true8:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true8.cleanup_crit_edge, label %land.lhs.true8.if.end_crit_edge

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true8.if.end_crit_edge, %entry.if.end_crit_edge
  %call14 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #19
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #19
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #19
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !412) #19
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %cpu18 = getelementptr inbounds %struct.trace_event_raw_cpuhp_multi_enter, ptr %call14, i32 0, i32 1
  %27 = ptrtoint ptr %cpu18 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cpu, ptr %cpu18, align 4
  %target19 = getelementptr inbounds %struct.trace_event_raw_cpuhp_multi_enter, ptr %call14, i32 0, i32 2
  %28 = ptrtoint ptr %target19 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %target, ptr %target19, align 4
  %idx20 = getelementptr inbounds %struct.trace_event_raw_cpuhp_multi_enter, ptr %call14, i32 0, i32 3
  %29 = ptrtoint ptr %idx20 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %idx, ptr %idx20, align 4
  %fun21 = getelementptr inbounds %struct.trace_event_raw_cpuhp_multi_enter, ptr %call14, i32 0, i32 4
  %30 = ptrtoint ptr %fun21 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %fun, ptr %fun21, align 4
  %31 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rctx, align 4
  %33 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call14, i32 noundef 28, i32 noundef %32, ptr noundef %__data, i64 noundef 1, ptr noundef %34, ptr noundef %11, ptr noundef null) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cpuhp_exit(ptr noundef %__data, i32 noundef %cpu, i32 noundef %state, i32 noundef %idx, i32 noundef %ret) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #19
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !422

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !423

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #19
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #19
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %cpu6 = getelementptr inbounds %struct.trace_event_raw_cpuhp_exit, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %cpu6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %cpu, ptr %cpu6, align 4
  %state7 = getelementptr inbounds %struct.trace_event_raw_cpuhp_exit, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %state7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %state, ptr %state7, align 4
  %idx8 = getelementptr inbounds %struct.trace_event_raw_cpuhp_exit, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %idx8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %idx, ptr %idx8, align 4
  %ret9 = getelementptr inbounds %struct.trace_event_raw_cpuhp_exit, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %ret9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %ret, ptr %ret9, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cpuhp_exit(ptr noundef %__data, i32 noundef %cpu, i32 noundef %state, i32 noundef %idx, i32 noundef %ret) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #19
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !424
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #19
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !424
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !412) #19
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu4 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu4, align 4
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

land.lhs.true8:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true8.cleanup_crit_edge, label %land.lhs.true8.if.end_crit_edge

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true8.if.end_crit_edge, %entry.if.end_crit_edge
  %call14 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #19
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #19
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #19
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !412) #19
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %cpu18 = getelementptr inbounds %struct.trace_event_raw_cpuhp_exit, ptr %call14, i32 0, i32 1
  %27 = ptrtoint ptr %cpu18 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cpu, ptr %cpu18, align 4
  %state19 = getelementptr inbounds %struct.trace_event_raw_cpuhp_exit, ptr %call14, i32 0, i32 2
  %28 = ptrtoint ptr %state19 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %state, ptr %state19, align 4
  %idx20 = getelementptr inbounds %struct.trace_event_raw_cpuhp_exit, ptr %call14, i32 0, i32 3
  %29 = ptrtoint ptr %idx20 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %idx, ptr %idx20, align 4
  %ret21 = getelementptr inbounds %struct.trace_event_raw_cpuhp_exit, ptr %call14, i32 0, i32 4
  %30 = ptrtoint ptr %ret21 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %ret, ptr %ret21, align 4
  %31 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rctx, align 4
  %33 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call14, i32 noundef 28, i32 noundef %32, ptr noundef %__data, i64 noundef 1, ptr noundef %34, ptr noundef %11, ptr noundef null) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cpuhp_enter(ptr noundef %__data, i32 noundef %cpu, i32 noundef %target, i32 noundef %idx, ptr noundef %fun) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  %conv = zext i32 %cpu to i64
  %conv4 = zext i32 %target to i64
  %conv8 = zext i32 %idx to i64
  %0 = ptrtoint ptr %fun to i32
  %conv12 = zext i32 %0 to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cpuhp_multi_enter(ptr noundef %__data, i32 noundef %cpu, i32 noundef %target, i32 noundef %idx, ptr noundef %fun, ptr noundef %node) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  %conv = zext i32 %cpu to i64
  %conv4 = zext i32 %target to i64
  %conv8 = zext i32 %idx to i64
  %0 = ptrtoint ptr %fun to i32
  %conv12 = zext i32 %0 to i64
  %1 = ptrtoint ptr %node to i32
  %conv16 = zext i32 %1 to i64
  tail call void @bpf_trace_run5(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cpuhp_exit(ptr noundef %__data, i32 noundef %cpu, i32 noundef %state, i32 noundef %idx, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  %conv = zext i32 %cpu to i64
  %conv4 = zext i32 %state to i64
  %conv8 = zext i32 %idx to i64
  %conv12 = zext i32 %ret to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpu_maps_update_begin() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @cpu_add_remove_lock, i32 noundef 0) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpu_maps_update_done() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_unlock(ptr noundef nonnull @cpu_add_remove_lock) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpus_read_lock() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.45, i32 noundef 49) #19
  %0 = tail call ptr @llvm.returnaddress(i32 0) #19
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_acquire(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpu_hotplug_lock, i32 0, i32 5), i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %1) #19
  %2 = tail call i32 @llvm.read_register.i32(metadata !412) #19
  %and.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %5, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !425
  %call.i.i = tail call i32 @rcu_read_lock_any_held() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %entry.rcu_sync_is_idle.exit.i_crit_edge

entry.rcu_sync_is_idle.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_sync_is_idle.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.rcu_sync_is_idle.exit.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.rcu_sync_is_idle.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_sync_is_idle.exit.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b1.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b1.i.i, label %land.lhs.true3.i.i.rcu_sync_is_idle.exit.i_crit_edge, label %if.then.i.i

land.lhs.true3.i.i.rcu_sync_is_idle.exit.i_crit_edge: ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_sync_is_idle.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 35, ptr noundef nonnull @.str.47) #19
  br label %rcu_sync_is_idle.exit.i

rcu_sync_is_idle.exit.i:                          ; preds = %if.then.i.i, %land.lhs.true3.i.i.rcu_sync_is_idle.exit.i_crit_edge, %land.lhs.true.i.i.rcu_sync_is_idle.exit.i_crit_edge, %entry.rcu_sync_is_idle.exit.i_crit_edge
  %6 = load volatile i32, ptr @cpu_hotplug_lock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool7.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool7.not.i.i, label %do.body7.i, label %if.else.i, !prof !422

do.body7.i:                                       ; preds = %rcu_sync_is_idle.exit.i
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !426
  %8 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpu_hotplug_lock, i32 0, i32 1), align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !412) #19
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %15, %9
  %16 = inttoptr i32 %add.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add21.i = add i32 %18, 1
  store i32 %add21.i, ptr %16, align 4
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #19, !srcloc !427
  %and.i.i.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then41.i, label %do.body7.i.do.end43.i_crit_edge, !prof !423

do.body7.i.do.end43.i_crit_edge:                  ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end43.i

if.then41.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @warn_bogus_irq_restore() #19
  br label %do.end43.i

do.end43.i:                                       ; preds = %if.then41.i, %do.body7.i.do.end43.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #19, !srcloc !428
  br label %percpu_down_read.exit

if.else.i:                                        ; preds = %rcu_sync_is_idle.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  %call50.i = tail call zeroext i1 @__percpu_down_read(ptr noundef nonnull @cpu_hotplug_lock, i1 noundef zeroext false) #19
  br label %percpu_down_read.exit

percpu_down_read.exit:                            ; preds = %if.else.i, %do.end43.i
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !429
  %20 = tail call i32 @llvm.read_register.i32(metadata !412) #19
  %and.i.i.i1.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpus_read_trylock() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !412) #19
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !430
  %call.i.i = tail call i32 @rcu_read_lock_any_held() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %entry.rcu_sync_is_idle.exit.i_crit_edge

entry.rcu_sync_is_idle.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_sync_is_idle.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.rcu_sync_is_idle.exit.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.rcu_sync_is_idle.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_sync_is_idle.exit.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b1.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b1.i.i, label %land.lhs.true3.i.i.rcu_sync_is_idle.exit.i_crit_edge, label %if.then.i.i

land.lhs.true3.i.i.rcu_sync_is_idle.exit.i_crit_edge: ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_sync_is_idle.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 35, ptr noundef nonnull @.str.47) #19
  br label %rcu_sync_is_idle.exit.i

rcu_sync_is_idle.exit.i:                          ; preds = %if.then.i.i, %land.lhs.true3.i.i.rcu_sync_is_idle.exit.i_crit_edge, %land.lhs.true.i.i.rcu_sync_is_idle.exit.i_crit_edge, %entry.rcu_sync_is_idle.exit.i_crit_edge
  %4 = load volatile i32, ptr @cpu_hotplug_lock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool7.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool7.not.i.i, label %do.body3.i, label %if.else.i, !prof !422

do.body3.i:                                       ; preds = %rcu_sync_is_idle.exit.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !426
  %6 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpu_hotplug_lock, i32 0, i32 1), align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !412) #19
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %13, %7
  %14 = inttoptr i32 %add.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %add19.i = add i32 %16, 1
  store i32 %add19.i, ptr %14, align 4
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #19, !srcloc !427
  %and.i.i.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool30.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool30.not.i, label %if.then39.i, label %do.body3.i.do.end41.i_crit_edge, !prof !423

do.body3.i.do.end41.i_crit_edge:                  ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end41.i

if.then39.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @warn_bogus_irq_restore() #19
  br label %do.end41.i

do.end41.i:                                       ; preds = %if.then39.i, %do.body3.i.do.end41.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %5) #19, !srcloc !428
  br label %do.body50.i

if.else.i:                                        ; preds = %rcu_sync_is_idle.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  %call48.i = tail call zeroext i1 @__percpu_down_read(ptr noundef nonnull @cpu_hotplug_lock, i1 noundef zeroext true) #19
  br label %do.body50.i

do.body50.i:                                      ; preds = %if.else.i, %do.end41.i
  %ret.0.off0.i = phi i1 [ true, %do.end41.i ], [ %call48.i, %if.else.i ]
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !431
  %18 = tail call i32 @llvm.read_register.i32(metadata !412) #19
  %and.i.i.i1.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  br i1 %ret.0.off0.i, label %if.then54.i, label %do.body50.i.percpu_down_read_trylock.exit_crit_edge

do.body50.i.percpu_down_read_trylock.exit_crit_edge: ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %percpu_down_read_trylock.exit

if.then54.i:                                      ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #21
  %22 = tail call ptr @llvm.returnaddress(i32 0) #19
  %23 = ptrtoint ptr %22 to i32
  tail call void @lock_acquire(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpu_hotplug_lock, i32 0, i32 5), i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %23) #19
  br label %percpu_down_read_trylock.exit

percpu_down_read_trylock.exit:                    ; preds = %if.then54.i, %do.body50.i.percpu_down_read_trylock.exit_crit_edge
  %conv = zext i1 %ret.0.off0.i to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpus_read_unlock() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0) #19
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_release(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpu_hotplug_lock, i32 0, i32 5), i32 noundef %1) #19
  %2 = tail call i32 @llvm.read_register.i32(metadata !412) #19
  %and.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %5, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !432
  %call.i.i = tail call i32 @rcu_read_lock_any_held() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %entry.rcu_sync_is_idle.exit.i_crit_edge

entry.rcu_sync_is_idle.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_sync_is_idle.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.rcu_sync_is_idle.exit.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.rcu_sync_is_idle.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_sync_is_idle.exit.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b1.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b1.i.i, label %land.lhs.true3.i.i.rcu_sync_is_idle.exit.i_crit_edge, label %if.then.i.i

land.lhs.true3.i.i.rcu_sync_is_idle.exit.i_crit_edge: ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_sync_is_idle.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 35, ptr noundef nonnull @.str.47) #19
  br label %rcu_sync_is_idle.exit.i

rcu_sync_is_idle.exit.i:                          ; preds = %if.then.i.i, %land.lhs.true3.i.i.rcu_sync_is_idle.exit.i_crit_edge, %land.lhs.true.i.i.rcu_sync_is_idle.exit.i_crit_edge, %entry.rcu_sync_is_idle.exit.i_crit_edge
  %6 = load volatile i32, ptr @cpu_hotplug_lock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool7.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool7.not.i.i, label %do.body3.i, label %do.end49.i, !prof !422

do.body3.i:                                       ; preds = %rcu_sync_is_idle.exit.i
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !426
  %8 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpu_hotplug_lock, i32 0, i32 1), align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !412) #19
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %15, %9
  %16 = inttoptr i32 %add.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add17.i = add i32 %18, -1
  store i32 %add17.i, ptr %16, align 4
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #19, !srcloc !427
  %and.i.i.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool28.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool28.not.i, label %if.then37.i, label %do.body3.i.do.end39.i_crit_edge, !prof !423

do.body3.i.do.end39.i_crit_edge:                  ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end39.i

if.then37.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @warn_bogus_irq_restore() #19
  br label %do.end39.i

do.end39.i:                                       ; preds = %if.then37.i, %do.body3.i.do.end39.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #19, !srcloc !428
  br label %percpu_up_read.exit

do.end49.i:                                       ; preds = %rcu_sync_is_idle.exit.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !433
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !426
  %21 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpu_hotplug_lock, i32 0, i32 1), align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = tail call i32 @llvm.read_register.i32(metadata !412) #19
  %and.i3.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i3.i to ptr
  %cpu78.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu78.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu78.i, align 4
  %arrayidx79.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx79.i, align 4
  %add80.i = add i32 %28, %22
  %29 = inttoptr i32 %add80.i to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %add81.i = add i32 %31, -1
  store i32 %add81.i, ptr %29, align 4
  %32 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #19, !srcloc !427
  %and.i.i4.i = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i)
  %tobool92.not.i = icmp eq i32 %and.i.i4.i, 0
  br i1 %tobool92.not.i, label %if.then101.i, label %do.end49.i.do.end104.i_crit_edge, !prof !423

do.end49.i.do.end104.i_crit_edge:                 ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end104.i

if.then101.i:                                     ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @warn_bogus_irq_restore() #19
  br label %do.end104.i

do.end104.i:                                      ; preds = %if.then101.i, %do.end49.i.do.end104.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #19, !srcloc !428
  %call111.i = tail call i32 @rcuwait_wake_up(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpu_hotplug_lock, i32 0, i32 2)) #19
  br label %percpu_up_read.exit

percpu_up_read.exit:                              ; preds = %do.end104.i, %do.end39.i
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !434
  %33 = tail call i32 @llvm.read_register.i32(metadata !412) #19
  %and.i.i.i1.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %36, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpus_write_lock() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @percpu_down_write(ptr noundef nonnull @cpu_hotplug_lock) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpus_write_unlock() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @percpu_up_write(ptr noundef nonnull @cpu_hotplug_lock) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lockdep_assert_cpus_held() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_state to i32))
  %0 = load i32, ptr @system_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %cmp = icmp ult i32 %0, 3
  br i1 %cmp, label %entry.do.end26_crit_edge, label %do.body

entry.do.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end26

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %1 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.body.do.end26_crit_edge, label %land.rhs

do.body.do.end26_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end26

land.rhs:                                         ; preds = %do.body
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpu_hotplug_lock, i32 0, i32 5), i32 noundef -1) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.not = icmp eq i32 %call.i, 0
  br i1 %cmp1.not, label %do.end, label %land.rhs.do.end26_crit_edge, !prof !423

land.rhs.do.end26_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end26

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 346, i32 noundef 9, ptr noundef null) #19
  br label %do.end26

do.end26:                                         ; preds = %do.end, %land.rhs.do.end26_crit_edge, %do.body.do.end26_crit_edge, %entry.do.end26_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lockdep_is_cpus_held() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpu_hotplug_lock, i32 0, i32 5), i32 noundef -1) #19
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpu_hotplug_disable() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @cpu_add_remove_lock, i32 noundef 0) #19
  %0 = load i32, ptr @cpu_hotplug_disabled, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @cpu_hotplug_disabled, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @cpu_add_remove_lock) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpu_hotplug_enable() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @cpu_add_remove_lock, i32 noundef 0) #19
  %0 = load i32, ptr @cpu_hotplug_disabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end39.critedge.i

land.rhs.i:                                       ; preds = %entry
  %.b42.i = load i1, ptr @__cpu_hotplug_enable.__already_done, align 1
  br i1 %.b42.i, label %land.rhs.i.__cpu_hotplug_enable.exit_crit_edge, label %if.then.i, !prof !422

land.rhs.i.__cpu_hotplug_enable.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %__cpu_hotplug_enable.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @__cpu_hotplug_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 383, i32 noundef 9, ptr noundef nonnull @.str.51) #19
  br label %__cpu_hotplug_enable.exit

if.end39.critedge.i:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %dec.i = add i32 %0, -1
  store i32 %dec.i, ptr @cpu_hotplug_disabled, align 4
  br label %__cpu_hotplug_enable.exit

__cpu_hotplug_enable.exit:                        ; preds = %if.end39.critedge.i, %if.then.i, %land.rhs.i.__cpu_hotplug_enable.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @cpu_add_remove_lock) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @arch_smt_update() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @cpuhp_threads_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @smpboot_register_percpu_thread(ptr noundef nonnull @cpuhp_threads) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end6, label %do.body3, !prof !422

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 894, 0\0A.popsection", ""() #19, !srcloc !435
  unreachable

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %0 = tail call i32 @llvm.read_register.i32(metadata !412) #19
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !436
  %4 = tail call i32 @llvm.read_register.i32(metadata !412) #19
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, ptrtoint (ptr getelementptr inbounds (%struct.cpuhp_cpu_state, ptr @cpuhp_state, i32 0, i32 3) to i32)
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %10, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !437
  %13 = tail call i32 @llvm.read_register.i32(metadata !412) #19
  %and.i.i.i28 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i28 to ptr
  %preempt_count.i.i29 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i29, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i29, align 4
  tail call void @kthread_unpark(ptr noundef %12) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smpboot_register_percpu_thread(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_unpark(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clear_tasks_mm_cpumask(i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %cpu)
  %cmp.not.i.i.i.i = icmp ugt i32 %0, %cpu
  br i1 %cmp.not.i.i.i.i, label %entry.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

entry.cpu_online.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %entry
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !422

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %entry.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %cpu, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %1 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %cpu, 31
  %3 = shl nuw i32 1, %and.i.i.i
  %4 = and i32 %2, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end_crit_edge, label %do.end, !prof !422

cpu_online.exit.if.end_crit_edge:                 ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

do.end:                                           ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 972, i32 noundef 9, ptr noundef null) #19
  br label %if.end

if.end:                                           ; preds = %do.end, %cpu_online.exit.if.end_crit_edge
  %5 = tail call i32 @llvm.read_register.i32(metadata !412) #19
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !438
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #19
  %call.i = tail call zeroext i1 @rcu_is_watching() #19
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.65, i32 noundef 696, ptr noundef nonnull @.str.66) #19
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50) to i32))
  %9 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50), align 16
  %add.ptr43 = getelementptr i8, ptr %9, i32 -1136
  %cmp.not44 = icmp eq ptr %add.ptr43, @init_task
  br i1 %cmp.not44, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.for.body_crit_edge

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %add.ptr45 = phi ptr [ %add.ptr, %cleanup.for.body_crit_edge ], [ %add.ptr43, %rcu_read_lock.exit.for.body_crit_edge ]
  %call24 = tail call ptr @find_lock_task_mm(ptr noundef %add.ptr45) #19
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %for.body.cleanup_crit_edge, label %if.end27

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end27:                                         ; preds = %for.body
  %mm = getelementptr inbounds %struct.task_struct, ptr %call24, i32 0, i32 53
  %10 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mm, align 8
  %cpu_bitmap.i = getelementptr inbounds %struct.mm_struct, ptr %11, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %cpu)
  %cmp.not.i.i.i = icmp ugt i32 %12, %cpu
  br i1 %cmp.not.i.i.i, label %if.end27.cpumask_clear_cpu.exit_crit_edge, label %land.rhs.i.i.i

if.end27.cpumask_clear_cpu.exit_crit_edge:        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpumask_clear_cpu.exit

land.rhs.i.i.i:                                   ; preds = %if.end27
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_clear_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !422

land.rhs.i.i.i.cpumask_clear_cpu.exit_crit_edge:  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpumask_clear_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
  br label %cpumask_clear_cpu.exit

cpumask_clear_cpu.exit:                           ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_clear_cpu.exit_crit_edge, %if.end27.cpumask_clear_cpu.exit_crit_edge
  tail call void @_clear_bit(i32 noundef %cpu, ptr noundef %cpu_bitmap.i) #19
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %call24, i32 0, i32 127
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #19
  br label %cleanup

cleanup:                                          ; preds = %cpumask_clear_cpu.exit, %for.body.cleanup_crit_edge
  %tasks = getelementptr inbounds %struct.task_struct, ptr %add.ptr45, i32 0, i32 50
  %13 = ptrtoint ptr %tasks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %tasks, align 16
  %add.ptr = getelementptr i8, ptr %14, i32 -1136
  %cmp.not = icmp eq ptr %add.ptr, @init_task
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %call.i34 = tail call zeroext i1 @rcu_is_watching() #19
  br i1 %call.i34, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i37

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_unlock.exit

land.lhs.true.i37:                                ; preds = %for.end
  %call1.i35 = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i35)
  %tobool.not.i36 = icmp eq i32 %call1.i35, 0
  br i1 %tobool.not.i36, label %land.lhs.true.i37.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i39

land.lhs.true.i37.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i37
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_unlock.exit

land.lhs.true2.i39:                               ; preds = %land.lhs.true.i37
  %.b4.i38 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i38, label %land.lhs.true2.i39.rcu_read_unlock.exit_crit_edge, label %if.then.i40

land.lhs.true2.i39.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i39
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_unlock.exit

if.then.i40:                                      ; preds = %land.lhs.true2.i39
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.65, i32 noundef 724, ptr noundef nonnull @.str.67) #19
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i40, %land.lhs.true2.i39.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i37.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !439
  %15 = tail call i32 @llvm.read_register.i32(metadata !412) #19
  %and.i.i.i.i.i41 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i41 to ptr
  %preempt_count.i.i.i.i42 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i42, align 4
  %sub.i.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i42, align 4
  tail call void @rcu_read_unlock_strict() #19
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_lock_task_mm(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpuhp_report_idle_dead() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !412) #19
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @cpuhp_state to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 93, i32 %8)
  %cmp.not = icmp eq i32 %8, 93
  br i1 %cmp.not, label %do.end11, label %do.body4, !prof !422

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1086, 0\0A.popsection", ""() #19, !srcloc !440
  unreachable

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @rcu_report_dead(i32 noundef %3) #19
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 92, ptr %6, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef nonnull @__cpu_online_mask, i32 noundef %10) #19
  %call16 = tail call i32 @smp_call_function_single(i32 noundef %call.i, ptr noundef nonnull @cpuhp_complete_idle_dead, ptr noundef %6, i32 noundef 0) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_report_dead(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_call_function_single(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpuhp_complete_idle_dead(ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %done_down.i = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %arg, i32 0, i32 14
  tail call void @complete(ptr noundef %done_down.i) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpu_device_down(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 30
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @cpu_add_remove_lock, i32 noundef 0) #19
  %2 = load i32, ptr @cpu_hotplug_disabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.cpu_down.exit_crit_edge

entry.cpu_down.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_down.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %call.i.i = tail call fastcc i32 @_cpu_down(i32 noundef %1, i32 noundef 0, i32 noundef 0) #19
  br label %cpu_down.exit

cpu_down.exit:                                    ; preds = %if.end.i.i, %entry.cpu_down.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %if.end.i.i ], [ -16, %entry.cpu_down.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @cpu_add_remove_lock) #19
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpu_down(i32 noundef %cpu, i32 noundef %target) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @cpu_add_remove_lock, i32 noundef 0) #19
  %0 = load i32, ptr @cpu_hotplug_disabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cpu_down_maps_locked.exit_crit_edge

entry.cpu_down_maps_locked.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_down_maps_locked.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %call.i = tail call fastcc i32 @_cpu_down(i32 noundef %cpu, i32 noundef 0, i32 noundef %target) #19
  br label %cpu_down_maps_locked.exit

cpu_down_maps_locked.exit:                        ; preds = %if.end.i, %entry.cpu_down_maps_locked.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.i ], [ -16, %entry.cpu_down_maps_locked.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @cpu_add_remove_lock) #19
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @remove_cpu(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @lock_device_hotplug() #19
  %call = tail call ptr @get_cpu_device(i32 noundef %cpu) #19
  %call1 = tail call i32 @device_offline(ptr noundef %call) #19
  tail call void @unlock_device_hotplug() #19
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_device_hotplug() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_offline(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_device_hotplug() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smp_shutdown_nonboot_cpus(i32 noundef %primary_cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @cpu_add_remove_lock, i32 noundef 0) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %primary_cpu)
  %cmp.not.i.i.i.i = icmp ugt i32 %0, %primary_cpu
  br i1 %cmp.not.i.i.i.i, label %entry.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

entry.cpu_online.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %entry
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !422

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %entry.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %primary_cpu, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %1 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %primary_cpu, 31
  %3 = shl nuw i32 1, %and.i.i.i
  %4 = and i32 %2, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %if.then, label %cpu_online.exit.if.end_crit_edge

cpu_online.exit.if.end_crit_edge:                 ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef nonnull @__cpu_online_mask, i32 noundef %5) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %cpu_online.exit.if.end_crit_edge
  %primary_cpu.addr.0 = phi i32 [ %primary_cpu, %cpu_online.exit.if.end_crit_edge ], [ %call.i, %if.then ]
  %call236 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call236, i32 %6)
  %cmp37 = icmp ult i32 %call236, %6
  br i1 %cmp37, label %if.end.for.body_crit_edge, label %if.end.do.body10_crit_edge

if.end.do.body10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body10

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %if.end.for.body_crit_edge
  %call238 = phi i32 [ %call2, %for.cond.backedge.for.body_crit_edge ], [ %call236, %if.end.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call238, i32 %primary_cpu.addr.0)
  %cmp3 = icmp eq i32 %call238, %primary_cpu.addr.0
  br i1 %cmp3, label %for.body.for.cond.backedge_crit_edge, label %if.end5

for.body.for.cond.backedge_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %cpu_down_maps_locked.exit.for.cond.backedge_crit_edge, %for.body.for.cond.backedge_crit_edge
  %call2 = tail call i32 @cpumask_next(i32 noundef %call238, ptr noundef nonnull @__cpu_online_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call2, %7
  br i1 %cmp, label %for.cond.backedge.for.body_crit_edge, label %for.cond.backedge.do.body10_crit_edge

for.cond.backedge.do.body10_crit_edge:            ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body10

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

if.end5:                                          ; preds = %for.body
  %8 = load i32, ptr @cpu_hotplug_disabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %cpu_down_maps_locked.exit, label %if.end5.do.end_crit_edge

if.end5.do.end_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end

cpu_down_maps_locked.exit:                        ; preds = %if.end5
  %call.i31 = tail call fastcc i32 @_cpu_down(i32 noundef %call238, i32 noundef 0, i32 noundef 0) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %tobool.not = icmp eq i32 %call.i31, 0
  br i1 %tobool.not, label %cpu_down_maps_locked.exit.for.cond.backedge_crit_edge, label %cpu_down_maps_locked.exit.do.end_crit_edge

cpu_down_maps_locked.exit.do.end_crit_edge:       ; preds = %cpu_down_maps_locked.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end

cpu_down_maps_locked.exit.for.cond.backedge_crit_edge: ; preds = %cpu_down_maps_locked.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond.backedge

do.end:                                           ; preds = %cpu_down_maps_locked.exit.do.end_crit_edge, %if.end5.do.end_crit_edge
  %retval.0.i34 = phi i32 [ %call.i31, %cpu_down_maps_locked.exit.do.end_crit_edge ], [ -16, %if.end5.do.end_crit_edge ]
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %call238, i32 noundef %retval.0.i34) #23
  br label %do.body10

do.body10:                                        ; preds = %do.end, %for.cond.backedge.do.body10_crit_edge, %if.end.do.body10_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #19
  %9 = load volatile i32, ptr @__num_online_cpus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp12 = icmp ugt i32 %9, 1
  br i1 %cmp12, label %do.body16, label %do.end24, !prof !423

do.body16:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1260, 0\0A.popsection", ""() #19, !srcloc !441
  unreachable

do.end24:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #21
  %10 = load i32, ptr @cpu_hotplug_disabled, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr @cpu_hotplug_disabled, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @cpu_add_remove_lock) #19
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @notify_cpu_starting(i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @cpuhp_state to i32)
  %2 = inttoptr i32 %add to ptr
  %target2 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %target2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %target2, align 4
  %5 = tail call i32 @llvm.smin.i32(i32 %4, i32 149)
  tail call void @rcu_cpu_starting(i32 noundef %cpu) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %cpu)
  %cmp.not.i.i.i = icmp ugt i32 %6, %cpu
  br i1 %cmp.not.i.i.i, label %entry.cpumask_set_cpu.exit_crit_edge, label %land.rhs.i.i.i

entry.cpumask_set_cpu.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpumask_set_cpu.exit

land.rhs.i.i.i:                                   ; preds = %entry
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !422

land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpumask_set_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
  br label %cpumask_set_cpu.exit

cpumask_set_cpu.exit:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, %entry.cpumask_set_cpu.exit_crit_edge
  tail call void @_set_bit(i32 noundef %cpu, ptr noundef nonnull @cpus_booted_once_mask) #19
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.backedge, %cpumask_set_cpu.exit
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %5)
  %cmp.not.i.i = icmp slt i32 %8, %5
  br i1 %cmp.not.i.i, label %if.end.i.i, label %do.body.i.i.if.end35_crit_edge

do.body.i.i.if.end35_crit_edge:                   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end35

if.end.i.i:                                       ; preds = %do.body.i.i
  %inc.i.i = add nsw i32 %8, 1
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %inc.i.i, ptr %2, align 4
  %startup.i.i.i = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %inc.i.i, i32 1
  %10 = ptrtoint ptr %startup.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %cond.in.in.i.i.i = load ptr, ptr %startup.i.i.i, align 4
  %cond.in.i.i.i = icmp eq ptr %cond.in.in.i.i.i, null
  br i1 %cond.in.i.i.i, label %if.end.i.i.do.body.i.i.backedge_crit_edge, label %while.body.i

if.end.i.i.do.body.i.i.backedge_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i.i.backedge

do.body.i.i.backedge:                             ; preds = %while.body.i.do.body.i.i.backedge_crit_edge, %if.end.i.i.do.body.i.i.backedge_crit_edge
  br label %do.body.i.i

while.body.i:                                     ; preds = %if.end.i.i
  %call2.i = tail call fastcc i32 @cpuhp_invoke_callback(i32 noundef %cpu, i32 noundef %inc.i.i, i1 noundef zeroext true, ptr noundef null, ptr noundef null) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %while.body.i.do.body.i.i.backedge_crit_edge, label %land.rhs

while.body.i.do.body.i.i.backedge_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i.i.backedge

land.rhs:                                         ; preds = %while.body.i
  %.b51 = load i1, ptr @notify_cpu_starting.__already_done, align 1
  br i1 %.b51, label %land.rhs.if.end35_crit_edge, label %if.then, !prof !422

land.rhs.if.end35_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end35

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @notify_cpu_starting.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1296, i32 noundef 9, ptr noundef null) #19
  br label %if.end35

if.end35:                                         ; preds = %if.then, %land.rhs.if.end35_crit_edge, %do.body.i.i.if.end35_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_cpu_starting(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpuhp_online_idle(i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 151, i32 %state)
  %cmp.not = icmp eq i32 %state, 151
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %0 = tail call i32 @llvm.read_register.i32(metadata !412) #19
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @cpuhp_state to i32)
  %6 = inttoptr i32 %add to ptr
  tail call void @stop_machine_unpark(i32 noundef %3) #19
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 151, ptr %6, align 4
  %done_up.i = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %6, i32 0, i32 13
  tail call void @complete(ptr noundef %done_up.i) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @stop_machine_unpark(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpu_device_up(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 30
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %call = tail call fastcc i32 @cpu_up(i32 noundef %1, i32 noundef 229)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpu_up(i32 noundef %cpu, i32 noundef %target) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %cpu)
  %cmp.not.i.i.i.i = icmp ugt i32 %0, %cpu
  br i1 %cmp.not.i.i.i.i, label %entry.cpu_possible.exit_crit_edge, label %land.rhs.i.i.i.i

entry.cpu_possible.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_possible.exit

land.rhs.i.i.i.i:                                 ; preds = %entry
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_possible.exit_crit_edge, label %if.then.i.i.i.i, !prof !422

land.rhs.i.i.i.i.cpu_possible.exit_crit_edge:     ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_possible.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
  br label %cpu_possible.exit

cpu_possible.exit:                                ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_possible.exit_crit_edge, %entry.cpu_possible.exit_crit_edge
  %div3.i.i.i = lshr i32 %cpu, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_possible_mask, i32 %div3.i.i.i
  %1 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %cpu, 31
  %3 = shl nuw i32 1, %and.i.i.i
  %4 = and i32 %2, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %do.end, label %if.end

do.end:                                           ; preds = %cpu_possible.exit
  call void @__sanitizer_cov_trace_pc() #21
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %cpu) #23
  br label %cleanup

if.end:                                           ; preds = %cpu_possible.exit
  tail call void @mutex_lock_nested(ptr noundef nonnull @cpu_add_remove_lock, i32 noundef 0) #19
  %5 = load i32, ptr @cpu_hotplug_disabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %call11 = tail call fastcc i32 @_cpu_up(i32 noundef %cpu, i32 noundef 0, i32 noundef %target)
  br label %out

out:                                              ; preds = %if.end7, %if.end.out_crit_edge
  %err.0 = phi i32 [ %call11, %if.end7 ], [ -16, %if.end.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @cpu_add_remove_lock) #19
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ %err.0, %out ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @add_cpu(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @lock_device_hotplug() #19
  %call = tail call ptr @get_cpu_device(i32 noundef %cpu) #19
  %call1 = tail call i32 @device_online(ptr noundef %call) #19
  tail call void @unlock_device_hotplug() #19
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_online(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bringup_hibernate_cpu(i32 noundef %sleep_cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %sleep_cpu)
  %cmp.not.i.i.i.i = icmp ugt i32 %0, %sleep_cpu
  br i1 %cmp.not.i.i.i.i, label %entry.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

entry.cpu_online.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %entry
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !422

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %entry.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %sleep_cpu, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %1 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %sleep_cpu, 31
  %3 = shl nuw i32 1, %and.i.i.i
  %4 = and i32 %2, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %do.end, label %cpu_online.exit.cleanup_crit_edge

cpu_online.exit.cleanup_crit_edge:                ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.end:                                           ; preds = %cpu_online.exit
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #23
  %call2 = tail call fastcc i32 @cpu_up(i32 noundef %sleep_cpu, i32 noundef 229)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.end.cleanup_crit_edge, label %do.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #23
  br label %cleanup

cleanup:                                          ; preds = %do.end6, %do.end.cleanup_crit_edge, %cpu_online.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end6 ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %cpu_online.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bringup_nonboot_cpus(i32 noundef %setup_max_cpus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call10 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_present_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call10, i32 %0)
  %cmp11 = icmp ult i32 %call10, %0
  br i1 %cmp11, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end6.for.body_crit_edge, %entry.for.body_crit_edge
  %call12 = phi i32 [ %call, %if.end6.for.body_crit_edge ], [ %call10, %entry.for.body_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #19
  %1 = load volatile i32, ptr @__num_online_cpus, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %setup_max_cpus)
  %cmp2.not = icmp ult i32 %1, %setup_max_cpus
  br i1 %cmp2.not, label %if.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %call12)
  %cmp.not.i.i.i.i = icmp ugt i32 %2, %call12
  br i1 %cmp.not.i.i.i.i, label %if.end.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

if.end.cpu_online.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %if.end
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !422

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %if.end.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %call12, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %3 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %call12, 31
  %5 = shl nuw i32 1, %and.i.i.i
  %6 = and i32 %4, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.not, label %if.then4, label %cpu_online.exit.if.end6_crit_edge

cpu_online.exit.if.end6_crit_edge:                ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end6

if.then4:                                         ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #21
  %call5 = tail call fastcc i32 @cpu_up(i32 noundef %call12, i32 noundef 229)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %cpu_online.exit.if.end6_crit_edge
  %call = tail call i32 @cpumask_next(i32 noundef %call12, ptr noundef nonnull @__cpu_present_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %7
  br i1 %cmp, label %if.end6.for.body_crit_edge, label %if.end6.for.end_crit_edge

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.end:                                          ; preds = %if.end6.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @freeze_secondary_cpus(i32 noundef %primary) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @cpu_add_remove_lock, i32 noundef 0) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %primary)
  %cmp = icmp eq i32 %primary, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef nonnull @__cpu_online_mask, i32 noundef %0) #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @housekeeping_overridden, ptr blockaddress(@freeze_secondary_cpus, %if.then.i)) #19
          to label %if.end8 [label %if.then.i], !srcloc !442

if.then.i:                                        ; preds = %if.then
  %call3.i = tail call zeroext i1 @housekeeping_test_cpu(i32 noundef %call.i, i32 noundef 1) #19
  br i1 %call3.i, label %if.then.i.if.end8_crit_edge, label %if.then2

if.then.i.if.end8_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end8

if.then2:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  %call3 = tail call i32 @housekeeping_any_cpu(i32 noundef 1) #19
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %primary)
  %cmp.not.i.i.i.i = icmp ugt i32 %0, %primary
  br i1 %cmp.not.i.i.i.i, label %if.else.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

if.else.cpu_online.exit_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %if.else
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !422

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %if.else.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %primary, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %1 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %primary, 31
  %3 = shl nuw i32 1, %and.i.i.i
  %4 = and i32 %2, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %if.then5, label %cpu_online.exit.if.end8_crit_edge

cpu_online.exit.if.end8_crit_edge:                ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end8

if.then5:                                         ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %call.i71 = tail call i32 @_find_first_bit_be(ptr noundef nonnull @__cpu_online_mask, i32 noundef %5) #19
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %cpu_online.exit.if.end8_crit_edge, %if.then2, %if.then.i.if.end8_crit_edge, %if.then
  %primary.addr.0 = phi i32 [ %call3, %if.then2 ], [ %primary, %cpu_online.exit.if.end8_crit_edge ], [ %call.i71, %if.then5 ], [ %call.i, %if.then.i.if.end8_crit_edge ], [ %call.i, %if.then ]
  %6 = load ptr, ptr @frozen_cpus, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %7, 31
  %8 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %8, 536870908
  %9 = call ptr @memset(ptr %6, i32 0, i32 %mul.i.i)
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #23
  %call1078 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1078, i32 %10)
  %cmp1179 = icmp ult i32 %call1078, %10
  br i1 %cmp1179, label %if.end8.for.body_crit_edge, label %if.end8.do.body36_crit_edge

if.end8.do.body36_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body36

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %if.end8.for.body_crit_edge
  %call1080 = phi i32 [ %call10, %for.cond.backedge.for.body_crit_edge ], [ %call1078, %if.end8.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call1080, i32 %primary.addr.0)
  %cmp12 = icmp eq i32 %call1080, %primary.addr.0
  br i1 %cmp12, label %for.body.for.cond.backedge_crit_edge, label %if.end14

for.body.for.cond.backedge_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond.backedge

if.end14:                                         ; preds = %for.body
  %call15 = tail call zeroext i1 @pm_wakeup_pending() #19
  br i1 %call15, label %do.end19, label %if.end22

do.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #21
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #23
  br label %do.end54

if.end22:                                         ; preds = %if.end14
  %11 = load ptr, ptr @freeze_secondary_cpus.___tp_str, align 4
  tail call fastcc void @trace_suspend_resume(ptr noundef %11, i32 noundef %call1080, i1 noundef zeroext true)
  %call24 = tail call fastcc i32 @_cpu_down(i32 noundef %call1080, i32 noundef 1, i32 noundef 0)
  %12 = load ptr, ptr @freeze_secondary_cpus.___tp_str.14, align 4
  tail call fastcc void @trace_suspend_resume(ptr noundef %12, i32 noundef %call1080, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool.not = icmp eq i32 %call24, 0
  br i1 %tobool.not, label %if.then26, label %do.end30

if.then26:                                        ; preds = %if.end22
  %13 = load ptr, ptr @frozen_cpus, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %call1080)
  %cmp.not.i.i.i = icmp ugt i32 %14, %call1080
  br i1 %cmp.not.i.i.i, label %if.then26.cpumask_set_cpu.exit_crit_edge, label %land.rhs.i.i.i

if.then26.cpumask_set_cpu.exit_crit_edge:         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpumask_set_cpu.exit

land.rhs.i.i.i:                                   ; preds = %if.then26
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !422

land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpumask_set_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
  br label %cpumask_set_cpu.exit

cpumask_set_cpu.exit:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, %if.then26.cpumask_set_cpu.exit_crit_edge
  tail call void @_set_bit(i32 noundef %call1080, ptr noundef %13) #19
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %cpumask_set_cpu.exit, %for.body.for.cond.backedge_crit_edge
  %call10 = tail call i32 @cpumask_next(i32 noundef %call1080, ptr noundef nonnull @__cpu_online_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %15 = load i32, ptr @nr_cpu_ids, align 4
  %cmp11 = icmp ult i32 %call10, %15
  br i1 %cmp11, label %for.cond.backedge.for.body_crit_edge, label %for.cond.backedge.do.body36_crit_edge

for.cond.backedge.do.body36_crit_edge:            ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body36

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

do.end30:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #21
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call1080, i32 noundef %call24) #23
  br label %do.end54

do.body36:                                        ; preds = %for.cond.backedge.do.body36_crit_edge, %if.end8.do.body36_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #19
  %16 = load volatile i32, ptr @__num_online_cpus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp38 = icmp ugt i32 %16, 1
  br i1 %cmp38, label %do.body42, label %do.body36.if.end57_crit_edge, !prof !423

do.body36.if.end57_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end57

do.body42:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1527, 0\0A.popsection", ""() #19, !srcloc !443
  unreachable

do.end54:                                         ; preds = %do.end30, %do.end19
  %error.1.ph = phi i32 [ %call24, %do.end30 ], [ -16, %do.end19 ]
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #23
  br label %if.end57

if.end57:                                         ; preds = %do.end54, %do.body36.if.end57_crit_edge
  %error.174 = phi i32 [ 0, %do.body36.if.end57_crit_edge ], [ %error.1.ph, %do.end54 ]
  %17 = load i32, ptr @cpu_hotplug_disabled, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr @cpu_hotplug_disabled, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @cpu_add_remove_lock) #19
  ret i32 %error.174
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @housekeeping_any_cpu(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pm_wakeup_pending() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_suspend_resume(ptr noundef %action, i32 noundef %val, i1 noundef zeroext %start) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), ptr blockaddress(@trace_suspend_resume, %do.body)) #19
          to label %if.end49 [label %do.body], !srcloc !442

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !412) #19
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !422

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #21
  %9 = tail call i32 @llvm.read_register.i32(metadata !412) #19
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !444
  %call43 = tail call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %action, i32 noundef %val, i1 noundef zeroext %start) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !445
  %13 = tail call i32 @llvm.read_register.i32(metadata !412) #19
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !412) #19
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !422

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div3.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !412) #19
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !446
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_suspend_resume.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @trace_suspend_resume.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.70, i32 noundef 246, ptr noundef nonnull @.str.62) #19
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !447
  %31 = tail call i32 @llvm.read_register.i32(metadata !412) #19
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_cpu_down(i32 noundef %cpu, i32 noundef %tasks_frozen, i32 noundef %target) unnamed_addr #7 section ".ref.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @cpuhp_state to i32)
  %2 = inttoptr i32 %add to ptr
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #19
  %3 = load volatile i32, ptr @__num_online_cpus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %cpu)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %cpu
  br i1 %cmp.not.i.i.i.i, label %if.end.cpu_present.exit_crit_edge, label %land.rhs.i.i.i.i

if.end.cpu_present.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_present.exit

land.rhs.i.i.i.i:                                 ; preds = %if.end
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_present.exit_crit_edge, label %if.then.i.i.i.i, !prof !422

land.rhs.i.i.i.i.cpu_present.exit_crit_edge:      ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_present.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
  br label %cpu_present.exit

cpu_present.exit:                                 ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_present.exit_crit_edge, %if.end.cpu_present.exit_crit_edge
  %div3.i.i.i = lshr i32 %cpu, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_present_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %cpu, 31
  %7 = shl nuw i32 1, %and.i.i.i
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_present.exit.cleanup_crit_edge, label %if.end4

cpu_present.exit.cleanup_crit_edge:               ; preds = %cpu_present.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end4:                                          ; preds = %cpu_present.exit
  tail call void @percpu_down_write(ptr noundef nonnull @cpu_hotplug_lock) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tasks_frozen)
  %tobool = icmp ne i32 %tasks_frozen, 0
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, ptr @cpuhp_tasks_frozen, align 1
  %call5 = tail call fastcc i32 @cpuhp_set_state(ptr noundef %2, i32 noundef %target)
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 150, i32 %10)
  %cmp6 = icmp sgt i32 %10, 150
  br i1 %cmp6, label %if.then7, label %if.end4.if.end20_crit_edge

if.end4.if.end20_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end20

if.then7:                                         ; preds = %if.end4
  %11 = tail call i32 @llvm.smax.i32(i32 %target, i32 150)
  %target10 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %2, i32 0, i32 1
  %12 = ptrtoint ptr %target10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %target10, align 4
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %add.i = add i32 %14, ptrtoint (ptr @cpuhp_state to i32)
  %15 = inttoptr i32 %add.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  tail call fastcc void @cpuhp_lock_acquire(i1 noundef zeroext false) #19
  tail call fastcc void @cpuhp_lock_release(i1 noundef zeroext false) #19
  tail call fastcc void @cpuhp_lock_acquire(i1 noundef zeroext true) #19
  tail call fastcc void @cpuhp_lock_release(i1 noundef zeroext true) #19
  %target.i = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %target.i, align 4
  tail call fastcc void @trace_cpuhp_enter(i32 noundef %cpu, i32 noundef %19, i32 noundef %17, ptr noundef nonnull @cpuhp_kick_ap_work) #19
  %20 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %target.i, align 4
  %call.i = tail call fastcc i32 @cpuhp_kick_ap(ptr noundef %15, i32 noundef %21) #19
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %15, align 4
  tail call fastcc void @trace_cpuhp_exit(i32 noundef %cpu, i32 noundef %23, i32 noundef %17, i32 noundef %call.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  br i1 %tobool12.not, label %if.end14, label %if.then7.out_crit_edge

if.then7.out_crit_edge:                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end14:                                         ; preds = %if.then7
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 150, i32 %25)
  %cmp16 = icmp sgt i32 %25, 150
  br i1 %cmp16, label %if.end14.out_crit_edge, label %if.end18

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #21
  %26 = ptrtoint ptr %target10 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %target, ptr %target10, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end18, %if.end4.if.end20_crit_edge
  %call21 = tail call fastcc i32 @cpuhp_down_callbacks(i32 noundef %cpu, ptr noundef %2, i32 noundef %target)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end20.out_crit_edge, label %land.lhs.true

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

land.lhs.true:                                    ; preds = %if.end20
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %call5)
  %cmp24 = icmp slt i32 %28, %call5
  br i1 %cmp24, label %if.then25, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 150, i32 %28)
  %cmp27 = icmp eq i32 %28, 150
  br i1 %cmp27, label %if.then28, label %do.end36

if.then28:                                        ; preds = %if.then25
  tail call fastcc void @cpuhp_reset_state(ptr noundef %2, i32 noundef %call5)
  %single.i = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %2, i32 0, i32 6
  %29 = ptrtoint ptr %single.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %single.i, align 2, !range !448
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then28.if.end.i_crit_edge

if.then28.if.end.i_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then28
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %2, align 4
  %target.i78 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %2, i32 0, i32 1
  %33 = ptrtoint ptr %target.i78 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %target.i78, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp.i = icmp eq i32 %32, %34
  br i1 %cmp.i, label %land.lhs.true.i.out_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.then28.if.end.i_crit_edge
  %result.i = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %2, i32 0, i32 12
  %35 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %result.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !449
  %should_run.i = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %2, i32 0, i32 4
  %36 = ptrtoint ptr %should_run.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %should_run.i, align 4
  %thread.i = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %2, i32 0, i32 3
  %37 = ptrtoint ptr %thread.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %thread.i, align 4
  %call.i79 = tail call i32 @wake_up_process(ptr noundef %38) #19
  %bringup.i = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %2, i32 0, i32 7
  %39 = ptrtoint ptr %bringup.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %bringup.i, align 1, !range !448
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool3.not.i = icmp eq i8 %40, 0
  %done_up.i.i = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %2, i32 0, i32 13
  %done_down.i.i = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %2, i32 0, i32 14
  %cond.i.i = select i1 %tobool3.not.i, ptr %done_down.i.i, ptr %done_up.i.i
  tail call void @wait_for_completion(ptr noundef %cond.i.i) #19
  br label %out

do.end36:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1170, i32 noundef 9, ptr noundef nonnull @.str.71, i32 noundef %cpu) #19
  br label %out

out:                                              ; preds = %do.end36, %if.end.i, %land.lhs.true.i.out_crit_edge, %land.lhs.true.out_crit_edge, %if.end20.out_crit_edge, %if.end14.out_crit_edge, %if.then7.out_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.then7.out_crit_edge ], [ 0, %if.end14.out_crit_edge ], [ %call21, %do.end36 ], [ %call21, %land.lhs.true.out_crit_edge ], [ 0, %if.end20.out_crit_edge ], [ %call21, %land.lhs.true.i.out_crit_edge ], [ %call21, %if.end.i ]
  tail call void @percpu_up_write(ptr noundef nonnull @cpu_hotplug_lock) #19
  tail call void @lockup_detector_cleanup() #19
  tail call void @arch_smt_update()
  br i1 %tobool, label %out.cleanup_crit_edge, label %if.then.i

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @cpuset_wait_for_hotplug() #19
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %out.cleanup_crit_edge, %cpu_present.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ -22, %cpu_present.exit.cleanup_crit_edge ], [ %ret.0, %out.cleanup_crit_edge ], [ %ret.0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @arch_thaw_secondary_cpus_begin() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @arch_thaw_secondary_cpus_end() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @thaw_secondary_cpus() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @cpu_add_remove_lock, i32 noundef 0) #19
  %0 = load i32, ptr @cpu_hotplug_disabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end39.critedge.i

land.rhs.i:                                       ; preds = %entry
  %.b42.i = load i1, ptr @__cpu_hotplug_enable.__already_done, align 1
  br i1 %.b42.i, label %land.rhs.i.cpumask_empty.exit_crit_edge, label %if.then.i, !prof !422

land.rhs.i.cpumask_empty.exit_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpumask_empty.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @__cpu_hotplug_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 383, i32 noundef 9, ptr noundef nonnull @.str.51) #19
  br label %cpumask_empty.exit

if.end39.critedge.i:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %dec.i = add i32 %0, -1
  store i32 %dec.i, ptr @cpu_hotplug_disabled, align 4
  br label %cpumask_empty.exit

cpumask_empty.exit:                               ; preds = %if.end39.critedge.i, %if.then.i, %land.rhs.i.cpumask_empty.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %2 = load ptr, ptr @frozen_cpus, align 4
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef %2, i32 noundef %1) #19
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %1)
  %cmp4.i.i = icmp eq i32 %call.i.i, %1
  br i1 %cmp4.i.i, label %cpumask_empty.exit.out_crit_edge, label %do.end

cpumask_empty.exit.out_crit_edge:                 ; preds = %cpumask_empty.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

do.end:                                           ; preds = %cpumask_empty.exit
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #23
  tail call void @arch_thaw_secondary_cpus_begin()
  %3 = load ptr, ptr @frozen_cpus, align 4
  %call226 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %3) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call226, i32 %4)
  %cmp27 = icmp ult i32 %call226, %4
  br i1 %cmp27, label %do.end.for.body_crit_edge, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %do.end.for.body_crit_edge
  %call228 = phi i32 [ %call2, %for.cond.backedge.for.body_crit_edge ], [ %call226, %do.end.for.body_crit_edge ]
  %5 = load ptr, ptr @thaw_secondary_cpus.___tp_str, align 4
  tail call fastcc void @trace_suspend_resume(ptr noundef %5, i32 noundef %call228, i1 noundef zeroext true)
  %call4 = tail call fastcc i32 @_cpu_up(i32 noundef %call228, i32 noundef 1, i32 noundef 229)
  %6 = load ptr, ptr @thaw_secondary_cpus.___tp_str.24, align 4
  tail call fastcc void @trace_suspend_resume(ptr noundef %6, i32 noundef %call228, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %do.end9, label %do.end15

do.end9:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %call228) #23
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %do.end15, %do.end9
  %7 = load ptr, ptr @frozen_cpus, align 4
  %call2 = tail call i32 @cpumask_next(i32 noundef %call228, ptr noundef %7) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call2, %8
  br i1 %cmp, label %for.cond.backedge.for.body_crit_edge, label %for.cond.backedge.for.end_crit_edge

for.cond.backedge.for.end_crit_edge:              ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

do.end15:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %call228, i32 noundef %call4) #23
  br label %for.cond.backedge

for.end:                                          ; preds = %for.cond.backedge.for.end_crit_edge, %do.end.for.end_crit_edge
  tail call void @arch_thaw_secondary_cpus_end()
  %9 = load ptr, ptr @frozen_cpus, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i25 = add i32 %10, 31
  %11 = lshr i32 %sub.i.i25, 3
  %mul.i.i = and i32 %11, 536870908
  %12 = call ptr @memset(ptr %9, i32 0, i32 %mul.i.i)
  br label %out

out:                                              ; preds = %for.end, %cpumask_empty.exit.out_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @cpu_add_remove_lock) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_cpu_up(i32 noundef %cpu, i32 noundef %tasks_frozen, i32 noundef %target) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @cpuhp_state to i32)
  %2 = inttoptr i32 %add to ptr
  tail call void @percpu_down_write(ptr noundef nonnull @cpu_hotplug_lock) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cpu)
  %cmp.not.i.i.i.i = icmp ugt i32 %3, %cpu
  br i1 %cmp.not.i.i.i.i, label %entry.cpu_present.exit_crit_edge, label %land.rhs.i.i.i.i

entry.cpu_present.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_present.exit

land.rhs.i.i.i.i:                                 ; preds = %entry
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_present.exit_crit_edge, label %if.then.i.i.i.i, !prof !422

land.rhs.i.i.i.i.cpu_present.exit_crit_edge:      ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_present.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
  br label %cpu_present.exit

cpu_present.exit:                                 ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_present.exit_crit_edge, %entry.cpu_present.exit_crit_edge
  %div3.i.i.i = lshr i32 %cpu, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_present_mask, i32 %div3.i.i.i
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %cpu, 31
  %6 = shl nuw i32 1, %and.i.i.i
  %7 = and i32 %5, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not = icmp eq i32 %7, 0
  br i1 %tobool.i.not, label %cpu_present.exit.out_crit_edge, label %if.end

cpu_present.exit.out_crit_edge:                   ; preds = %cpu_present.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end:                                           ; preds = %cpu_present.exit
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %target)
  %cmp.not = icmp slt i32 %9, %target
  br i1 %cmp.not, label %if.end3, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp5 = icmp eq i32 %9, 0
  br i1 %cmp5, label %if.then6, label %if.end3.if.end12_crit_edge

if.end3.if.end12_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end12

if.then6:                                         ; preds = %if.end3
  %call7 = tail call ptr @idle_thread_get(i32 noundef %cpu) #19
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.then6.if.end12_crit_edge

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end12

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #21
  %10 = ptrtoint ptr %call7 to i32
  br label %out

if.end12:                                         ; preds = %if.then6.if.end12_crit_edge, %if.end3.if.end12_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tasks_frozen)
  %tobool = icmp ne i32 %tasks_frozen, 0
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, ptr @cpuhp_tasks_frozen, align 1
  %call13 = tail call fastcc i32 @cpuhp_set_state(ptr noundef %2, i32 noundef %target)
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 91, i32 %12)
  %cmp15 = icmp sgt i32 %12, 91
  br i1 %cmp15, label %if.then16, label %if.end12.if.end21_crit_edge

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end21

if.then16:                                        ; preds = %if.end12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %add.i = add i32 %14, ptrtoint (ptr @cpuhp_state to i32)
  %15 = inttoptr i32 %add.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  tail call fastcc void @cpuhp_lock_acquire(i1 noundef zeroext false) #19
  tail call fastcc void @cpuhp_lock_release(i1 noundef zeroext false) #19
  tail call fastcc void @cpuhp_lock_acquire(i1 noundef zeroext true) #19
  tail call fastcc void @cpuhp_lock_release(i1 noundef zeroext true) #19
  %target.i = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %target.i, align 4
  tail call fastcc void @trace_cpuhp_enter(i32 noundef %cpu, i32 noundef %19, i32 noundef %17, ptr noundef nonnull @cpuhp_kick_ap_work) #19
  %20 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %target.i, align 4
  %call.i = tail call fastcc i32 @cpuhp_kick_ap(ptr noundef %15, i32 noundef %21) #19
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %15, align 4
  tail call fastcc void @trace_cpuhp_exit(i32 noundef %cpu, i32 noundef %23, i32 noundef %17, i32 noundef %call.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not = icmp eq i32 %call.i, 0
  br i1 %tobool18.not, label %if.then16.if.end21_crit_edge, label %if.then16.out_crit_edge

if.then16.out_crit_edge:                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.then16.if.end21_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end21

if.end21:                                         ; preds = %if.then16.if.end21_crit_edge, %if.end12.if.end21_crit_edge
  %24 = tail call i32 @llvm.smin.i32(i32 %target, i32 91)
  %call24 = tail call fastcc i32 @cpuhp_up_callbacks(i32 noundef %cpu, ptr noundef %2, i32 noundef %24)
  br label %out

out:                                              ; preds = %if.end21, %if.then16.out_crit_edge, %if.then9, %if.end.out_crit_edge, %cpu_present.exit.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.out_crit_edge ], [ %10, %if.then9 ], [ %call.i, %if.then16.out_crit_edge ], [ %call24, %if.end21 ], [ -22, %cpu_present.exit.out_crit_edge ]
  tail call void @percpu_up_write(ptr noundef nonnull @cpu_hotplug_lock) #19
  tail call void @arch_smt_update()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tasks_frozen)
  %tobool25.not = icmp eq i32 %tasks_frozen, 0
  br i1 %tobool25.not, label %if.then.i, label %out.cpu_up_down_serialize_trainwrecks.exit_crit_edge

out.cpu_up_down_serialize_trainwrecks.exit_crit_edge: ; preds = %out
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_up_down_serialize_trainwrecks.exit

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @cpuset_wait_for_hotplug() #19
  br label %cpu_up_down_serialize_trainwrecks.exit

cpu_up_down_serialize_trainwrecks.exit:           ; preds = %if.then.i, %out.cpu_up_down_serialize_trainwrecks.exit_crit_edge
  ret i32 %ret.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @alloc_frozen_cpus() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @alloc_cpumask_var(ptr noundef nonnull @frozen_cpus, i32 noundef 3520) #19
  %. = select i1 %call, i32 0, i32 -12
  ret i32 %.
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cpu_hotplug_pm_sync_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pm_notifier(ptr noundef nonnull @cpu_hotplug_pm_sync_init.cpu_hotplug_pm_callback_nb) #19
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__cpuhp_state_add_instance_cpuslocked(i32 noundef %state, ptr noundef %node, i1 noundef zeroext %invoke) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_state to i32))
  %0 = load i32, ptr @system_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %cmp.i = icmp ult i32 %0, 3
  br i1 %cmp.i, label %entry.lockdep_assert_cpus_held.exit_crit_edge, label %do.body.i

entry.lockdep_assert_cpus_held.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %lockdep_assert_cpus_held.exit

do.body.i:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %1 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %do.body.i.lockdep_assert_cpus_held.exit_crit_edge, label %land.rhs.i

do.body.i.lockdep_assert_cpus_held.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %lockdep_assert_cpus_held.exit

land.rhs.i:                                       ; preds = %do.body.i
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpu_hotplug_lock, i32 0, i32 5), i32 noundef -1) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp1.not.i, label %do.end.i, label %land.rhs.i.lockdep_assert_cpus_held.exit_crit_edge, !prof !423

land.rhs.i.lockdep_assert_cpus_held.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %lockdep_assert_cpus_held.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 346, i32 noundef 9, ptr noundef null) #19
  br label %lockdep_assert_cpus_held.exit

lockdep_assert_cpus_held.exit:                    ; preds = %do.end.i, %land.rhs.i.lockdep_assert_cpus_held.exit_crit_edge, %do.body.i.lockdep_assert_cpus_held.exit_crit_edge, %entry.lockdep_assert_cpus_held.exit_crit_edge
  %multi_instance = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %state, i32 5
  %2 = ptrtoint ptr %multi_instance to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %multi_instance, align 1, !range !448
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %lockdep_assert_cpus_held.exit.cleanup23_crit_edge, label %if.end

lockdep_assert_cpus_held.exit.cleanup23_crit_edge: ; preds = %lockdep_assert_cpus_held.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup23

if.end:                                           ; preds = %lockdep_assert_cpus_held.exit
  tail call void @mutex_lock_nested(ptr noundef nonnull @cpuhp_state_mutex, i32 noundef 0) #19
  br i1 %invoke, label %lor.lhs.false, label %if.end.add_node_crit_edge

if.end.add_node_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %add_node

lor.lhs.false:                                    ; preds = %if.end
  %startup = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %state, i32 1
  %4 = ptrtoint ptr %startup to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %startup, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false.add_node_crit_edge, label %for.cond.preheader

lor.lhs.false.add_node_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %add_node

for.cond.preheader:                               ; preds = %lor.lhs.false
  %call644 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_present_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call644, i32 %6)
  %cmp745 = icmp ult i32 %call644, %6
  br i1 %cmp745, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.add_node_crit_edge

for.cond.preheader.add_node_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %add_node

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %call646 = phi i32 [ %call6, %cleanup.for.body_crit_edge ], [ %call644, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call646
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add = add i32 %8, ptrtoint (ptr @cpuhp_state to i32)
  %9 = inttoptr i32 %add to ptr
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %state)
  %cmp11 = icmp slt i32 %11, %state
  br i1 %cmp11, label %for.body.cleanup_crit_edge, label %if.end14

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end14:                                         ; preds = %for.body
  %call15 = tail call fastcc i32 @cpuhp_issue_call(i32 noundef %call646, i32 noundef %state, i1 noundef zeroext true, ptr noundef %node)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %if.then17

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then17:                                        ; preds = %if.end14
  %teardown = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %state, i32 2
  %12 = ptrtoint ptr %teardown to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %teardown, align 4
  %tobool18.not = icmp eq ptr %13, null
  br i1 %tobool18.not, label %if.then17.unlock_crit_edge, label %if.then19

if.then17.unlock_crit_edge:                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #21
  br label %unlock

if.then19:                                        ; preds = %if.then17
  %call16.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_present_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call16.i, i32 %14)
  %cmp17.i = icmp ult i32 %call16.i, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %call16.i, i32 %call646)
  %cmp3.not18.i = icmp slt i32 %call16.i, %call646
  %or.cond19.i = and i1 %cmp3.not18.i, %cmp17.i
  br i1 %or.cond19.i, label %if.then19.if.end.i_crit_edge, label %if.then19.unlock_crit_edge

if.then19.unlock_crit_edge:                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #21
  br label %unlock

if.then19.if.end.i_crit_edge:                     ; preds = %if.then19
  br label %if.end.i

if.end.i:                                         ; preds = %cleanup.i.if.end.i_crit_edge, %if.then19.if.end.i_crit_edge
  %call20.i = phi i32 [ %call.i, %cleanup.i.if.end.i_crit_edge ], [ %call16.i, %if.then19.if.end.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call20.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %16, ptrtoint (ptr @cpuhp_state to i32)
  %17 = inttoptr i32 %add.i to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %state)
  %cmp4.not.i = icmp slt i32 %19, %state
  br i1 %cmp4.not.i, label %if.end.i.cleanup.i_crit_edge, label %if.then5.i

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  %call6.i = tail call fastcc i32 @cpuhp_issue_call(i32 noundef %call20.i, i32 noundef %state, i1 noundef zeroext false, ptr noundef %node) #19
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then5.i, %if.end.i.cleanup.i_crit_edge
  %call.i = tail call i32 @cpumask_next(i32 noundef %call20.i, ptr noundef nonnull @__cpu_present_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %20 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %20)
  %cmp.i39 = icmp ult i32 %call.i, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %call646)
  %cmp3.not.i = icmp slt i32 %call.i, %call646
  %or.cond.i = and i1 %cmp3.not.i, %cmp.i39
  br i1 %or.cond.i, label %cleanup.i.if.end.i_crit_edge, label %cleanup.i.unlock_crit_edge

cleanup.i.unlock_crit_edge:                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %unlock

cleanup.i.if.end.i_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

cleanup:                                          ; preds = %if.end14.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %call6 = tail call i32 @cpumask_next(i32 noundef %call646, ptr noundef nonnull @__cpu_present_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %cmp7 = icmp ult i32 %call6, %21
  br i1 %cmp7, label %cleanup.for.body_crit_edge, label %cleanup.add_node_crit_edge

cleanup.add_node_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #21
  br label %add_node

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

add_node:                                         ; preds = %cleanup.add_node_crit_edge, %for.cond.preheader.add_node_crit_edge, %lor.lhs.false.add_node_crit_edge, %if.end.add_node_crit_edge
  %list = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %state, i32 3
  %22 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %list, align 4
  %24 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %23, ptr %node, align 4
  %tobool.not.i40 = icmp eq ptr %23, null
  br i1 %tobool.not.i40, label %add_node.hlist_add_head.exit_crit_edge, label %do.body12.i

add_node.hlist_add_head.exit_crit_edge:           ; preds = %add_node
  call void @__sanitizer_cov_trace_pc() #21
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %add_node
  call void @__sanitizer_cov_trace_pc() #21
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %23, i32 0, i32 1
  %25 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %node, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %add_node.hlist_add_head.exit_crit_edge
  %26 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %node, ptr %list, align 4
  %pprev34.i = getelementptr inbounds %struct.hlist_node, ptr %node, i32 0, i32 1
  %27 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %list, ptr %pprev34.i, align 4
  br label %unlock

unlock:                                           ; preds = %hlist_add_head.exit, %cleanup.i.unlock_crit_edge, %if.then19.unlock_crit_edge, %if.then17.unlock_crit_edge
  %ret.2 = phi i32 [ 0, %hlist_add_head.exit ], [ %call15, %if.then17.unlock_crit_edge ], [ %call15, %if.then19.unlock_crit_edge ], [ %call15, %cleanup.i.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @cpuhp_state_mutex) #19
  br label %cleanup23

cleanup23:                                        ; preds = %unlock, %lockdep_assert_cpus_held.exit.cleanup23_crit_edge
  %retval.0 = phi i32 [ %ret.2, %unlock ], [ -22, %lockdep_assert_cpus_held.exit.cleanup23_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpuhp_issue_call(i32 noundef %cpu, i32 noundef %state, i1 noundef zeroext %bringup, ptr noundef %node) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %startup.i = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %state, i32 1
  %teardown.i = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %state, i32 2
  %cond.in.in.in.i = select i1 %bringup, ptr %startup.i, ptr %teardown.i
  %0 = ptrtoint ptr %cond.in.in.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %cond.in.in.i = load ptr, ptr %cond.in.in.in.i, align 4
  %cond.in.i = icmp eq ptr %cond.in.in.i, null
  br i1 %cond.in.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 91, i32 %state)
  %cmp.i = icmp sgt i32 %state, 91
  call void @__sanitizer_cov_trace_const_cmp4(i32 150, i32 %state)
  %cmp1.i = icmp ne i32 %state, 150
  %spec.select.i = and i1 %cmp.i, %cmp1.i
  br i1 %spec.select.i, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %frombool.i = zext i1 %bringup to i8
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %2, ptrtoint (ptr @cpuhp_state to i32)
  %3 = inttoptr i32 %add.i to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %cpu)
  %cmp.not.i.i.i.i.i = icmp ugt i32 %4, %cpu
  br i1 %cmp.not.i.i.i.i.i, label %if.then3.cpu_online.exit.i_crit_edge, label %land.rhs.i.i.i.i.i

if.then3.cpu_online.exit.i_crit_edge:             ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit.i

land.rhs.i.i.i.i.i:                               ; preds = %if.then3
  %.b37.i.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i.i, label %land.rhs.i.i.i.i.i.cpu_online.exit.i_crit_edge, label %if.then.i.i.i.i.i, !prof !422

land.rhs.i.i.i.i.i.cpu_online.exit.i_crit_edge:   ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit.i

if.then.i.i.i.i.i:                                ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
  br label %cpu_online.exit.i

cpu_online.exit.i:                                ; preds = %if.then.i.i.i.i.i, %land.rhs.i.i.i.i.i.cpu_online.exit.i_crit_edge, %if.then3.cpu_online.exit.i_crit_edge
  %div3.i.i.i.i = lshr i32 %cpu, 5
  %arrayidx.i.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %cpu, 31
  %7 = shl nuw i32 1, %and.i.i.i.i
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not.i = icmp eq i32 %8, 0
  br i1 %tobool.i.not.i, label %cpu_online.exit.i.cleanup_crit_edge, label %if.end.i

cpu_online.exit.i.cleanup_crit_edge:              ; preds = %cpu_online.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end.i:                                         ; preds = %cpu_online.exit.i
  tail call fastcc void @cpuhp_lock_acquire(i1 noundef zeroext false) #19
  tail call fastcc void @cpuhp_lock_release(i1 noundef zeroext false) #19
  tail call fastcc void @cpuhp_lock_acquire(i1 noundef zeroext true) #19
  tail call fastcc void @cpuhp_lock_release(i1 noundef zeroext true) #19
  %thread.i = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %thread.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %thread.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.then2.i, label %__cpuhp_kick_ap.exit.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  %call4.i = tail call fastcc i32 @cpuhp_invoke_callback(i32 noundef %cpu, i32 noundef %state, i1 noundef zeroext %bringup, ptr noundef %node, ptr noundef null) #19
  br label %do.body

__cpuhp_kick_ap.exit.i:                           ; preds = %if.end.i
  %rollback.i = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %3, i32 0, i32 5
  %11 = ptrtoint ptr %rollback.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %rollback.i, align 1
  %last.i = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %3, i32 0, i32 10
  %12 = ptrtoint ptr %last.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %last.i, align 4
  %node6.i = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %3, i32 0, i32 9
  %13 = ptrtoint ptr %node6.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %node, ptr %node6.i, align 4
  %bringup8.i = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %3, i32 0, i32 7
  %14 = ptrtoint ptr %bringup8.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %frombool.i, ptr %bringup8.i, align 1
  %cb_state.i = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %3, i32 0, i32 11
  %15 = ptrtoint ptr %cb_state.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %state, ptr %cb_state.i, align 4
  %single.i = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %3, i32 0, i32 6
  %16 = ptrtoint ptr %single.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %single.i, align 2
  %result.i.i = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %3, i32 0, i32 12
  %17 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %result.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !449
  %should_run.i.i = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %should_run.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %should_run.i.i, align 4
  %19 = ptrtoint ptr %thread.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %thread.i, align 4
  %call.i.i = tail call i32 @wake_up_process(ptr noundef %20) #19
  %21 = ptrtoint ptr %bringup8.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bringup8.i, align 1, !range !448
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool3.not.i.i = icmp eq i8 %22, 0
  %done_up.i.i.i = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %3, i32 0, i32 13
  %done_down.i.i.i = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %3, i32 0, i32 14
  %cond.i.i.i = select i1 %tobool3.not.i.i, ptr %done_down.i.i.i, ptr %done_up.i.i.i
  tail call void @wait_for_completion(ptr noundef %cond.i.i.i) #19
  %23 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %result.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool10.not.i = icmp eq i32 %24, 0
  br i1 %tobool10.not.i, label %__cpuhp_kick_ap.exit.i.if.end18.i_crit_edge, label %land.lhs.true.i

__cpuhp_kick_ap.exit.i.if.end18.i_crit_edge:      ; preds = %__cpuhp_kick_ap.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end18.i

land.lhs.true.i:                                  ; preds = %__cpuhp_kick_ap.exit.i
  %25 = ptrtoint ptr %last.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %last.i, align 4
  %tobool12.not.i = icmp eq ptr %26, null
  br i1 %tobool12.not.i, label %land.lhs.true.i.if.end18.i_crit_edge, label %if.then13.i

land.lhs.true.i.if.end18.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end18.i

if.then13.i:                                      ; preds = %land.lhs.true.i
  %27 = ptrtoint ptr %rollback.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %rollback.i, align 1
  %lnot.i = xor i1 %bringup, true
  %frombool17.i = zext i1 %lnot.i to i8
  %28 = ptrtoint ptr %bringup8.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %frombool17.i, ptr %bringup8.i, align 1
  %29 = ptrtoint ptr %single.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %single.i, align 2, !range !448
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i43.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i43.i, label %land.lhs.true.i46.i, label %if.then13.i.if.end.i56.i_crit_edge

if.then13.i.if.end.i56.i_crit_edge:               ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i56.i

land.lhs.true.i46.i:                              ; preds = %if.then13.i
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %3, align 4
  %target.i44.i = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %3, i32 0, i32 1
  %33 = ptrtoint ptr %target.i44.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %target.i44.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp.i45.i = icmp eq i32 %32, %34
  br i1 %cmp.i45.i, label %land.lhs.true.i46.i.if.end18.i_crit_edge, label %land.lhs.true.i46.i.if.end.i56.i_crit_edge

land.lhs.true.i46.i.if.end.i56.i_crit_edge:       ; preds = %land.lhs.true.i46.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i56.i

land.lhs.true.i46.i.if.end18.i_crit_edge:         ; preds = %land.lhs.true.i46.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end18.i

if.end.i56.i:                                     ; preds = %land.lhs.true.i46.i.if.end.i56.i_crit_edge, %if.then13.i.if.end.i56.i_crit_edge
  %35 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %result.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !449
  %36 = ptrtoint ptr %should_run.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %should_run.i.i, align 4
  %37 = ptrtoint ptr %thread.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %thread.i, align 4
  %call.i50.i = tail call i32 @wake_up_process(ptr noundef %38) #19
  %39 = ptrtoint ptr %bringup8.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %bringup8.i, align 1, !range !448
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool3.not.i52.i = icmp eq i8 %40, 0
  %cond.i.i55.i = select i1 %tobool3.not.i52.i, ptr %done_down.i.i.i, ptr %done_up.i.i.i
  tail call void @wait_for_completion(ptr noundef %cond.i.i55.i) #19
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end.i56.i, %land.lhs.true.i46.i.if.end18.i_crit_edge, %land.lhs.true.i.if.end18.i_crit_edge, %__cpuhp_kick_ap.exit.i.if.end18.i_crit_edge
  %41 = ptrtoint ptr %last.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %last.i, align 4
  %42 = ptrtoint ptr %node6.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %node6.i, align 4
  br label %do.body

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %call7 = tail call fastcc i32 @cpuhp_invoke_callback(i32 noundef %cpu, i32 noundef %state, i1 noundef zeroext %bringup, ptr noundef %node, ptr noundef null)
  br label %do.body

do.body:                                          ; preds = %if.else, %if.end18.i, %if.then2.i
  %ret.0 = phi i32 [ %call7, %if.else ], [ %24, %if.end18.i ], [ %call4.i, %if.then2.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool9.not = icmp eq i32 %ret.0, 0
  %brmerge = or i1 %tobool9.not, %bringup
  br i1 %brmerge, label %do.body.cleanup_crit_edge, label %do.body15, !prof !450

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.body15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1921, 0\0A.popsection", ""() #19, !srcloc !451
  unreachable

cleanup:                                          ; preds = %do.body.cleanup_crit_edge, %cpu_online.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %ret.0, %do.body.cleanup_crit_edge ], [ 0, %cpu_online.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__cpuhp_state_add_instance(i32 noundef %state, ptr noundef %node, i1 noundef zeroext %invoke) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cpus_read_lock()
  %call = tail call i32 @__cpuhp_state_add_instance_cpuslocked(i32 noundef %state, ptr noundef %node, i1 noundef zeroext %invoke)
  tail call void @cpus_read_unlock()
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__cpuhp_setup_state_cpuslocked(i32 noundef %state, ptr noundef %name, i1 noundef zeroext %invoke, ptr noundef %startup, ptr noundef %teardown, i1 noundef zeroext %multi_instance) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_state to i32))
  %0 = load i32, ptr @system_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %cmp.i = icmp ult i32 %0, 3
  br i1 %cmp.i, label %entry.lockdep_assert_cpus_held.exit_crit_edge, label %do.body.i

entry.lockdep_assert_cpus_held.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %lockdep_assert_cpus_held.exit

do.body.i:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %1 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %do.body.i.lockdep_assert_cpus_held.exit_crit_edge, label %land.rhs.i

do.body.i.lockdep_assert_cpus_held.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %lockdep_assert_cpus_held.exit

land.rhs.i:                                       ; preds = %do.body.i
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpu_hotplug_lock, i32 0, i32 5), i32 noundef -1) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp1.not.i, label %do.end.i, label %land.rhs.i.lockdep_assert_cpus_held.exit_crit_edge, !prof !423

land.rhs.i.lockdep_assert_cpus_held.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %lockdep_assert_cpus_held.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 346, i32 noundef 9, ptr noundef null) #19
  br label %lockdep_assert_cpus_held.exit

lockdep_assert_cpus_held.exit:                    ; preds = %do.end.i, %land.rhs.i.lockdep_assert_cpus_held.exit_crit_edge, %do.body.i.lockdep_assert_cpus_held.exit_crit_edge, %entry.lockdep_assert_cpus_held.exit_crit_edge
  %2 = add i32 %state, -229
  call void @__sanitizer_cov_trace_const_cmp4(i32 -228, i32 %2)
  %3 = icmp ult i32 %2, -228
  %tobool2.not = icmp eq ptr %name, null
  %or.cond = or i1 %3, %tobool2.not
  br i1 %or.cond, label %lockdep_assert_cpus_held.exit.cleanup38_crit_edge, label %land.lhs.true.i

lockdep_assert_cpus_held.exit.cleanup38_crit_edge: ; preds = %lockdep_assert_cpus_held.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup38

land.lhs.true.i:                                  ; preds = %lockdep_assert_cpus_held.exit
  tail call void @mutex_lock_nested(ptr noundef nonnull @cpuhp_state_mutex, i32 noundef 0) #19
  %frombool.i = zext i1 %multi_instance to i8
  %4 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %state, label %land.lhs.true.i.land.lhs.true7.i_crit_edge [
    i32 194, label %land.lhs.true.i.sw.epilog.i.i_crit_edge
    i32 70, label %sw.bb1.i.i
  ]

land.lhs.true.i.sw.epilog.i.i_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i.i

land.lhs.true.i.land.lhs.true7.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true7.i

sw.bb1.i.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb1.i.i, %land.lhs.true.i.sw.epilog.i.i_crit_edge
  %end.0.i.i = phi i32 [ 90, %sw.bb1.i.i ], [ 224, %land.lhs.true.i.sw.epilog.i.i_crit_edge ]
  %step.0.i.i = phi ptr [ getelementptr inbounds ([230 x %struct.cpuhp_step], ptr @cpuhp_hp_states, i32 0, i32 70), %sw.bb1.i.i ], [ getelementptr inbounds ([230 x %struct.cpuhp_step], ptr @cpuhp_hp_states, i32 0, i32 194), %land.lhs.true.i.sw.epilog.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %end.0.i.i, i32 %state)
  %cmp.not27.i.i = icmp ult i32 %end.0.i.i, %state
  br i1 %cmp.not27.i.i, label %sw.epilog.i.i.do.end.i.i_crit_edge, label %for.body.preheader.i.i

sw.epilog.i.i.do.end.i.i_crit_edge:               ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end.i.i

for.body.preheader.i.i:                           ; preds = %sw.epilog.i.i
  %5 = or i32 %end.0.i.i, 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %step.129.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %step.0.i.i, %for.body.preheader.i.i ]
  %i.028.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %state, %for.body.preheader.i.i ]
  %6 = ptrtoint ptr %step.129.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %step.129.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %cpuhp_reserve_state.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nsw i32 %i.028.i.i, 1
  %incdec.ptr.i.i = getelementptr %struct.cpuhp_step, ptr %step.129.i.i, i32 1
  %exitcond.i.i = icmp eq i32 %inc.i.i, %5
  br i1 %exitcond.i.i, label %for.inc.i.i.do.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i.i

for.inc.i.i.do.end.i.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %for.inc.i.i.do.end.i.i_crit_edge, %sw.epilog.i.i.do.end.i.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1847, i32 noundef 9, ptr noundef nonnull @.str.106) #19
  br label %cpuhp_store_callbacks.exit

cpuhp_reserve_state.exit.i:                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.028.i.i)
  %cmp2.i = icmp slt i32 %i.028.i.i, 0
  br i1 %cmp2.i, label %cpuhp_reserve_state.exit.i.cpuhp_store_callbacks.exit_crit_edge, label %cpuhp_reserve_state.exit.i.land.lhs.true7.i_crit_edge

cpuhp_reserve_state.exit.i.land.lhs.true7.i_crit_edge: ; preds = %cpuhp_reserve_state.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true7.i

cpuhp_reserve_state.exit.i.cpuhp_store_callbacks.exit_crit_edge: ; preds = %cpuhp_reserve_state.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpuhp_store_callbacks.exit

land.lhs.true7.i:                                 ; preds = %cpuhp_reserve_state.exit.i.land.lhs.true7.i_crit_edge, %land.lhs.true.i.land.lhs.true7.i_crit_edge
  %state.pn.i = phi i32 [ %state, %land.lhs.true.i.land.lhs.true7.i_crit_edge ], [ %i.028.i.i, %cpuhp_reserve_state.exit.i.land.lhs.true7.i_crit_edge ]
  %ret.043.i = phi i32 [ 0, %land.lhs.true.i.land.lhs.true7.i_crit_edge ], [ %i.028.i.i, %cpuhp_reserve_state.exit.i.land.lhs.true7.i_crit_edge ]
  %add.ptr.i44.i = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %state.pn.i
  %8 = ptrtoint ptr %add.ptr.i44.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i44.i, align 4
  %tobool9.not.i = icmp eq ptr %9, null
  br i1 %tobool9.not.i, label %if.end11.i, label %land.lhs.true7.i.cpuhp_store_callbacks.exit_crit_edge

land.lhs.true7.i.cpuhp_store_callbacks.exit_crit_edge: ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpuhp_store_callbacks.exit

if.end11.i:                                       ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #21
  %startup12.i = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %state.pn.i, i32 1
  %10 = ptrtoint ptr %startup12.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %startup, ptr %startup12.i, align 4
  %teardown13.i = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %state.pn.i, i32 2
  %11 = ptrtoint ptr %teardown13.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %teardown, ptr %teardown13.i, align 4
  %12 = ptrtoint ptr %add.ptr.i44.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %name, ptr %add.ptr.i44.i, align 4
  %multi_instance16.i = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %state.pn.i, i32 5
  %13 = ptrtoint ptr %multi_instance16.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool.i, ptr %multi_instance16.i, align 1
  %list.i = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %state.pn.i, i32 3
  %14 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %list.i, align 4
  br label %cpuhp_store_callbacks.exit

cpuhp_store_callbacks.exit:                       ; preds = %if.end11.i, %land.lhs.true7.i.cpuhp_store_callbacks.exit_crit_edge, %cpuhp_reserve_state.exit.i.cpuhp_store_callbacks.exit_crit_edge, %do.end.i.i
  %retval.0.i65 = phi i32 [ %ret.043.i, %if.end11.i ], [ %i.028.i.i, %cpuhp_reserve_state.exit.i.cpuhp_store_callbacks.exit_crit_edge ], [ -16, %land.lhs.true7.i.cpuhp_store_callbacks.exit_crit_edge ], [ -28, %do.end.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 194, i32 %state)
  %cmp = icmp eq i32 %state, 194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i65)
  %cmp6 = icmp sgt i32 %retval.0.i65, 0
  %15 = and i1 %cmp, %cmp6
  %ret.0 = select i1 %15, i32 0, i32 %retval.0.i65
  %state.addr.0 = select i1 %15, i32 %retval.0.i65, i32 %state
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool10.not = icmp eq i32 %ret.0, 0
  %16 = and i1 %tobool10.not, %invoke
  br i1 %16, label %lor.lhs.false13, label %cpuhp_store_callbacks.exit.out_crit_edge

cpuhp_store_callbacks.exit.out_crit_edge:         ; preds = %cpuhp_store_callbacks.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

lor.lhs.false13:                                  ; preds = %cpuhp_store_callbacks.exit
  %tobool14.not = icmp eq ptr %startup, null
  br i1 %tobool14.not, label %lor.lhs.false13.out_crit_edge, label %for.cond.preheader

lor.lhs.false13.out_crit_edge:                    ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

for.cond.preheader:                               ; preds = %lor.lhs.false13
  %call1782 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_present_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %17 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1782, i32 %17)
  %cmp1883 = icmp ult i32 %call1782, %17
  br i1 %cmp1883, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.out_crit_edge

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %call1784 = phi i32 [ %call17, %cleanup.for.body_crit_edge ], [ %call1782, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call1784
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %add = add i32 %19, ptrtoint (ptr @cpuhp_state to i32)
  %20 = inttoptr i32 %add to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %state.addr.0)
  %cmp21 = icmp slt i32 %22, %state.addr.0
  br i1 %cmp21, label %for.body.cleanup_crit_edge, label %if.end23

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end23:                                         ; preds = %for.body
  %call24 = tail call fastcc i32 @cpuhp_issue_call(i32 noundef %call1784, i32 noundef %state.addr.0, i1 noundef zeroext true, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end23.cleanup_crit_edge, label %if.then26

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then26:                                        ; preds = %if.end23
  %tobool27.not = icmp eq ptr %teardown, null
  br i1 %tobool27.not, label %if.then26.cleanup.thread_crit_edge, label %if.then28

if.then26.cleanup.thread_crit_edge:               ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.thread

if.then28:                                        ; preds = %if.then26
  %call16.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_present_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %23 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call16.i, i32 %23)
  %cmp17.i = icmp ult i32 %call16.i, %23
  call void @__sanitizer_cov_trace_cmp4(i32 %call16.i, i32 %call1784)
  %cmp3.not18.i = icmp slt i32 %call16.i, %call1784
  %or.cond19.i = and i1 %cmp3.not18.i, %cmp17.i
  br i1 %or.cond19.i, label %if.then28.if.end.i_crit_edge, label %if.then28.cleanup.thread_crit_edge

if.then28.cleanup.thread_crit_edge:               ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.thread

if.then28.if.end.i_crit_edge:                     ; preds = %if.then28
  br label %if.end.i

if.end.i:                                         ; preds = %cleanup.i.if.end.i_crit_edge, %if.then28.if.end.i_crit_edge
  %call20.i = phi i32 [ %call.i, %cleanup.i.if.end.i_crit_edge ], [ %call16.i, %if.then28.if.end.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call20.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %25, ptrtoint (ptr @cpuhp_state to i32)
  %26 = inttoptr i32 %add.i to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %state.addr.0)
  %cmp4.not.i = icmp slt i32 %28, %state.addr.0
  br i1 %cmp4.not.i, label %if.end.i.cleanup.i_crit_edge, label %if.then5.i

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  %call6.i = tail call fastcc i32 @cpuhp_issue_call(i32 noundef %call20.i, i32 noundef %state.addr.0, i1 noundef zeroext false, ptr noundef null) #19
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then5.i, %if.end.i.cleanup.i_crit_edge
  %call.i = tail call i32 @cpumask_next(i32 noundef %call20.i, ptr noundef nonnull @__cpu_present_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %29 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %29)
  %cmp.i66 = icmp ult i32 %call.i, %29
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %call1784)
  %cmp3.not.i = icmp slt i32 %call.i, %call1784
  %or.cond.i = and i1 %cmp3.not.i, %cmp.i66
  br i1 %or.cond.i, label %cleanup.i.if.end.i_crit_edge, label %cleanup.i.cleanup.thread_crit_edge

cleanup.i.cleanup.thread_crit_edge:               ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.thread

cleanup.i.if.end.i_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

cleanup.thread:                                   ; preds = %cleanup.i.cleanup.thread_crit_edge, %if.then28.cleanup.thread_crit_edge, %if.then26.cleanup.thread_crit_edge
  %add.ptr.i36.i67 = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %state.addr.0
  %multi_instance16.i73 = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %state.addr.0, i32 5
  %30 = ptrtoint ptr %multi_instance16.i73 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %multi_instance16.i73, align 1
  %31 = call ptr @memset(ptr %add.ptr.i36.i67, i32 0, i32 16)
  br label %out

cleanup:                                          ; preds = %if.end23.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %call17 = tail call i32 @cpumask_next(i32 noundef %call1784, ptr noundef nonnull @__cpu_present_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %32 = load i32, ptr @nr_cpu_ids, align 4
  %cmp18 = icmp ult i32 %call17, %32
  br i1 %cmp18, label %cleanup.for.body_crit_edge, label %cleanup.out_crit_edge

cleanup.out_crit_edge:                            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

out:                                              ; preds = %cleanup.out_crit_edge, %cleanup.thread, %for.cond.preheader.out_crit_edge, %lor.lhs.false13.out_crit_edge, %cpuhp_store_callbacks.exit.out_crit_edge
  %ret.3 = phi i32 [ %ret.0, %cpuhp_store_callbacks.exit.out_crit_edge ], [ 0, %lor.lhs.false13.out_crit_edge ], [ %call24, %cleanup.thread ], [ 0, %for.cond.preheader.out_crit_edge ], [ 0, %cleanup.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @cpuhp_state_mutex) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3)
  %tobool33.not = icmp eq i32 %ret.3, 0
  %33 = and i1 %cmp, %tobool33.not
  %spec.select63 = select i1 %33, i32 %state.addr.0, i32 %ret.3
  br label %cleanup38

cleanup38:                                        ; preds = %out, %lockdep_assert_cpus_held.exit.cleanup38_crit_edge
  %retval.0 = phi i32 [ -22, %lockdep_assert_cpus_held.exit.cleanup38_crit_edge ], [ %spec.select63, %out ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__cpuhp_setup_state(i32 noundef %state, ptr noundef %name, i1 noundef zeroext %invoke, ptr noundef %startup, ptr noundef %teardown, i1 noundef zeroext %multi_instance) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cpus_read_lock()
  %call = tail call i32 @__cpuhp_setup_state_cpuslocked(i32 noundef %state, ptr noundef %name, i1 noundef zeroext %invoke, ptr noundef %startup, ptr noundef %teardown, i1 noundef zeroext %multi_instance)
  tail call void @cpus_read_unlock()
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__cpuhp_state_remove_instance(i32 noundef %state, ptr noundef %node, i1 noundef zeroext %invoke) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %state, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 228, i32 %0)
  %1 = icmp ult i32 %0, 228
  br i1 %1, label %do.end9, label %do.body4, !prof !422

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2105, 0\0A.popsection", ""() #19, !srcloc !452
  unreachable

do.end9:                                          ; preds = %entry
  %multi_instance = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %state, i32 5
  %2 = ptrtoint ptr %multi_instance to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %multi_instance, align 1, !range !448
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool10.not = icmp eq i8 %3, 0
  br i1 %tobool10.not, label %do.end9.cleanup_crit_edge, label %if.end12

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end12:                                         ; preds = %do.end9
  tail call void @cpus_read_lock()
  tail call void @mutex_lock_nested(ptr noundef nonnull @cpuhp_state_mutex, i32 noundef 0) #19
  br i1 %invoke, label %lor.lhs.false, label %if.end12.remove_crit_edge

if.end12.remove_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #21
  br label %remove

lor.lhs.false:                                    ; preds = %if.end12
  %teardown.i = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %state, i32 2
  %4 = ptrtoint ptr %teardown.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %teardown.i, align 4
  %tobool15.not = icmp eq ptr %5, null
  br i1 %tobool15.not, label %lor.lhs.false.remove_crit_edge, label %for.cond.preheader

lor.lhs.false.remove_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %remove

for.cond.preheader:                               ; preds = %lor.lhs.false
  %call1837 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_present_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1837, i32 %6)
  %cmp38 = icmp ult i32 %call1837, %6
  br i1 %cmp38, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.remove_crit_edge

for.cond.preheader.remove_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %remove

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %if.end27.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %call1839 = phi i32 [ %call18, %if.end27.for.body_crit_edge ], [ %call1837, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call1839
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add = add i32 %8, ptrtoint (ptr @cpuhp_state to i32)
  %9 = inttoptr i32 %add to ptr
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %state)
  %cmp24.not = icmp slt i32 %11, %state
  br i1 %cmp24.not, label %for.body.if.end27_crit_edge, label %if.then25

for.body.if.end27_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end27

if.then25:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  %call26 = tail call fastcc i32 @cpuhp_issue_call(i32 noundef %call1839, i32 noundef %state, i1 noundef zeroext false, ptr noundef %node)
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %for.body.if.end27_crit_edge
  %call18 = tail call i32 @cpumask_next(i32 noundef %call1839, ptr noundef nonnull @__cpu_present_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call18, %12
  br i1 %cmp, label %if.end27.for.body_crit_edge, label %if.end27.remove_crit_edge

if.end27.remove_crit_edge:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #21
  br label %remove

if.end27.for.body_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

remove:                                           ; preds = %if.end27.remove_crit_edge, %for.cond.preheader.remove_crit_edge, %lor.lhs.false.remove_crit_edge, %if.end12.remove_crit_edge
  %13 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %node, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %node, i32 0, i32 1
  %15 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pprev2.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %14, ptr %16, align 4
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %remove.hlist_del.exit_crit_edge, label %do.body13.i.i

remove.hlist_del.exit_crit_edge:                  ; preds = %remove
  call void @__sanitizer_cov_trace_pc() #21
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %remove
  call void @__sanitizer_cov_trace_pc() #21
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %14, i32 0, i32 1
  %18 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %remove.hlist_del.exit_crit_edge
  %19 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %20 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @cpuhp_state_mutex) #19
  tail call void @cpus_read_unlock()
  br label %cleanup

cleanup:                                          ; preds = %hlist_del.exit, %do.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %hlist_del.exit ], [ -22, %do.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__cpuhp_remove_state_cpuslocked(i32 noundef %state, i1 noundef zeroext %invoke) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %state, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 228, i32 %0)
  %1 = icmp ult i32 %0, 228
  br i1 %1, label %do.end9, label %do.body4, !prof !422

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2152, 0\0A.popsection", ""() #19, !srcloc !453
  unreachable

do.end9:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_state to i32))
  %2 = load i32, ptr @system_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp.i = icmp ult i32 %2, 3
  br i1 %cmp.i, label %do.end9.lockdep_assert_cpus_held.exit_crit_edge, label %do.body.i

do.end9.lockdep_assert_cpus_held.exit_crit_edge:  ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #21
  br label %lockdep_assert_cpus_held.exit

do.body.i:                                        ; preds = %do.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %3 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %do.body.i.lockdep_assert_cpus_held.exit_crit_edge, label %land.rhs.i

do.body.i.lockdep_assert_cpus_held.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %lockdep_assert_cpus_held.exit

land.rhs.i:                                       ; preds = %do.body.i
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpu_hotplug_lock, i32 0, i32 5), i32 noundef -1) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp1.not.i, label %do.end.i, label %land.rhs.i.lockdep_assert_cpus_held.exit_crit_edge, !prof !423

land.rhs.i.lockdep_assert_cpus_held.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %lockdep_assert_cpus_held.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 346, i32 noundef 9, ptr noundef null) #19
  br label %lockdep_assert_cpus_held.exit

lockdep_assert_cpus_held.exit:                    ; preds = %do.end.i, %land.rhs.i.lockdep_assert_cpus_held.exit_crit_edge, %do.body.i.lockdep_assert_cpus_held.exit_crit_edge, %do.end9.lockdep_assert_cpus_held.exit_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @cpuhp_state_mutex, i32 noundef 0) #19
  %multi_instance = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %state, i32 5
  %4 = ptrtoint ptr %multi_instance to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %multi_instance, align 1, !range !448
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool10.not = icmp eq i8 %5, 0
  br i1 %tobool10.not, label %if.end44, label %if.then11

if.then11:                                        ; preds = %lockdep_assert_cpus_held.exit
  %list = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %state, i32 3
  %6 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %list, align 4
  %tobool.not.i73.not = icmp eq ptr %7, null
  br i1 %tobool.not.i73.not, label %if.then11.remove_crit_edge, label %do.end31, !prof !422

if.then11.remove_crit_edge:                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #21
  br label %remove

do.end31:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2160, i32 noundef 9, ptr noundef nonnull @.str.31, i32 noundef %state) #19
  br label %remove

if.end44:                                         ; preds = %lockdep_assert_cpus_held.exit
  br i1 %invoke, label %lor.lhs.false, label %if.end44.remove_crit_edge

if.end44.remove_crit_edge:                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #21
  br label %remove

lor.lhs.false:                                    ; preds = %if.end44
  %teardown.i = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %state, i32 2
  %8 = ptrtoint ptr %teardown.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %teardown.i, align 4
  %tobool47.not = icmp eq ptr %9, null
  br i1 %tobool47.not, label %lor.lhs.false.remove_crit_edge, label %for.cond.preheader

lor.lhs.false.remove_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %remove

for.cond.preheader:                               ; preds = %lor.lhs.false
  %call5075 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_present_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call5075, i32 %10)
  %cmp76 = icmp ult i32 %call5075, %10
  br i1 %cmp76, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.remove_crit_edge

for.cond.preheader.remove_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %remove

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %if.end60.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %call5077 = phi i32 [ %call50, %if.end60.for.body_crit_edge ], [ %call5075, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call5077
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %add = add i32 %12, ptrtoint (ptr @cpuhp_state to i32)
  %13 = inttoptr i32 %add to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %state)
  %cmp57.not = icmp slt i32 %15, %state
  br i1 %cmp57.not, label %for.body.if.end60_crit_edge, label %if.then58

for.body.if.end60_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end60

if.then58:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  %call59 = tail call fastcc i32 @cpuhp_issue_call(i32 noundef %call5077, i32 noundef %state, i1 noundef zeroext false, ptr noundef null)
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %for.body.if.end60_crit_edge
  %call50 = tail call i32 @cpumask_next(i32 noundef %call5077, ptr noundef nonnull @__cpu_present_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call50, %16
  br i1 %cmp, label %if.end60.for.body_crit_edge, label %if.end60.remove_crit_edge

if.end60.remove_crit_edge:                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #21
  br label %remove

if.end60.for.body_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

remove:                                           ; preds = %if.end60.remove_crit_edge, %for.cond.preheader.remove_crit_edge, %lor.lhs.false.remove_crit_edge, %if.end44.remove_crit_edge, %do.end31, %if.then11.remove_crit_edge
  %add.ptr.i = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %state
  %17 = ptrtoint ptr %multi_instance to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %multi_instance, align 1
  %18 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 16)
  tail call void @mutex_unlock(ptr noundef nonnull @cpuhp_state_mutex) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__cpuhp_remove_state(i32 noundef %state, i1 noundef zeroext %invoke) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cpus_read_lock()
  tail call void @__cpuhp_remove_state_cpuslocked(i32 noundef %state, i1 noundef zeroext %invoke)
  tail call void @cpus_read_unlock()
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cpuhp_sysfs_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.bus_type, ptr @cpu_subsys, i32 0, i32 2) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.bus_type, ptr @cpu_subsys, i32 0, i32 2), align 4
  %call.i = tail call i32 @sysfs_create_group(ptr noundef %0, ptr noundef nonnull @cpuhp_smt_attr_group) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup15_crit_edge

entry.cleanup15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup15

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.bus_type, ptr @cpu_subsys, i32 0, i32 2) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.bus_type, ptr @cpu_subsys, i32 0, i32 2), align 4
  %call1 = tail call i32 @sysfs_create_group(ptr noundef %1, ptr noundef nonnull @cpuhp_cpu_root_attr_group) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %for.cond.preheader, label %if.end.cleanup15_crit_edge

if.end.cleanup15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup15

for.cond.preheader:                               ; preds = %if.end
  %call527 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call527, i32 %2)
  %cmp28 = icmp ult i32 %call527, %2
  br i1 %cmp28, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup15_crit_edge

for.cond.preheader.cleanup15_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup15

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %call529 = phi i32 [ %call5, %cleanup.for.body_crit_edge ], [ %call527, %for.cond.preheader.for.body_crit_edge ]
  %call6 = tail call ptr @get_cpu_device(i32 noundef %call529) #19
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %for.body.cleanup_crit_edge, label %if.end9

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end9:                                          ; preds = %for.body
  %call11 = tail call i32 @sysfs_create_group(ptr noundef nonnull %call6, ptr noundef nonnull @cpuhp_cpu_attr_group) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end9.cleanup_crit_edge, label %if.end9.cleanup15_crit_edge

if.end9.cleanup15_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

cleanup:                                          ; preds = %if.end9.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %call5 = tail call i32 @cpumask_next(i32 noundef %call529, ptr noundef nonnull @__cpu_possible_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call5, %3
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.cleanup15_crit_edge

cleanup.cleanup15_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup15

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

cleanup15:                                        ; preds = %cleanup.cleanup15_crit_edge, %if.end9.cleanup15_crit_edge, %for.cond.preheader.cleanup15_crit_edge, %if.end.cleanup15_crit_edge, %entry.cleanup15_crit_edge
  %retval.2 = phi i32 [ %call.i, %entry.cleanup15_crit_edge ], [ %call1, %if.end.cleanup15_crit_edge ], [ 0, %for.cond.preheader.cleanup15_crit_edge ], [ 0, %cleanup.cleanup15_crit_edge ], [ %call11, %if.end9.cleanup15_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @init_cpu_present(ptr nocapture noundef readonly %src) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %0, 31
  %1 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %1, 536870908
  %2 = call ptr @memcpy(ptr @__cpu_present_mask, ptr %src, i32 %mul.i.i)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @init_cpu_possible(ptr nocapture noundef readonly %src) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %0, 31
  %1 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %1, 536870908
  %2 = call ptr @memcpy(ptr @__cpu_possible_mask, ptr %src, i32 %mul.i.i)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @init_cpu_online(ptr nocapture noundef readonly %src) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %0, 31
  %1 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %1, 536870908
  %2 = call ptr @memcpy(ptr @__cpu_online_mask, ptr %src, i32 %mul.i.i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @set_cpu_online(i32 noundef %cpu, i1 noundef zeroext %online) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %cpu)
  %cmp.not.i.i.i = icmp ugt i32 %0, %cpu
  br i1 %online, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %cmp.not.i.i.i, label %if.then.cpumask_test_and_set_cpu.exit_crit_edge, label %land.rhs.i.i.i

if.then.cpumask_test_and_set_cpu.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpumask_test_and_set_cpu.exit

land.rhs.i.i.i:                                   ; preds = %if.then
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_test_and_set_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !422

land.rhs.i.i.i.cpumask_test_and_set_cpu.exit_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpumask_test_and_set_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
  br label %cpumask_test_and_set_cpu.exit

cpumask_test_and_set_cpu.exit:                    ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_test_and_set_cpu.exit_crit_edge, %if.then.cpumask_test_and_set_cpu.exit_crit_edge
  %call1.i = tail call i32 @_test_and_set_bit(i32 noundef %cpu, ptr noundef nonnull @__cpu_online_mask) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool1.not = icmp eq i32 %call1.i, 0
  br i1 %tobool1.not, label %if.then2, label %cpumask_test_and_set_cpu.exit.if.end7_crit_edge

cpumask_test_and_set_cpu.exit.if.end7_crit_edge:  ; preds = %cpumask_test_and_set_cpu.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end7

if.then2:                                         ; preds = %cpumask_test_and_set_cpu.exit
  call void @__sanitizer_cov_trace_pc() #21
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #19
  tail call void @llvm.prefetch.p0(ptr nonnull @__num_online_cpus, i32 1, i32 3, i32 1) #19
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @__num_online_cpus, ptr nonnull @__num_online_cpus, i32 1, ptr nonnull elementtype(i32) @__num_online_cpus) #19, !srcloc !454
  br label %if.end7

if.else:                                          ; preds = %entry
  br i1 %cmp.not.i.i.i, label %if.else.cpumask_test_and_clear_cpu.exit_crit_edge, label %land.rhs.i.i.i12

if.else.cpumask_test_and_clear_cpu.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpumask_test_and_clear_cpu.exit

land.rhs.i.i.i12:                                 ; preds = %if.else
  %.b37.i.i.i11 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i11, label %land.rhs.i.i.i12.cpumask_test_and_clear_cpu.exit_crit_edge, label %if.then.i.i.i13, !prof !422

land.rhs.i.i.i12.cpumask_test_and_clear_cpu.exit_crit_edge: ; preds = %land.rhs.i.i.i12
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpumask_test_and_clear_cpu.exit

if.then.i.i.i13:                                  ; preds = %land.rhs.i.i.i12
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
  br label %cpumask_test_and_clear_cpu.exit

cpumask_test_and_clear_cpu.exit:                  ; preds = %if.then.i.i.i13, %land.rhs.i.i.i12.cpumask_test_and_clear_cpu.exit_crit_edge, %if.else.cpumask_test_and_clear_cpu.exit_crit_edge
  %call1.i14 = tail call i32 @_test_and_clear_bit(i32 noundef %cpu, ptr noundef nonnull @__cpu_online_mask) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i14)
  %tobool4.not = icmp eq i32 %call1.i14, 0
  br i1 %tobool4.not, label %cpumask_test_and_clear_cpu.exit.if.end7_crit_edge, label %if.then5

cpumask_test_and_clear_cpu.exit.if.end7_crit_edge: ; preds = %cpumask_test_and_clear_cpu.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end7

if.then5:                                         ; preds = %cpumask_test_and_clear_cpu.exit
  call void @__sanitizer_cov_trace_pc() #21
  %call.i.i9 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #19
  tail call void @llvm.prefetch.p0(ptr nonnull @__num_online_cpus, i32 1, i32 3, i32 1) #19
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @__num_online_cpus, ptr nonnull @__num_online_cpus, i32 1, ptr nonnull elementtype(i32) @__num_online_cpus) #19, !srcloc !455
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %cpumask_test_and_clear_cpu.exit.if.end7_crit_edge, %if.then2, %cpumask_test_and_set_cpu.exit.if.end7_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @boot_cpu_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !412) #19
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu1, align 4
  tail call void @set_cpu_online(i32 noundef %3, i1 noundef zeroext true)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %entry.set_cpu_active.exit_crit_edge, label %land.rhs.i.i.i.i

entry.set_cpu_active.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %set_cpu_active.exit

land.rhs.i.i.i.i:                                 ; preds = %entry
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.set_cpu_active.exit_crit_edge, label %if.then.i.i.i.i, !prof !422

land.rhs.i.i.i.i.set_cpu_active.exit_crit_edge:   ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %set_cpu_active.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
  br label %set_cpu_active.exit

set_cpu_active.exit:                              ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.set_cpu_active.exit_crit_edge, %entry.set_cpu_active.exit_crit_edge
  tail call void @_set_bit(i32 noundef %3, ptr noundef nonnull @__cpu_active_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %5, %3
  br i1 %cmp.not.i.i.i.i6, label %set_cpu_active.exit.set_cpu_present.exit_crit_edge, label %land.rhs.i.i.i.i8

set_cpu_active.exit.set_cpu_present.exit_crit_edge: ; preds = %set_cpu_active.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %set_cpu_present.exit

land.rhs.i.i.i.i8:                                ; preds = %set_cpu_active.exit
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.set_cpu_present.exit_crit_edge, label %if.then.i.i.i.i9, !prof !422

land.rhs.i.i.i.i8.set_cpu_present.exit_crit_edge: ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #21
  br label %set_cpu_present.exit

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
  br label %set_cpu_present.exit

set_cpu_present.exit:                             ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.set_cpu_present.exit_crit_edge, %set_cpu_active.exit.set_cpu_present.exit_crit_edge
  tail call void @_set_bit(i32 noundef %3, ptr noundef nonnull @__cpu_present_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %3)
  %cmp.not.i.i.i.i10 = icmp ugt i32 %6, %3
  br i1 %cmp.not.i.i.i.i10, label %set_cpu_present.exit.set_cpu_possible.exit_crit_edge, label %land.rhs.i.i.i.i12

set_cpu_present.exit.set_cpu_possible.exit_crit_edge: ; preds = %set_cpu_present.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %set_cpu_possible.exit

land.rhs.i.i.i.i12:                               ; preds = %set_cpu_present.exit
  %.b37.i.i.i.i11 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i11, label %land.rhs.i.i.i.i12.set_cpu_possible.exit_crit_edge, label %if.then.i.i.i.i13, !prof !422

land.rhs.i.i.i.i12.set_cpu_possible.exit_crit_edge: ; preds = %land.rhs.i.i.i.i12
  call void @__sanitizer_cov_trace_pc() #21
  br label %set_cpu_possible.exit

if.then.i.i.i.i13:                                ; preds = %land.rhs.i.i.i.i12
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
  br label %set_cpu_possible.exit

set_cpu_possible.exit:                            ; preds = %if.then.i.i.i.i13, %land.rhs.i.i.i.i12.set_cpu_possible.exit_crit_edge, %set_cpu_present.exit.set_cpu_possible.exit_crit_edge
  tail call void @_set_bit(i32 noundef %3, ptr noundef nonnull @__cpu_possible_mask) #19
  store i32 %3, ptr @__boot_cpu_id, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @boot_cpu_hotplug_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !412) #19
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i, label %entry.cpumask_set_cpu.exit_crit_edge, label %land.rhs.i.i.i

entry.cpumask_set_cpu.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpumask_set_cpu.exit

land.rhs.i.i.i:                                   ; preds = %entry
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !422

land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpumask_set_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
  br label %cpumask_set_cpu.exit

cpumask_set_cpu.exit:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, %entry.cpumask_set_cpu.exit_crit_edge
  tail call void @_set_bit(i32 noundef %3, ptr noundef nonnull @cpus_booted_once_mask) #19
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !426
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, ptrtoint (ptr @cpuhp_state to i32)
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 229, ptr %10, align 4
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #19, !srcloc !427
  %and.i.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.then, label %cpumask_set_cpu.exit.do.end29_crit_edge, !prof !423

cpumask_set_cpu.exit.do.end29_crit_edge:          ; preds = %cpumask_set_cpu.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end29

if.then:                                          ; preds = %cpumask_set_cpu.exit
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @warn_bogus_irq_restore() #19
  br label %do.end29

do.end29:                                         ; preds = %if.then, %cpumask_set_cpu.exit.do.end29_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %5) #19, !srcloc !428
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mitigations_parse_cmdline(ptr noundef %arg) #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strcmp(ptr noundef %arg, ptr noundef nonnull dereferenceable(4) @.str.111) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  store i32 0, ptr @cpu_mitigations, align 4
  br label %if.end11

if.else:                                          ; preds = %entry
  %call1 = tail call i32 @strcmp(ptr noundef %arg, ptr noundef nonnull dereferenceable(5) @.str.121) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  store i32 1, ptr @cpu_mitigations, align 4
  br label %if.end11

if.else4:                                         ; preds = %if.else
  %call5 = tail call i32 @strcmp(ptr noundef %arg, ptr noundef nonnull dereferenceable(11) @.str.122) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %do.end

if.then7:                                         ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #21
  store i32 2, ptr @cpu_mitigations, align 4
  br label %if.end11

do.end:                                           ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #21
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef %arg) #23
  br label %if.end11

if.end11:                                         ; preds = %do.end, %if.then7, %if.then3, %if.then
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cpu_mitigations_off() #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @cpu_mitigations, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cpu_mitigations_auto_nosmt() #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @cpu_mitigations, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp eq i32 %0, 2
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cpuhp_enter(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %cpu = getelementptr inbounds %struct.trace_event_raw_cpuhp_enter, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %target = getelementptr inbounds %struct.trace_event_raw_cpuhp_enter, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target, align 4
  %idx = getelementptr inbounds %struct.trace_event_raw_cpuhp_enter, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idx, align 4
  %fun = getelementptr inbounds %struct.trace_event_raw_cpuhp_enter, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %fun to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fun, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.39, i32 noundef %3, i32 noundef %5, i32 noundef %7, ptr noundef %9) #19
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #19
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
define internal i32 @trace_raw_output_cpuhp_multi_enter(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %cpu = getelementptr inbounds %struct.trace_event_raw_cpuhp_multi_enter, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %target = getelementptr inbounds %struct.trace_event_raw_cpuhp_multi_enter, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target, align 4
  %idx = getelementptr inbounds %struct.trace_event_raw_cpuhp_multi_enter, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idx, align 4
  %fun = getelementptr inbounds %struct.trace_event_raw_cpuhp_multi_enter, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %fun to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fun, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.39, i32 noundef %3, i32 noundef %5, i32 noundef %7, ptr noundef %9) #19
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cpuhp_exit(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %cpu = getelementptr inbounds %struct.trace_event_raw_cpuhp_exit, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %state = getelementptr inbounds %struct.trace_event_raw_cpuhp_exit, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %idx = getelementptr inbounds %struct.trace_event_raw_cpuhp_exit, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idx, align 4
  %ret1 = getelementptr inbounds %struct.trace_event_raw_cpuhp_exit, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %ret1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ret1, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.42, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9) #19
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #10

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run4(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run5(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cpuhp_should_run(i32 noundef %cpu) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !412) #19
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu2, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @cpuhp_state to i32)
  %6 = inttoptr i32 %add to ptr
  %should_run = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %should_run to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %should_run, align 4, !range !448
  %9 = zext i8 %8 to i32
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpuhp_thread_fun(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !412) #19
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu2, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @cpuhp_state to i32)
  %6 = inttoptr i32 %add to ptr
  %bringup3 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %bringup3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bringup3, align 1, !range !448
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool = icmp ne i8 %8, 0
  %should_run = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %6, i32 0, i32 4
  %9 = ptrtoint ptr %should_run to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %should_run, align 4, !range !448
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not = icmp eq i8 %10, 0
  br i1 %tobool4.not, label %land.rhs, label %do.end52

land.rhs:                                         ; preds = %entry
  %.b309 = load i1, ptr @cpuhp_thread_fun.__already_done, align 1
  br i1 %.b309, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !422

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpuhp_thread_fun.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 753, i32 noundef 9, ptr noundef null) #19
  br label %cleanup

do.end52:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !456
  tail call fastcc void @lockdep_acquire_cpus_lock()
  tail call fastcc void @cpuhp_lock_acquire(i1 noundef zeroext %tobool)
  %single = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %6, i32 0, i32 6
  %11 = ptrtoint ptr %single to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %single, align 2, !range !448
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool56.not = icmp eq i8 %12, 0
  br i1 %tobool56.not, label %if.else, label %if.then57

if.then57:                                        ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #21
  %cb_state = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %6, i32 0, i32 11
  %13 = ptrtoint ptr %cb_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cb_state, align 4
  br label %if.end67

if.else:                                          ; preds = %do.end52
  %target = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %6, i32 0, i32 1
  %15 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %target, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.end8.i.do.body.i_crit_edge, %if.else
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %6, align 4
  br i1 %tobool, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %16)
  %cmp.not.i = icmp slt i32 %18, %16
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i.end.sink.split_crit_edge

if.then.i.end.sink.split_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %end.sink.split

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  %inc.i = add nsw i32 %18, 1
  br label %if.end8.i

if.else.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %16)
  %cmp4.not.i = icmp sgt i32 %18, %16
  br i1 %cmp4.not.i, label %if.end6.i, label %if.else.i.end.sink.split_crit_edge

if.else.i.end.sink.split_crit_edge:               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %end.sink.split

if.end6.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #21
  %dec.i = add nsw i32 %18, -1
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end6.i, %if.end.i
  %storemerge21.i = phi i32 [ %dec.i, %if.end6.i ], [ %inc.i, %if.end.i ]
  %storemerge.i = phi i32 [ %18, %if.end6.i ], [ %inc.i, %if.end.i ]
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %storemerge21.i, ptr %6, align 4
  %startup.i.i = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %storemerge.i, i32 1
  %teardown.i.i = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %storemerge.i, i32 2
  %cond.in.in.in.i.i = select i1 %tobool, ptr %startup.i.i, ptr %teardown.i.i
  %20 = ptrtoint ptr %cond.in.in.in.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %cond.in.in.i.i = load ptr, ptr %cond.in.in.in.i.i, align 4
  %cond.in.i.i = icmp eq ptr %cond.in.in.i.i, null
  br i1 %cond.in.i.i, label %if.end8.i.do.body.i_crit_edge, label %if.end8.i.if.end67_crit_edge

if.end8.i.if.end67_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end67

if.end8.i.do.body.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i

if.end67:                                         ; preds = %if.end8.i.if.end67_crit_edge, %if.then57
  %storemerge = phi i8 [ 0, %if.then57 ], [ 1, %if.end8.i.if.end67_crit_edge ]
  %state.2 = phi i32 [ %14, %if.then57 ], [ %storemerge.i, %if.end8.i.if.end67_crit_edge ]
  %21 = ptrtoint ptr %should_run to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %storemerge, ptr %should_run, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 91, i32 %state.2)
  %cmp.i = icmp sgt i32 %state.2, 91
  call void @__sanitizer_cov_trace_const_cmp4(i32 150, i32 %state.2)
  %cmp1.i = icmp ne i32 %state.2, 150
  %spec.select.i = and i1 %cmp.i, %cmp1.i
  br i1 %spec.select.i, label %if.end67.if.end116_crit_edge, label %land.rhs78

if.end67.if.end116_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end116

land.rhs78:                                       ; preds = %if.end67
  %.b303308 = load i1, ptr @cpuhp_thread_fun.__already_done.53, align 1
  br i1 %.b303308, label %land.rhs78.if.end116_crit_edge, label %if.then89, !prof !422

land.rhs78.if.end116_crit_edge:                   ; preds = %land.rhs78
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end116

if.then89:                                        ; preds = %land.rhs78
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpuhp_thread_fun.__already_done.53, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 779, i32 noundef 9, ptr noundef null) #19
  br label %if.end116

if.end116:                                        ; preds = %if.then89, %land.rhs78.if.end116_crit_edge, %if.end67.if.end116_crit_edge
  %22 = add i32 %state.2, -92
  call void @__sanitizer_cov_trace_const_cmp4(i32 57, i32 %22)
  %23 = icmp ult i32 %22, 57
  br i1 %23, label %do.body126, label %if.else195

do.body126:                                       ; preds = %if.end116
  %24 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #19, !srcloc !427
  %and.i.i = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool128.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #19, !srcloc !457
  br i1 %tobool128.not, label %if.then131, label %do.body126.if.end132_crit_edge

do.body126.if.end132_crit_edge:                   ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end132

if.then131:                                       ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @trace_hardirqs_off() #19
  br label %if.end132

if.end132:                                        ; preds = %if.then131, %do.body126.if.end132_crit_edge
  %node = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %6, i32 0, i32 9
  %25 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %node, align 4
  %last = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %6, i32 0, i32 10
  %call136 = tail call fastcc i32 @cpuhp_invoke_callback(i32 noundef %cpu, i32 noundef %state.2, i1 noundef zeroext %tobool, ptr noundef %26, ptr noundef %last)
  %result = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %6, i32 0, i32 12
  %27 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call136, ptr %result, align 4
  tail call void @trace_hardirqs_on() #19
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #19, !srcloc !458
  %28 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool142.not = icmp eq i32 %29, 0
  br i1 %tobool142.not, label %if.end132.if.end201_crit_edge, label %land.rhs149

if.end132.if.end201_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end201

land.rhs149:                                      ; preds = %if.end132
  %.b304307 = load i1, ptr @cpuhp_thread_fun.__already_done.54, align 1
  br i1 %.b304307, label %land.rhs149.if.end201_crit_edge, label %if.then160, !prof !422

land.rhs149.if.end201_crit_edge:                  ; preds = %land.rhs149
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end201

if.then160:                                       ; preds = %land.rhs149
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpuhp_thread_fun.__already_done.54, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 789, i32 noundef 9, ptr noundef null) #19
  br label %if.end201

if.else195:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #21
  %node197 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %6, i32 0, i32 9
  %30 = ptrtoint ptr %node197 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %node197, align 4
  %last198 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %6, i32 0, i32 10
  %call199 = tail call fastcc i32 @cpuhp_invoke_callback(i32 noundef %cpu, i32 noundef %state.2, i1 noundef zeroext %tobool, ptr noundef %31, ptr noundef %last198)
  %result200 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %6, i32 0, i32 12
  %32 = ptrtoint ptr %result200 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call199, ptr %result200, align 4
  br label %if.end201

if.end201:                                        ; preds = %if.else195, %if.then160, %land.rhs149.if.end201_crit_edge, %if.end132.if.end201_crit_edge
  %result202 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %6, i32 0, i32 12
  %33 = ptrtoint ptr %result202 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %result202, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool203.not = icmp eq i32 %34, 0
  br i1 %tobool203.not, label %if.end201.end_crit_edge, label %if.then204

if.end201.end_crit_edge:                          ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #21
  br label %end

if.then204:                                       ; preds = %if.end201
  %rollback = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %6, i32 0, i32 5
  %35 = ptrtoint ptr %rollback to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %rollback, align 1, !range !448
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool206.not = icmp eq i8 %36, 0
  br i1 %tobool206.not, label %if.then204.end.sink.split_crit_edge, label %land.rhs213

if.then204.end.sink.split_crit_edge:              ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #21
  br label %end.sink.split

land.rhs213:                                      ; preds = %if.then204
  %.b305306 = load i1, ptr @cpuhp_thread_fun.__already_done.55, align 1
  br i1 %.b305306, label %land.rhs213.end.sink.split_crit_edge, label %if.then224, !prof !422

land.rhs213.end.sink.split_crit_edge:             ; preds = %land.rhs213
  call void @__sanitizer_cov_trace_pc() #21
  br label %end.sink.split

if.then224:                                       ; preds = %land.rhs213
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpuhp_thread_fun.__already_done.55, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 800, i32 noundef 9, ptr noundef null) #19
  br label %end.sink.split

end.sink.split:                                   ; preds = %if.then224, %land.rhs213.end.sink.split_crit_edge, %if.then204.end.sink.split_crit_edge, %if.else.i.end.sink.split_crit_edge, %if.then.i.end.sink.split_crit_edge
  %37 = ptrtoint ptr %should_run to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %should_run, align 4
  br label %end

end:                                              ; preds = %end.sink.split, %if.end201.end_crit_edge
  tail call fastcc void @cpuhp_lock_release(i1 noundef zeroext %tobool)
  tail call fastcc void @lockdep_release_cpus_lock()
  %38 = ptrtoint ptr %should_run to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %should_run, align 4, !range !448
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool263.not = icmp eq i8 %39, 0
  br i1 %tobool263.not, label %if.then264, label %end.cleanup_crit_edge

end.cleanup_crit_edge:                            ; preds = %end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then264:                                       ; preds = %end
  call void @__sanitizer_cov_trace_pc() #21
  %done_up.i = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %6, i32 0, i32 13
  %done_down.i = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %6, i32 0, i32 14
  %cond.i = select i1 %tobool, ptr %done_up.i, ptr %done_down.i
  tail call void @complete(ptr noundef %cond.i) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then264, %end.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpuhp_create(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @cpuhp_state to i32)
  %2 = inttoptr i32 %add to ptr
  %done_up = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %2, i32 0, i32 13
  %3 = ptrtoint ptr %done_up to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %done_up, align 4
  %wait.i = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %2, i32 0, i32 13, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.63, ptr noundef nonnull @init_completion.__key) #19
  %done_down = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %2, i32 0, i32 14
  %4 = ptrtoint ptr %done_down to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %done_down, align 4
  %wait.i6 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %2, i32 0, i32 14, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i6, ptr noundef nonnull @.str.63, ptr noundef nonnull @init_completion.__key) #19
  %cpu2 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %2, i32 0, i32 8
  %5 = ptrtoint ptr %cpu2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cpu, ptr %cpu2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lockdep_acquire_cpus_lock() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @lock_acquire(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpu_hotplug_lock, i32 0, i32 5), i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@lockdep_acquire_cpus_lock, %__here) to i32)) #19
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpuhp_lock_acquire(i1 noundef zeroext %bringup) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %cond = select i1 %bringup, ptr @cpuhp_state_up_map, ptr @cpuhp_state_down_map
  tail call void @lock_acquire(ptr noundef nonnull %cond, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@cpuhp_lock_acquire, %__here) to i32)) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpuhp_invoke_callback(i32 noundef %cpu, i32 noundef %state, i1 noundef zeroext %bringup, ptr noundef %node, ptr noundef %lastp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @cpuhp_state to i32)
  %2 = inttoptr i32 %add to ptr
  %fail = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %fail to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %state)
  %cmp = icmp eq i32 %4, %state
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %5 = ptrtoint ptr %fail to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %fail, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %startup.i = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %state, i32 1
  %teardown.i = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %state, i32 2
  %cond.in.in.in.i = select i1 %bringup, ptr %startup.i, ptr %teardown.i
  %6 = ptrtoint ptr %cond.in.in.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %cond.in.in.i = load ptr, ptr %cond.in.in.in.i, align 4
  %cond.in.i = icmp eq ptr %cond.in.in.i, null
  br i1 %cond.in.i, label %land.end, label %if.end44

land.end:                                         ; preds = %if.end
  %.b373 = load i1, ptr @cpuhp_invoke_callback.__already_done, align 1
  br i1 %.b373, label %land.end.cleanup_crit_edge, label %if.then10, !prof !422

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then10:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpuhp_invoke_callback.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 182, i32 noundef 9, ptr noundef null) #19
  br label %cleanup

if.end44:                                         ; preds = %if.end
  %multi_instance = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %state, i32 5
  %7 = ptrtoint ptr %multi_instance to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %multi_instance, align 1, !range !448
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool45.not = icmp eq i8 %8, 0
  br i1 %tobool45.not, label %if.then46, label %if.end107

if.then46:                                        ; preds = %if.end44
  %tobool48.not = icmp eq ptr %lastp, null
  br i1 %tobool48.not, label %if.then46.if.end96_crit_edge, label %land.rhs49

if.then46.if.end96_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end96

land.rhs49:                                       ; preds = %if.then46
  %9 = ptrtoint ptr %lastp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lastp, align 4
  %tobool50.not = icmp eq ptr %10, null
  br i1 %tobool50.not, label %land.rhs49.if.end96_crit_edge, label %land.rhs58

land.rhs49.if.end96_crit_edge:                    ; preds = %land.rhs49
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end96

land.rhs58:                                       ; preds = %land.rhs49
  %.b367370 = load i1, ptr @cpuhp_invoke_callback.__already_done.58, align 1
  br i1 %.b367370, label %land.rhs58.if.end96_crit_edge, label %if.then69, !prof !422

land.rhs58.if.end96_crit_edge:                    ; preds = %land.rhs58
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end96

if.then69:                                        ; preds = %land.rhs58
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpuhp_invoke_callback.__already_done.58, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 187, i32 noundef 9, ptr noundef null) #19
  br label %if.end96

if.end96:                                         ; preds = %if.then69, %land.rhs58.if.end96_crit_edge, %land.rhs49.if.end96_crit_edge, %if.then46.if.end96_crit_edge
  %11 = ptrtoint ptr %cond.in.in.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %cond = load ptr, ptr %cond.in.in.in.i, align 4
  %target = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %2, i32 0, i32 1
  %12 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %target, align 4
  tail call fastcc void @trace_cpuhp_enter(i32 noundef %cpu, i32 noundef %13, i32 noundef %state, ptr noundef %cond)
  %call105 = tail call i32 %cond(i32 noundef %cpu) #19
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %2, align 4
  tail call fastcc void @trace_cpuhp_exit(i32 noundef %cpu, i32 noundef %15, i32 noundef %state, i32 noundef %call105)
  br label %cleanup

if.end107:                                        ; preds = %if.end44
  %tobool115.not = icmp eq ptr %node, null
  br i1 %tobool115.not, label %if.end177, label %if.then116

if.then116:                                       ; preds = %if.end107
  %tobool118.not = icmp eq ptr %lastp, null
  br i1 %tobool118.not, label %if.then116.if.end166_crit_edge, label %land.rhs119

if.then116.if.end166_crit_edge:                   ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end166

land.rhs119:                                      ; preds = %if.then116
  %16 = ptrtoint ptr %lastp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lastp, align 4
  %tobool120.not = icmp eq ptr %17, null
  br i1 %tobool120.not, label %land.rhs119.if.end166_crit_edge, label %land.rhs128

land.rhs119.if.end166_crit_edge:                  ; preds = %land.rhs119
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end166

land.rhs128:                                      ; preds = %land.rhs119
  %.b368372 = load i1, ptr @cpuhp_invoke_callback.__already_done.59, align 1
  br i1 %.b368372, label %land.rhs128.if.end166_crit_edge, label %if.then139, !prof !422

land.rhs128.if.end166_crit_edge:                  ; preds = %land.rhs128
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end166

if.then139:                                       ; preds = %land.rhs128
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpuhp_invoke_callback.__already_done.59, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 199, i32 noundef 9, ptr noundef null) #19
  br label %if.end166

if.end166:                                        ; preds = %if.then139, %land.rhs128.if.end166_crit_edge, %land.rhs119.if.end166_crit_edge, %if.then116.if.end166_crit_edge
  %target174 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %2, i32 0, i32 1
  %18 = ptrtoint ptr %target174 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %target174, align 4
  tail call fastcc void @trace_cpuhp_multi_enter(i32 noundef %cpu, i32 noundef %19, i32 noundef %state, ptr noundef nonnull %cond.in.in.i, ptr noundef nonnull %node)
  %call175 = tail call i32 %cond.in.in.i(i32 noundef %cpu, ptr noundef nonnull %node) #19
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %2, align 4
  tail call fastcc void @trace_cpuhp_exit(i32 noundef %cpu, i32 noundef %21, i32 noundef %state, i32 noundef %call175)
  br label %cleanup

if.end177:                                        ; preds = %if.end107
  %list = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %state, i32 3
  %22 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %22)
  %node.addr.0382 = load ptr, ptr %list, align 4
  %tobool178.not383 = icmp eq ptr %node.addr.0382, null
  br i1 %tobool178.not383, label %if.end177.for.end_crit_edge, label %for.body.lr.ph

if.end177.for.end_crit_edge:                      ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end177
  %tobool179.not = icmp eq ptr %lastp, null
  %target183 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %2, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end191.for.body_crit_edge, %for.body.lr.ph
  %node.addr.0385 = phi ptr [ %node.addr.0382, %for.body.lr.ph ], [ %node.addr.0, %if.end191.for.body_crit_edge ]
  %cnt.0384 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end191.for.body_crit_edge ]
  br i1 %tobool179.not, label %for.body.if.end182_crit_edge, label %land.lhs.true

for.body.if.end182_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end182

land.lhs.true:                                    ; preds = %for.body
  %23 = ptrtoint ptr %lastp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lastp, align 4
  %cmp180 = icmp eq ptr %node.addr.0385, %24
  br i1 %cmp180, label %land.lhs.true.if.then193_crit_edge, label %land.lhs.true.if.end182_crit_edge

land.lhs.true.if.end182_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end182

land.lhs.true.if.then193_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then193

if.end182:                                        ; preds = %land.lhs.true.if.end182_crit_edge, %for.body.if.end182_crit_edge
  %25 = ptrtoint ptr %target183 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %target183, align 4
  tail call fastcc void @trace_cpuhp_multi_enter(i32 noundef %cpu, i32 noundef %26, i32 noundef %state, ptr noundef nonnull %cond.in.in.i, ptr noundef nonnull %node.addr.0385)
  %call184 = tail call i32 %cond.in.in.i(i32 noundef %cpu, ptr noundef nonnull %node.addr.0385) #19
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %2, align 4
  tail call fastcc void @trace_cpuhp_exit(i32 noundef %cpu, i32 noundef %28, i32 noundef %state, i32 noundef %call184)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %tobool186.not = icmp eq i32 %call184, 0
  br i1 %tobool186.not, label %if.end191, label %if.then187

if.then187:                                       ; preds = %if.end182
  br i1 %tobool179.not, label %err, label %if.end190

if.end190:                                        ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #21
  %29 = ptrtoint ptr %lastp to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %node.addr.0385, ptr %lastp, align 4
  br label %cleanup

if.end191:                                        ; preds = %if.end182
  %inc = add i32 %cnt.0384, 1
  %30 = ptrtoint ptr %node.addr.0385 to i32
  call void @__asan_load4_noabort(i32 %30)
  %node.addr.0 = load ptr, ptr %node.addr.0385, align 4
  %tobool178.not = icmp eq ptr %node.addr.0, null
  br i1 %tobool178.not, label %if.end191.for.end_crit_edge, label %if.end191.for.body_crit_edge

if.end191.for.body_crit_edge:                     ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

if.end191.for.end_crit_edge:                      ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.end:                                          ; preds = %if.end191.for.end_crit_edge, %if.end177.for.end_crit_edge
  %tobool192.not = icmp eq ptr %lastp, null
  br i1 %tobool192.not, label %for.end.cleanup_crit_edge, label %for.end.if.then193_crit_edge

for.end.if.then193_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then193

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then193:                                       ; preds = %for.end.if.then193_crit_edge, %land.lhs.true.if.then193_crit_edge
  %31 = ptrtoint ptr %lastp to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %lastp, align 4
  br label %cleanup

err:                                              ; preds = %if.then187
  %cond201.in = select i1 %bringup, ptr %teardown.i, ptr %startup.i
  %32 = ptrtoint ptr %cond201.in to i32
  call void @__asan_load4_noabort(i32 %32)
  %cond201 = load ptr, ptr %cond201.in, align 4
  %tobool202.not = icmp eq ptr %cond201, null
  br i1 %tobool202.not, label %err.cleanup_crit_edge, label %for.cond207.preheader

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.cond207.preheader:                            ; preds = %err
  %33 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %33)
  %node.addr.1386 = load ptr, ptr %list, align 4
  %tobool208.not387 = icmp eq ptr %node.addr.1386, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.0384)
  %tobool210.not408 = icmp eq i32 %cnt.0384, 0
  %or.cond = select i1 %tobool208.not387, i1 true, i1 %tobool210.not408
  br i1 %or.cond, label %for.cond207.preheader.cleanup_crit_edge, label %for.cond207.preheader.if.end212_crit_edge

for.cond207.preheader.if.end212_crit_edge:        ; preds = %for.cond207.preheader
  br label %if.end212

for.cond207.preheader.cleanup_crit_edge:          ; preds = %for.cond207.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end212:                                        ; preds = %if.end262.if.end212_crit_edge, %for.cond207.preheader.if.end212_crit_edge
  %dec410.in = phi i32 [ %dec410, %if.end262.if.end212_crit_edge ], [ %cnt.0384, %for.cond207.preheader.if.end212_crit_edge ]
  %node.addr.1390409 = phi ptr [ %node.addr.1, %if.end262.if.end212_crit_edge ], [ %node.addr.1386, %for.cond207.preheader.if.end212_crit_edge ]
  %dec410 = add i32 %dec410.in, -1
  %34 = ptrtoint ptr %target183 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %target183, align 4
  tail call fastcc void @trace_cpuhp_multi_enter(i32 noundef %cpu, i32 noundef %35, i32 noundef %state, ptr noundef nonnull %cond201, ptr noundef nonnull %node.addr.1390409)
  %call214 = tail call i32 %cond201(i32 noundef %cpu, ptr noundef nonnull %node.addr.1390409) #19
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %2, align 4
  tail call fastcc void @trace_cpuhp_exit(i32 noundef %cpu, i32 noundef %37, i32 noundef %state, i32 noundef %call214)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call214)
  %tobool217.not = icmp eq i32 %call214, 0
  br i1 %tobool217.not, label %if.end212.if.end262_crit_edge, label %land.rhs224

if.end212.if.end262_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end262

land.rhs224:                                      ; preds = %if.end212
  %.b369371 = load i1, ptr @cpuhp_invoke_callback.__already_done.60, align 1
  br i1 %.b369371, label %land.rhs224.if.end262_crit_edge, label %if.then235, !prof !422

land.rhs224.if.end262_crit_edge:                  ; preds = %land.rhs224
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end262

if.then235:                                       ; preds = %land.rhs224
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpuhp_invoke_callback.__already_done.60, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 243, i32 noundef 9, ptr noundef null) #19
  br label %if.end262

if.end262:                                        ; preds = %if.then235, %land.rhs224.if.end262_crit_edge, %if.end212.if.end262_crit_edge
  %38 = ptrtoint ptr %node.addr.1390409 to i32
  call void @__asan_load4_noabort(i32 %38)
  %node.addr.1 = load ptr, ptr %node.addr.1390409, align 4
  %tobool208.not = icmp eq ptr %node.addr.1, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec410)
  %tobool210.not = icmp eq i32 %dec410, 0
  %or.cond412 = select i1 %tobool208.not, i1 true, i1 %tobool210.not
  br i1 %or.cond412, label %if.end262.cleanup_crit_edge, label %if.end262.if.end212_crit_edge

if.end262.if.end212_crit_edge:                    ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end212

if.end262.cleanup_crit_edge:                      ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

cleanup:                                          ; preds = %if.end262.cleanup_crit_edge, %for.cond207.preheader.cleanup_crit_edge, %err.cleanup_crit_edge, %if.then193, %for.end.cleanup_crit_edge, %if.end190, %if.end166, %if.end96, %if.then10, %land.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -11, %if.then ], [ %call175, %if.end166 ], [ %call184, %if.end190 ], [ %call105, %if.end96 ], [ 0, %if.then10 ], [ 0, %land.end.cleanup_crit_edge ], [ 0, %if.then193 ], [ 0, %for.end.cleanup_crit_edge ], [ %call184, %err.cleanup_crit_edge ], [ %call184, %for.cond207.preheader.cleanup_crit_edge ], [ %call214, %if.end262.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpuhp_lock_release(i1 noundef zeroext %bringup) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %cond = select i1 %bringup, ptr @cpuhp_state_up_map, ptr @cpuhp_state_down_map
  tail call void @lock_release(ptr noundef nonnull %cond, i32 noundef ptrtoint (ptr blockaddress(@cpuhp_lock_release, %__here) to i32)) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lockdep_release_cpus_lock() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @lock_release(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpu_hotplug_lock, i32 0, i32 5), i32 noundef ptrtoint (ptr blockaddress(@lockdep_release_cpus_lock, %__here) to i32)) #19
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cpuhp_enter(i32 noundef %cpu, i32 noundef %target, i32 noundef %idx, ptr noundef %fun) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cpuhp_enter, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_cpuhp_enter, %do.body)) #19
          to label %if.end49 [label %do.body], !srcloc !442

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !412) #19
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !422

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %if.end32

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end70

if.end32:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !412) #19
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !459
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cpuhp_enter, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end49.critedge, label %if.end32.do.body2.i_crit_edge

if.end32.do.body2.i_crit_edge:                    ; preds = %if.end32
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end32.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end32.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, i32 noundef %cpu, i32 noundef %target, i32 noundef %idx, ptr noundef %fun) #19
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !460
  br label %if.end49.sink.split

if.end49.critedge:                                ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !460
  br label %if.end49.sink.split

if.end49.sink.split:                              ; preds = %if.end49.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !412) #19
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !412) #19
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !422

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div3.i.i.i82 = lshr i32 %27, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i82
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %33 = tail call i32 @llvm.read_register.i32(metadata !412) #19
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !446
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cpuhp_enter, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_cpuhp_enter.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @trace_cpuhp_enter.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.61, i32 noundef 35, ptr noundef nonnull @.str.62) #19
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !447
  %38 = tail call i32 @llvm.read_register.i32(metadata !412) #19
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
define internal fastcc void @trace_cpuhp_exit(i32 noundef %cpu, i32 noundef %state, i32 noundef %idx, i32 noundef %ret) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cpuhp_exit, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_cpuhp_exit, %do.body)) #19
          to label %if.end49 [label %do.body], !srcloc !442

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !412) #19
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !422

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %if.end32

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end70

if.end32:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !412) #19
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !461
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cpuhp_exit, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end49.critedge, label %if.end32.do.body2.i_crit_edge

if.end32.do.body2.i_crit_edge:                    ; preds = %if.end32
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end32.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end32.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, i32 noundef %cpu, i32 noundef %state, i32 noundef %idx, i32 noundef %ret) #19
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !462
  br label %if.end49.sink.split

if.end49.critedge:                                ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !462
  br label %if.end49.sink.split

if.end49.sink.split:                              ; preds = %if.end49.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !412) #19
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !412) #19
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !422

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div3.i.i.i82 = lshr i32 %27, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i82
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %33 = tail call i32 @llvm.read_register.i32(metadata !412) #19
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !446
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cpuhp_exit, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_cpuhp_exit.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @trace_cpuhp_exit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.61, i32 noundef 90, ptr noundef nonnull @.str.62) #19
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !447
  %38 = tail call i32 @llvm.read_register.i32(metadata !412) #19
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
define internal fastcc void @trace_cpuhp_multi_enter(i32 noundef %cpu, i32 noundef %target, i32 noundef %idx, ptr noundef %fun, ptr noundef %node) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cpuhp_multi_enter, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_cpuhp_multi_enter, %do.body)) #19
          to label %if.end49 [label %do.body], !srcloc !442

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !412) #19
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !422

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %if.end32

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end70

if.end32:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !412) #19
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !463
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cpuhp_multi_enter, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end49.critedge, label %if.end32.do.body2.i_crit_edge

if.end32.do.body2.i_crit_edge:                    ; preds = %if.end32
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end32.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end32.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, i32 noundef %cpu, i32 noundef %target, i32 noundef %idx, ptr noundef %fun, ptr noundef %node) #19
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !464
  br label %if.end49.sink.split

if.end49.critedge:                                ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !464
  br label %if.end49.sink.split

if.end49.sink.split:                              ; preds = %if.end49.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !412) #19
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !412) #19
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !422

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div3.i.i.i82 = lshr i32 %27, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i82
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %33 = tail call i32 @llvm.read_register.i32(metadata !412) #19
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !446
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cpuhp_multi_enter, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_cpuhp_multi_enter.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @trace_cpuhp_multi_enter.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.61, i32 noundef 63, ptr noundef nonnull @.str.62) #19
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !447
  %38 = tail call i32 @llvm.read_register.i32(metadata !412) #19
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @housekeeping_test_cpu(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_suspend_resume(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpuhp_set_state(ptr nocapture noundef %st, i32 noundef %target) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  %0 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %st, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %target)
  %cmp = icmp slt i32 %1, %target
  %frombool = zext i1 %cmp to i8
  %rollback = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %st, i32 0, i32 5
  %2 = ptrtoint ptr %rollback to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %rollback, align 1
  %last = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %st, i32 0, i32 10
  %3 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %last, align 4
  %target2 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %st, i32 0, i32 1
  %4 = ptrtoint ptr %target2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %target, ptr %target2, align 4
  %single = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %st, i32 0, i32 6
  %5 = ptrtoint ptr %single to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %single, align 2
  %bringup3 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %st, i32 0, i32 7
  %6 = ptrtoint ptr %bringup3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %bringup3, align 1
  %cpu = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %st, i32 0, i32 8
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %8)
  %cmp.not.i.i.i.i = icmp ugt i32 %9, %8
  br i1 %cmp.not.i.i.i.i, label %entry.cpu_dying.exit_crit_edge, label %land.rhs.i.i.i.i

entry.cpu_dying.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_dying.exit

land.rhs.i.i.i.i:                                 ; preds = %entry
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_dying.exit_crit_edge, label %if.then.i.i.i.i, !prof !422

land.rhs.i.i.i.i.cpu_dying.exit_crit_edge:        ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_dying.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
  br label %cpu_dying.exit

cpu_dying.exit:                                   ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_dying.exit_crit_edge, %entry.cpu_dying.exit_crit_edge
  %div3.i.i.i = lshr i32 %8, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_dying_mask, i32 %div3.i.i.i
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %8, 31
  %12 = shl nuw i32 1, %and.i.i.i
  %13 = and i32 %11, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i = icmp ne i32 %13, 0
  %cmp6.not = xor i1 %cmp, %tobool.i
  br i1 %cmp6.not, label %cpu_dying.exit.if.end_crit_edge, label %if.then

cpu_dying.exit.if.end_crit_edge:                  ; preds = %cpu_dying.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %cpu_dying.exit
  %14 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %15)
  %cmp.not.i.i.i.i23 = icmp ugt i32 %16, %15
  br i1 %cmp, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  br i1 %cmp.not.i.i.i.i23, label %if.then.i.cpumask_set_cpu.exit.i_crit_edge, label %land.rhs.i.i.i.i25

if.then.i.cpumask_set_cpu.exit.i_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpumask_set_cpu.exit.i

land.rhs.i.i.i.i25:                               ; preds = %if.then.i
  %.b37.i.i.i.i24 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i24, label %land.rhs.i.i.i.i25.cpumask_set_cpu.exit.i_crit_edge, label %if.then.i.i.i.i26, !prof !422

land.rhs.i.i.i.i25.cpumask_set_cpu.exit.i_crit_edge: ; preds = %land.rhs.i.i.i.i25
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpumask_set_cpu.exit.i

if.then.i.i.i.i26:                                ; preds = %land.rhs.i.i.i.i25
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
  br label %cpumask_set_cpu.exit.i

cpumask_set_cpu.exit.i:                           ; preds = %if.then.i.i.i.i26, %land.rhs.i.i.i.i25.cpumask_set_cpu.exit.i_crit_edge, %if.then.i.cpumask_set_cpu.exit.i_crit_edge
  tail call void @_set_bit(i32 noundef %15, ptr noundef nonnull @__cpu_dying_mask) #19
  br label %if.end

if.else.i:                                        ; preds = %if.then
  br i1 %cmp.not.i.i.i.i23, label %if.else.i.cpumask_clear_cpu.exit.i_crit_edge, label %land.rhs.i.i.i4.i

if.else.i.cpumask_clear_cpu.exit.i_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpumask_clear_cpu.exit.i

land.rhs.i.i.i4.i:                                ; preds = %if.else.i
  %.b37.i.i.i3.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i3.i, label %land.rhs.i.i.i4.i.cpumask_clear_cpu.exit.i_crit_edge, label %if.then.i.i.i5.i, !prof !422

land.rhs.i.i.i4.i.cpumask_clear_cpu.exit.i_crit_edge: ; preds = %land.rhs.i.i.i4.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpumask_clear_cpu.exit.i

if.then.i.i.i5.i:                                 ; preds = %land.rhs.i.i.i4.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
  br label %cpumask_clear_cpu.exit.i

cpumask_clear_cpu.exit.i:                         ; preds = %if.then.i.i.i5.i, %land.rhs.i.i.i4.i.cpumask_clear_cpu.exit.i_crit_edge, %if.else.i.cpumask_clear_cpu.exit.i_crit_edge
  tail call void @_clear_bit(i32 noundef %15, ptr noundef nonnull @__cpu_dying_mask) #19
  br label %if.end

if.end:                                           ; preds = %cpumask_clear_cpu.exit.i, %cpumask_set_cpu.exit.i, %cpu_dying.exit.if.end_crit_edge
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpuhp_kick_ap_work(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @cpuhp_state to i32)
  %2 = inttoptr i32 %add to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  tail call fastcc void @cpuhp_lock_acquire(i1 noundef zeroext false)
  tail call fastcc void @cpuhp_lock_release(i1 noundef zeroext false)
  tail call fastcc void @cpuhp_lock_acquire(i1 noundef zeroext true)
  tail call fastcc void @cpuhp_lock_release(i1 noundef zeroext true)
  %target = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %target, align 4
  tail call fastcc void @trace_cpuhp_enter(i32 noundef %cpu, i32 noundef %6, i32 noundef %4, ptr noundef nonnull @cpuhp_kick_ap_work)
  %7 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %target, align 4
  %call = tail call fastcc i32 @cpuhp_kick_ap(ptr noundef %2, i32 noundef %8)
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %2, align 4
  tail call fastcc void @trace_cpuhp_exit(i32 noundef %cpu, i32 noundef %10, i32 noundef %4, i32 noundef %call)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpuhp_down_callbacks(i32 noundef %cpu, ptr nocapture noundef %st, i32 noundef %target) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %st, align 4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.backedge, %entry
  %2 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %st, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %target)
  %cmp4.not.i.i = icmp sgt i32 %3, %target
  br i1 %cmp4.not.i.i, label %if.end6.i.i, label %do.body.i.i.if.end43_crit_edge

do.body.i.i.if.end43_crit_edge:                   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end43

if.end6.i.i:                                      ; preds = %do.body.i.i
  %dec.i.i = add nsw i32 %3, -1
  %4 = ptrtoint ptr %st to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %dec.i.i, ptr %st, align 4
  %teardown.i.i.i = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %3, i32 2
  %5 = ptrtoint ptr %teardown.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %cond.in.in.i.i.i = load ptr, ptr %teardown.i.i.i, align 4
  %cond.in.i.i.i = icmp eq ptr %cond.in.in.i.i.i, null
  br i1 %cond.in.i.i.i, label %if.end6.i.i.do.body.i.i.backedge_crit_edge, label %while.body.i

if.end6.i.i.do.body.i.i.backedge_crit_edge:       ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i.i.backedge

do.body.i.i.backedge:                             ; preds = %while.body.i.do.body.i.i.backedge_crit_edge, %if.end6.i.i.do.body.i.i.backedge_crit_edge
  br label %do.body.i.i

while.body.i:                                     ; preds = %if.end6.i.i
  %call2.i = tail call fastcc i32 @cpuhp_invoke_callback(i32 noundef %cpu, i32 noundef %3, i1 noundef zeroext false, ptr noundef null, ptr noundef null) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %while.body.i.do.body.i.i.backedge_crit_edge, label %do.body

while.body.i.do.body.i.i.backedge_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i.i.backedge

do.body:                                          ; preds = %while.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpuhp_down_callbacks.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpuhp_down_callbacks, %if.then5)) #19
          to label %do.end [label %if.then5], !srcloc !442

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  %6 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %st, align 4
  %add.ptr.i = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %7
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cpuhp_down_callbacks.__UNIQUE_ID_ddebug386, ptr noundef nonnull @.str.73, i32 noundef %call2.i, i32 noundef %cpu, ptr noundef %9, i32 noundef %7) #19
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  tail call fastcc void @cpuhp_reset_state(ptr noundef %st, i32 noundef %1)
  %10 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %st, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %1)
  %cmp = icmp slt i32 %11, %1
  br i1 %cmp, label %do.end.do.body.i.i58_crit_edge, label %do.end.if.end43_crit_edge

do.end.if.end43_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end43

do.end.do.body.i.i58_crit_edge:                   ; preds = %do.end
  br label %do.body.i.i58

do.body.i.i58:                                    ; preds = %do.body.i.i58.backedge, %do.end.do.body.i.i58_crit_edge
  %12 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %st, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %1)
  %cmp.not.i.i = icmp slt i32 %13, %1
  br i1 %cmp.not.i.i, label %if.end.i.i, label %do.body.i.i58.if.end43_crit_edge

do.body.i.i58.if.end43_crit_edge:                 ; preds = %do.body.i.i58
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end43

if.end.i.i:                                       ; preds = %do.body.i.i58
  %inc.i.i = add nsw i32 %13, 1
  %14 = ptrtoint ptr %st to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %inc.i.i, ptr %st, align 4
  %startup.i.i.i59 = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %inc.i.i, i32 1
  %15 = ptrtoint ptr %startup.i.i.i59 to i32
  call void @__asan_load4_noabort(i32 %15)
  %cond.in.in.i.i.i61 = load ptr, ptr %startup.i.i.i59, align 4
  %cond.in.i.i.i62 = icmp eq ptr %cond.in.in.i.i.i61, null
  br i1 %cond.in.i.i.i62, label %if.end.i.i.do.body.i.i58.backedge_crit_edge, label %while.body.i65

if.end.i.i.do.body.i.i58.backedge_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i.i58.backedge

do.body.i.i58.backedge:                           ; preds = %while.body.i65.do.body.i.i58.backedge_crit_edge, %if.end.i.i.do.body.i.i58.backedge_crit_edge
  br label %do.body.i.i58

while.body.i65:                                   ; preds = %if.end.i.i
  %call2.i63 = tail call fastcc i32 @cpuhp_invoke_callback(i32 noundef %cpu, i32 noundef %inc.i.i, i1 noundef zeroext true, ptr noundef null, ptr noundef null) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i63)
  %tobool3.not.i64 = icmp eq i32 %call2.i63, 0
  br i1 %tobool3.not.i64, label %while.body.i65.do.body.i.i58.backedge_crit_edge, label %do.end28

while.body.i65.do.body.i.i58.backedge_crit_edge:  ; preds = %while.body.i65
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i.i58.backedge

do.end28:                                         ; preds = %while.body.i65
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1113, i32 noundef 9, ptr noundef null) #19
  br label %if.end43

if.end43:                                         ; preds = %do.end28, %do.body.i.i58.if.end43_crit_edge, %do.end.if.end43_crit_edge, %do.body.i.i.if.end43_crit_edge
  %err.1.i70 = phi i32 [ %call2.i, %do.end28 ], [ %call2.i, %do.end.if.end43_crit_edge ], [ %call2.i, %do.body.i.i58.if.end43_crit_edge ], [ 0, %do.body.i.i.if.end43_crit_edge ]
  ret i32 %err.1.i70
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpuhp_reset_state(ptr nocapture noundef %st, i32 noundef %prev_state) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  %bringup1 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %st, i32 0, i32 7
  %0 = ptrtoint ptr %bringup1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bringup1, align 1, !range !448
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %2 = xor i8 %1, 1
  %target = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %st, i32 0, i32 1
  %3 = ptrtoint ptr %target to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %prev_state, ptr %target, align 4
  %rollback = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %st, i32 0, i32 5
  %4 = ptrtoint ptr %rollback to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rollback, align 1, !range !448
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %rollback to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %rollback, align 1
  %last = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %st, i32 0, i32 10
  %7 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %last, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end11

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %9 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %st, align 4
  %. = select i1 %tobool.not, i32 1, i32 -1
  %dec = add i32 %10, %.
  store i32 %dec, ptr %st, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then5, %if.end.if.end11_crit_edge
  %11 = ptrtoint ptr %bringup1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %2, ptr %bringup1, align 1
  %cpu = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %st, i32 0, i32 8
  %12 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %13)
  %cmp.not.i.i.i.i = icmp ugt i32 %14, %13
  br i1 %cmp.not.i.i.i.i, label %if.end11.cpu_dying.exit_crit_edge, label %land.rhs.i.i.i.i

if.end11.cpu_dying.exit_crit_edge:                ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_dying.exit

land.rhs.i.i.i.i:                                 ; preds = %if.end11
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_dying.exit_crit_edge, label %if.then.i.i.i.i, !prof !422

land.rhs.i.i.i.i.cpu_dying.exit_crit_edge:        ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_dying.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
  br label %cpu_dying.exit

cpu_dying.exit:                                   ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_dying.exit_crit_edge, %if.end11.cpu_dying.exit_crit_edge
  %div3.i.i.i = lshr i32 %13, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_dying_mask, i32 %div3.i.i.i
  %15 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %13, 31
  %17 = shl nuw i32 1, %and.i.i.i
  %18 = and i32 %16, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i = icmp ne i32 %18, 0
  %19 = zext i1 %tobool.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %19)
  %cmp.not = icmp eq i8 %1, %19
  br i1 %cmp.not, label %cpu_dying.exit.cleanup_crit_edge, label %if.then18

cpu_dying.exit.cleanup_crit_edge:                 ; preds = %cpu_dying.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then18:                                        ; preds = %cpu_dying.exit
  %20 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %22 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %21)
  %cmp.not.i.i.i.i36 = icmp ugt i32 %22, %21
  br i1 %tobool.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then18
  br i1 %cmp.not.i.i.i.i36, label %if.then.i.cpumask_set_cpu.exit.i_crit_edge, label %land.rhs.i.i.i.i38

if.then.i.cpumask_set_cpu.exit.i_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpumask_set_cpu.exit.i

land.rhs.i.i.i.i38:                               ; preds = %if.then.i
  %.b37.i.i.i.i37 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i37, label %land.rhs.i.i.i.i38.cpumask_set_cpu.exit.i_crit_edge, label %if.then.i.i.i.i39, !prof !422

land.rhs.i.i.i.i38.cpumask_set_cpu.exit.i_crit_edge: ; preds = %land.rhs.i.i.i.i38
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpumask_set_cpu.exit.i

if.then.i.i.i.i39:                                ; preds = %land.rhs.i.i.i.i38
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
  br label %cpumask_set_cpu.exit.i

cpumask_set_cpu.exit.i:                           ; preds = %if.then.i.i.i.i39, %land.rhs.i.i.i.i38.cpumask_set_cpu.exit.i_crit_edge, %if.then.i.cpumask_set_cpu.exit.i_crit_edge
  tail call void @_set_bit(i32 noundef %21, ptr noundef nonnull @__cpu_dying_mask) #19
  br label %cleanup

if.else.i:                                        ; preds = %if.then18
  br i1 %cmp.not.i.i.i.i36, label %if.else.i.cpumask_clear_cpu.exit.i_crit_edge, label %land.rhs.i.i.i4.i

if.else.i.cpumask_clear_cpu.exit.i_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpumask_clear_cpu.exit.i

land.rhs.i.i.i4.i:                                ; preds = %if.else.i
  %.b37.i.i.i3.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i3.i, label %land.rhs.i.i.i4.i.cpumask_clear_cpu.exit.i_crit_edge, label %if.then.i.i.i5.i, !prof !422

land.rhs.i.i.i4.i.cpumask_clear_cpu.exit.i_crit_edge: ; preds = %land.rhs.i.i.i4.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpumask_clear_cpu.exit.i

if.then.i.i.i5.i:                                 ; preds = %land.rhs.i.i.i4.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
  br label %cpumask_clear_cpu.exit.i

cpumask_clear_cpu.exit.i:                         ; preds = %if.then.i.i.i5.i, %land.rhs.i.i.i4.i.cpumask_clear_cpu.exit.i_crit_edge, %if.else.i.cpumask_clear_cpu.exit.i_crit_edge
  tail call void @_clear_bit(i32 noundef %21, ptr noundef nonnull @__cpu_dying_mask) #19
  br label %cleanup

cleanup:                                          ; preds = %cpumask_clear_cpu.exit.i, %cpumask_set_cpu.exit.i, %cpu_dying.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockup_detector_cleanup() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpuhp_kick_ap(ptr noundef %st, i32 noundef %target) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cpuhp_set_state(ptr noundef %st, i32 noundef %target)
  %single.i = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %st, i32 0, i32 6
  %0 = ptrtoint ptr %single.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %single.i, align 2, !range !448
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %st, align 4
  %target.i = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %st, i32 0, i32 1
  %4 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.i = icmp eq i32 %3, %5
  br i1 %cmp.i, label %land.lhs.true.i.__cpuhp_kick_ap.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

land.lhs.true.i.__cpuhp_kick_ap.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %__cpuhp_kick_ap.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %result.i = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %st, i32 0, i32 12
  %6 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %result.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !449
  %should_run.i = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %st, i32 0, i32 4
  %7 = ptrtoint ptr %should_run.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %should_run.i, align 4
  %thread.i = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %st, i32 0, i32 3
  %8 = ptrtoint ptr %thread.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %thread.i, align 4
  %call.i = tail call i32 @wake_up_process(ptr noundef %9) #19
  %bringup.i = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %st, i32 0, i32 7
  %10 = ptrtoint ptr %bringup.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bringup.i, align 1, !range !448
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not.i = icmp eq i8 %11, 0
  %done_up.i.i = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %st, i32 0, i32 13
  %done_down.i.i = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %st, i32 0, i32 14
  %cond.i.i = select i1 %tobool3.not.i, ptr %done_down.i.i, ptr %done_up.i.i
  tail call void @wait_for_completion(ptr noundef %cond.i.i) #19
  br label %__cpuhp_kick_ap.exit

__cpuhp_kick_ap.exit:                             ; preds = %if.end.i, %land.lhs.true.i.__cpuhp_kick_ap.exit_crit_edge
  %result = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %st, i32 0, i32 12
  %12 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %__cpuhp_kick_ap.exit.if.end_crit_edge, label %if.then

__cpuhp_kick_ap.exit.if.end_crit_edge:            ; preds = %__cpuhp_kick_ap.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %__cpuhp_kick_ap.exit
  tail call fastcc void @cpuhp_reset_state(ptr noundef %st, i32 noundef %call)
  %14 = ptrtoint ptr %single.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %single.i, align 2, !range !448
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i6 = icmp eq i8 %15, 0
  br i1 %tobool.not.i6, label %land.lhs.true.i9, label %if.then.if.end.i19_crit_edge

if.then.if.end.i19_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i19

land.lhs.true.i9:                                 ; preds = %if.then
  %16 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %st, align 4
  %target.i7 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %st, i32 0, i32 1
  %18 = ptrtoint ptr %target.i7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %target.i7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp.i8 = icmp eq i32 %17, %19
  br i1 %cmp.i8, label %land.lhs.true.i9.if.end_crit_edge, label %land.lhs.true.i9.if.end.i19_crit_edge

land.lhs.true.i9.if.end.i19_crit_edge:            ; preds = %land.lhs.true.i9
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i19

land.lhs.true.i9.if.end_crit_edge:                ; preds = %land.lhs.true.i9
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.end.i19:                                       ; preds = %land.lhs.true.i9.if.end.i19_crit_edge, %if.then.if.end.i19_crit_edge
  %20 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %result, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !449
  %should_run.i11 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %st, i32 0, i32 4
  %21 = ptrtoint ptr %should_run.i11 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %should_run.i11, align 4
  %thread.i12 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %st, i32 0, i32 3
  %22 = ptrtoint ptr %thread.i12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %thread.i12, align 4
  %call.i13 = tail call i32 @wake_up_process(ptr noundef %23) #19
  %bringup.i14 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %st, i32 0, i32 7
  %24 = ptrtoint ptr %bringup.i14 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bringup.i14, align 1, !range !448
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool3.not.i15 = icmp eq i8 %25, 0
  %done_up.i.i16 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %st, i32 0, i32 13
  %done_down.i.i17 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %st, i32 0, i32 14
  %cond.i.i18 = select i1 %tobool3.not.i15, ptr %done_down.i.i17, ptr %done_up.i.i16
  tail call void @wait_for_completion(ptr noundef %cond.i.i18) #19
  br label %if.end

if.end:                                           ; preds = %if.end.i19, %land.lhs.true.i9.if.end_crit_edge, %__cpuhp_kick_ap.exit.if.end_crit_edge
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuset_wait_for_hotplug() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idle_thread_get(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpuhp_up_callbacks(i32 noundef %cpu, ptr nocapture noundef %st, i32 noundef %target) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %st, align 4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.backedge, %entry
  %2 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %st, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %target)
  %cmp.not.i.i = icmp slt i32 %3, %target
  br i1 %cmp.not.i.i, label %if.end.i.i, label %do.body.i.i.if.end43_crit_edge

do.body.i.i.if.end43_crit_edge:                   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end43

if.end.i.i:                                       ; preds = %do.body.i.i
  %inc.i.i = add nsw i32 %3, 1
  %4 = ptrtoint ptr %st to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %inc.i.i, ptr %st, align 4
  %startup.i.i.i = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %inc.i.i, i32 1
  %5 = ptrtoint ptr %startup.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %cond.in.in.i.i.i = load ptr, ptr %startup.i.i.i, align 4
  %cond.in.i.i.i = icmp eq ptr %cond.in.in.i.i.i, null
  br i1 %cond.in.i.i.i, label %if.end.i.i.do.body.i.i.backedge_crit_edge, label %while.body.i

if.end.i.i.do.body.i.i.backedge_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i.i.backedge

do.body.i.i.backedge:                             ; preds = %while.body.i.do.body.i.i.backedge_crit_edge, %if.end.i.i.do.body.i.i.backedge_crit_edge
  br label %do.body.i.i

while.body.i:                                     ; preds = %if.end.i.i
  %call2.i = tail call fastcc i32 @cpuhp_invoke_callback(i32 noundef %cpu, i32 noundef %inc.i.i, i1 noundef zeroext true, ptr noundef null, ptr noundef null) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %while.body.i.do.body.i.i.backedge_crit_edge, label %do.body

while.body.i.do.body.i.i.backedge_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i.i.backedge

do.body:                                          ; preds = %while.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpuhp_up_callbacks.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpuhp_up_callbacks, %if.then5)) #19
          to label %do.end [label %if.then5], !srcloc !442

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  %6 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %st, align 4
  %add.ptr.i = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %7
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cpuhp_up_callbacks.__UNIQUE_ID_ddebug378, ptr noundef nonnull @.str.75, i32 noundef %call2.i, i32 noundef %cpu, ptr noundef %9, i32 noundef %7) #19
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  tail call fastcc void @cpuhp_reset_state(ptr noundef %st, i32 noundef %1)
  br label %do.body.i.i57

do.body.i.i57:                                    ; preds = %do.body.i.i57.backedge, %do.end
  %10 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %st, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %1)
  %cmp4.not.i.i = icmp sgt i32 %11, %1
  br i1 %cmp4.not.i.i, label %if.end6.i.i, label %do.body.i.i57.if.end43_crit_edge

do.body.i.i57.if.end43_crit_edge:                 ; preds = %do.body.i.i57
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end43

if.end6.i.i:                                      ; preds = %do.body.i.i57
  %dec.i.i = add nsw i32 %11, -1
  %12 = ptrtoint ptr %st to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %dec.i.i, ptr %st, align 4
  %teardown.i.i.i59 = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %11, i32 2
  %13 = ptrtoint ptr %teardown.i.i.i59 to i32
  call void @__asan_load4_noabort(i32 %13)
  %cond.in.in.i.i.i60 = load ptr, ptr %teardown.i.i.i59, align 4
  %cond.in.i.i.i61 = icmp eq ptr %cond.in.in.i.i.i60, null
  br i1 %cond.in.i.i.i61, label %if.end6.i.i.do.body.i.i57.backedge_crit_edge, label %while.body.i64

if.end6.i.i.do.body.i.i57.backedge_crit_edge:     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i.i57.backedge

do.body.i.i57.backedge:                           ; preds = %while.body.i64.do.body.i.i57.backedge_crit_edge, %if.end6.i.i.do.body.i.i57.backedge_crit_edge
  br label %do.body.i.i57

while.body.i64:                                   ; preds = %if.end6.i.i
  %call2.i62 = tail call fastcc i32 @cpuhp_invoke_callback(i32 noundef %cpu, i32 noundef %11, i1 noundef zeroext false, ptr noundef null, ptr noundef null) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i62)
  %tobool3.not.i63 = icmp eq i32 %call2.i62, 0
  br i1 %tobool3.not.i63, label %while.body.i64.do.body.i.i57.backedge_crit_edge, label %do.end28

while.body.i64.do.body.i.i57.backedge_crit_edge:  ; preds = %while.body.i64
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i.i57.backedge

do.end28:                                         ; preds = %while.body.i64
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 709, i32 noundef 9, ptr noundef null) #19
  br label %if.end43

if.end43:                                         ; preds = %do.end28, %do.body.i.i57.if.end43_crit_edge, %do.body.i.i.if.end43_crit_edge
  %err.1.i69 = phi i32 [ %call2.i, %do.end28 ], [ %call2.i, %do.body.i.i57.if.end43_crit_edge ], [ 0, %do.body.i.i.if.end43_crit_edge ]
  ret i32 %err.1.i69
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @alloc_cpumask_var(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpu_hotplug_pm_callback(ptr nocapture noundef readnone %nb, i32 noundef %action, ptr nocapture noundef readnone %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %action, label %entry.return_crit_edge [
    i32 3, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge2
    i32 4, label %entry.sw.bb1_crit_edge
    i32 2, label %entry.sw.bb1_crit_edge3
  ]

entry.sw.bb1_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb1

entry.sw.bb_crit_edge2:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge2
  tail call void @mutex_lock_nested(ptr noundef nonnull @cpu_add_remove_lock, i32 noundef 0) #19
  %1 = load i32, ptr @cpu_hotplug_disabled, align 4
  %inc.i = add i32 %1, 1
  store i32 %inc.i, ptr @cpu_hotplug_disabled, align 4
  br label %return.sink.split

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge3
  tail call void @mutex_lock_nested(ptr noundef nonnull @cpu_add_remove_lock, i32 noundef 0) #19
  %2 = load i32, ptr @cpu_hotplug_disabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.end39.critedge.i.i

land.rhs.i.i:                                     ; preds = %sw.bb1
  %.b42.i.i = load i1, ptr @__cpu_hotplug_enable.__already_done, align 1
  br i1 %.b42.i.i, label %land.rhs.i.i.return.sink.split_crit_edge, label %if.then.i.i, !prof !422

land.rhs.i.i.return.sink.split_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %return.sink.split

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @__cpu_hotplug_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 383, i32 noundef 9, ptr noundef nonnull @.str.51) #19
  br label %return.sink.split

if.end39.critedge.i.i:                            ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #21
  %dec.i.i = add i32 %2, -1
  store i32 %dec.i.i, ptr @cpu_hotplug_disabled, align 4
  br label %return.sink.split

return.sink.split:                                ; preds = %if.end39.critedge.i.i, %if.then.i.i, %land.rhs.i.i.return.sink.split_crit_edge, %sw.bb
  tail call void @mutex_unlock(ptr noundef nonnull @cpu_add_remove_lock) #19
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 1, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pm_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smpboot_create_threads(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @perf_event_init_cpu(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @perf_event_exit_cpu(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @workqueue_prepare_cpu(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimers_prepare_cpu(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimers_dead_cpu(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smpcfd_prepare_cpu(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smpcfd_dead_cpu(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @relay_prepare_cpu(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcutree_prepare_cpu(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcutree_dead_cpu(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @timers_prepare_cpu(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @timers_dead_cpu(i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bringup_cpu(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @idle_thread_get(i32 noundef %cpu) #19
  tail call void @irq_lock_sparse() #19
  %call1 = tail call i32 @__cpu_up(i32 noundef %cpu, ptr noundef %call) #19
  tail call void @irq_unlock_sparse() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %1, ptrtoint (ptr @cpuhp_state to i32)
  %2 = inttoptr i32 %add.i to ptr
  %done_up.i.i = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %2, i32 0, i32 13
  tail call void @wait_for_completion(ptr noundef %done_up.i.i) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cpu)
  %cmp.not.i.i.i.i.i = icmp ugt i32 %3, %cpu
  br i1 %cmp.not.i.i.i.i.i, label %if.end.cpu_online.exit.i_crit_edge, label %land.rhs.i.i.i.i.i

if.end.cpu_online.exit.i_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit.i

land.rhs.i.i.i.i.i:                               ; preds = %if.end
  %.b37.i.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i.i, label %land.rhs.i.i.i.i.i.cpu_online.exit.i_crit_edge, label %if.then.i.i.i.i.i, !prof !422

land.rhs.i.i.i.i.i.cpu_online.exit.i_crit_edge:   ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit.i

if.then.i.i.i.i.i:                                ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
  br label %cpu_online.exit.i

cpu_online.exit.i:                                ; preds = %if.then.i.i.i.i.i, %land.rhs.i.i.i.i.i.cpu_online.exit.i_crit_edge, %if.end.cpu_online.exit.i_crit_edge
  %div3.i.i.i.i = lshr i32 %cpu, 5
  %arrayidx.i.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i.i
  %4 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %cpu, 31
  %6 = shl nuw i32 1, %and.i.i.i.i
  %7 = and i32 %5, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not.i = icmp eq i32 %7, 0
  br i1 %tobool.i.not.i, label %land.rhs.i, label %if.end43.i

land.rhs.i:                                       ; preds = %cpu_online.exit.i
  %.b59.i = load i1, ptr @bringup_wait_for_ap.__already_done, align 1
  br i1 %.b59.i, label %land.rhs.i.cleanup_crit_edge, label %if.then.i, !prof !422

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @bringup_wait_for_ap.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 564, i32 noundef 9, ptr noundef null) #19
  br label %cleanup

if.end43.i:                                       ; preds = %cpu_online.exit.i
  %thread.i = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %2, i32 0, i32 3
  %8 = ptrtoint ptr %thread.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %thread.i, align 4
  tail call void @kthread_unpark(ptr noundef %9) #19
  %target.i = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %target.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 152, i32 %11)
  %cmp.i = icmp slt i32 %11, 152
  br i1 %cmp.i, label %if.end43.i.cleanup_crit_edge, label %if.end48.i

if.end43.i.cleanup_crit_edge:                     ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end48.i:                                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #21
  %call50.i = tail call fastcc i32 @cpuhp_kick_ap(ptr noundef %2, i32 noundef %11) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end48.i, %if.end43.i.cleanup_crit_edge, %if.then.i, %land.rhs.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call50.i, %if.end48.i ], [ -125, %if.then.i ], [ 0, %if.end43.i.cleanup_crit_edge ], [ -125, %land.rhs.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @finish_cpu(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @idle_thread_get(i32 noundef %cpu) #19
  %active_mm = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 54
  %0 = ptrtoint ptr %active_mm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %active_mm, align 4
  %cmp.not = icmp eq ptr %1, @init_mm
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %2 = ptrtoint ptr %active_mm to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @init_mm, ptr %active_mm, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mm_count.i = getelementptr inbounds %struct.anon.15, ptr %1, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_count.i, i32 noundef 4) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !465
  tail call void @llvm.prefetch.p0(ptr %mm_count.i, i32 1, i32 3, i32 1) #19
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mm_count.i, ptr %mm_count.i, i32 1, ptr elementtype(i32) %mm_count.i) #19, !srcloc !466
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !467
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %if.end.mmdrop.exit_crit_edge, !prof !423

if.end.mmdrop.exit_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %mmdrop.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @__mmdrop(ptr noundef %1) #19
  br label %mmdrop.exit

mmdrop.exit:                                      ; preds = %if.then.i, %if.end.mmdrop.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sched_cpu_starting(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sched_cpu_dying(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcutree_dying_cpu(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smpcfd_dying_cpu(i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @takedown_cpu(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @cpuhp_state to i32)
  %2 = inttoptr i32 %add to ptr
  %thread = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %thread, align 4
  %call = tail call i32 @kthread_park(ptr noundef %4) #19
  tail call void @irq_lock_sparse() #19
  %rem.i = and i32 %cpu, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %cpu, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %call3 = tail call i32 @stop_machine_cpuslocked(ptr noundef nonnull @take_cpu_down, ptr noundef null, ptr noundef %add.ptr.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %do.body5, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @irq_unlock_sparse() #19
  %5 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %thread, align 4
  tail call void @kthread_unpark(ptr noundef %6) #19
  br label %cleanup

do.body5:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %cpu)
  %cmp.not.i.i.i.i = icmp ugt i32 %7, %cpu
  br i1 %cmp.not.i.i.i.i, label %do.body5.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body5.cpu_online.exit_crit_edge:               ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body5
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !422

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body5.cpu_online.exit_crit_edge
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %10 = shl nuw i32 1, %rem.i
  %11 = and i32 %9, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not = icmp eq i32 %11, 0
  br i1 %tobool.i.not, label %do.end18, label %do.body10, !prof !422

do.body10:                                        ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1051, 0\0A.popsection", ""() #19, !srcloc !468
  unreachable

do.end18:                                         ; preds = %cpu_online.exit
  %done_down.i = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %2, i32 0, i32 14
  tail call void @wait_for_completion(ptr noundef %done_down.i) #19
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 92, i32 %13)
  %cmp.not = icmp eq i32 %13, 92
  br i1 %cmp.not, label %do.end35, label %do.body27, !prof !422

do.body27:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1061, 0\0A.popsection", ""() #19, !srcloc !469
  unreachable

do.end35:                                         ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @irq_unlock_sparse() #19
  tail call void @hotplug_cpu__broadcast_tick_pull(i32 noundef %cpu) #19
  tail call void @__cpu_die(i32 noundef %cpu) #19
  tail call void @tick_cleanup_dead_cpu(i32 noundef %cpu) #19
  tail call void @rcutree_migrate_callbacks(i32 noundef %cpu) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %if.then
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sched_cpu_wait_empty(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smpboot_unpark_threads(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smpboot_park_threads(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_affinity_online_cpu(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockup_detector_online_cpu(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockup_detector_offline_cpu(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @workqueue_online_cpu(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @workqueue_offline_cpu(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcutree_online_cpu(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcutree_offline_cpu(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sched_cpu_activate(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sched_cpu_deactivate(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_lock_sparse() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpu_up(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_unlock_sparse() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmdrop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_park(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stop_machine_cpuslocked(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @take_cpu_down(ptr nocapture noundef readnone %_param) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !412) #19
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @cpuhp_state to i32)
  %6 = inttoptr i32 %add to ptr
  %target2 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %target2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %target2, align 4
  %9 = tail call i32 @llvm.smax.i32(i32 %8, i32 93)
  %call7 = tail call i32 @__cpu_disable() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 149, i32 %11)
  %cmp9.not = icmp eq i32 %11, 149
  br i1 %cmp9.not, label %if.end.do.body.i.i.preheader_crit_edge, label %do.end20, !prof !422

if.end.do.body.i.i.preheader_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i.i.preheader

do.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1007, i32 noundef 9, ptr noundef null) #19
  br label %do.body.i.i.preheader

do.body.i.i.preheader:                            ; preds = %do.end20, %if.end.do.body.i.i.preheader_crit_edge
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.backedge, %do.body.i.i.preheader
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %9)
  %cmp4.not.i.i = icmp sgt i32 %13, %9
  br i1 %cmp4.not.i.i, label %if.end6.i.i, label %do.body.i.i.if.end77_crit_edge

do.body.i.i.if.end77_crit_edge:                   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end77

if.end6.i.i:                                      ; preds = %do.body.i.i
  %dec.i.i = add nsw i32 %13, -1
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %dec.i.i, ptr %6, align 4
  %teardown.i.i.i = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %13, i32 2
  %15 = ptrtoint ptr %teardown.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %cond.in.in.i.i.i = load ptr, ptr %teardown.i.i.i, align 4
  %cond.in.i.i.i = icmp eq ptr %cond.in.in.i.i.i, null
  br i1 %cond.in.i.i.i, label %if.end6.i.i.do.body.i.i.backedge_crit_edge, label %while.body.i

if.end6.i.i.do.body.i.i.backedge_crit_edge:       ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i.i.backedge

do.body.i.i.backedge:                             ; preds = %while.body.i.do.body.i.i.backedge_crit_edge, %if.end6.i.i.do.body.i.i.backedge_crit_edge
  br label %do.body.i.i

while.body.i:                                     ; preds = %if.end6.i.i
  %call2.i = tail call fastcc i32 @cpuhp_invoke_callback(i32 noundef %3, i32 noundef %13, i1 noundef zeroext false, ptr noundef null, ptr noundef null) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %while.body.i.do.body.i.i.backedge_crit_edge, label %land.rhs

while.body.i.do.body.i.i.backedge_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i.i.backedge

land.rhs:                                         ; preds = %while.body.i
  %.b99 = load i1, ptr @take_cpu_down.__already_done, align 1
  br i1 %.b99, label %land.rhs.if.end77_crit_edge, label %if.then50, !prof !422

land.rhs.if.end77_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end77

if.then50:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @take_cpu_down.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1015, i32 noundef 9, ptr noundef null) #19
  br label %if.end77

if.end77:                                         ; preds = %if.then50, %land.rhs.if.end77_crit_edge, %do.body.i.i.if.end77_crit_edge
  tail call void @tick_handover_do_timer() #19
  tail call void @tick_offline_cpu(i32 noundef %3) #19
  tail call void @stop_machine_park(i32 noundef %3) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end77 ], [ %call7, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hotplug_cpu__broadcast_tick_pull(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cpu_die(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_cleanup_dead_cpu(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcutree_migrate_callbacks(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpu_disable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_handover_do_timer() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_offline_cpu(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @stop_machine_park(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @control_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4094, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.114)
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @control_store(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -19
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #16

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @sched_smt_present, i32 1), ptr blockaddress(@active_show, %l_yes.i.i)) #19
          to label %sched_smt_active.exit [label %l_yes.i.i], !srcloc !470

l_yes.i.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sched_smt_active.exit

sched_smt_active.exit:                            ; preds = %l_yes.i.i, %entry
  %retval.0.i.i = phi i32 [ 0, %l_yes.i.i ], [ 1, %entry ]
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4094, ptr noundef nonnull @.str.116, i32 noundef %retval.0.i.i)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @states_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @cpuhp_state_mutex, i32 noundef 0) #19
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.012 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %res.011 = phi i32 [ 0, %entry ], [ %res.1, %if.end.for.body_crit_edge ]
  %buf.addr.010 = phi ptr [ %buf, %entry ], [ %buf.addr.1, %if.end.for.body_crit_edge ]
  %add.ptr.i = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %i.012
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf.addr.010, ptr noundef nonnull @.str.119, i32 noundef %i.012, ptr noundef nonnull %1)
  %add.ptr = getelementptr i8, ptr %buf.addr.010, i32 %call2
  %add = add i32 %call2, %res.011
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %buf.addr.1 = phi ptr [ %add.ptr, %if.then ], [ %buf.addr.010, %for.body.if.end_crit_edge ]
  %res.1 = phi i32 [ %add, %if.then ], [ %res.011, %for.body.if.end_crit_edge ]
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, 230
  br i1 %exitcond.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @mutex_unlock(ptr noundef nonnull @cpuhp_state_mutex) #19
  ret i32 %res.1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #16

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @state_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 30
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, ptrtoint (ptr @cpuhp_state to i32)
  %4 = inttoptr i32 %add to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.116, i32 noundef %6)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 30
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, ptrtoint (ptr @cpuhp_state to i32)
  %4 = inttoptr i32 %add to ptr
  %target = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %target, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.116, i32 noundef %6)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %target = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 30
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, ptrtoint (ptr @cpuhp_state to i32)
  %4 = inttoptr i32 %add to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %target) #19
  %5 = ptrtoint ptr %target to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %target, align 4, !annotation !424
  %call = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %target) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 229, i32 %7)
  %8 = icmp ugt i32 %7, 229
  br i1 %8, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @lock_device_hotplug_sysfs() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @mutex_lock_nested(ptr noundef nonnull @cpuhp_state_mutex, i32 noundef 0) #19
  %9 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %target, align 4
  %add.ptr.i = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %10
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %if.end8.out.thread_crit_edge, label %lor.end

if.end8.out.thread_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #21
  br label %out.thread

lor.end:                                          ; preds = %if.end8
  %cant_stop = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %10, i32 4
  %13 = ptrtoint ptr %cant_stop to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cant_stop, align 4, !range !448
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool11.not = icmp eq i8 %14, 0
  br i1 %tobool11.not, label %if.end14, label %lor.end.out.thread_crit_edge

lor.end.out.thread_crit_edge:                     ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %out.thread

out.thread:                                       ; preds = %lor.end.out.thread_crit_edge, %if.end8.out.thread_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @cpuhp_state_mutex) #19
  call void @unlock_device_hotplug() #19
  br label %cleanup

if.end14:                                         ; preds = %lor.end
  call void @mutex_unlock(ptr noundef nonnull @cpuhp_state_mutex) #19
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %4, align 4
  %17 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp15 = icmp slt i32 %16, %18
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id, align 4
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #21
  %call18 = call fastcc i32 @cpu_up(i32 noundef %20, i32 noundef %18)
  br label %out

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #21
  %call20 = call fastcc i32 @cpu_down(i32 noundef %20, i32 noundef %18)
  br label %out

out:                                              ; preds = %if.else, %if.then16
  %ret.0 = phi i32 [ %call18, %if.then16 ], [ %call20, %if.else ]
  call void @unlock_device_hotplug() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool22.not = icmp eq i32 %ret.0, 0
  %spec.select = select i1 %tobool22.not, i32 %count, i32 %ret.0
  br label %cleanup

cleanup:                                          ; preds = %out, %out.thread, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ -22, %out.thread ], [ %spec.select, %out ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %target) #19
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_device_hotplug_sysfs() local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fail_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 30
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, ptrtoint (ptr @cpuhp_state to i32)
  %4 = inttoptr i32 %add to ptr
  %fail = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %fail to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fail, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.116, i32 noundef %6)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fail_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %fail = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 30
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, ptrtoint (ptr @cpuhp_state to i32)
  %4 = inttoptr i32 %add to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fail) #19
  %5 = ptrtoint ptr %fail to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %fail, align 4, !annotation !424
  %call = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %fail) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %fail to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fail, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp = icmp eq i32 %7, -1
  br i1 %cmp, label %if.end.cleanup.sink.split_crit_edge, label %if.end4

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 229, i32 %7)
  %8 = icmp ugt i32 %7, 229
  %9 = add nsw i32 %7, -92
  call void @__sanitizer_cov_trace_const_cmp4(i32 57, i32 %9)
  %10 = icmp ult i32 %9, 57
  %or.cond40 = select i1 %8, i1 true, i1 %10
  br i1 %or.cond40, label %if.end4.cleanup_crit_edge, label %if.end11

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 92, i32 %7)
  %cmp12 = icmp ult i32 %7, 92
  br i1 %cmp12, label %land.lhs.true, label %if.end11.if.end15_crit_edge

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end11
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 91, i32 %12)
  %cmp13 = icmp sgt i32 %12, 91
  br i1 %cmp13, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end15

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %if.end11.if.end15_crit_edge
  call void @mutex_lock_nested(ptr noundef nonnull @cpuhp_state_mutex, i32 noundef 0) #19
  %13 = ptrtoint ptr %fail to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fail, align 4
  %startup = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %14, i32 1
  %15 = ptrtoint ptr %startup to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %startup, align 4
  %tobool17.not = icmp eq ptr %16, null
  br i1 %tobool17.not, label %if.end21, label %if.end21.thread

if.end21.thread:                                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #21
  call void @mutex_unlock(ptr noundef nonnull @cpuhp_state_mutex) #19
  br label %if.end24

if.end21:                                         ; preds = %if.end15
  %teardown = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %14, i32 2
  %17 = ptrtoint ptr %teardown to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %teardown, align 4
  %tobool19.not = icmp eq ptr %18, null
  call void @mutex_unlock(ptr noundef nonnull @cpuhp_state_mutex) #19
  br i1 %tobool19.not, label %if.end21.cleanup_crit_edge, label %if.end21.if.end24_crit_edge

if.end21.if.end24_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end24

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end24:                                         ; preds = %if.end21.if.end24_crit_edge, %if.end21.thread
  %19 = ptrtoint ptr %fail to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fail, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end24, %if.end.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %20, %if.end24 ], [ -1, %if.end.cleanup.sink.split_crit_edge ]
  %fail25 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %4, i32 0, i32 2
  %21 = ptrtoint ptr %fail25 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink, ptr %fail25, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end21.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end21.cleanup_crit_edge ], [ %count, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fail) #19
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #19

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #20 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 153)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #20 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 153)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #14 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #19 = { nounwind }
attributes #20 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #21 = { nomerge }
attributes #22 = { nounwind readonly willreturn }
attributes #23 = { cold nounwind }
attributes #24 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !45, !46, !47, !49, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !89, !90, !92, !94, !95, !96, !98, !99, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !147, !149, !151, !153, !155, !156, !158, !160, !162, !164, !166, !168, !170, !172, !173, !174, !175, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !199, !200, !201, !203, !205, !206, !207, !208, !209, !210, !211, !213, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !243, !244, !245, !246, !247, !248, !249, !250, !252, !253, !255, !256, !258, !259, !260, !262, !263, !265, !266, !267, !268, !270, !271, !272, !274, !276, !277, !278, !280, !281, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !347, !348, !350, !352, !354, !356, !358, !359, !361, !363, !365, !367, !369, !371, !373, !375, !376, !378, !380, !382, !384, !386, !387, !389, !391, !393, !395, !397, !399, !400, !401, !403, !405, !407, !408, !409, !410}
!llvm.named.register.sp = !{!412}
!llvm.module.flags = !{!413, !414, !415, !416, !417, !418, !419, !420}
!llvm.ident = !{!421}

!0 = !{ptr @__tracepoint_cpuhp_enter, !1, !"__tracepoint_cpuhp_enter", i1 false, i1 false}
!1 = !{!"../include/trace/events/cpuhp.h", i32 10, i32 1}
!2 = !{ptr @__tracepoint_ptr_cpuhp_enter, !1, !"__tracepoint_ptr_cpuhp_enter", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_cpuhp_enter, !1, !"__SCK__tp_func_cpuhp_enter", i1 false, i1 false}
!4 = !{ptr @__tracepoint_cpuhp_multi_enter, !5, !"__tracepoint_cpuhp_multi_enter", i1 false, i1 false}
!5 = !{!"../include/trace/events/cpuhp.h", i32 37, i32 1}
!6 = !{ptr @__tracepoint_ptr_cpuhp_multi_enter, !5, !"__tracepoint_ptr_cpuhp_multi_enter", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_cpuhp_multi_enter, !5, !"__SCK__tp_func_cpuhp_multi_enter", i1 false, i1 false}
!8 = !{ptr @__tracepoint_cpuhp_exit, !9, !"__tracepoint_cpuhp_exit", i1 false, i1 false}
!9 = !{!"../include/trace/events/cpuhp.h", i32 65, i32 1}
!10 = !{ptr @__tracepoint_ptr_cpuhp_exit, !9, !"__tracepoint_ptr_cpuhp_exit", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_cpuhp_exit, !9, !"__SCK__tp_func_cpuhp_exit", i1 false, i1 false}
!12 = !{ptr @event_class_cpuhp_enter, !1, !"event_class_cpuhp_enter", i1 false, i1 false}
!13 = !{ptr @event_cpuhp_enter, !1, !"event_cpuhp_enter", i1 false, i1 false}
!14 = !{ptr @__event_cpuhp_enter, !1, !"__event_cpuhp_enter", i1 false, i1 false}
!15 = !{ptr @event_class_cpuhp_multi_enter, !5, !"event_class_cpuhp_multi_enter", i1 false, i1 false}
!16 = !{ptr @event_cpuhp_multi_enter, !5, !"event_cpuhp_multi_enter", i1 false, i1 false}
!17 = !{ptr @__event_cpuhp_multi_enter, !5, !"__event_cpuhp_multi_enter", i1 false, i1 false}
!18 = !{ptr @event_class_cpuhp_exit, !9, !"event_class_cpuhp_exit", i1 false, i1 false}
!19 = !{ptr @event_cpuhp_exit, !9, !"event_cpuhp_exit", i1 false, i1 false}
!20 = !{ptr @__event_cpuhp_exit, !9, !"__event_cpuhp_exit", i1 false, i1 false}
!21 = !{ptr @__bpf_trace_tp_map_cpuhp_enter, !1, !"__bpf_trace_tp_map_cpuhp_enter", i1 false, i1 false}
!22 = !{ptr @__bpf_trace_tp_map_cpuhp_multi_enter, !5, !"__bpf_trace_tp_map_cpuhp_multi_enter", i1 false, i1 false}
!23 = !{ptr @__bpf_trace_tp_map_cpuhp_exit, !9, !"__bpf_trace_tp_map_cpuhp_exit", i1 false, i1 false}
!24 = !{ptr @cpuhp_state, !25, !"cpuhp_state", i1 false, i1 false}
!25 = !{!"../kernel/cpu.c", i32 83, i32 8}
!26 = !{ptr @__ksymtab_cpuhp_tasks_frozen, !27, !"__ksymtab_cpuhp_tasks_frozen", i1 false, i1 false}
!27 = !{!"../kernel/cpu.c", i32 281, i32 1}
!28 = !{ptr @__ksymtab_cpus_read_lock, !29, !"__ksymtab_cpus_read_lock", i1 false, i1 false}
!29 = !{!"../kernel/cpu.c", i32 311, i32 1}
!30 = !{ptr @__ksymtab_cpus_read_trylock, !31, !"__ksymtab_cpus_read_trylock", i1 false, i1 false}
!31 = !{!"../kernel/cpu.c", i32 317, i32 1}
!32 = !{ptr @__ksymtab_cpus_read_unlock, !33, !"__ksymtab_cpus_read_unlock", i1 false, i1 false}
!33 = !{!"../kernel/cpu.c", i32 323, i32 1}
!34 = !{ptr @.str, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../kernel/cpu.c", i32 346, i32 2}
!36 = !{ptr @__ksymtab_cpu_hotplug_disable, !37, !"__ksymtab_cpu_hotplug_disable", i1 false, i1 false}
!37 = !{!"../kernel/cpu.c", i32 379, i32 1}
!38 = !{ptr @__ksymtab_cpu_hotplug_enable, !39, !"__ksymtab_cpu_hotplug_enable", i1 false, i1 false}
!39 = !{!"../kernel/cpu.c", i32 394, i32 1}
!40 = !{ptr @__ksymtab_remove_cpu, !41, !"__ksymtab_remove_cpu", i1 false, i1 false}
!41 = !{!"../kernel/cpu.c", i32 1228, i32 1}
!42 = !{ptr @.str.1, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../kernel/cpu.c", i32 1251, i32 4}
!44 = !{ptr @.str.2, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @smp_shutdown_nonboot_cpus._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @smp_shutdown_nonboot_cpus._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../kernel/cpu.c", i32 1296, i32 2}
!49 = !{ptr @__ksymtab_add_cpu, !50, !"__ksymtab_add_cpu", i1 false, i1 false}
!50 = !{!"../kernel/cpu.c", i32 1442, i32 1}
!51 = !{ptr @.str.3, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../kernel/cpu.c", i32 1459, i32 3}
!53 = !{ptr @.str.4, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @bringup_hibernate_cpu._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @bringup_hibernate_cpu._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.6, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../kernel/cpu.c", i32 1462, i32 4}
!58 = !{ptr @bringup_hibernate_cpu._entry.5, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @bringup_hibernate_cpu._entry_ptr.7, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.8, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../kernel/cpu.c", i32 1504, i32 2}
!62 = !{ptr @.str.9, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @freeze_secondary_cpus._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @freeze_secondary_cpus._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.11, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../kernel/cpu.c", i32 1510, i32 4}
!67 = !{ptr @freeze_secondary_cpus._entry.10, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @freeze_secondary_cpus._entry_ptr.12, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.13, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../kernel/cpu.c", i32 1515, i32 24}
!71 = !{ptr @freeze_secondary_cpus.___tp_str, !70, !"___tp_str", i1 false, i1 false}
!72 = !{ptr @freeze_secondary_cpus.___tp_str.14, !73, !"___tp_str", i1 false, i1 false}
!73 = !{!"../kernel/cpu.c", i32 1517, i32 24}
!74 = !{ptr @.str.16, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../kernel/cpu.c", i32 1521, i32 4}
!76 = !{ptr @freeze_secondary_cpus._entry.15, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @freeze_secondary_cpus._entry_ptr.17, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.19, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../kernel/cpu.c", i32 1529, i32 3}
!80 = !{ptr @freeze_secondary_cpus._entry.18, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @freeze_secondary_cpus._entry_ptr.20, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.21, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../kernel/cpu.c", i32 1560, i32 2}
!84 = !{ptr @.str.22, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @thaw_secondary_cpus._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @thaw_secondary_cpus._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.23, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../kernel/cpu.c", i32 1565, i32 24}
!89 = !{ptr @thaw_secondary_cpus.___tp_str, !88, !"___tp_str", i1 false, i1 false}
!90 = !{ptr @thaw_secondary_cpus.___tp_str.24, !91, !"___tp_str", i1 false, i1 false}
!91 = !{!"../kernel/cpu.c", i32 1567, i32 24}
!92 = !{ptr @.str.26, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../kernel/cpu.c", i32 1569, i32 4}
!94 = !{ptr @thaw_secondary_cpus._entry.25, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @thaw_secondary_cpus._entry_ptr.27, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.29, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../kernel/cpu.c", i32 1572, i32 3}
!98 = !{ptr @thaw_secondary_cpus._entry.28, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @thaw_secondary_cpus._entry_ptr.30, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @__initcall__kmod_cpu__393_1588_alloc_frozen_cpus1, !101, !"__initcall__kmod_cpu__393_1588_alloc_frozen_cpus1", i1 false, i1 false}
!101 = !{!"../kernel/cpu.c", i32 1588, i32 1}
!102 = !{ptr @__initcall__kmod_cpu__394_1635_cpu_hotplug_pm_sync_init1, !103, !"__initcall__kmod_cpu__394_1635_cpu_hotplug_pm_sync_init1", i1 false, i1 false}
!103 = !{!"../kernel/cpu.c", i32 1635, i32 1}
!104 = !{ptr @__ksymtab___cpuhp_state_add_instance, !105, !"__ksymtab___cpuhp_state_add_instance", i1 false, i1 false}
!105 = !{!"../kernel/cpu.c", i32 2004, i32 1}
!106 = !{ptr @__ksymtab___cpuhp_setup_state_cpuslocked, !107, !"__ksymtab___cpuhp_setup_state_cpuslocked", i1 false, i1 false}
!107 = !{!"../kernel/cpu.c", i32 2081, i32 1}
!108 = !{ptr @__ksymtab___cpuhp_setup_state, !109, !"__ksymtab___cpuhp_setup_state", i1 false, i1 false}
!109 = !{!"../kernel/cpu.c", i32 2097, i32 1}
!110 = !{ptr @__ksymtab___cpuhp_state_remove_instance, !111, !"__ksymtab___cpuhp_state_remove_instance", i1 false, i1 false}
!111 = !{!"../kernel/cpu.c", i32 2135, i32 1}
!112 = !{ptr @.str.31, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../kernel/cpu.c", i32 2158, i32 3}
!114 = !{ptr @__ksymtab___cpuhp_remove_state_cpuslocked, !115, !"__ksymtab___cpuhp_remove_state_cpuslocked", i1 false, i1 false}
!115 = !{!"../kernel/cpu.c", i32 2183, i32 1}
!116 = !{ptr @__ksymtab___cpuhp_remove_state, !117, !"__ksymtab___cpuhp_remove_state", i1 false, i1 false}
!117 = !{!"../kernel/cpu.c", i32 2191, i32 1}
!118 = !{ptr @__initcall__kmod_cpu__395_2552_cpuhp_sysfs_init6, !119, !"__initcall__kmod_cpu__395_2552_cpuhp_sysfs_init6", i1 false, i1 false}
!119 = !{!"../kernel/cpu.c", i32 2552, i32 1}
!120 = !{ptr @cpu_bit_bitmap, !121, !"cpu_bit_bitmap", i1 false, i1 false}
!121 = !{!"../kernel/cpu.c", i32 2569, i32 21}
!122 = !{ptr @__ksymtab_cpu_bit_bitmap, !123, !"__ksymtab_cpu_bit_bitmap", i1 false, i1 false}
!123 = !{!"../kernel/cpu.c", i32 2578, i32 1}
!124 = !{ptr @cpu_all_bits, !125, !"cpu_all_bits", i1 false, i1 false}
!125 = !{!"../kernel/cpu.c", i32 2580, i32 7}
!126 = !{ptr @__ksymtab_cpu_all_bits, !127, !"__ksymtab_cpu_all_bits", i1 false, i1 false}
!127 = !{!"../kernel/cpu.c", i32 2581, i32 1}
!128 = !{ptr @__ksymtab___cpu_possible_mask, !129, !"__ksymtab___cpu_possible_mask", i1 false, i1 false}
!129 = !{!"../kernel/cpu.c", i32 2589, i32 1}
!130 = !{ptr @__ksymtab___cpu_online_mask, !131, !"__ksymtab___cpu_online_mask", i1 false, i1 false}
!131 = !{!"../kernel/cpu.c", i32 2592, i32 1}
!132 = !{ptr @__ksymtab___cpu_present_mask, !133, !"__ksymtab___cpu_present_mask", i1 false, i1 false}
!133 = !{!"../kernel/cpu.c", i32 2595, i32 1}
!134 = !{ptr @__ksymtab___cpu_active_mask, !135, !"__ksymtab___cpu_active_mask", i1 false, i1 false}
!135 = !{!"../kernel/cpu.c", i32 2598, i32 1}
!136 = !{ptr @__ksymtab___cpu_dying_mask, !137, !"__ksymtab___cpu_dying_mask", i1 false, i1 false}
!137 = !{!"../kernel/cpu.c", i32 2601, i32 1}
!138 = !{ptr @__ksymtab___num_online_cpus, !139, !"__ksymtab___num_online_cpus", i1 false, i1 false}
!139 = !{!"../kernel/cpu.c", i32 2604, i32 1}
!140 = !{ptr @__setup_mitigations_parse_cmdline, !141, !"__setup_mitigations_parse_cmdline", i1 false, i1 false}
!141 = !{!"../kernel/cpu.c", i32 2698, i32 1}
!142 = !{ptr @__ksymtab_cpu_mitigations_off, !143, !"__ksymtab_cpu_mitigations_off", i1 false, i1 false}
!143 = !{!"../kernel/cpu.c", i32 2705, i32 1}
!144 = !{ptr @__ksymtab_cpu_mitigations_auto_nosmt, !145, !"__ksymtab_cpu_mitigations_auto_nosmt", i1 false, i1 false}
!145 = !{!"../kernel/cpu.c", i32 2712, i32 1}
!146 = !{ptr @__pcpu_unique_cpuhp_state, !25, !"__pcpu_unique_cpuhp_state", i1 false, i1 false}
!147 = !{ptr @cpus_booted_once_mask, !148, !"cpus_booted_once_mask", i1 false, i1 false}
!148 = !{!"../kernel/cpu.c", i32 88, i32 11}
!149 = !{ptr @cpuhp_tasks_frozen, !150, !"cpuhp_tasks_frozen", i1 false, i1 false}
!150 = !{!"../kernel/cpu.c", i32 280, i32 6}
!151 = !{ptr @cpu_hotplug_disabled, !152, !"cpu_hotplug_disabled", i1 false, i1 false}
!152 = !{!"../kernel/cpu.c", i32 301, i32 12}
!153 = !{ptr @__pcpu_unique___percpu_rwsem_rc_cpu_hotplug_lock, !154, !"__pcpu_unique___percpu_rwsem_rc_cpu_hotplug_lock", i1 false, i1 false}
!154 = !{!"../kernel/cpu.c", i32 305, i32 1}
!155 = !{ptr @__percpu_rwsem_rc_cpu_hotplug_lock, !154, !"__percpu_rwsem_rc_cpu_hotplug_lock", i1 false, i1 false}
!156 = !{ptr @frozen_cpus, !157, !"frozen_cpus", i1 false, i1 false}
!157 = !{!"../kernel/cpu.c", i32 1482, i32 22}
!158 = !{ptr @__boot_cpu_id, !159, !"__boot_cpu_id", i1 false, i1 false}
!159 = !{!"../kernel/cpu.c", i32 1639, i32 5}
!160 = !{ptr @__cpu_possible_mask, !161, !"__cpu_possible_mask", i1 false, i1 false}
!161 = !{!"../kernel/cpu.c", i32 2587, i32 16}
!162 = !{ptr @__cpu_online_mask, !163, !"__cpu_online_mask", i1 false, i1 false}
!163 = !{!"../kernel/cpu.c", i32 2591, i32 16}
!164 = !{ptr @__cpu_present_mask, !165, !"__cpu_present_mask", i1 false, i1 false}
!165 = !{!"../kernel/cpu.c", i32 2594, i32 16}
!166 = !{ptr @__cpu_active_mask, !167, !"__cpu_active_mask", i1 false, i1 false}
!167 = !{!"../kernel/cpu.c", i32 2597, i32 16}
!168 = !{ptr @__cpu_dying_mask, !169, !"__cpu_dying_mask", i1 false, i1 false}
!169 = !{!"../kernel/cpu.c", i32 2600, i32 16}
!170 = !{ptr @__num_online_cpus, !171, !"__num_online_cpus", i1 false, i1 false}
!171 = !{!"../kernel/cpu.c", i32 2603, i32 10}
!172 = !{ptr @__tpstrtab_cpuhp_enter, !1, !"__tpstrtab_cpuhp_enter", i1 false, i1 false}
!173 = !{ptr @__tpstrtab_cpuhp_multi_enter, !5, !"__tpstrtab_cpuhp_multi_enter", i1 false, i1 false}
!174 = !{ptr @__tpstrtab_cpuhp_exit, !9, !"__tpstrtab_cpuhp_exit", i1 false, i1 false}
!175 = !{ptr @str__cpuhp__trace_system_name, !176, !"str__cpuhp__trace_system_name", i1 false, i1 false}
!176 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!177 = !{ptr @.str.32, !1, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.33, !1, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.34, !1, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.35, !1, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.36, !1, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @.str.37, !1, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.38, !1, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @trace_event_fields_cpuhp_enter, !1, !"trace_event_fields_cpuhp_enter", i1 false, i1 false}
!185 = !{ptr @trace_event_type_funcs_cpuhp_enter, !1, !"trace_event_type_funcs_cpuhp_enter", i1 false, i1 false}
!186 = !{ptr @.str.39, !1, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @print_fmt_cpuhp_enter, !1, !"print_fmt_cpuhp_enter", i1 false, i1 false}
!188 = !{ptr @trace_event_fields_cpuhp_multi_enter, !5, !"trace_event_fields_cpuhp_multi_enter", i1 false, i1 false}
!189 = !{ptr @trace_event_type_funcs_cpuhp_multi_enter, !5, !"trace_event_type_funcs_cpuhp_multi_enter", i1 false, i1 false}
!190 = !{ptr @print_fmt_cpuhp_multi_enter, !5, !"print_fmt_cpuhp_multi_enter", i1 false, i1 false}
!191 = !{ptr @.str.40, !9, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @.str.41, !9, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @trace_event_fields_cpuhp_exit, !9, !"trace_event_fields_cpuhp_exit", i1 false, i1 false}
!194 = !{ptr @trace_event_type_funcs_cpuhp_exit, !9, !"trace_event_type_funcs_cpuhp_exit", i1 false, i1 false}
!195 = !{ptr @.str.42, !9, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @print_fmt_cpuhp_exit, !9, !"print_fmt_cpuhp_exit", i1 false, i1 false}
!197 = !{ptr @.str.43, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../kernel/cpu.c", i32 279, i32 8}
!199 = !{ptr @.str.44, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @cpu_add_remove_lock, !198, !"cpu_add_remove_lock", i1 false, i1 false}
!201 = !{ptr @.str.45, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../include/linux/percpu-rwsem.h", i32 49, i32 2}
!203 = distinct !{null, !204, !"__warned", i1 false, i1 false}
!204 = !{!"../include/linux/rcu_sync.h", i32 34, i32 2}
!205 = !{ptr @.str.46, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @.str.47, !204, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @.str.48, !154, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @.str.49, !154, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @.str.50, !154, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @cpu_hotplug_lock, !154, !"cpu_hotplug_lock", i1 false, i1 false}
!211 = distinct !{null, !212, !"__already_done", i1 false, i1 false}
!212 = !{!"../kernel/cpu.c", i32 383, i32 6}
!213 = !{ptr @.str.51, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @.str.52, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../kernel/cpu.c", i32 888, i32 18}
!216 = !{ptr @cpuhp_threads, !217, !"cpuhp_threads", i1 false, i1 false}
!217 = !{!"../kernel/cpu.c", i32 883, i32 34}
!218 = distinct !{null, !219, !"__already_done", i1 false, i1 false}
!219 = !{!"../kernel/cpu.c", i32 753, i32 6}
!220 = distinct !{null, !221, !"__already_done", i1 false, i1 false}
!221 = !{!"../kernel/cpu.c", i32 779, i32 2}
!222 = distinct !{null, !223, !"__already_done", i1 false, i1 false}
!223 = !{!"../kernel/cpu.c", i32 789, i32 3}
!224 = distinct !{null, !225, !"__already_done", i1 false, i1 false}
!225 = !{!"../kernel/cpu.c", i32 800, i32 3}
!226 = !{ptr @.str.56, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../kernel/cpu.c", i32 93, i32 2}
!228 = !{ptr @cpuhp_state_up_map, !229, !"cpuhp_state_up_map", i1 false, i1 false}
!229 = !{!"../kernel/cpu.c", i32 92, i32 27}
!230 = !{ptr @.str.57, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../kernel/cpu.c", i32 95, i32 2}
!232 = !{ptr @cpuhp_state_down_map, !233, !"cpuhp_state_down_map", i1 false, i1 false}
!233 = !{!"../kernel/cpu.c", i32 94, i32 27}
!234 = distinct !{null, !235, !"__already_done", i1 false, i1 false}
!235 = !{!"../kernel/cpu.c", i32 182, i32 3}
!236 = distinct !{null, !237, !"__already_done", i1 false, i1 false}
!237 = !{!"../kernel/cpu.c", i32 187, i32 3}
!238 = distinct !{null, !239, !"__already_done", i1 false, i1 false}
!239 = !{!"../kernel/cpu.c", i32 199, i32 3}
!240 = distinct !{null, !241, !"__already_done", i1 false, i1 false}
!241 = !{!"../kernel/cpu.c", i32 243, i32 3}
!242 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!243 = !{ptr @.str.61, !1, !"<string literal>", i1 false, i1 false}
!244 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!245 = !{ptr @.str.62, !1, !"<string literal>", i1 false, i1 false}
!246 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!247 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!248 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!249 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!250 = !{ptr @init_completion.__key, !251, !"__key", i1 false, i1 false}
!251 = !{!"../include/linux/completion.h", i32 87, i32 2}
!252 = !{ptr @.str.63, !251, !"<string literal>", i1 false, i1 false}
!253 = distinct !{null, !254, !"__already_done", i1 false, i1 false}
!254 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!255 = !{ptr @.str.64, !254, !"<string literal>", i1 false, i1 false}
!256 = distinct !{null, !257, !"__warned", i1 false, i1 false}
!257 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!258 = !{ptr @.str.65, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @.str.66, !257, !"<string literal>", i1 false, i1 false}
!260 = distinct !{null, !261, !"__warned", i1 false, i1 false}
!261 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!262 = !{ptr @.str.67, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @.str.68, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../kernel/cpu.c", i32 1388, i32 3}
!265 = !{ptr @.str.69, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @cpu_up._entry, !264, !"_entry", i1 false, i1 false}
!267 = !{ptr @cpu_up._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!268 = distinct !{null, !269, !"__already_done", i1 false, i1 false}
!269 = !{!"../include/trace/events/power.h", i32 226, i32 1}
!270 = !{ptr @.str.70, !269, !"<string literal>", i1 false, i1 false}
!271 = distinct !{null, !269, !"__warned", i1 false, i1 false}
!272 = !{ptr @.str.71, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../kernel/cpu.c", i32 1170, i32 4}
!274 = !{ptr @.str.72, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../kernel/cpu.c", i32 1105, i32 3}
!276 = !{ptr @.str.73, !275, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @cpuhp_down_callbacks.__UNIQUE_ID_ddebug386, !275, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!278 = !{ptr @.str.74, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../kernel/cpu.c", i32 702, i32 3}
!280 = !{ptr @.str.75, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @cpuhp_up_callbacks.__UNIQUE_ID_ddebug378, !279, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!282 = !{ptr @cpu_hotplug_pm_sync_init.cpu_hotplug_pm_callback_nb, !283, !"cpu_hotplug_pm_callback_nb", i1 false, i1 false}
!283 = !{!"../kernel/cpu.c", i32 1632, i32 2}
!284 = !{ptr @.str.77, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../kernel/cpu.c", i32 1646, i32 13}
!286 = !{ptr @.str.78, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../kernel/cpu.c", i32 1652, i32 13}
!288 = !{ptr @.str.79, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../kernel/cpu.c", i32 1658, i32 13}
!290 = !{ptr @.str.80, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../kernel/cpu.c", i32 1663, i32 13}
!292 = !{ptr @.str.81, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../kernel/cpu.c", i32 1668, i32 13}
!294 = !{ptr @.str.82, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../kernel/cpu.c", i32 1673, i32 13}
!296 = !{ptr @.str.83, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../kernel/cpu.c", i32 1678, i32 13}
!298 = !{ptr @.str.84, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../kernel/cpu.c", i32 1683, i32 13}
!300 = !{ptr @.str.85, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../kernel/cpu.c", i32 1688, i32 13}
!302 = !{ptr @.str.86, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../kernel/cpu.c", i32 1698, i32 13}
!304 = !{ptr @.str.87, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../kernel/cpu.c", i32 1704, i32 13}
!306 = !{ptr @.str.88, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../kernel/cpu.c", i32 1711, i32 13}
!308 = !{ptr @.str.89, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../kernel/cpu.c", i32 1718, i32 13}
!310 = !{ptr @.str.90, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../kernel/cpu.c", i32 1723, i32 13}
!312 = !{ptr @.str.91, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../kernel/cpu.c", i32 1728, i32 13}
!314 = !{ptr @.str.92, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../kernel/cpu.c", i32 1733, i32 13}
!316 = !{ptr @.str.93, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../kernel/cpu.c", i32 1740, i32 13}
!318 = !{ptr @.str.94, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../kernel/cpu.c", i32 1747, i32 13}
!320 = !{ptr @.str.95, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../kernel/cpu.c", i32 1754, i32 13}
!322 = !{ptr @.str.96, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../kernel/cpu.c", i32 1761, i32 13}
!324 = !{ptr @.str.97, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../kernel/cpu.c", i32 1766, i32 13}
!326 = !{ptr @.str.98, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../kernel/cpu.c", i32 1771, i32 13}
!328 = !{ptr @.str.99, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../kernel/cpu.c", i32 1776, i32 13}
!330 = !{ptr @.str.100, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../kernel/cpu.c", i32 1781, i32 13}
!332 = !{ptr @.str.101, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../kernel/cpu.c", i32 1786, i32 13}
!334 = !{ptr @.str.102, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../kernel/cpu.c", i32 1798, i32 13}
!336 = !{ptr @.str.103, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../kernel/cpu.c", i32 1806, i32 13}
!338 = !{ptr @cpuhp_hp_states, !339, !"cpuhp_hp_states", i1 false, i1 false}
!339 = !{!"../kernel/cpu.c", i32 1644, i32 26}
!340 = distinct !{null, !341, !"__already_done", i1 false, i1 false}
!341 = !{!"../kernel/cpu.c", i32 564, i32 6}
!342 = distinct !{null, !343, !"__already_done", i1 false, i1 false}
!343 = !{!"../kernel/cpu.c", i32 1015, i32 2}
!344 = !{ptr @.str.104, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../kernel/cpu.c", i32 141, i32 8}
!346 = !{ptr @.str.105, !345, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @cpuhp_state_mutex, !345, !"cpuhp_state_mutex", i1 false, i1 false}
!348 = !{ptr @.str.106, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../kernel/cpu.c", i32 1847, i32 2}
!350 = !{ptr @.str.107, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../kernel/cpu.c", i32 2518, i32 10}
!352 = !{ptr @cpuhp_smt_attr_group, !353, !"cpuhp_smt_attr_group", i1 false, i1 false}
!353 = !{!"../kernel/cpu.c", i32 2516, i32 37}
!354 = !{ptr @cpuhp_smt_attrs, !355, !"cpuhp_smt_attrs", i1 false, i1 false}
!355 = !{!"../kernel/cpu.c", i32 2510, i32 26}
!356 = !{ptr @.str.108, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../kernel/cpu.c", i32 2501, i32 8}
!358 = !{ptr @dev_attr_control, !357, !"dev_attr_control", i1 false, i1 false}
!359 = !{ptr @.str.109, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../kernel/cpu.c", i32 2493, i32 38}
!361 = distinct !{null, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../kernel/cpu.c", i32 2481, i32 23}
!363 = !{ptr @.str.111, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../kernel/cpu.c", i32 2482, i32 24}
!365 = distinct !{null, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../kernel/cpu.c", i32 2483, i32 29}
!367 = distinct !{null, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../kernel/cpu.c", i32 2484, i32 29}
!369 = !{ptr @.str.114, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../kernel/cpu.c", i32 2485, i32 30}
!371 = distinct !{null, !372, !"smt_states", i1 false, i1 false}
!372 = !{!"../kernel/cpu.c", i32 2480, i32 20}
!373 = !{ptr @.str.115, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../kernel/cpu.c", i32 2508, i32 8}
!375 = !{ptr @dev_attr_active, !374, !"dev_attr_active", i1 false, i1 false}
!376 = !{ptr @.str.116, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../kernel/cpu.c", i32 2506, i32 38}
!378 = !{ptr @.str.117, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../kernel/cpu.c", i32 2424, i32 10}
!380 = !{ptr @cpuhp_cpu_root_attr_group, !381, !"cpuhp_cpu_root_attr_group", i1 false, i1 false}
!381 = !{!"../kernel/cpu.c", i32 2422, i32 37}
!382 = !{ptr @cpuhp_cpu_root_attrs, !383, !"cpuhp_cpu_root_attrs", i1 false, i1 false}
!383 = !{!"../kernel/cpu.c", i32 2417, i32 26}
!384 = !{ptr @.str.118, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../kernel/cpu.c", i32 2415, i32 8}
!386 = !{ptr @dev_attr_states, !385, !"dev_attr_states", i1 false, i1 false}
!387 = !{ptr @.str.119, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../kernel/cpu.c", i32 2407, i32 23}
!389 = !{ptr @cpuhp_cpu_attr_group, !390, !"cpuhp_cpu_attr_group", i1 false, i1 false}
!390 = !{!"../kernel/cpu.c", i32 2390, i32 37}
!391 = !{ptr @cpuhp_cpu_attrs, !392, !"cpuhp_cpu_attrs", i1 false, i1 false}
!392 = !{!"../kernel/cpu.c", i32 2383, i32 26}
!393 = !{ptr @dev_attr_state, !394, !"dev_attr_state", i1 false, i1 false}
!394 = !{!"../kernel/cpu.c", i32 2273, i32 8}
!395 = !{ptr @dev_attr_target, !396, !"dev_attr_target", i1 false, i1 false}
!396 = !{!"../kernel/cpu.c", i32 2321, i32 8}
!397 = !{ptr @.str.120, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../kernel/cpu.c", i32 2381, i32 8}
!399 = !{ptr @dev_attr_fail, !398, !"dev_attr_fail", i1 false, i1 false}
!400 = !{ptr @__setup_str_mitigations_parse_cmdline, !141, !"__setup_str_mitigations_parse_cmdline", i1 false, i1 false}
!401 = !{ptr @.str.121, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../kernel/cpu.c", i32 2688, i32 24}
!403 = !{ptr @.str.122, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../kernel/cpu.c", i32 2690, i32 24}
!405 = !{ptr @.str.123, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../kernel/cpu.c", i32 2693, i32 3}
!407 = !{ptr @.str.124, !406, !"<string literal>", i1 false, i1 false}
!408 = !{ptr @mitigations_parse_cmdline._entry, !406, !"_entry", i1 false, i1 false}
!409 = !{ptr @mitigations_parse_cmdline._entry_ptr, !406, !"_entry_ptr", i1 false, i1 false}
!410 = !{ptr @cpu_mitigations, !411, !"cpu_mitigations", i1 false, i1 false}
!411 = !{!"../kernel/cpu.c", i32 2681, i32 29}
!412 = !{!"sp"}
!413 = !{i32 1, !"wchar_size", i32 2}
!414 = !{i32 1, !"min_enum_size", i32 4}
!415 = !{i32 8, !"branch-target-enforcement", i32 0}
!416 = !{i32 8, !"sign-return-address", i32 0}
!417 = !{i32 8, !"sign-return-address-all", i32 0}
!418 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!419 = !{i32 7, !"uwtable", i32 1}
!420 = !{i32 7, !"frame-pointer", i32 2}
!421 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!422 = !{!"branch_weights", i32 2000, i32 1}
!423 = !{!"branch_weights", i32 1, i32 2000}
!424 = !{!"auto-init"}
!425 = !{i64 2152528844}
!426 = !{i64 679893, i64 679954}
!427 = !{i64 682625}
!428 = !{i64 682910}
!429 = !{i64 2152537694}
!430 = !{i64 2152538056}
!431 = !{i64 2152546906}
!432 = !{i64 2152547648}
!433 = !{i64 2152557143}
!434 = !{i64 2152566620}
!435 = !{i64 2156923799, i64 2156924276, i64 2156923836, i64 2156923892, i64 2156923926, i64 2156923950, i64 2156923991, i64 2156924012, i64 2156924040, i64 2156924074}
!436 = !{i64 2156966666}
!437 = !{i64 2156983729}
!438 = !{i64 2149324468}
!439 = !{i64 2149324734}
!440 = !{i64 2157030649, i64 2157031127, i64 2157030686, i64 2157030742, i64 2157030776, i64 2157030800, i64 2157030841, i64 2157030862, i64 2157030890, i64 2157030924}
!441 = !{i64 2157045694, i64 2157046172, i64 2157045731, i64 2157045787, i64 2157045821, i64 2157045845, i64 2157045886, i64 2157045907, i64 2157045935, i64 2157045969}
!442 = !{i64 2148769227, i64 2148769232, i64 2148769245, i64 2148769289, i64 2148769323, i64 2148769344}
!443 = !{i64 2157066106, i64 2157066584, i64 2157066143, i64 2157066199, i64 2157066233, i64 2157066257, i64 2157066298, i64 2157066319, i64 2157066347, i64 2157066381}
!444 = !{i64 2156114845}
!445 = !{i64 2156115072}
!446 = !{i64 2149333027}
!447 = !{i64 2149334063}
!448 = !{i8 0, i8 2}
!449 = !{i64 2156909183}
!450 = !{!"branch_weights", i32 4001, i32 1}
!451 = !{i64 2157081003, i64 2157081481, i64 2157081040, i64 2157081096, i64 2157081130, i64 2157081154, i64 2157081195, i64 2157081216, i64 2157081244, i64 2157081278}
!452 = !{i64 2157090695, i64 2157091173, i64 2157090732, i64 2157090788, i64 2157090822, i64 2157090846, i64 2157090887, i64 2157090908, i64 2157090936, i64 2157090970}
!453 = !{i64 2157099155, i64 2157099633, i64 2157099192, i64 2157099248, i64 2157099282, i64 2157099306, i64 2157099347, i64 2157099368, i64 2157099396, i64 2157099430}
!454 = !{i64 2148287412, i64 2148287438, i64 2148287467, i64 2148287501, i64 2148287532, i64 2148287555}
!455 = !{i64 2148289877, i64 2148289903, i64 2148289932, i64 2148289966, i64 2148289997, i64 2148290020}
!456 = !{i64 2156918407}
!457 = !{i64 680328}
!458 = !{i64 680138}
!459 = !{i64 2156415513}
!460 = !{i64 2156415740}
!461 = !{i64 2156450192}
!462 = !{i64 2156450415}
!463 = !{i64 2156433251}
!464 = !{i64 2156433502}
!465 = !{i64 2148375864}
!466 = !{i64 2148290597, i64 2148290629, i64 2148290658, i64 2148290692, i64 2148290723, i64 2148290746}
!467 = !{i64 2148376093}
!468 = !{i64 2157026567, i64 2157027045, i64 2157026604, i64 2157026660, i64 2157026694, i64 2157026718, i64 2157026759, i64 2157026780, i64 2157026808, i64 2157026842}
!469 = !{i64 2157028167, i64 2157028645, i64 2157028204, i64 2157028260, i64 2157028294, i64 2157028318, i64 2157028359, i64 2157028380, i64 2157028408, i64 2157028442}
!470 = !{i64 2148769630, i64 2148769635, i64 2148769656, i64 2148769700, i64 2148769734, i64 2148769755}
